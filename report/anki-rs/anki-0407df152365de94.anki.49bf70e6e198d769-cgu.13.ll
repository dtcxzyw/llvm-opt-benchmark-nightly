Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZN52_$LT$F$u20$as$u20$regex..regex..string..Replacer$GT$14replace_append17h35c7d29c9f77494dE":bb.a
  store ptr %i.ak, ptr %i.an, align 8, !alias.scope !9273, !noalias !9276
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.am, ptr %i.ao, align 8, !alias.scope !9273, !noalias !9276
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !9273, !noalias !9276
  br label %"_ZN4anki4tags7matcher10TagMatcher7replace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ca02d2a77b7ff97E.exit"

"_ZN4anki4tags7matcher10TagMatcher7replace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ca02d2a77b7ff97E.exit": ; preds = %_ZN14regex_automata4util8captures8Captures9get_group17hc9a93834368628d2E.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = invoke { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$T$GT$$u20$as$u20$core..convert..AsRef$LT$T$GT$$GT$6as_ref17h9f375a730ecac982E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.j, %"_ZN4anki4tags7matcher10TagMatcher7replace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ca02d2a77b7ff97E.exit"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #40
          to label %common.resume unwind label %bb.o

bb.j:                                             ; preds = %"_ZN4anki4tags7matcher10TagMatcher7replace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ca02d2a77b7ff97E.exit"
  %i.ar = extractvalue { ptr, i64 } %i.ap, 0      ; 3 uses
  %i.as = extractvalue { ptr, i64 } %i.ap, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.at)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.d, align 8, !range !996, !alias.scope !9296, !noundef !3
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.av, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.aq, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.l
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit": ; preds = %bb.k, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17hd060b210e5bdd987E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN73_$LT$reqwest..async_impl..decoder..Decoder$u20$as$u20$http_body..Body$GT$10poll_frame17h065893459afa3f71E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !9299
  %i.c = load i64, ptr %i.a, align 8, !range !227, !noalias !9302, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %"_ZN4core3ptr121drop_in_place$LT$core..result..Result$LT$bytes..bytes..Bytes$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5643c3be2cdb4785E.exit22.i", %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !9299, !noalias !9305
  br label %"_ZN95_$LT$reqwest..async_impl..body..DataStream$LT$B$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17he2df5d7255c2f026E.exit"

bb.b:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$core..result..Result$LT$bytes..bytes..Bytes$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5643c3be2cdb4785E.exit22.i", %.lr.ph.i
  %i.g = phi i64 [ %i.c, %.lr.ph.i ], [ %i.h, %"_ZN4core3ptr121drop_in_place$LT$core..result..Result$LT$bytes..bytes..Bytes$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5643c3be2cdb4785E.exit22.i" ] ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9302 ; 4 uses
  switch i64 %i.g, label %bb.e [
    i64 5, label %bb.c
    i64 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !9299, !noalias !9305
  br label %"_ZN95_$LT$reqwest..async_impl..body..DataStream$LT$B$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17he2df5d7255c2f026E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  store i64 1, ptr %0, align 8, !alias.scope !9299, !noalias !9305
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !9299, !noalias !9305
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9299, !noalias !9305
  br label %"_ZN95_$LT$reqwest..async_impl..body..DataStream$LT$B$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17he2df5d7255c2f026E.exit"

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9302
  %.not18.i = icmp eq i64 %i.g, 3
  br i1 %.not18.i, label %.loopexit.i, label %"_ZN4core3ptr121drop_in_place$LT$core..result..Result$LT$bytes..bytes..Bytes$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5643c3be2cdb4785E.exit22.i"

.loopexit.i:                                      ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, i64 24, i1 false), !noalias !9302
  store ptr %.sroa.4.0.copyload.i, ptr %i.e, align 8, !noalias !9302
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !9305
  store i64 1, ptr %0, align 8, !alias.scope !9299, !noalias !9305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9302
  br label %"_ZN95_$LT$reqwest..async_impl..body..DataStream$LT$B$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17he2df5d7255c2f026E.exit"

"_ZN4core3ptr121drop_in_place$LT$core..result..Result$LT$bytes..bytes..Bytes$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5643c3be2cdb4785E.exit22.i": ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, i64 80, i1 false), !noalias !9302
  store i64 %i.g, ptr %i.b, align 8, !noalias !9302
  store ptr %.sroa.4.0.copyload.i, ptr %i.e, align 8, !noalias !9302
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17hd99f195407995f08E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b), !noalias !9299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9302
  call void @"_ZN73_$LT$reqwest..async_impl..decoder..Decoder$u20$as$u20$http_body..Body$GT$10poll_frame17h065893459afa3f71E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !9299
  %i.h = load i64, ptr %i.a, align 8, !range !227, !noalias !9302, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %._crit_edge.i, label %bb.b

"_ZN95_$LT$reqwest..async_impl..body..DataStream$LT$B$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17he2df5d7255c2f026E.exit": ; preds = %._crit_edge.i, %bb.c, %bb.d, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @785, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.d

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i", %.split.us.i.i, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i, %bb.w, %bb.d, %bb.a, %bb.y, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %.sroa.0.0 = phi i8 [ %i.dt, %bb.y ], [ %i.n, %bb.g ], [ 1, %bb.a ], [ %i.t, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit ], [ 0, %bb.d ], [ %.sroa.015.5.i, %bb.w ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.y, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 33
  br i1 %i.h, label %bb.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !noundef !3    ; 2 uses
  %i.j = icmp ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  %i.n = zext i1 %i.m to i8
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !9306, !noundef !3
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %3
  br i1 %exitcond.not.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.lr.ph.i

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.s = load i64, ptr %i.c, align 8, !range !5, !noundef !3
  %i.t = trunc nuw nsw i64 %i.s to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9312)
  %i.u = load i8, ptr %0, align 1, !alias.scope !9309, !noalias !9312, !noundef !3 ; 3 uses
  %i.v = add nsw i64 %1, -1                       ; 2 uses
  %i.w = icmp eq i64 %1, 2
  br i1 %i.w, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %4 = icmp ult i64 %i.x, %1
  br i1 %4, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.k:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %i.y = icmp ult i64 %i.x, %i.aa
  br i1 %i.y, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.z = phi i64 [ %i.aa, %bb.k ], [ %1, %bb.j ]
  %i.aa = add nsw i64 %i.z, -1                    ; 6 uses
  %i.ab = icmp ult i64 %i.aa, %1
  br i1 %i.ab, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aa, i64 noundef range(i64 2, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @758) #39, !noalias !9314
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i": ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !9309, !noalias !9322, !noundef !3 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ad, %i.u
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %i.ae = add nuw nsw i64 %1, 15
  %i.af = icmp ult i64 %3, %i.ae
  br i1 %i.af, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.i
  %i.ag = icmp ult i64 %3, 17
  br i1 %i.ag, label %.lr.ph.split.us.i.i, label %.thread106.i

.thread106.i:                                     ; preds = %.thread.i
  %i.ah = insertelement <1 x i8> poison, i8 %i.u, i64 0
  %i.ai = shufflevector <1 x i8> %i.ah, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load <1 x i8>, ptr %.phi.trans.insert.i, align 1, !alias.scope !9309, !noalias !9312
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = insertelement <1 x i8> poison, i8 %i.ad, i64 0
  %i.ak = insertelement <1 x i8> poison, i8 %i.u, i64 0
  %i.al = shufflevector <1 x i8> %i.ak, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !9323, !noalias !9324
  %i.am = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.am, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"
  %i.an = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.an, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !9323, !noalias !9324
  %i.ao = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ao, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i": ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.an, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.ap, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.ap = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ap
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread106.i
  %i.aq = phi <1 x i8> [ %.pre.i, %.thread106.i ], [ %i.aj, %bb.n ]
  %i.ar = phi <16 x i8> [ %i.ai, %.thread106.i ], [ %i.al, %bb.n ] ; 6 uses
  %storemerge105108.i = phi i64 [ 1, %.thread106.i ], [ %i.aa, %bb.n ] ; 6 uses
  %i.as = shufflevector <1 x i8> %i.aq, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9323
  store ptr %2, ptr %i.a, align 8, !noalias !9323
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.au, align 8, !noalias !9323
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.at, ptr %i.av, align 8, !noalias !9323
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.v, ptr %i.aw, align 8, !noalias !9323
  %i.ax = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i6 = icmp ult i64 %i.ax, %3
  br i1 %.not.i6, label %.lr.ph.i9, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.s, %bb.o
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.015.2.3.i, %bb.s ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.cp, %bb.s ] ; 2 uses
  %i.ay = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.az = add i64 %.sroa.07.0.lcssa.i, %i.ay
  %i.ba = icmp uge i64 %i.az, %3
  %i.bb = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3118.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond3118.i, label %._crit_edge.i8, label %.lr.ph120.i

.lr.ph.i9:                                        ; preds = %bb.o, %bb.s
  %.sroa.07.0116.i = phi i64 [ %i.cp, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0116.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.bc, align 1, !alias.scope !9312, !noalias !9328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %storemerge105108.i
  %.val.i.i = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !9312, !noalias !9328
  %i.be = icmp eq <16 x i8> %.val3.i.i, %i.ar
  %i.bf = icmp eq <16 x i8> %.val.i.i, %i.as
  %narrow.i.i = select <16 x i1> %i.be, <16 x i1> %i.bf, <16 x i1> zeroinitializer
  %i.bg = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !9312, !noalias !9328
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %storemerge105108.i
  %.val.i.1.i = load <16 x i8>, ptr %i.bi, align 1, !alias.scope !9312, !noalias !9328
  %i.bj = icmp eq <16 x i8> %.val3.i.1.i, %i.ar
  %i.bk = icmp eq <16 x i8> %.val.i.1.i, %i.as
  %narrow.i.1.i = select <16 x i1> %i.bj, <16 x i1> %i.bk, <16 x i1> zeroinitializer
  %i.bl = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !9312, !noalias !9328
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %storemerge105108.i
  %.val.i.2.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !9312, !noalias !9328
  %i.bo = icmp eq <16 x i8> %.val3.i.2.i, %i.ar
  %i.bp = icmp eq <16 x i8> %.val.i.2.i, %i.as
  %narrow.i.2.i = select <16 x i1> %i.bo, <16 x i1> %i.bp, <16 x i1> zeroinitializer
  %i.bq = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !9312, !noalias !9328
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %storemerge105108.i
  %.val.i.3.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !9312, !noalias !9328
  %i.bt = icmp eq <16 x i8> %.val3.i.3.i, %i.ar
  %i.bu = icmp eq <16 x i8> %.val.i.3.i, %i.as
  %narrow.i.3.i = select <16 x i1> %i.bt, <16 x i1> %i.bu, <16 x i1> zeroinitializer
  %i.bv = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.bw = icmp eq i16 %i.bg, 0
  br i1 %i.bw, label %.preheader109.1.i, label %bb.t

.preheader109.1.i:                                ; preds = %bb.t, %.lr.ph.i9
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i9 ], [ %i.cu, %bb.t ] ; 3 uses
  %i.bx = icmp eq i16 %i.bl, 0
  br i1 %i.bx, label %.preheader109.2.i, label %bb.p

bb.p:                                             ; preds = %.preheader109.1.i
  %i.by = or disjoint i64 %.sroa.07.0116.i, 16
  %i.bz = trunc nuw i8 %.sroa.015.2.i to i1
  %i.ca = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.by, i16 noundef %i.bl, i1 noundef zeroext %i.bz)
  %i.cb = zext i1 %i.ca to i8
  %i.cc = or i8 %.sroa.015.2.i, %i.cb
  br label %.preheader109.2.i

.preheader109.2.i:                                ; preds = %bb.p, %.preheader109.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader109.1.i ], [ %i.cc, %bb.p ] ; 3 uses
  %i.cd = icmp eq i16 %i.bq, 0
  br i1 %i.cd, label %.preheader109.3.i, label %bb.q

bb.q:                                             ; preds = %.preheader109.2.i
  %i.ce = or disjoint i64 %.sroa.07.0116.i, 32
  %i.cf = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.cg = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.bq, i1 noundef zeroext %i.cf)
  %i.ch = zext i1 %i.cg to i8
  %i.ci = or i8 %.sroa.015.2.1.i, %i.ch
  br label %.preheader109.3.i

.preheader109.3.i:                                ; preds = %bb.q, %.preheader109.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader109.2.i ], [ %i.ci, %bb.q ] ; 3 uses
  %i.cj = icmp eq i16 %i.bv, 0
  br i1 %i.cj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader109.3.i
  %i.ck = or disjoint i64 %.sroa.07.0116.i, 48
  %i.cl = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.cm = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ck, i16 noundef %i.bv, i1 noundef zeroext %i.cl)
  %i.cn = zext i1 %i.cm to i8
  %i.co = or i8 %.sroa.015.2.2.i, %i.cn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader109.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader109.3.i ], [ %i.co, %bb.r ] ; 2 uses
  %i.cp = add i64 %.sroa.07.0116.i, 64            ; 3 uses
  %i.cq = add i64 %i.cp, %i.ax
  %i.cr = icmp uge i64 %i.cq, %3
  %i.cs = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.preheader.i7, label %.lr.ph.i9

bb.t:                                             ; preds = %.lr.ph.i9
  %i.ct = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0116.i, i16 noundef %i.bg, i1 noundef zeroext false)
  %i.cu = zext i1 %i.ct to i8
  br label %.preheader109.1.i

._crit_edge.i8:                                   ; preds = %bb.u, %.preheader.i7
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i7 ], [ %.sroa.015.4.i, %bb.u ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bb, %.preheader.i7 ], [ %i.dm, %bb.u ]
  %i.cv = sub nuw i64 %3, %i.v
  %i.cw = add i64 %i.cv, -16                      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.cx, align 1, !alias.scope !9312, !noalias !9331
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %storemerge105108.i
  %.val.i66.i = load <16 x i8>, ptr %i.cy, align 1, !alias.scope !9312, !noalias !9331
  %i.cz = icmp eq <16 x i8> %.val3.i65.i, %i.ar
  %i.da = icmp eq <16 x i8> %.val.i66.i, %i.as
  %narrow.i67.i = select <16 x i1> %i.cz, <16 x i1> %i.da, <16 x i1> zeroinitializer
  %i.db = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %bb.w, label %bb.x

.lr.ph120.i:                                      ; preds = %.preheader.i7, %bb.u
  %.sroa.07.1119.i = phi i64 [ %i.dj, %bb.u ], [ %.sroa.07.0.lcssa.i, %.preheader.i7 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1119.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.dd, align 1, !alias.scope !9312, !noalias !9334
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %storemerge105108.i
  %.val.i69.i = load <16 x i8>, ptr %i.de, align 1, !alias.scope !9312, !noalias !9334
  %i.df = icmp eq <16 x i8> %.val3.i68.i, %i.ar
  %i.dg = icmp eq <16 x i8> %.val.i69.i, %i.as
  %narrow.i70.i = select <16 x i1> %i.df, <16 x i1> %i.dg, <16 x i1> zeroinitializer
  %i.dh = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.u, label %bb.v
end_hunk_0
begin_hunk_1_@_ZN6flate23zio4read17h7f5d834e0aa68b86E:bb.a
  %.val15.us.us = load i64, ptr %i.g, align 8, !noundef !3
  %i.k = sub i64 %.val15.us.us, %.val14.us.us
  call void @"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h6e56349e1c155599E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.k)
  %.not12.us.us = icmp eq i32 %.sroa.04.0.copyload.us.us, 2
  br i1 %.not12.us.us, label %.split21.us, label %.split.us

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.w, %bb.e ], [ %i.c, %.lr.ph ]
  %i.o = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = icmp eq i64 %i.o, 0                      ; 3 uses
  %.val = load i64, ptr %i.f, align 8, !noundef !3 ; 5 uses
  %.val14 = load i64, ptr %i.g, align 8, !noundef !3
  %spec.select = select i1 %i.p, i8 4, i8 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17h6376c4070c5d2748E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.o, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i8 noundef %spec.select)
  %.sroa.04.0.copyload = load i32, ptr %i.a, align 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val13 = load i64, ptr %i.f, align 8, !noundef !3 ; 5 uses
  %.val15 = load i64, ptr %i.g, align 8, !noundef !3
  %i.q = sub i64 %.val15, %.val14
  call void @"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h6e56349e1c155599E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.q)
  %.not12 = icmp eq i32 %.sroa.04.0.copyload, 2
  br i1 %.not12, label %bb.b, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us.split.us
  %i.r = call noundef nonnull ptr @_ZN3std2io5error5Error3new17hba387b3b54c38644E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @884, i64 noundef 22)
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.split
  switch i8 %.sroa.5.0.copyload, label %.split19.us [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.split21.us
  ]

.split19.us:                                      ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ne i64 %.val13, %.val
  %or.cond = or i1 %i.p, %i.s
  br i1 %or.cond, label %.split21.us, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ne i64 %.val13, %.val
  %or.cond3 = or i1 %i.p, %i.t
  br i1 %or.cond3, label %.split21.us, label %bb.e

.split21.us:                                      ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us.split.us
  %.us-phi = phi i64 [ %.val.us.us, %.lr.ph.split.us.split.us ], [ %.val, %bb.b ], [ %.val, %bb.c ], [ %.val, %bb.d ]
  %.us-phi22 = phi i64 [ %.val13.us.us, %.lr.ph.split.us.split.us ], [ %.val13, %bb.b ], [ %.val13, %bb.c ], [ %.val13, %bb.d ]
  %i.u = sub i64 %.us-phi22, %.us-phi
  %i.v = inttoptr i64 %i.u to ptr
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hf48eb90cac872409E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  %i.w = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %._crit_edge, label %.lr.ph.split.split

bb.f:                                             ; preds = %._crit_edge, %.split21.us, %.split.us
  %.sroa.4.0 = phi ptr [ %i.m, %._crit_edge ], [ %i.r, %.split.us ], [ %i.v, %.split21.us ]
  %.sroa.0.0 = phi i64 [ 1, %._crit_edge ], [ 1, %.split.us ], [ 0, %.split21.us ]
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6multer6buffer12StreamBuffer3new17h567b3c3c795f2d06E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !996, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #39
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = lshr i64 %i.i, 10
  %i.n = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.o = sub nuw nsw i64 64, %i.n
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 7)
  %i.p = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.q = getelementptr i8, ptr null, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 1
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !12261, !noalias !12264
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.s, align 8, !alias.scope !12261, !noalias !12264
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %i.t, align 8, !alias.scope !12261, !noalias !12264
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.r, ptr %i.u, align 8, !alias.scope !12261, !noalias !12264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !12266
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.v, align 8, !noalias !12266
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.w = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1401) 16, i64 noundef 8) #34 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.g, !prof !37

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 16) #39
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr525drop_in_place$LT$futures_util..stream..try_stream..MapErr$LT$futures_util..stream..try_stream..MapOk$LT$axum_core..body..BodyDataStream$C$multer..multipart..Multipart..with_constraints$LT$axum_core..body..BodyDataStream$C$bytes..bytes..Bytes$C$axum_core..error..Error$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$multer..multipart..Multipart..with_constraints$LT$axum_core..body..BodyDataStream$C$bytes..bytes..Bytes$C$axum_core..error..Error$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha6c5fb5f58ec4aafE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #40
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

.body:                                            ; preds = %bb.e
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  store ptr %1, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %2, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @886, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %.body, %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.i:                                             ; preds = %.body, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.y, %.body ]
  resume { ptr, i32 } %.pn8

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr525drop_in_place$LT$futures_util..stream..try_stream..MapErr$LT$futures_util..stream..try_stream..MapOk$LT$axum_core..body..BodyDataStream$C$multer..multipart..Multipart..with_constraints$LT$axum_core..body..BodyDataStream$C$bytes..bytes..Bytes$C$axum_core..error..Error$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$multer..multipart..Multipart..with_constraints$LT$axum_core..body..BodyDataStream$C$bytes..bytes..Bytes$C$axum_core..error..Error$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha6c5fb5f58ec4aafE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #40
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6zopfli4lz779Lz77Store11follow_path17h7386d861c29faea5E(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %5, ptr noalias noundef nonnull align 8 dereferenceable(72) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 32768) ; 3 uses
  %i.e = icmp eq i64 %3, %4
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.g unwind label %.thread    ; 8 uses

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52d6f739fdf6f61eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

common.resume.sink.split:                         ; preds = %.loopexit.split-lp, %bb.f
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.f ], [ %lpad.phi, %.loopexit.split-lp ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 720900, i64 noundef 2) #34
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.y, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn.pn46, %bb.y ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

.thread50.loopexit:                               ; preds = %.lr.ph82
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %.thread50

.thread50.loopexit.split-lp:                      ; preds = %bb.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread50

.thread50:                                        ; preds = %.thread50.loopexit.split-lp, %.thread50.loopexit
  %lpad.phi61 = phi { ptr, i32 } [ %lpad.loopexit60, %.thread50.loopexit ], [ %lpad.loopexit.split-lp, %.thread50.loopexit.split-lp ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.y

bb.f:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

.thread:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.b
  %.not = icmp ugt i64 %4, %2
  br i1 %.not, label %bb.i, label %bb.h, !prof !214

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %i.d, i64 noundef %4)
          to label %.preheader.preheader unwind label %.thread50.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.h
  %7 = icmp ult i64 %i.d, %3
  br i1 %7, label %.lr.ph82, label %.preheader._crit_edge

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @889) #39
          to label %bb.t unwind label %.thread50.loopexit.split-lp

.preheader:                                       ; preds = %.lr.ph82
  %i.j = add nuw i64 %.sroa.025.081, 1            ; 2 uses
  %i.k = icmp ult i64 %i.j, %3
  br i1 %i.k, label %.lr.ph82, label %.preheader._crit_edge

.lr.ph82:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.025.081 = phi i64 [ %i.j, %.preheader ], [ %i.d, %.preheader.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %.sroa.025.081)
          to label %.preheader unwind label %.thread50.loopexit

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.n = load i64, ptr %5, align 8, !range !325, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 3 uses
  %i.q = icmp ult i64 %i.p, 4611686018427387904
  tail call void @llvm.assume(i1 %i.q)
  %.idx = shl nuw nsw i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.n, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.412.0..sroa_idx, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph86
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc38, %bb.q, %bb.o, %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit, %bb.r, %bb.j
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a711c43ab88815eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume.sink.split unwind label %bb.x

bb.j:                                             ; preds = %.lr.ph, %._crit_edge87
  %i.v = phi ptr [ %i.r, %.lr.ph ], [ %i.as, %._crit_edge87 ]
  %.sroa.02.065 = phi i64 [ %3, %.lr.ph ], [ %i.ar, %._crit_edge87 ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12269)
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -2 ; 2 uses
  store ptr %i.w, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !12269
  %i.x = load i16, ptr %i.w, align 2, !noalias !12269, !noundef !3 ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %.sroa.02.065)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %._crit_edge87, %.preheader._crit_edge
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a711c43ab88815eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit"
  ret void

bb.m:                                             ; preds = %bb.j
  %i.y = icmp ugt i16 %i.x, 2
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = icmp ult i64 %.sroa.02.065, %4
  br i1 %i.z, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = zext i16 %i.x to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$7try_get17hcbb6d17ff25d9fddE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %6, i64 noundef %.sroa.02.065, i64 noundef range(i64 3, 65536) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.o
  %i.ab = load i8, ptr %i.t, align 4, !range !238, !alias.scope !12272, !noalias !12275, !noundef !3
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge, label %bb.p

.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge: ; preds = %.noexc
  %.pre = load i16, ptr %i.u, align 8
  br label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit

bb.p:                                             ; preds = %.noexc
  %i.ad = sub i64 %4, %.sroa.02.065               ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !12272, !noalias !12275, !noundef !3 ; 2 uses
  %i.ag = add i64 %i.af, %.sroa.02.065
  %i.ah = icmp ugt i64 %i.ag, %4
  %spec.store.select.i = select i1 %i.ah, i64 %i.ad, i64 %i.af ; 2 uses
  %i.ai = invoke { i16, i16 } @_ZN6zopfli4lz7723find_longest_match_loop17h5ff85276e6e5d364E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(720900) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %.sroa.02.065, i64 noundef %4, i64 noundef %spec.store.select.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.aj = extractvalue { i16, i16 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i16, i16 } %i.ai, 1
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$5store17h8b54cb83f0d87357E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %6, i64 noundef %.sroa.02.065, i64 noundef %spec.store.select.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i16 noundef %i.aj, i16 noundef %i.ak, i64 noundef %3)
          to label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.065
  %i.am = load i8, ptr %i.al, align 1, !noundef !3
  %i.an = zext i8 %i.am to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i16 noundef %i.an, i16 noundef 0, i64 noundef %.sroa.02.065)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.02.065, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @888) #39
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.i
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.v
  %.sroa.016.0 = phi i64 [ %i.aa, %bb.v ], [ 1, %bb.r ] ; 3 uses
  %exitcond.not83 = icmp eq i64 %.sroa.016.0, 1
  br i1 %exitcond.not83, label %._crit_edge87, label %.lr.ph86

_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit: ; preds = %bb.p, %.noexc38, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge
  %i.ao = phi i16 [ %.pre, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge ], [ %i.aj, %.noexc38 ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i16 noundef %i.x, i16 noundef %i.ao, i64 noundef %.sroa.02.065)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.w:                                             ; preds = %.lr.ph86
  %i.ap = add nuw nsw i64 %.sroa.028.084, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.sroa.016.0
  br i1 %exitcond.not, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.u, %bb.w
  %.sroa.028.084 = phi i64 [ %i.ap, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %i.aq = add i64 %.sroa.028.084, %.sroa.02.065
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %i.aq)
          to label %bb.w unwind label %.loopexit

._crit_edge87:                                    ; preds = %bb.w, %bb.u
  %i.ar = add i64 %.sroa.016.0, %.sroa.02.065
  %i.as = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !12280, !nonnull !3, !noundef !3 ; 2 uses
  %i.at = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !12280, !nonnull !3, !noundef !3
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %._crit_edge, label %bb.j

bb.x:                                             ; preds = %.loopexit.split-lp, %bb.y
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.y:                                             ; preds = %.thread50, %.thread
  %.pn.pn46 = phi { ptr, i32 } [ %i.i, %.thread ], [ %lpad.phi61, %.thread50 ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %5) #40
          to label %common.resume unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6zopfli7squeeze12lz77_optimal17h4a7a4f9a3d6a950bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [256 x i8], align 8               ; 2 uses
  %i.n = alloca [2304 x i8], align 8              ; 2 uses
  %i.o = alloca [5120 x i8], align 8              ; 4 uses
  %i.p = alloca [5120 x i8], align 8              ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [5120 x i8], align 8              ; 3 uses
  %i.x = alloca [144 x i8], align 8               ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 9 uses
  %i.aa = alloca [8 x i8], align 4                ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [5120 x i8], align 8             ; 22 uses
  %i.ad = alloca [144 x i8], align 8              ; 8 uses
  %i.ae = alloca [144 x i8], align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN62_$LT$zopfli..lz77..Lz77Store$u20$as$u20$core..clone..Clone$GT$5clone17h49aec94e0482abaaE"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.y, %.thread74, %.thread, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn4970, %.thread ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.af, %bb.c ], [ %i.me, %.thread74 ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae) #40
          to label %bb.dp unwind label %bb.do

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12282)
  %i.ag = icmp eq i64 %4, %5                      ; 2 uses
  br i1 %i.ag, label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %.noexc unwind label %bb.z     ; 8 uses

.noexc:                                           ; preds = %bb.e
  %.not.i = icmp ugt i64 %5, %3
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !37

bb.f:                                             ; preds = %.noexc
  %i.ai = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.ai, i64 noundef %5)
          to label %.preheader82.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i.preheader:                         ; preds = %bb.f
  %8 = icmp ult i64 %i.ai, %4
  br i1 %8, label %.lr.ph, label %.preheader75.i

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %5, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @891) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i:                                   ; preds = %.lr.ph
  %i.aj = add nuw i64 %.sroa.052.0.i436, 1        ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %4
  br i1 %i.ak, label %.lr.ph, label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader82.i, %.preheader82.i.preheader
  %i.al = icmp ult i64 %4, %5
  br i1 %i.al, label %.lr.ph.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader75.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader82.i.preheader, %.preheader82.i
  %.sroa.052.0.i436 = phi i64 [ %i.aj, %.preheader82.i ], [ %i.ai, %.preheader82.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.052.0.i436)
          to label %.preheader82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %._crit_edge, %.preheader75.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit

bb.h:                                             ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.07.0103.i = phi i64 [ %.sroa.07.0.ph107.i, %.lr.ph.i ], [ %i.cd, %._crit_edge ] ; 16 uses
  %.sroa.024.0102.i = phi i1 [ %.sroa.024.0.ph106.i, %.lr.ph.i ], [ false, %._crit_edge ]
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12285
  store ptr null, ptr %i.k, align 8, !noalias !12285
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$7try_get17hcbb6d17ff25d9fddE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef 258, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc.i:                                         ; preds = %bb.i
  %i.ap = load i8, ptr %i.am, align 4, !range !238, !alias.scope !12288, !noalias !12291, !noundef !3
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i, label %bb.j

.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i: ; preds = %.noexc.i
  %.pre.i = load i16, ptr %i.an, align 8, !noalias !12285
  %.pre128.i = load i16, ptr %i.ao, align 2, !noalias !12285
  br label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i

bb.j:                                             ; preds = %.noexc.i
  %i.ar = sub nuw i64 %5, %.sroa.07.0103.i        ; 2 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.l, align 8, !alias.scope !12288, !noalias !12291, !noundef !3 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.07.0103.i
  %i.av = icmp ugt i64 %i.au, %5
  %spec.store.select.i.i = select i1 %i.av, i64 %i.ar, i64 %i.at ; 2 uses
  %i.aw = invoke { i16, i16 } @_ZN6zopfli4lz7723find_longest_match_loop17h5ff85276e6e5d364E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i, i64 noundef %5, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ; 2 uses

.noexc65.i:                                       ; preds = %bb.k
  %i.ax = extractvalue { i16, i16 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { i16, i16 } %i.aw, 1      ; 2 uses
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$5store17h8b54cb83f0d87357E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i16 noundef %i.ax, i16 noundef %i.ay, i64 noundef %4)
          to label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i: ; preds = %.noexc65.i, %bb.j, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i
  %i.az = phi i16 [ %.pre128.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ay, %.noexc65.i ], [ 0, %bb.j ] ; 5 uses
  %i.ba = phi i16 [ %.pre.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ax, %.noexc65.i ], [ 0, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12285
  %i.bb = zext i16 %i.az to i32                   ; 2 uses
  %i.bc = icmp ugt i16 %i.ba, 1024
  %i.bd = sext i1 %i.bc to i32
  %.sroa.039.0.i = add nsw i32 %i.bd, %i.bb       ; 4 uses
  br i1 %.sroa.024.0102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.be = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bf = icmp ult i16 %i.az, 258
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %.loopexit81.i, label %bb.n

bb.m:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bg = icmp sgt i32 %.sroa.039.0.i, %.sroa.043.0.i
  br i1 %i.bg, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.t, %bb.l
  %i.bh = icmp ugt i32 %.sroa.039.0.i, 2
  br i1 %i.bh, label %bb.u, label %bb.v

.loopexit81.i:                                    ; preds = %bb.t, %bb.l
  %i.bi = zext i16 %i.ba to i32
  br label %.outer.i

.outer.i:                                         ; preds = %.preheader.i, %.preheader.preheader.i, %.loopexit81.i
  %.sroa.048.1.i = phi i32 [ %i.bi, %.loopexit81.i ], [ %.sroa.048.0.ph104.i, %.preheader.preheader.i ], [ %.sroa.048.0.ph104.i, %.preheader.i ]
  %.sroa.046.1.i = phi i32 [ %i.bb, %.loopexit81.i ], [ %.sroa.046.0.ph105.i, %.preheader.preheader.i ], [ %.sroa.046.0.ph105.i, %.preheader.i ]
  %.sroa.024.2.i = phi i1 [ true, %.loopexit81.i ], [ false, %.preheader.preheader.i ], [ false, %.preheader.i ]
  %.sroa.07.1.in.i = phi i64 [ %.sroa.07.0103.i, %.loopexit81.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ], [ %i.bs, %.preheader.i ]
  %.sroa.07.1.i = add i64 %.sroa.07.1.in.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12285
  %i.bj = icmp ult i64 %.sroa.07.1.i, %5
  br i1 %i.bj, label %.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.07.0.ph107.i = phi i64 [ %4, %.lr.ph.lr.ph.i ], [ %.sroa.07.1.i, %.outer.i ]
  %.sroa.024.0.ph106.i = phi i1 [ false, %.lr.ph.lr.ph.i ], [ %.sroa.024.2.i, %.outer.i ]
  %.sroa.046.0.ph105.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.046.1.i, %.outer.i ] ; 5 uses
  %.sroa.048.0.ph104.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.048.1.i, %.outer.i ] ; 4 uses
  %i.bk = icmp samesign ult i32 %.sroa.048.0.ph104.i, 1025
  %i.bl = zext i1 %i.bk to i32
  %.sroa.043.0.i = add nuw nsw i32 %.sroa.046.0.ph105.i, %i.bl
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.bm = trunc nuw i32 %.sroa.046.0.ph105.i to i16 ; 2 uses
  %i.bn = trunc nuw i32 %.sroa.048.0.ph104.i to i16
  %i.bo = add i64 %.sroa.07.0103.i, -1
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bm, i16 noundef %i.bn, i64 noundef %i.bo)
          to label %.preheader.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.preheader.preheader.i:                           ; preds = %bb.o
  %umax126.i = call i16 @llvm.umax.i16(i16 %i.bm, i16 2)
  %exitcond127.not.i441 = icmp ult i32 %.sroa.046.0.ph105.i, 3
  br i1 %exitcond127.not.i441, label %.outer.i, label %.lr.ph444

bb.p:                                             ; preds = %bb.m
  %i.bp = add i64 %.sroa.07.0103.i, -1            ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %5
  br i1 %i.bq, label %bb.q, label %bb.r

.preheader.i:                                     ; preds = %.lr.ph444
  %i.br = add i16 %.sroa.055.0.i442, 1            ; 2 uses
  %exitcond127.not.i = icmp eq i16 %i.br, %umax126.i
  br i1 %exitcond127.not.i, label %.outer.i, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %.sroa.07.2.i443 = phi i64 [ %i.bs, %.preheader.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ]
  %.sroa.055.0.i442 = phi i16 [ %i.br, %.preheader.i ], [ 2, %.preheader.preheader.i ]
  %i.bs = add i64 %.sroa.07.2.i443, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.bs)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !12282, !noalias !12296, !noundef !3
  %i.bv = zext i8 %i.bu to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bv, i16 noundef 0, i64 noundef %i.bp)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bp, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @890) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %bb.g
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bw = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bx = icmp ult i16 %i.az, 258
  %or.cond5.i = and i1 %i.bx, %i.bw
  br i1 %or.cond5.i, label %.loopexit81.i, label %bb.n

bb.u:                                             ; preds = %bb.n
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.az, i16 noundef %i.ba, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.v:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0103.i
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !12282, !noalias !12296, !noundef !3
  %i.ca = zext i8 %i.bz to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.ca, i16 noundef 0, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.030.0.i = phi i16 [ %i.az, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %umax.i = call i16 @llvm.umax.i16(i16 %.sroa.030.0.i, i16 1)
  %exitcond.not.i437 = icmp ult i16 %.sroa.030.0.i, 2
  br i1 %exitcond.not.i437, label %._crit_edge, label %.lr.ph440

bb.x:                                             ; preds = %.lr.ph440
  %i.cb = add i16 %.sroa.057.0.i438, 1            ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.cb, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph440

.lr.ph440:                                        ; preds = %bb.w, %bb.x
  %.sroa.07.3.i439 = phi i64 [ %i.cc, %bb.x ], [ %.sroa.07.0103.i, %bb.w ]
  %.sroa.057.0.i438 = phi i16 [ %i.cb, %bb.x ], [ 1, %bb.w ]
  %i.cc = add i64 %.sroa.07.3.i439, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.cc)
          to label %bb.x unwind label %.loopexit.i

._crit_edge:                                      ; preds = %bb.x, %bb.w
  %.sroa.07.3.i.lcssa = phi i64 [ %.sroa.07.0103.i, %bb.w ], [ %i.cc, %bb.x ]
  %i.cd = add i64 %.sroa.07.3.i.lcssa, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12285
  %i.ce = icmp ult i64 %i.cd, %5
  br i1 %i.ce, label %bb.h, label %.outer._crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph440
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph444
  %lpad.loopexit72.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %bb.v, %bb.u, %bb.q, %.noexc65.i, %bb.k, %bb.i, %bb.h
  %lpad.loopexit78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %bb.o
  %lpad.loopexit.split-lp79.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.r, %bb.g, %bb.f
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit72.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp79.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit78.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit83.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

.thread77:                                        ; preds = %bb.ac, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

bb.y:                                             ; preds = %bb.cw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.b

bb.z:                                             ; preds = %bb.e, %bb.aa, %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit: ; preds = %.outer._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.n, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, i8 0, i64 256, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 2304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, i8 0, i64 5120, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats14get_statistics17h29395d5ef7d2221cE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.aa unwind label %bb.z

bb.aa:                                            ; preds = %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.ch = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.ab unwind label %bb.z      ; 12 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ci = sub i64 %5, %4                          ; 5 uses
  %i.cj = add i64 %i.ci, 1                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.cj, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc53 unwind label %.thread77

.noexc53:                                         ; preds = %bb.ab
  %i.ck = load i64, ptr %i.j, align 8, !range !5, !noundef !3
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !996, !noundef !3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.ac, label %bb.ad, !prof !37

bb.ac:                                            ; preds = %.noexc53
  %i.cp = load i64, ptr %i.co, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cn, i64 %i.cp) #39
          to label %.noexc54 unwind label %.thread77

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.noexc53
  %i.cq = load ptr, ptr %i.co, align 8, !nonnull !3, !noundef !3
  %i.cr = icmp ule i64 %i.cj, %i.cn
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.cn, ptr %i.ab, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 9 uses
  store ptr %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 10 uses
  store i64 0, ptr %i.ct, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.w, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 1, ptr %i.aa, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 2, ptr %i.cu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cz = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  %.not.i.i = icmp ugt i64 %5, %3
  %i.da = icmp ugt i64 %i.cj, 1
  %.sroa.13.0.i13.i = add i64 %i.ci, -1           ; 3 uses
  %i.db = icmp eq i64 %.sroa.13.0.i13.i, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.dg = icmp ult i64 %4, %5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 655364 ; 2 uses
  %i.di = add i64 %4, 259
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %9 = icmp ult i64 %i.cz, %4
  %i.eg = add i64 %5, -2
  %i.eh = sub i64 %i.eg, %4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.dj, %bb.ad
  %.sroa.04.0 = phi i64 [ -1, %bb.ad ], [ %.sroa.04.1, %bb.dj ] ; 3 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.02.1, %bb.dj ]
  %.sroa.01.0 = phi double [ 0.000000e+00, %bb.ad ], [ %i.mq, %bb.dj ]
  %.sroa.0.0 = phi double [ +inf, %bb.ad ], [ %.sroa.0.1, %bb.dj ] ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12297)
  call void @llvm.experimental.noalias.scope.decl(metadata !12300)
  call void @llvm.experimental.noalias.scope.decl(metadata !12302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12304)
  call void @llvm.experimental.noalias.scope.decl(metadata !12307)
  call void @llvm.experimental.noalias.scope.decl(metadata !12309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12311
  call void @llvm.experimental.noalias.scope.decl(metadata !12318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12321
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.cj, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %bb.ae
  %i.ei = load i64, ptr %i.c, align 8, !range !5, !noalias !12321, !noundef !3
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = load i64, ptr %i.cv, align 8, !range !996, !noalias !12321, !noundef !3 ; 2 uses
  br i1 %i.ej, label %bb.af, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i", !prof !37

bb.af:                                            ; preds = %.noexc56
  %i.el = load i64, ptr %i.cw, align 8, !noalias !12321
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ek, i64 %i.el) #39
          to label %.noexc57 unwind label %.loopexit.split-lp

.noexc57:                                         ; preds = %bb.af
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i": ; preds = %.noexc56
  %i.em = load ptr, ptr %i.cw, align 8, !noalias !12321, !nonnull !3, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12321
  store i64 %i.ek, ptr %i.g, align 8, !alias.scope !12318, !noalias !12311
  store ptr %i.em, ptr %i.cx, align 8, !alias.scope !12318, !noalias !12311
  store i64 %i.cj, ptr %i.cy, align 8, !alias.scope !12318, !noalias !12311
  br i1 %i.ag, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i"
  invoke void @_ZN6zopfli4hash10ZopfliHash5reset17h9ec13e5981fa2b54E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ch)
          to label %bb.ai unwind label %.thread135.loopexit.split-lp.i.i.loopexit, !noalias !12322

bb.ah:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !12323
  br label %_ZN6zopfli7squeeze16get_best_lengths17h2d8667b11fd03317E.exit.i

.thread135.loopexit.i.i:                          ; preds = %.lr.ph447
  %lpad.loopexit175.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread135.loopexit.split-lp.i.i.loopexit:        ; preds = %bb.ag, %bb.aj, %.preheader.i.i._crit_edge, %bb.am
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread135.loopexit.split-lp.i.i.loopexit.split-lp: ; preds = %bb.ak, %bb.an, %bb.ao
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not.i.i, label %bb.ak, label %bb.aj, !prof !214

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ch, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.cz, i64 noundef %5)
          to label %.preheader.i.i.preheader unwind label %.thread135.loopexit.split-lp.i.i.loopexit, !noalias !12322

.preheader.i.i.preheader:                         ; preds = %bb.aj
  br i1 %9, label %.lr.ph447, label %.preheader.i.i._crit_edge

bb.ak:                                            ; preds = %bb.ai
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %5, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @913) #39
          to label %bb.ap unwind label %.thread135.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !12322

.preheader.i.i:                                   ; preds = %.lr.ph447
  %i.en = add nuw i64 %.sroa.047.0.i.i446, 1      ; 2 uses
  %i.eo = icmp ult i64 %i.en, %4
  br i1 %i.eo, label %.lr.ph447, label %.preheader.i.i._crit_edge

.lr.ph447:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.047.0.i.i446 = phi i64 [ %i.en, %.preheader.i.i ], [ %i.cz, %.preheader.i.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ch, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.047.0.i.i446)
          to label %.preheader.i.i unwind label %.thread135.loopexit.i.i, !noalias !12322

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h36ae454d6cb972f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.cj, float noundef 0.000000e+00)
          to label %bb.al unwind label %.thread135.loopexit.split-lp.i.i.loopexit, !noalias !12322

bb.al:                                            ; preds = %.preheader.i.i._crit_edge
  %i.ep = load ptr, ptr %i.cs, align 8, !alias.scope !12324, !noalias !12325, !nonnull !3, !noundef !3 ; 3 uses
  %i.eq = load i64, ptr %i.ct, align 8, !alias.scope !12324, !noalias !12325, !noundef !3 ; 4 uses
  %.idx.i = shl i64 %i.eq, 2                      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx.i
  %.not.i.i.not.peel.i.i = icmp samesign ugt i64 %i.eq, 1
  %or.cond446.i.i = select i1 %i.da, i1 %.not.i.i.not.peel.i.i, i1 false
  br i1 %or.cond446.i.i, label %.peel.next.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"

.peel.next.i.i:                                   ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store float +inf, ptr %i.es, align 4, !noalias !12322
  %i.et = icmp eq i64 %i.eq, 2
  %or.cond163.i14.i = or i1 %i.db, %i.et
  br i1 %or.cond163.i14.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i": ; preds = %.peel.next.i.i
  %.sroa.0112.1151.peel.i.i = getelementptr i8, ptr %i.ep, i64 8 ; 3 uses
  %i.eu = add i64 %.idx.i, -12
  %i.ev = lshr exact i64 %i.eu, 2
  %i.ew = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.eh) ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ew, 7
  br i1 %min.iters.check, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader", label %vector.ph

vector.ph:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i"
  %n.vec = and i64 %i.ex, 9223372036854775800     ; 4 uses
  %i.ey = sub i64 %.sroa.13.0.i13.i, %n.vec
  %i.ez = shl i64 %n.vec, 2
  %i.fa = getelementptr i8, ptr %.sroa.0112.1151.peel.i.i, i64 %i.ez
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0112.1151.peel.i.i, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !noalias !12322
  store <4 x float> splat (float +inf), ptr %i.fc, align 4, !noalias !12322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !12326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i", %middle.block
  %.sroa.13.0.i16.i.ph = phi i64 [ %.sroa.13.0.i13.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i" ], [ %i.ey, %middle.block ]
  %.sroa.0112.0.i15.i.ph = phi ptr [ %.sroa.0112.1151.peel.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.preheader.i" ], [ %i.fa, %middle.block ]
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i"
  %.sroa.13.0.i16.i = phi i64 [ %.sroa.13.0.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i" ], [ %.sroa.13.0.i16.i.ph, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader" ]
  %.sroa.0112.0.i15.i = phi ptr [ %.sroa.0112.1151.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i" ], [ %.sroa.0112.0.i15.i.ph, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i.preheader" ] ; 2 uses
  %.sroa.0112.1151.i.i = getelementptr i8, ptr %.sroa.0112.0.i15.i, i64 4 ; 2 uses
  store float +inf, ptr %.sroa.0112.0.i15.i, align 4, !noalias !12322
  %.sroa.13.0.i.i = add i64 %.sroa.13.0.i16.i, -1 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.13.0.i.i, 0
  %i.ff = icmp eq ptr %.sroa.0112.1151.i.i, %i.er
  %or.cond163.i.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond163.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i", !llvm.loop !12327

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread143.i.i", %middle.block, %.peel.next.i.i
  %.pre.i.i = load i64, ptr %i.ct, align 8, !alias.scope !12324, !noalias !12325
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", %bb.al
  %i.fg = phi i64 [ %i.eq, %bb.al ], [ %.pre.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i" ]
  %.not81.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not81.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"
  %i.fh = load ptr, ptr %i.cs, align 8, !alias.scope !12324, !noalias !12325, !nonnull !3, !noundef !3
  store float 0.000000e+00, ptr %i.fh, align 4, !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12311
  call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12331
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 259, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc.i.i unwind label %.thread135.loopexit.split-lp.i.i.loopexit, !noalias !12322

.noexc.i.i:                                       ; preds = %bb.am
  %i.fi = load i64, ptr %i.b, align 8, !range !5, !noalias !12331, !noundef !3
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = load i64, ptr %i.dc, align 8, !range !996, !noalias !12331, !noundef !3 ; 2 uses
  br i1 %i.fj, label %bb.an, label %bb.aq, !prof !37

bb.an:                                            ; preds = %.noexc.i.i
  %i.fl = load i64, ptr %i.dd, align 8, !noalias !12331
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.fk, i64 %i.fl) #39
          to label %.noexc91.i.i unwind label %.thread135.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !12322

.noexc91.i.i:                                     ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #39
          to label %bb.ap unwind label %.thread135.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !12322

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  unreachable

bb.aq:                                            ; preds = %.noexc.i.i
  %i.fm = load ptr, ptr %i.dd, align 8, !noalias !12331, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12331
  store i64 %i.fk, ptr %i.f, align 8, !alias.scope !12328, !noalias !12311
  store ptr %i.fm, ptr %i.de, align 8, !alias.scope !12328, !noalias !12311
  store i64 259, ptr %i.df, align 8, !alias.scope !12328, !noalias !12311
  br label %bb.as

bb.ar:                                            ; preds = %.noexc94.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.518.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(60) @914, i64 60, i1 false), !noalias !12332
  br label %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h4f960474ddb1553cE.exit.i.i.i"

bb.as:                                            ; preds = %.noexc94.i.i, %bb.aq
  %.sroa.0.033.i.i.i = phi i64 [ 0, %bb.aq ], [ %.sroa.0.1.i.i.i, %.noexc94.i.i ]
  %.sroa.02.032.i.i.i = phi double [ +inf, %bb.aq ], [ %.sroa.02.3.i.i.i, %.noexc94.i.i ] ; 2 uses
  %.sroa.07.031.i.i.i = phi i64 [ 3, %bb.aq ], [ %i.fo, %.noexc94.i.i ] ; 3 uses
  %i.fn = invoke noundef double @_ZN6zopfli7squeeze13get_cost_stat17h950f1530b1855c03E(i64 noundef range(i64 0, 259) %.sroa.07.031.i.i.i, i16 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5120) %i.ac)
          to label %.noexc94.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !12322 ; 2 uses

.noexc94.i.i:                                     ; preds = %bb.as
  %i.fo = add nuw nsw i64 %.sroa.07.031.i.i.i, 1  ; 2 uses
  %i.fp = fcmp olt double %i.fn, %.sroa.02.032.i.i.i ; 2 uses
  %.sroa.02.3.i.i.i = select i1 %i.fp, double %i.fn, double %.sroa.02.032.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.fp, i64 %.sroa.07.031.i.i.i, i64 %.sroa.0.033.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fo, 259
  br i1 %exitcond.not.i.i.i, label %bb.ar, label %bb.as

"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h4f960474ddb1553cE.exit.i.i.i": ; preds = %.noexc95.i.i, %bb.ar
  %.sroa.01.035.i.i.i = phi i16 [ 0, %bb.ar ], [ %.sroa.01.1.i.i.i, %.noexc95.i.i ]
  %.sroa.02.134.i.i.i = phi double [ +inf, %bb.ar ], [ %.sroa.02.2.i.i.i, %.noexc95.i.i ] ; 2 uses
  %i.fq = phi i64 [ 0, %bb.ar ], [ %i.fu, %.noexc95.i.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.518.0..sroa_idx.i.i.i, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !alias.scope !12335, !noalias !12332, !noundef !3 ; 2 uses
  %i.ft = invoke noundef double @_ZN6zopfli7squeeze13get_cost_stat17h950f1530b1855c03E(i64 noundef 3, i16 noundef %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5120) %i.ac)
          to label %.noexc95.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !12322 ; 2 uses

.noexc95.i.i:                                     ; preds = %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h4f960474ddb1553cE.exit.i.i.i"
  %i.fu = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %i.fv = fcmp olt double %i.ft, %.sroa.02.134.i.i.i ; 2 uses
  %.sroa.02.2.i.i.i = select i1 %i.fv, double %i.ft, double %.sroa.02.134.i.i.i
  %.sroa.01.1.i.i.i = select i1 %i.fv, i16 %i.fs, i16 %.sroa.01.035.i.i.i ; 2 uses
  %.not.i.i93.i.i = icmp eq i64 %i.fu, 30
  br i1 %.not.i.i93.i.i, label %bb.at, label %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h4f960474ddb1553cE.exit.i.i.i"

bb.at:                                            ; preds = %.noexc95.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12332
  %i.fw = invoke noundef double @_ZN6zopfli7squeeze13get_cost_stat17h950f1530b1855c03E(i64 noundef range(i64 0, 259) %.sroa.0.1.i.i.i, i16 noundef %.sroa.01.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5120) %i.ac)
          to label %_ZN6zopfli7squeeze23get_cost_model_min_cost17h931fb727b0556504E.exit.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit, !noalias !12322

_ZN6zopfli7squeeze23get_cost_model_min_cost17h931fb727b0556504E.exit.preheader.i.i: ; preds = %bb.at
  br i1 %i.dg, label %.lr.ph.i.i, label %_ZN6zopfli7squeeze23get_cost_model_min_cost17h931fb727b0556504E.exit._crit_edge.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.bu
  %lpad.loopexit291.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.loopexit.split-lp.i.i:                  ; preds = %bb.bn
  %lpad.loopexit.split-lp292.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.cb
  %lpad.loopexit165.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bd, %bb.bb, %.noexc99.i.i, %bb.az, %.loopexit164.i.i, %.lr.ph.i.i
  %lpad.loopexit168.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h4f960474ddb1553cE.exit.i.i.i"
  %lpad.loopexit170.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.as
end_hunk_1
begin_hunk_2_@_ZN6zopfli7squeeze12lz77_optimal17h4a7a4f9a3d6a950bE:bb.a
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.425.0..sroa_idx, align 8
  store ptr %i.y, ptr %i.dx, align 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hbc422e71329d5d34E", ptr %.sroa.429.0..sroa_idx, align 8
  store ptr @895, ptr %i.v, align 8
  store i64 3, ptr %i.dy, align 8
  store ptr null, ptr %i.dz, align 8
  store ptr %i.u, ptr %i.ea, align 8
  store i64 2, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @898, ptr %i.t, align 8
  store i64 15, ptr %i.ec, align 8
  store ptr @898, ptr %i.ed, align 8
  store i64 15, ptr %i.ee, align 8
  store ptr @899, ptr %i.ef, align 8
  invoke void @_ZN3log13__private_api3log17hacf64874606e9b2bE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.v, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
          to label %bb.dc unwind label %.loopexit

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ct

bb.dd:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.p, ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, i64 5120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.ac, ptr noundef nonnull align 8 dereferenceable(2304) %i.n, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cg, ptr noundef nonnull align 8 dereferenceable(256) %i.m, i64 256, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats14get_statistics17h29395d5ef7d2221cE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.de unwind label %.loopexit

bb.de:                                            ; preds = %bb.dd
  %.not45 = icmp eq i64 %.sroa.04.0, -1
  br i1 %.not45, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_ZN6zopfli7squeeze22add_weighed_stat_freqs17hbdcb65ffc295645aE(ptr noalias noundef nonnull sret([5120 x i8]) align 8 captures(address) dereferenceable(5120) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5120) %i.ac, double noundef 1.000000e+00, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5120) %i.p, double noundef 5.000000e-01)
          to label %bb.dh unwind label %.loopexit

bb.dg:                                            ; preds = %bb.dh, %bb.de
  %i.ml = load i64, ptr %i.z, align 8, !noundef !3
  %i.mm = icmp ugt i64 %i.ml, 5
  %.pre257 = load double, ptr %i.y, align 8       ; 3 uses
  br i1 %i.mm, label %bb.di, label %bb.dj

bb.dh:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noundef nonnull align 8 dereferenceable(5120) %i.o, i64 5120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_ZN6zopfli7squeeze11SymbolStats17calculate_entropy17h8a49c5c93a0e0eceE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac)
          to label %bb.dg unwind label %.loopexit

bb.di:                                            ; preds = %bb.dg
  %i.mn = fsub double %.pre257, %.sroa.01.0
  %i.mo = call double @llvm.fabs.f64(double %i.mn)
  %i.mp = fcmp olt double %i.mo, f0x3CB0000000000000
  br i1 %i.mp, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg, %bb.dm
  %i.mq = phi double [ %.pre, %bb.dm ], [ %.pre257, %bb.di ], [ %.pre257, %bb.dg ]
  %.sroa.04.1 = phi i64 [ %i.mr, %bb.dm ], [ %.sroa.04.0, %bb.di ], [ %.sroa.04.0, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.dk:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noundef nonnull align 8 dereferenceable(5120) %i.w, i64 5120, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats20randomize_stat_freqs17hc239c6afcafd5a73E(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.aa)
          to label %bb.dl unwind label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN6zopfli7squeeze11SymbolStats17calculate_entropy17h8a49c5c93a0e0eceE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac)
          to label %bb.dm unwind label %.loopexit

bb.dm:                                            ; preds = %bb.dl
  %i.mr = load i64, ptr %i.z, align 8, !noundef !3
  %.pre = load double, ptr %i.y, align 8
  br label %bb.dj

bb.dn:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 720900, i64 noundef 2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret void

bb.do:                                            ; preds = %.thread, %.body58, %bb.b
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

.thread:                                          ; preds = %.loopexit.split-lp.i, %bb.z, %.thread77, %.thread71
  %.pn4970 = phi { ptr, i32 } [ %.pn, %.thread71 ], [ %lpad.thr_comm, %.thread77 ], [ %i.cf, %bb.z ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ad) #40
          to label %bb.b unwind label %bb.do

bb.dp:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6zopfli7squeeze18lz77_optimal_fixed17hfdfb251af3de7cb5E(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef align 8 dereferenceable(144) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = sub i64 %4, %3                           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.m = load i64, ptr %i.j, align 8, !range !5, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !996, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.p, i64 %i.r) #39
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.t = icmp ule i64 %i.l, %i.p
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.p, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 10 uses
  store i64 0, ptr %i.v, align 8
  %i.w = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.e unwind label %bb.d       ; 9 uses

bb.c:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #40
          to label %common.resume unwind label %bb.bo

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !12353)
  call void @llvm.experimental.noalias.scope.decl(metadata !12356)
  call void @llvm.experimental.noalias.scope.decl(metadata !12358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12360)
  call void @llvm.experimental.noalias.scope.decl(metadata !12363)
  call void @llvm.experimental.noalias.scope.decl(metadata !12365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12367
  %i.y = add nuw i64 %i.l, 1                      ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12375
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.y, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.e
  %i.z = load i64, ptr %i.c, align 8, !range !5, !noalias !12375, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !996, !noalias !12375, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i", !prof !37

bb.f:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !12375
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ac, i64 %i.ae) #39
          to label %.noexc3 unwind label %bb.bk

.noexc3:                                          ; preds = %bb.f
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i": ; preds = %.noexc
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !12375, !nonnull !3, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12375
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !12372, !noalias !12367
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !12372, !noalias !12367
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.y, ptr %i.ah, align 8, !alias.scope !12372, !noalias !12367
  %i.ai = icmp eq i64 %3, %4
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i"
  %i.aj = call i64 @llvm.usub.sat.i64(i64 %3, i64 32768) ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash5reset17h9ec13e5981fa2b54E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.w)
          to label %bb.i unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

bb.h:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc2a67f6587c4b4c6E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !12377
  br label %_ZN6zopfli7squeeze16get_best_lengths17h7499097e331d3ebbE.exit.i

.thread132.loopexit.i.i:                          ; preds = %.lr.ph
  %lpad.loopexit172.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread132.loopexit.split-lp.i.i:                 ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.i._crit_edge, %bb.k, %bb.j, %bb.g
  %lpad.loopexit.split-lp173.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp ugt i64 %4, %2
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !214

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %i.aj, i64 noundef %4)
          to label %.preheader.i.i.preheader unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

.preheader.i.i.preheader:                         ; preds = %bb.j
  %6 = icmp ult i64 %i.aj, %3
  br i1 %6, label %.lr.ph, label %.preheader.i.i._crit_edge

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @913) #39
          to label %bb.p unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.047.0.i.i90, 1       ; 2 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %.lr.ph, label %.preheader.i.i._crit_edge

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.047.0.i.i90 = phi i64 [ %i.ak, %.preheader.i.i ], [ %i.aj, %.preheader.i.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %4, i64 noundef %.sroa.047.0.i.i90)
          to label %.preheader.i.i unwind label %.thread132.loopexit.i.i, !noalias !12376

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h36ae454d6cb972f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.y, float noundef 0.000000e+00)
          to label %bb.l unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

bb.l:                                             ; preds = %.preheader.i.i._crit_edge
  %i.am = load ptr, ptr %i.u, align 8, !alias.scope !12378, !noalias !12379, !nonnull !3, !noundef !3 ; 3 uses
  %i.an = load i64, ptr %i.v, align 8, !alias.scope !12378, !noalias !12379, !noundef !3 ; 4 uses
  %.idx.i = shl i64 %i.an, 2                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  %.not.i.i.not.peel.i.i = icmp samesign ugt i64 %i.an, 1
  br i1 %.not.i.i.not.peel.i.i, label %.peel.next.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"

.peel.next.i.i:                                   ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store float +inf, ptr %i.ap, align 4, !noalias !12376
  %.sroa.13.0.i13.i = add i64 %i.l, -1            ; 3 uses
  %i.aq = icmp eq i64 %.sroa.13.0.i13.i, 0
  %i.ar = icmp eq i64 %i.an, 2
  %or.cond160.i14.i = or i1 %i.aq, %i.ar
  br i1 %or.cond160.i14.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i": ; preds = %.peel.next.i.i
  %.sroa.0.1148.peel.i.i = getelementptr i8, ptr %i.am, i64 8 ; 3 uses
  %i.as = add i64 %.idx.i, -12
  %i.at = lshr exact i64 %i.as, 2
  %i.au = add i64 %4, -2
  %i.av = sub i64 %i.au, %3
  %i.aw = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.av) ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 7
  br i1 %min.iters.check, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader", label %vector.ph

vector.ph:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i"
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 4 uses
  %i.ay = sub i64 %.sroa.13.0.i13.i, %n.vec
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %.sroa.0.1148.peel.i.i, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0.1148.peel.i.i, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !noalias !12376
  store <4 x float> splat (float +inf), ptr %i.bc, align 4, !noalias !12376
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !12380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i", %middle.block
  %.sroa.13.0.i16.i.ph = phi i64 [ %.sroa.13.0.i13.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i" ], [ %i.ay, %middle.block ]
  %.sroa.0.0.i15.i.ph = phi ptr [ %.sroa.0.1148.peel.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.preheader.i" ], [ %i.ba, %middle.block ]
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i"
  %.sroa.13.0.i16.i = phi i64 [ %.sroa.13.0.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i" ], [ %.sroa.13.0.i16.i.ph, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader" ]
  %.sroa.0.0.i15.i = phi ptr [ %.sroa.0.1148.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i" ], [ %.sroa.0.0.i15.i.ph, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i.preheader" ] ; 2 uses
  %.sroa.0.1148.i.i = getelementptr i8, ptr %.sroa.0.0.i15.i, i64 4 ; 2 uses
  store float +inf, ptr %.sroa.0.0.i15.i, align 4, !noalias !12376
  %.sroa.13.0.i.i = add i64 %.sroa.13.0.i16.i, -1 ; 2 uses
  %i.be = icmp eq i64 %.sroa.13.0.i.i, 0
  %i.bf = icmp eq ptr %.sroa.0.1148.i.i, %i.ao
  %or.cond160.i.i = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond160.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i", !llvm.loop !12381

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread140.i.i", %middle.block, %.peel.next.i.i
  %.pre.i.i = load i64, ptr %i.v, align 8, !alias.scope !12378, !noalias !12379
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i", %bb.l
  %i.bg = phi i64 [ %i.an, %bb.l ], [ %.pre.i.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.loopexit.i.i" ]
  %.not81.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not81.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"
  %i.bh = load ptr, ptr %i.u, align 8, !alias.scope !12378, !noalias !12379, !nonnull !3, !noundef !3
  store float 0.000000e+00, ptr %i.bh, align 4, !noalias !12376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12367
  call void @llvm.experimental.noalias.scope.decl(metadata !12382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12385
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 259, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc.i.i unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

.noexc.i.i:                                       ; preds = %bb.m
  %i.bi = load i64, ptr %i.b, align 8, !range !5, !noalias !12385, !noundef !3
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !996, !noalias !12385, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.q, !prof !37

bb.n:                                             ; preds = %.noexc.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !12385
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bl, i64 %i.bn) #39
          to label %.noexc89.i.i unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

.noexc89.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h19e5fe88f33a45dbE.exit.thread.i.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #39
          to label %bb.p unwind label %.thread132.loopexit.split-lp.i.i, !noalias !12376

bb.p:                                             ; preds = %bb.o, %bb.k
  unreachable

bb.q:                                             ; preds = %.noexc.i.i
  %i.bo = load ptr, ptr %i.bm, align 8, !noalias !12385, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12385
  store i64 %i.bl, ptr %i.f, align 8, !alias.scope !12382, !noalias !12367
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !12382, !noalias !12367
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 259, ptr %i.bq, align 8, !alias.scope !12382, !noalias !12367
  br label %bb.s

bb.r:                                             ; preds = %.noexc92.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12367
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.518.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(60) @914, i64 60, i1 false), !noalias !12367
  br label %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h7ed1548b3a3ce48fE.exit.i.i.i"

bb.s:                                             ; preds = %.noexc92.i.i, %bb.q
  %.sroa.0.029.i.i.i = phi i64 [ 0, %bb.q ], [ %.sroa.0.1.i.i.i, %.noexc92.i.i ]
  %.sroa.02.028.i.i.i = phi double [ +inf, %bb.q ], [ %.sroa.02.3.i.i.i, %.noexc92.i.i ] ; 2 uses
  %.sroa.07.027.i.i.i = phi i64 [ 3, %bb.q ], [ %i.bs, %.noexc92.i.i ] ; 3 uses
  %i.br = invoke noundef double @_ZN6zopfli7squeeze14get_cost_fixed17h7334aa63b4646a30E(i64 noundef range(i64 0, 259) %.sroa.07.027.i.i.i, i16 noundef 1)
          to label %.noexc92.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !12376 ; 2 uses

.noexc92.i.i:                                     ; preds = %bb.s
  %i.bs = add nuw nsw i64 %.sroa.07.027.i.i.i, 1  ; 2 uses
  %i.bt = fcmp olt double %i.br, %.sroa.02.028.i.i.i ; 2 uses
  %.sroa.02.3.i.i.i = select i1 %i.bt, double %i.br, double %.sroa.02.028.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.bt, i64 %.sroa.07.027.i.i.i, i64 %.sroa.0.029.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bs, 259
  br i1 %exitcond.not.i.i.i, label %bb.r, label %bb.s

"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h7ed1548b3a3ce48fE.exit.i.i.i": ; preds = %.noexc93.i.i, %bb.r
  %.sroa.01.031.i.i.i = phi i16 [ 0, %bb.r ], [ %.sroa.01.1.i.i.i, %.noexc93.i.i ]
  %.sroa.02.130.i.i.i = phi double [ +inf, %bb.r ], [ %.sroa.02.2.i.i.i, %.noexc93.i.i ] ; 2 uses
  %i.bu = phi i64 [ 0, %bb.r ], [ %i.by, %.noexc93.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.518.0..sroa_idx.i.i.i, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !alias.scope !12386, !noalias !12367, !noundef !3 ; 2 uses
  %i.bx = invoke noundef double @_ZN6zopfli7squeeze14get_cost_fixed17h7334aa63b4646a30E(i64 noundef 3, i16 noundef %i.bw)
          to label %.noexc93.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !12376 ; 2 uses

.noexc93.i.i:                                     ; preds = %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h7ed1548b3a3ce48fE.exit.i.i.i"
  %i.by = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %i.bz = fcmp olt double %i.bx, %.sroa.02.130.i.i.i ; 2 uses
  %.sroa.02.2.i.i.i = select i1 %i.bz, double %i.bx, double %.sroa.02.130.i.i.i
  %.sroa.01.1.i.i.i = select i1 %i.bz, i16 %i.bw, i16 %.sroa.01.031.i.i.i ; 2 uses
  %.not.i.i91.i.i = icmp eq i64 %i.by, 30
  br i1 %.not.i.i91.i.i, label %bb.t, label %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h7ed1548b3a3ce48fE.exit.i.i.i"

bb.t:                                             ; preds = %.noexc93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12367
  %i.ca = invoke noundef double @_ZN6zopfli7squeeze14get_cost_fixed17h7334aa63b4646a30E(i64 noundef range(i64 0, 259) %.sroa.0.1.i.i.i, i16 noundef %.sroa.01.1.i.i.i)
          to label %_ZN6zopfli7squeeze23get_cost_model_min_cost17h28f104dbf9bae20cE.exit.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !12376

_ZN6zopfli7squeeze23get_cost_model_min_cost17h28f104dbf9bae20cE.exit.preheader.i.i: ; preds = %bb.t
  %i.cb = icmp ult i64 %3, %4
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZN6zopfli7squeeze23get_cost_model_min_cost17h28f104dbf9bae20cE.exit._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6zopfli7squeeze23get_cost_model_min_cost17h28f104dbf9bae20cE.exit.preheader.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 655364 ; 2 uses
  %i.cd = add i64 %3, 259
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  br label %bb.u

.loopexit.loopexit.i.i:                           ; preds = %bb.av
  %lpad.loopexit288.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.loopexit.split-lp.i.i:                  ; preds = %bb.ao
  %lpad.loopexit.split-lp289.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i
end_hunk_2
