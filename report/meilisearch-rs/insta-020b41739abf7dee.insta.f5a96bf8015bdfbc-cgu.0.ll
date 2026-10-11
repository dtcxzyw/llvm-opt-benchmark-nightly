Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hf175232a11969513E":bb.a
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hff91a1a0a7186ccbE"() unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32), i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread"
  %.pn = phi { i8, i1 } [ %i.d, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread" ], [ %i.a, %bb.a ]
  %i.c = extractvalue { i8, i1 } %.pn, 0
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread"
    i8 1, label %.preheader
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit"
    i8 3, label %bb.d
  ], !prof !62

._crit_edge:                                      ; preds = %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread", %bb.a
  store i32 0, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 4), align 4
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 8), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 24), align 8
  store atomic i8 2, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32) release, align 8
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit": ; preds = %.lr.ph, %.preheader, %._crit_edge
  ret ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E"

default.unreachable:                              ; preds = %.lr.ph
  unreachable

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread": ; preds = %.preheader, %.lr.ph
  %i.d = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32), i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.b
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN85_$LT$insta..runtime..TEST_NAME_CLASH_DETECTION$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h77354bf65dfa3273E", i64 32) acquire, align 8 ; 2 uses
  %i.g = icmp ult i8 %i.f, 4
  tail call void @llvm.assume(i1 %i.g)
  switch i8 %i.f, label %default.unreachable18 [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit.thread"
    i8 1, label %bb.b
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1eb2d2909f02072aE.exit"
    i8 3, label %bb.c
  ], !prof !62

default.unreachable18:                            ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  tail call void @llvm.x86.sse2.pause() #51
  br label %.preheader

bb.c:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @171, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #54
  unreachable

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @168, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb8245d0202462d40E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173) ; 0 uses
  %i.f = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173) ; 0 uses
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #23 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 4, label %bb.b
    i64 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1702195828
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  %spec.select26 = select i1 %i.d, i8 1, i8 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a
  %.sroa.0.0 = phi i8 [ %spec.select26, %bb.b ], [ %spec.select, %bb.d ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 1
  %i.f = xor i32 %i.e, 1936482662
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 101
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, i8 0, i8 2
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN52_$LT$i128$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h8f20a3858feb3cd9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i128 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [39 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i128 %.0.val, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(39) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 39, i64 noundef range(i64 1, 17) 1) #51, !noalias !5002 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 17) 1) #51, !noalias !5003 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc14, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

.noexc14:                                         ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #54
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 39, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %bb.d
  %i.h = phi ptr [ %i.f, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ %i.d, %bb.d ]
  %i.i = phi i64 [ 40, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 39, %bb.d ]
  %i.j = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0 = tail call i128 @llvm.abs.i128(i128 %.0.val, i1 false)
  %i.k = invoke { ptr, i64 } @"_ZN4core3fmt3num22_$LT$impl$u20$u128$GT$4_fmt17hba4e5f8ba20c0370E"(i128 noundef %.sroa.011.0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 39)
          to label %bb.f unwind label %bb.i       ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.c
  store i64 40, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5004)
  store i8 45, ptr %i.f, align 1, !noalias !5004
  store i64 1, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !5004
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { ptr, i64 } %i.k, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5005)
  call void @llvm.experimental.noalias.scope.decl(metadata !5006)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = sub nuw nsw i64 %i.i, %i.j
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j, i64 noundef %i.l, i64 noundef 1, i64 noundef 1)
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !5007
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5007
  br label %bb.h

bb.h:                                             ; preds = %.noexc17, %bb.f
  %i.p = phi ptr [ %i.h, %bb.f ], [ %.pre, %.noexc17 ]
  %i.q = phi i64 [ %i.j, %bb.f ], [ %.pre.i.i, %.noexc17 ] ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.r, i64 %i.l, i1 false), !noalias !5007
  %i.u = add i64 %i.q, %i.l
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !5007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !5008)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !5008 ; 2 uses
  %i.v = icmp eq i64 %.val.i, 0
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !5008, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !5008
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @177, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$insta..env..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hd209324209ff3a2eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !54, !noundef !17
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 -9223372036854775808)
  %i.f = and i64 %i.e, 9223372036854775807
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @179, i64 noundef 11, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h2ec6754f25b32027E"(ptr noalias noundef nonnull readonly align 16 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2, i64 noundef %3) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not3 = icmp eq i64 %.sroa.0.0.i1, 0
  br i1 %exitcond.not3, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit"
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_ZN4core5slice3cmp13chaining_impl17hab2ed02ee41a92baE.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i4 ; 3 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %.sroa.01.0.i4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5025)
  %.val.i.i = load ptr, ptr %i.c, align 16, !alias.scope !5026, !noalias !5027, !nonnull !17, !align !31, !noundef !17
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val5.i.i = load i64, ptr %i.e, align 8, !alias.scope !5026, !noalias !5027, !noundef !17 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.d, align 16, !alias.scope !5027, !noalias !5026, !nonnull !17, !align !31, !noundef !17
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7.i.i = load i64, ptr %i.f, align 8, !alias.scope !5027, !noalias !5026, !noundef !17 ; 2 uses
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.val5.i.i, i64 %.val7.i.i)
  %i.g = sub i64 %.val5.i.i, %.val7.i.i
  %i.h = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val6.i.i, i64 %..i.i.i), !alias.scope !5028, !noalias !5029 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 0
  %spec.store.select.i.i.i = select i1 %i.j, i64 %i.g, i64 %i.i ; 2 uses
  %i.k = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i, i64 0)
  %i.l = icmp eq i64 %spec.store.select.i.i.i, 0
  br i1 %i.l, label %bb.c, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit"

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.m, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.n), !inline_history !5021
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit": ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %i.o, %bb.c ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.p = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.p, label %bb.b, label %_ZN4core5slice3cmp13chaining_impl17hab2ed02ee41a92baE.exit

_ZN4core5slice3cmp13chaining_impl17hab2ed02ee41a92baE.exit: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit", %._crit_edge
  %.sroa.0.0.i = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i.i, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17h1dfe3a0b815ea8dcE.exit" ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h4b7d8c4983436333E"(ptr noalias noundef nonnull readonly align 16 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2, i64 noundef %3) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not3 = icmp eq i64 %.sroa.0.0.i1, 0
  br i1 %exitcond.not3, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit"
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_ZN4core5slice3cmp13chaining_impl17hc30202798906b2d4E.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.01.0.i4 ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.sroa.01.0.i4 ; 2 uses
  %i.e = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.d), !inline_history !5030 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit"

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.h), !inline_history !5030
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit": ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %i.i, %bb.c ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN4core5slice3cmp13chaining_impl17hc30202798906b2d4E.exit

_ZN4core5slice3cmp13chaining_impl17hc30202798906b2d4E.exit: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit", %._crit_edge
  %.sroa.0.0.i = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i.i, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hed3fcfae40def594E.exit" ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN56_$LT$insta..env..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hd7bd6e8d153c5116E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !54, !noundef !17
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 -9223372036854775808)
  %i.i = and i64 %i.h, 9223372036854775807
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !17, !noundef !17
  %.val11 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !17, !noalias !5037, !nonnull !17
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @183, i64 noundef 33), !noalias !5037, !inline_history !8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h94c42f94d7609b76E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.o, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5038
  store ptr @186, ptr %i.b, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1027.0..sroa_idx, align 8
  %i.p = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !5038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h94c42f94d7609b76E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5039
  store ptr @188, ptr %i.a, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.1033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1033.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17
  %.sroa.0.0.in = phi i1 [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22 ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17 ], [ %i.m, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5044)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5044, !noundef !17 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !20, !alias.scope !5045, !noundef !17
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i", !prof !22

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !5044
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i": ; preds = %bb.e, %bb.d
  %i.j = phi i64 [ %i.b, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5044, !nonnull !17, !noundef !17
  %i.m = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i"
  %i.o = icmp samesign ult i32 %1, 2048
  %i.p = trunc i32 %1 to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128                ; 3 uses
  %i.s = lshr i32 %1, 6
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 2 uses
  %i.w = lshr i32 %1, 12
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = lshr i32 %1, 18
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -16
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i"
  %i.ad = trunc nuw nsw i32 %1 to i8
  store i8 %i.ad, ptr %i.n, align 1, !noalias !5044
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = or disjoint i8 %i.t, -64
  store i8 %i.ae, ptr %i.n, align 1, !noalias !5044
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.r, ptr %i.af, align 1, !noalias !5044
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %1, 65536
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = or disjoint i8 %i.x, -32
  store i8 %i.ah, ptr %i.n, align 1, !noalias !5044
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.v, ptr %i.ai, align 1, !noalias !5044
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.r, ptr %i.aj, align 1, !noalias !5044
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.ac, ptr %i.n, align 1, !noalias !5044
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.z, ptr %i.ak, align 1, !noalias !5044
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.v, ptr %i.al, align 1, !noalias !5044
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.r, ptr %i.am, align 1, !noalias !5044
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.an = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !5044
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd717793223240653E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5057)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5058, !noalias !5059, !noundef !17 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !alias.scope !5058, !noalias !5059, !noundef !17
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !5059
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !5060, !noalias !5059
  br label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit

_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5060, !noalias !5059, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
end_hunk_0
begin_hunk_1_@_ZN5insta3env15get_tool_config17h016556f261d07703E:bb.a
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6530
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  br i1 %i.lp, label %.body30, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6601
  br label %.body30

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread": ; preds = %bb.hi, %bb.fd, %.thread.i.i.i, %bb.ft, %.thread112.i.i.i, %bb.hk
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !alias.scope !6520, !noalias !6530, !noundef !17
  %i.wq = add i64 %i.wp, 1
  store i64 %i.wq, ptr %i.wo, align 8, !alias.scope !6520, !noalias !6530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6528
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.hp:                                            ; preds = %bb.et
  call void @llvm.trap()
  unreachable

bb.hq:                                            ; preds = %bb.fa, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb7a48eaccdd54deeE.exit.i.i"
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %.sroa.8.0.i.i.i.i389 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !6602, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ll, ptr %i.ws, align 8, !noalias !6602
  store ptr %i.wt, ptr %i.aa, align 8
  %i.wu = atomicrmw sub ptr %i.wt, i64 1 release, align 8, !noalias !6603
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hr, label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.hr:                                            ; preds = %bb.hq
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aa)
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit": ; preds = %bb.hr, %bb.hq, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hs

bb.hs:                                            ; preds = %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.ww = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.wx = and i64 %i.ww, 9223372036854775807
  %i.wy = icmp eq i64 %i.wx, 0
  br i1 %i.wy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.ht, !prof !23

bb.ht:                                            ; preds = %bb.hs
  %i.wz = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.wz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32: ; preds = %bb.hu, %bb.ht, %bb.hs, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.xa = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.xb = icmp eq i32 %i.xa, 2
  br i1 %i.xb, label %bb.hv, label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit", !prof !22

bb.hv:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
  br label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit"

bb.hw:                                            ; preds = %.body
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 10 uses
  %i.t = alloca [200 x i8], align 8               ; 10 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", i64 32) acquire, align 8 ; 2 uses
  %i.z = icmp ult i8 %i.y, 4
  tail call void @llvm.assume(i1 %i.z)
  %.not.i.i = icmp eq i8 %i.y, 2
  br i1 %.not.i.i, label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17he193102fc3095ee6E"()
  br label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"

"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.b ], [ @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", %bb.a ] ; 9 uses
  %i.ab = cmpxchg ptr %.sroa.0.0.i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !6838
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.sroa.0.0.i.i), !noalias !6838
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  %i.ad = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !6838
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !6838
  %i.ah = xor i1 %i.ag, true
  %i.ai = zext i1 %i.ah to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.ai, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4 ; 2 uses
  %i.ak = load atomic i8, ptr %i.aj monotonic, align 4, !noalias !6838 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 5 uses
  %.val = load ptr, ptr %i.al, align 8, !noundef !17 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16 ; 5 uses
  %.not.i47 = icmp eq ptr %.val, null
  br i1 %.not.i47, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"
  %.val38 = load i64, ptr %i.am, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.h
  %.sroa.3.0.i.i = phi i64 [ %i.bi, %bb.h ], [ %.val38, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i48 = phi ptr [ %i.bh, %bb.h ], [ %.val, %.preheader.i.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 362
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !6839, !noundef !17 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.as = icmp eq i16 %i.ap, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i484, i64 24 ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.8.0.i.i.i483, 1
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.f
  %.sroa.01.0.i.i.i484 = phi ptr [ %i.at, %bb.f ], [ %i.an, %.preheader.i ] ; 3 uses
  %.sroa.8.0.i.i.i483 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %.sroa.01.0.i.i.i484, i64 8
  %.val6.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !6839, !nonnull !17, !noundef !17
  %i.ax = getelementptr i8, ptr %.sroa.01.0.i.i.i484, i64 16
  %.val7.i.i.i = load i64, ptr %i.ax, align 8, !noalias !6839, !noundef !17 ; 2 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val7.i.i.i)
  %i.ay = sub i64 %1, %.val7.i.i.i
  %i.az = tail call i32 @memcmp(ptr nonnull readonly align 1 %0, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %..i.i.i.i), !alias.scope !6840, !noalias !6841 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %spec.store.select.i.i.i.i = select i1 %i.bb, i64 %i.ay, i64 %i.ba
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i, i64 0)
  switch i8 %i.bc, label %bb.g [
    i8 -1, label %._crit_edge
    i8 0, label %bb.j
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %.preheader.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.aq, %.preheader.i ], [ %i.aq, %bb.f ], [ %.sroa.8.0.i.i.i483, %.lr.ph ] ; 2 uses
  %i.bd = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 368
  %i.bf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.4.0.i.ph.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !6842, !nonnull !17, !noundef !17
  %i.bi = add i64 %.sroa.3.0.i.i, -1
  br label %.preheader.i

"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit": ; preds = %bb.u, %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118", %.body35.thread, %bb.bz, %.body113, %bb.i
  %.pn29 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.cd, %bb.u ], [ %eh.lpad-body114, %bb.bz ], [ %eh.lpad-body114, %.body113 ], [ %.pn27338, %.body35.thread ], [ %.pn27338, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118" ], [ %i.cd, %bb.v ]
  invoke fastcc void @"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E"(ptr nonnull %.sroa.0.0.i.i, i8 %.sroa.01.0.i.i) #55
          to label %bb.fa unwind label %bb.ez

bb.i:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.j:                                             ; preds = %.lr.ph
  %i.bk = icmp samesign ult i64 %.sroa.8.0.i.i.i483, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 272
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.8.0.i.i.i483 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !17, !noundef !17
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.k

.loopexit:                                        ; preds = %._crit_edge, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @270, i64 noundef 20)
          to label %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bm, align 8, !nonnull !17, !noundef !17
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit", %bb.k
  %.sroa.0.0 = phi ptr [ %i.bq, %bb.k ], [ %i.fh, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit" ]
  %i.br = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.br, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.bv = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.aj monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bw = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.q, label %"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit", !prof !22

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
  br label %"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit"

"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret ptr %.sroa.0.0

_ZN3std3env3var17h96a3dfc9e5c5af63E.exit:         ; preds = %.loopexit
  %i.by = load i64, ptr %i.w, align 8, !range !44, !noundef !17
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @271, i64 noundef 5)
          to label %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51 unwind label %bb.w

bb.s:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0167.0.copyload = load i64, ptr %i.ca, align 8 ; 3 uses
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.2168.0.copyload = load ptr, ptr %.sroa.2168.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.3169.0.copyload = load i64, ptr %.sroa.3169.0..sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6843
  %i.cb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6843 ; 8 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.t, label %.thread, !prof !18

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #54
          to label %.noexc52 unwind label %bb.u

.noexc52:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0167.0.copyload, 0
  br i1 %i.ce, label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2168.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2168.0.copyload, i64 noundef %.sroa.0167.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

.body35.thread343:                                ; preds = %.body33, %bb.ap, %bb.ax, %bb.aw
  %.pn.ph = phi { ptr, i32 } [ %i.dl, %bb.ax ], [ %i.cy, %bb.ap ], [ %i.dl, %bb.aw ], [ %eh.lpad-body34, %.body33 ]
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$std..process..Output$GT$17h1f37fb7fdb4e03eeE"(ptr noalias noundef align 8 dereferenceable(56) %i.v) #55
  br label %.body35.thread

.body35:                                          ; preds = %bb.bt, %.body.i
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$std..process..Output$GT$17h1f37fb7fdb4e03eeE"(ptr noalias noundef align 8 dereferenceable(56) %i.v) #55
  br label %.body35.thread

bb.w:                                             ; preds = %bb.ab, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body35.thread

.thread:                                          ; preds = %bb.s
  store i64 1, ptr %i.cb, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 1, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.0167.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %.sroa.2168.0.copyload, ptr %.sroa.7138.0..sroa_idx, align 8
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i64 %.sroa.3169.0.copyload, ptr %.sroa.8139.0..sroa_idx, align 8
  store ptr %i.cb, ptr %i.x, align 8
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

bb.x:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i", %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !6844)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i92 = load i64, ptr %i.cg, align 8, !range !30, !alias.scope !6844, !noundef !17 ; 2 uses
  %switch.i93 = icmp sgt i64 %.val.i92, 0
  br i1 %switch.i93, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51:       ; preds = %bb.r
  %i.ch = load i64, ptr %i.s, align 8, !range !44, !noundef !17
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.013.0.copyload = load i64, ptr %i.cj, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.614.sroa.0.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.614.sroa.6.0.copyload = load i64, ptr %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not23 = icmp eq i64 %.sroa.013.0.copyload, -9223372036854775808
  br i1 %.not23, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51
  call void @llvm.experimental.noalias.scope.decl(metadata !6845)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i53 = load i64, ptr %i.ck, align 8, !range !30, !alias.scope !6845, !noundef !17 ; 2 uses
  %switch.i54 = icmp sgt i64 %.val.i53, 0
  br i1 %switch.i54, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55": ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i57 = load ptr, ptr %i.cl, align 8, !alias.scope !6845, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i57, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6845
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59"

bb.aa:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59", %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6846
  %i.cm = call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 17) 1) #51, !noalias !6846 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc60 unwind label %bb.w

.noexc60:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.y, %bb.ah
  %.sroa.8131.0 = phi i64 [ 5, %bb.ah ], [ %.sroa.614.sroa.6.0.copyload, %bb.y ]
  %.sroa.6130.0 = phi ptr [ %i.cm, %bb.ah ], [ %.sroa.614.sroa.0.0.copyload, %bb.y ] ; 3 uses
  %.sroa.0129.0 = phi i64 [ 5, %bb.ah ], [ %.sroa.013.0.copyload, %bb.y ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6847
  invoke void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6130.0, i64 noundef %.sroa.8131.0)
          to label %bb.af unwind label %bb.ad, !noalias !6847

bb.ad:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.cp, label %.body35.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6130.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6848
  br label %.body35.thread

bb.af:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.t, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false), !noalias !6849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6847
  %i.cq = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.cq, label %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6130.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6850
  br label %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55", %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aa

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cm, ptr noundef nonnull align 1 dereferenceable(5) @272, i64 5, i1 false), !noalias !6851
  br label %bb.ac

_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit: ; preds = %bb.ag, %bb.af
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @273, i64 noundef 8)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit, %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit, %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body31:                                          ; preds = %bb.al, %bb.ai
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.cr, %bb.ai ], [ %i.cw, %bb.al ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hef1e85d7257766f3E"(ptr noalias noundef align 8 dereferenceable(200) %i.t) #55
          to label %.body35.thread unwind label %bb.ez

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit: ; preds = %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @274, i64 noundef 18)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68 unwind label %bb.ai

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @275, i64 noundef 9)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70 unwind label %bb.ai

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68
  invoke void @_ZN3std3sys7process4unix6common7Command3cwd17ha513e54c1ebad924E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit unwind label %bb.ai

_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70
  invoke void @_ZN3std7process7Command6output17h43c2bcdedd19a7a1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t)
          to label %bb.aj unwind label %bb.ai

bb.aj:                                            ; preds = %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6852)
  call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  %i.cs = load i64, ptr %i.u, align 8, !range !30, !alias.scope !6853, !noalias !6852, !noundef !17
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.ct, label %bb.ak, label %bb.ao, !prof !22

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6854
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !6853, !noalias !6852, !nonnull !17, !noundef !17
  store ptr %i.cv, ptr %i.l, align 8, !noalias !6854
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #54
          to label %bb.am unwind label %bb.al, !noalias !6854

bb.al:                                            ; preds = %bb.ak
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #55
          to label %.body31 unwind label %bb.an, !noalias !6854

bb.am:                                            ; preds = %bb.ak
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6854
  unreachable

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !alias.scope !6854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hef1e85d7257766f3E"(ptr noalias noundef align 8 dereferenceable(200) %i.t)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.at, %bb.aq, %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body35.thread343

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !17
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.dc)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  %i.dd = load i64, ptr %i.p, align 8, !range !44, !alias.scope !6855, !noalias !6856, !noundef !17
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.as, label %bb.at, !prof !22

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6857
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !noalias !6856
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #54
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !6855, !noalias !6856, !nonnull !17, !align !31, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !6855, !noalias !6856, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_ZN5insta7content4yaml8vendored4yaml10YamlLoader13load_from_str17h79de1e42ca6e037bE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.dj)
          to label %bb.au unwind label %bb.ap

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  call void @llvm.experimental.noalias.scope.decl(metadata !6859)
  %i.dk = load i64, ptr %i.q, align 8, !range !30, !alias.scope !6859, !noalias !6858, !noundef !17
  %.not.i = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %.not.i, label %bb.az, label %bb.av, !prof !23

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !6858
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #54
          to label %bb.ay unwind label %bb.aw, !noalias !6860

bb.aw:                                            ; preds = %bb.av
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6861)
  call void @llvm.experimental.noalias.scope.decl(metadata !6862), !noalias !6860
  %.val.i.i72 = load i64, ptr %i.n, align 8, !alias.scope !6863, !noalias !6860 ; 2 uses
  %i.dm = icmp eq i64 %.val.i.i72, 0
  br i1 %i.dm, label %.body35.thread343, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !6863, !noalias !6860, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6864
  br label %.body35.thread343

bb.ay:                                            ; preds = %bb.av
  unreachable

bb.az:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !alias.scope !6860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !17 ; 4 uses
  %.not24 = icmp eq i64 %i.dq, 0
  br i1 %.not24, label %bb.ba, label %bb.bb, !prof !22

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @279, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #54
          to label %bb.bf unwind label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !17, !noundef !17 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6866
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6867
  %i.dt = call noundef dereferenceable_or_null(14) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 14, i64 noundef range(i64 1, 17) 1) #51, !noalias !6867 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.invoke, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i": ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.dt, ptr noundef nonnull readonly align 1 dereferenceable(14) @281, i64 14, i1 false), !noalias !6868
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 14, ptr %i.dv, align 8, !noalias !6866
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.dt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !6866
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 14, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !6866
  store i8 2, ptr %i.j, align 8, !noalias !6866
  %i.dw = load i8, ptr %i.ds, align 8, !range !16, !alias.scope !6865, !noalias !6869, !noundef !17
  %i.dx = icmp eq i8 %i.dw, 5
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dz = call fastcc noundef align 8 dereferenceable_or_null(72) ptr @"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$3get17h80951a8a965ccc7dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j), !noalias !6869 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dz, null
  %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E..i = select i1 %.not.i75, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, ptr %i.dz
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"
  %.sroa.0.0.i74 = phi ptr [ %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E..i, %bb.bc ], [ @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i" ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.j)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %.invoke, %bb.bd, %bb.bi, %bb.ba
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.body33:                                          ; preds = %bb.bl, %bb.bm, %bb.be
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.ea, %bb.be ], [ %i.eo, %bb.bm ], [ %i.eo, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #55
          to label %.body35.thread343 unwind label %bb.ez

bb.bf:                                            ; preds = %bb.bi, %bb.ba
  unreachable

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6866
  %i.eb = load i8, ptr %.sroa.0.0.i74, align 8, !range !16, !noundef !17
  %.not = icmp eq i8 %i.eb, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 24
  %i.ef = load i64, ptr %i.ee, align 8            ; 9 uses
  br i1 %.not, label %bb.bh, label %bb.bi, !prof !23

bb.bh:                                            ; preds = %bb.bg
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.bh
  %i.eh = icmp eq i64 %i.ef, 0                    ; 2 uses
  br i1 %i.eh, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6870
  %i.ei = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ef, i64 noundef range(i64 1, 17) 1) #51, !noalias !6870 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.invoke, label %bb.bj

.invoke:                                          ; preds = %bb.bb, %bb.bh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.ek = phi i64 [ 0, %bb.bh ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 1, %bb.bb ]
  %i.el = phi i64 [ %i.ef, %bb.bh ], [ %i.ef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 14, %bb.bb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ek, i64 %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #54
          to label %bb.bf unwind label %bb.be

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ei, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ed, i64 %i.ef, i1 false), !noalias !6871
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6872
  %i.em = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6872 ; 9 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.bk, label %bb.bn, !prof !18

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #54
          to label %.noexc82 unwind label %bb.bl

.noexc82:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.eh, label %.body33, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 1) #51
  br label %.body33

bb.bn:                                            ; preds = %bb.bj
  store i64 1, ptr %i.em, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 1, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %i.ef, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %.sroa.10.0.i.i, ptr %.sroa.7163.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i64 %i.ef, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %i.em, ptr %i.x, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.ep = icmp eq i64 %i.er, %i.dq
  br i1 %i.ep, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i", label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.sroa.0.0.i.i.i487 = phi i64 [ 0, %bb.bn ], [ %i.er, %bb.bo ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.sroa.0.0.i.i.i487
  %i.er = add i64 %.sroa.0.0.i.i.i487, 1          ; 4 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.eq)
          to label %bb.bo unwind label %bb.br, !noalias !6873, !inline_history !9

bb.bq:                                            ; preds = %.lr.ph490
  %i.es = add i64 %.sroa.0.1.i.i.i488, 1          ; 2 uses
  %i.et = icmp eq i64 %i.es, %i.dq
  br i1 %i.et, label %.body.i, label %.lr.ph490

bb.br:                                            ; preds = %bb.bp
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = icmp eq i64 %i.er, %i.dq
  br i1 %i.ev, label %.body.i, label %.lr.ph490

.lr.ph490:                                        ; preds = %bb.br, %bb.bq
  %.sroa.0.1.i.i.i488 = phi i64 [ %i.es, %bb.bq ], [ %i.er, %bb.br ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.sroa.0.1.i.i.i488
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.ew) #55
          to label %bb.bq unwind label %bb.bs, !noalias !6873, !inline_history !9

bb.bs:                                            ; preds = %.lr.ph490
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6873, !inline_history !9
  unreachable

.body.i:                                          ; preds = %bb.bq, %bb.br
  %.val2.i = load i64, ptr %i.r, align 8, !range !20, !alias.scope !6873, !noundef !17 ; 2 uses
  %i.ey = icmp eq i64 %.val2.i, 0
  br i1 %i.ey, label %.body35, label %bb.bt

bb.bt:                                            ; preds = %.body.i
  %i.ez = mul nuw i64 %.val2.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6873, !inline_history !64
  br label %.body35

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i": ; preds = %bb.bo
  %.val.i85 = load i64, ptr %i.r, align 8, !range !20, !alias.scope !6873, !noundef !17 ; 2 uses
  %i.fa = icmp eq i64 %.val.i85, 0
  br i1 %i.fa, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit", label %bb.bu

bb.bu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i"
  %i.fb = mul nuw i64 %.val.i85, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6873, !inline_history !64
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit": ; preds = %bb.bu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  %.val4.i88 = load i64, ptr %i.v, align 8, !alias.scope !6874 ; 2 uses
  %i.fc = icmp eq i64 %.val4.i88, 0
  br i1 %i.fc, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i", label %bb.bv

bb.bv:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %.val4.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6874
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i": ; preds = %bb.bv, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val.i90 = load i64, ptr %i.fd, align 8, !alias.scope !6874 ; 2 uses
  %i.fe = icmp eq i64 %.val.i90, 0
  br i1 %i.fe, label %bb.x, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i"
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val1.i91 = load ptr, ptr %i.ff, align 8, !alias.scope !6874, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i91, i64 noundef %.val.i90, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6874
  br label %bb.x

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95": ; preds = %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i97 = load ptr, ptr %i.fg, align 8, !alias.scope !6844, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i97, i64 noundef %.val.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6844
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99": ; preds = %.thread, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95", %bb.x
  %i.fh = phi ptr [ %i.cb, %.thread ], [ %i.em, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95" ], [ %i.em, %bb.x ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fi = icmp slt i64 %1, 0
  br i1 %i.fi, label %bb.bx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100: ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"
  %i.fj = icmp eq i64 %1, 0                       ; 4 uses
  br i1 %i.fj, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6875
  %i.fk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, 17) 1) #51, !noalias !6875 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101", %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"
  %.sroa.4.0.ph.i.i105 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101" ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i105, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc106 unwind label %bb.by

.noexc106:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.cy, %bb.cz, %bb.dk, %bb.dl, %bb.do, %bb.dp, %bb.en, %bb.eo, %bb.eu, %bb.ev, %bb.by
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.fm, %bb.by ], [ %i.iy, %bb.dp ], [ %lpad.phi.i.i.i, %bb.eo ], [ %i.qf, %bb.ev ], [ %i.iy, %bb.do ], [ %i.iu, %bb.dl ], [ %i.qf, %bb.eu ], [ %i.iu, %bb.dk ], [ %i.ia, %bb.cy ], [ %lpad.phi.i.i.i, %bb.en ], [ %i.ia, %bb.cz ] ; 2 uses
  %i.fn = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !6876
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bz, label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.bz:                                            ; preds = %.body113
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100
  %.sroa.10.0.i.i102 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100 ], [ %i.fk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101" ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i102, ptr nonnull readonly align 1 %0, i64 %1, i1 false), !noalias !6877
  %i.fp = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.ew, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !6878)
  call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  %i.fr = load ptr, ptr %i.al, align 8, !alias.scope !6880, !noalias !6881, !noundef !17 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i108, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fs = load i64, ptr %i.am, align 8, !alias.scope !6880, !noalias !6881, !noundef !17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %.sroa.3.0.i.i.i = phi i64 [ %i.fs, %bb.cc ], [ %i.go, %bb.cg ] ; 2 uses
  %.sroa.0.0.i.i.i110 = phi ptr [ %i.fr, %bb.cc ], [ %i.gn, %bb.cg ] ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 362
  %i.fv = load i16, ptr %i.fu, align 2, !noalias !6882, !noundef !17 ; 4 uses
  %i.fw = zext i16 %i.fv to i64                   ; 5 uses
  %.idx499 = mul nuw nsw i64 %i.fw, 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx499
  %i.fy = icmp eq i16 %i.fv, 0
  br i1 %i.fy, label %._crit_edge495, label %.lr.ph494

bb.ce:                                            ; preds = %.lr.ph494
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i492, i64 24 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.8.0.i.i.i.i491, 1
  %i.gb = icmp eq ptr %i.fz, %i.fx
  br i1 %i.gb, label %._crit_edge495, label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.cd, %bb.ce
  %.sroa.03.0.i.i.i.i492 = phi ptr [ %i.fz, %bb.ce ], [ %i.ft, %bb.cd ] ; 3 uses
  %.sroa.8.0.i.i.i.i491 = phi i64 [ %i.ga, %bb.ce ], [ 0, %bb.cd ] ; 3 uses
  %i.gc = getelementptr i8, ptr %.sroa.03.0.i.i.i.i492, i64 8
  %.val8.i.i.i.i = load ptr, ptr %i.gc, align 8, !noalias !6882, !nonnull !17, !noundef !17
  %i.gd = getelementptr i8, ptr %.sroa.03.0.i.i.i.i492, i64 16
  %.val9.i.i.i.i = load i64, ptr %i.gd, align 8, !noalias !6882, !noundef !17 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %1, i64 %.val9.i.i.i.i)
  %i.ge = sub i64 %1, %.val9.i.i.i.i
  %i.gf = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.10.0.i.i102, ptr nonnull readonly align 1 %.val8.i.i.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !6883, !noalias !6882 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp eq i32 %i.gf, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.gh, i64 %i.ge, i64 %i.gg
  %i.gi = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i, i64 0)
  switch i8 %i.gi, label %bb.cf [
    i8 -1, label %._crit_edge495
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
    i8 1, label %bb.ce
  ]

bb.cf:                                            ; preds = %.lr.ph494
  unreachable

._crit_edge495:                                   ; preds = %bb.ce, %.lr.ph494, %bb.cd
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.fw, %bb.cd ], [ %i.fw, %bb.ce ], [ %.sroa.8.0.i.i.i.i491, %.lr.ph494 ] ; 13 uses
  %i.gj = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.gj, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1a2b9517f2064d5cE.exit.i", label %bb.cg

bb.cg:                                            ; preds = %._crit_edge495
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 368
  %i.gl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.sroa.4.0.i.ph.i.i.i
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !6884, !nonnull !17, !noundef !17
  %i.go = add i64 %.sroa.3.0.i.i.i, -1
  br label %bb.cd

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i": ; preds = %.lr.ph494
  br i1 %i.fj, label %bb.ex, label %bb.ch

bb.ch:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6885
  br label %bb.ex

bb.ci:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6886
  store ptr %i.fh, ptr %i.i, align 8, !noalias !6887
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6888
  %i.gp = call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6888 ; 8 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cj, label %bb.ck, !prof !22

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #54
          to label %.noexc.i.i unwind label %bb.es, !noalias !6888

.noexc.i.i:                                       ; preds = %bb.cj
  unreachable

end_hunk_1
begin_hunk_2_@_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E:bb.a
  %i.oy = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i16 %i.oy, ptr %i.oz, align 8, !noalias !6953
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol, !llvm.loop !6815

.lr.ph.i.i45.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i45.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.preheader
  %.sroa.0.06.i.i46.i.i.i.i.unr = phi i64 [ %i.ny, %.lr.ph.i.i45.i.i.i.i.preheader ], [ %i.ou, %.lr.ph.i.i45.i.i.i.i.prol ]
  %i.pa = icmp ult i64 %i.ot, 3
  br i1 %i.pa, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

.lr.ph.i.i45.i.i.i.i:                             ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i
  %.sroa.0.06.i.i46.i.i.i.i = phi i64 [ %i.pq, %.lr.ph.i.i45.i.i.i.i ], [ %.sroa.0.06.i.i46.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.pb = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i46.i.i.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pd, align 8, !noalias !6953
  %i.pe = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 360
  store i16 %i.pe, ptr %i.pf, align 8, !noalias !6953
  %i.pg = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pb
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pi, align 8, !noalias !6953
  %i.pj = trunc nuw nsw i64 %i.pb to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 360
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !6953
  %i.pl = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pg
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pn, align 8, !noalias !6953
  %i.po = trunc nuw nsw i64 %i.pg to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 360
  store i16 %i.po, ptr %i.pp, align 8, !noalias !6953
  %i.pq = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 4 ; 2 uses
  %i.pr = icmp ult i64 %.sroa.0.06.i.i46.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pl
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pt, align 8, !noalias !6953
  %i.pu = trunc nuw nsw i64 %i.pl to i16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 360
  store i16 %i.pu, ptr %i.pv, align 8, !noalias !6953
  %exitcond.not.i.i47.i.i.i.i.3 = icmp eq i64 %i.pq, %i.oo
  br i1 %exitcond.not.i.i47.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

bb.ek:                                            ; preds = %bb.ea
  %i.pw = add nsw i64 %i.jg, -7
  br label %bb.eg

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i, %bb.ej
  %.sroa.842.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.845.0.copyload.i.i.i = load ptr, ptr %.sroa.845.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.948.0.copyload.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6954
  br label %bb.ep

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i, %bb.ef
  %.sroa.842.sroa.0.0.copyload270.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.6.0.copyload271.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.7.0.copyload272.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.948.0.copyload50.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.1051.0.copyload53.i.i.i = load ptr, ptr %i.ij, align 8, !noalias !6954
  br label %bb.ep

.loopexit.i.i.i:                                  ; preds = %bb.eb, %bb.ea, %.invoke.i34.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp.i.i.i:                         ; preds = %bb.dr
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.px = atomicrmw sub ptr %.sroa.16.1.i.i.i, i64 1 release, align 8, !noalias !6955
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c), !noalias !6928
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.pz = icmp eq i64 %.sroa.039.0180.i.i.i, 0
  br i1 %i.pz, label %.body113, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.1.i.i.i, i64 noundef %.sroa.039.0180.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6956
  br label %.body113

.thread112.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6892
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.ep:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i"
  %.sroa.842.sroa.0.0.i.i.i = phi ptr [ %.sroa.842.sroa.0.0.copyload270.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.6.0.i.i.i = phi i64 [ %.sroa.842.sroa.6.0.copyload271.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.7.0.i.i.i = phi ptr [ %.sroa.842.sroa.7.0.copyload272.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.7.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.1051.0.i.i.i = phi ptr [ %.sroa.1051.0.copyload53.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %i.ns, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 3 uses
  %.sroa.948.0.i.i.i = phi i64 [ %.sroa.948.0.copyload50.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.948.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.845.0.i.i.i = phi ptr [ %i.lo, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.845.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 4 uses
  %.sroa.039.0.i.i.i = load i64, ptr %i.a, align 8, !noalias !6954 ; 3 uses
  %.sroa.1154.0.copyload56.i.i.i = load i64, ptr %.sroa.1154.0..sroa_idx.i.i.i, align 8, !noalias !6954 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6892
  %.not16.i.i.i = icmp eq i64 %.sroa.039.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.845.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.i.i.i) ]
  %i.qa = load ptr, ptr %.sroa.845.0.i.i.i, align 8, !noalias !6912, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.dq

bb.er:                                            ; preds = %bb.dh
  store i16 1, ptr %i.ip, align 2, !noalias !6921
  %i.qb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %.sroa.0.0.i.i8.i, ptr %i.qb, align 8, !noalias !6913
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !6913
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !6913
  %i.qc = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  store ptr %.sroa.16.0.i.i.i, ptr %i.qc, align 8, !noalias !6921
  %i.qd = getelementptr inbounds nuw i8, ptr %i.im, i64 376
  store ptr %.lcssa134.i.i.i, ptr %i.qd, align 8, !noalias !6921
  store ptr %i.im, ptr %.lcssa134.i.i.i, align 8, !noalias !6957
  %i.qe = getelementptr inbounds nuw i8, ptr %.lcssa134.i.i.i, i64 360
  store i16 1, ptr %i.qe, align 8, !noalias !6957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6892
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.es:                                            ; preds = %bb.cj
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !6958
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6888
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  br i1 %i.fj, label %.body113, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6959
  br label %.body113

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread": ; preds = %bb.ep, %bb.ck, %.thread.i.i.i, %bb.da, %.thread112.i.i.i, %bb.er
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !6878, !noalias !6888, !noundef !17
  %i.qk = add i64 %i.qj, 1
  store i64 %i.qk, ptr %i.qi, align 8, !alias.scope !6878, !noalias !6888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6886
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ew:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.ex:                                            ; preds = %bb.ch, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 272
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.8.0.i.i.i.i491 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !6960, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fh, ptr %i.qm, align 8, !noalias !6960
  store ptr %i.qn, ptr %i.o, align 8
  %i.qo = atomicrmw sub ptr %i.qn, i64 1 release, align 8, !noalias !6961
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.ey, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit": ; preds = %bb.ey, %bb.ex, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.m

bb.ez:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", %.body33, %.body31
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body35.thread:                                   ; preds = %.body35, %.body31, %bb.w, %bb.ae, %bb.ad, %.body35.thread343
  %.pn27338 = phi { ptr, i32 } [ %.pn.ph, %.body35.thread343 ], [ %i.eu, %.body35 ], [ %i.co, %bb.ad ], [ %i.co, %bb.ae ], [ %i.cf, %bb.w ], [ %eh.lpad-body32, %.body31 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6962)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i115 = load i64, ptr %i.qr, align 8, !range !30, !alias.scope !6962, !noundef !17 ; 2 uses
  %switch.i116 = icmp sgt i64 %.val.i115, 0
  br i1 %switch.i116, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118", label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118": ; preds = %.body35.thread
  %i.qs = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i120 = load ptr, ptr %i.qs, align 8, !alias.scope !6962, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i120, i64 noundef %.val.i115, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6962
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.fa:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 16 dereferenceable_or_null(64) ptr @_ZN5insta3env7resolve17h78cdb00d323002e5E(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #27 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6976)
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.c, %.lr.ph.i
  %.tr.i.i.i = phi ptr [ %0, %.lr.ph.i ], [ %i.c, %bb.c ] ; 5 uses
  %i.a = load i8, ptr %.tr.i.i.i, align 16, !range !51, !noalias !6977, !noundef !17
  switch i8 %i.a, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.c
    i8 21, label %bb.a
    i8 22, label %bb.b
    i8 27, label %bb.d
    i8 28, label %.loopexit40
    i8 29, label %bb.i
  ]

bb.a:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.b:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %tailrecurse.i.i.i
  %.sink.i.i.i = phi i64 [ 40, %bb.b ], [ 24, %bb.a ], [ 8, %tailrecurse.i.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink.i.i.i
  %i.c = load ptr, ptr %i.b, align 8, !noalias !6977, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i

bb.d:                                             ; preds = %tailrecurse.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !6977, !nonnull !17, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noalias !6977, !noundef !17 ; 2 uses
  %.idx5.i.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx5.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !6976, !noalias !6978, !nonnull !17, !align !31, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6976, !noalias !6979 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.q, %.backedge.i.i.i ] ; 3 uses
  br label %tailrecurse.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.e
  %.tr.i.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.h ] ; 4 uses
  %i.n = load i8, ptr %.tr.i.i.i.i.i.i, align 16, !range !51, !noalias !6980, !noundef !17 ; 2 uses
  switch i8 %i.n, label %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i [
    i8 17, label %bb.h
    i8 21, label %bb.f
    i8 22, label %bb.g
  ]

bb.f:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %tailrecurse.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 40, %bb.g ], [ 24, %bb.f ], [ 8, %tailrecurse.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !noalias !6980, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i.i.i.i

_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 14
  %i.r = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !6980
  %.not6.i.i.i.i = icmp eq i64 %i.s, %i.l
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 %.not6.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !6980, !nonnull !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.j, i64 %i.l), !noalias !6980
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i", label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.w = icmp eq ptr %i.q, %i.h
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i": ; preds = %.split.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

.loopexit40:                                      ; preds = %tailrecurse.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i, %.loopexit40
  %.sink = phi i64 [ 24, %.loopexit40 ], [ 40, %tailrecurse.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !6977, !nonnull !17, !noundef !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !6977, !noundef !17 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ac, 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !6976, !noalias !6981, !noundef !17 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !6976, !noalias !6979, !nonnull !17, !align !31
  br label %bb.j

bb.j:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i", %.lr.ph.i8.i.i
  %i.ai = phi ptr [ %i.aa, %.lr.ph.i8.i.i ], [ %i.aj, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i" ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !6982, !noundef !17
  %.not.i.i9.i.i = icmp eq i64 %i.al, %i.ag
  br i1 %.not.i.i9.i.i, label %.split.i11.i.i, label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

.split.i11.i.i:                                   ; preds = %bb.j
  %i.am = load ptr, ptr %i.ai, align 16, !noalias !6982, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i12.i.i = tail call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %i.ah, i64 %i.ag), !noalias !6982
  %i.an = icmp eq i32 %bcmp.i.i12.i.i, 0
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i": ; preds = %.split.i11.i.i, %bb.j
  %i.ao = icmp eq ptr %i.aj, %i.ad
  br i1 %i.ao, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i": ; preds = %.split.i11.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i"
  %.sroa.0.1.i.i = phi ptr [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i" ]
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6983)
  br label %tailrecurse.i.i.i.1

tailrecurse.i.i.i.1:                              ; preds = %bb.t, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"
  %.tr.i.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i" ], [ %i.cf, %bb.t ] ; 5 uses
  %i.aq = load i8, ptr %.tr.i.i.i.1, align 16, !range !51, !noalias !6984, !noundef !17
  switch i8 %i.aq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.t
    i8 21, label %bb.s
    i8 22, label %bb.r
    i8 27, label %bb.m
    i8 28, label %bb.k
    i8 29, label %.loopexit
  ]

.loopexit:                                        ; preds = %tailrecurse.i.i.i.1
  br label %bb.k

bb.k:                                             ; preds = %tailrecurse.i.i.i.1, %.loopexit
  %.sink21 = phi i64 [ 40, %.loopexit ], [ 24, %tailrecurse.i.i.i.1 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 %.sink21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !6984, !nonnull !17, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !6984, !noundef !17 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %i.av, 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.1
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i.1

.lr.ph.i8.i.i.1:                                  ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6983, !noalias !6981, !noundef !17 ; 2 uses
  %i.ba = load ptr, ptr %.ptr.1, align 8, !alias.scope !6983, !noalias !6979, !nonnull !17, !align !31
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1", %.lr.ph.i8.i.i.1
  %i.bb = phi ptr [ %i.at, %.lr.ph.i8.i.i.1 ], [ %i.bc, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1" ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !6985, !noundef !17
  %.not.i.i9.i.i.1 = icmp eq i64 %i.be, %i.az
end_hunk_2
begin_hunk_3_@_ZN5insta7content4json10Serializer9serialize17hc8841bfc3f2f3249E:bb.a
  %i.qo = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !noundef !17
  %i.qq = zext i32 %i.qp to i64
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread.thread

.split:                                           ; preds = %tailrecurse.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.qs = load i128, ptr %i.qr, align 16, !noundef !17 ; 2 uses
  %i.qt = trunc i128 %i.qs to i64                 ; 2 uses
  %i.qu = sext i64 %i.qt to i128
  %i.qv = icmp eq i128 %i.qs, %i.qu
  br i1 %i.qv, label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread, label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread376

bb.cq:                                            ; preds = %tailrecurse.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 1
  %i.qx = load i8, ptr %i.qw, align 1, !noundef !17
  %i.qy = sext i8 %i.qx to i64
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread

bb.cr:                                            ; preds = %tailrecurse.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 2
  %i.ra = load i16, ptr %i.qz, align 2, !noundef !17
  %i.rb = sext i16 %i.ra to i64
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread

bb.cs:                                            ; preds = %tailrecurse.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  %i.rd = load i32, ptr %i.rc, align 4, !noundef !17
  %i.re = sext i32 %i.rd to i64
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread

bb.ct:                                            ; preds = %tailrecurse.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.rg = load i64, ptr %i.rf, align 8, !noundef !17
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread

bb.cu:                                            ; preds = %tailrecurse.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !noundef !17
  br label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread

_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit: ; preds = %tailrecurse.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.rk = load i128, ptr %i.rj, align 16, !noundef !17 ; 2 uses
  %i.rl = trunc i128 %i.rk to i64                 ; 2 uses
  %i.rm = sext i64 %i.rl to i128
  %i.rn = icmp eq i128 %i.rk, %i.rm
  br i1 %i.rn, label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread, label %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread376

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237": ; preds = %bb.dk, %bb.dj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit243", %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !10468)
  %i.ro = load i8, ptr %i.jd, align 8, !range !19, !alias.scope !10468, !noundef !17
  %i.rp = icmp eq i8 %i.ro, 0
  br i1 %i.rp, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"
  call void @llvm.experimental.noalias.scope.decl(metadata !10469)
  call void @llvm.experimental.noalias.scope.decl(metadata !10470)
  %i.rq = load i64, ptr %i.ig, align 8, !alias.scope !10471, !noundef !17 ; 5 uses
  %i.rr = icmp sgt i64 %i.rq, -1
  call void @llvm.assume(i1 %i.rr)
  %i.rs = load i64, ptr %0, align 8, !range !20, !alias.scope !10472, !noundef !17
  %i.rt = icmp eq i64 %i.rs, %i.rq
  br i1 %i.rt, label %bb.cw, label %_ZN5insta7content4json10Serializer10write_char17h67405558e26b0730E.exit.i225, !prof !22

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.rq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i226 = load i64, ptr %i.ig, align 8, !alias.scope !10471
  br label %_ZN5insta7content4json10Serializer10write_char17h67405558e26b0730E.exit.i225

_ZN5insta7content4json10Serializer10write_char17h67405558e26b0730E.exit.i225: ; preds = %bb.cw, %bb.cv
  %i.ru = phi i64 [ %i.rq, %bb.cv ], [ %.pre.i.i.i226, %bb.cw ] ; 2 uses
  %i.rv = load ptr, ptr %i.im, align 8, !alias.scope !10471, !nonnull !17, !noundef !17
  %i.rw = icmp sgt i64 %i.ru, -1
  call void @llvm.assume(i1 %i.rw)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ru
  store i8 58, ptr %i.rx, align 1, !noalias !10471
  %i.ry = add nuw i64 %i.rq, 1
  br label %_ZN5insta7content4json10Serializer11write_colon17hee67ff73896868b5E.exit227

bb.cx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"
  call void @llvm.experimental.noalias.scope.decl(metadata !10473)
  call void @llvm.experimental.noalias.scope.decl(metadata !10474)
  call void @llvm.experimental.noalias.scope.decl(metadata !10475)
  %i.rz = load i64, ptr %i.ig, align 8, !alias.scope !10476, !noalias !10477, !noundef !17 ; 3 uses
  %i.sa = load i64, ptr %0, align 8, !range !20, !alias.scope !10476, !noalias !10477, !noundef !17
  %i.sb = sub i64 %i.sa, %i.rz
  %i.sc = icmp ult i64 %i.sb, 2
  br i1 %i.sc, label %bb.cy, label %_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE.exit.i223, !prof !22

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.rz, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !10477
  %.pre.i.i.i.i224 = load i64, ptr %i.ig, align 8, !alias.scope !10478, !noalias !10477
  br label %_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE.exit.i223

_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE.exit.i223: ; preds = %bb.cy, %bb.cx
  %i.sd = phi i64 [ %i.rz, %bb.cx ], [ %.pre.i.i.i.i224, %bb.cy ] ; 3 uses
  %i.se = icmp sgt i64 %i.sd, -1
  call void @llvm.assume(i1 %i.se)
  %i.sf = load ptr, ptr %i.im, align 8, !alias.scope !10478, !noalias !10477, !nonnull !17, !noundef !17
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sd
  store i16 8250, ptr %i.sg, align 1, !noalias !10478
  %i.sh = add nuw i64 %i.sd, 2
  br label %_ZN5insta7content4json10Serializer11write_colon17hee67ff73896868b5E.exit227

_ZN5insta7content4json10Serializer11write_colon17hee67ff73896868b5E.exit227: ; preds = %_ZN5insta7content4json10Serializer10write_char17h67405558e26b0730E.exit.i225, %_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE.exit.i223
  %storemerge384 = phi i64 [ %i.sh, %_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE.exit.i223 ], [ %i.ry, %_ZN5insta7content4json10Serializer10write_char17h67405558e26b0730E.exit.i225 ]
  store i64 %storemerge384, ptr %i.ig, align 8, !alias.scope !10468
  call fastcc void @_ZN5insta7content4json10Serializer9serialize17hc8841bfc3f2f3249E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.pv)
  %i.si = icmp eq ptr %i.pt, %i.iy
  br i1 %i.si, label %._crit_edge, label %bb.cf

_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.sroa.15.0.i375.ph = phi i64 [ %i.qk, %bb.cn ], [ %i.qn, %bb.co ], [ %i.qq, %bb.cp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10479
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10479
  br label %bb.cz

_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread: ; preds = %bb.cr, %bb.cq, %bb.cs, %bb.cu, %bb.ct, %.split, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit
  %.sroa.15.0.i375 = phi i64 [ %i.qt, %.split ], [ %i.rl, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit ], [ %i.rb, %bb.cr ], [ %i.qy, %bb.cq ], [ %i.re, %bb.cs ], [ %i.ri, %bb.cu ], [ %i.rg, %bb.ct ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10480
  %i.sj = icmp slt i64 %.sroa.15.0.i375, 0
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10480
  br i1 %i.sj, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread.thread, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread
  %.sroa.15.0.i375383 = phi i64 [ %.sroa.15.0.i375.ph, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread.thread ], [ %.sroa.15.0.i375, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread ]
  %i.sk = call noundef dereferenceable_or_null(19) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 19, i64 noundef range(i64 1, 17) 1) #51, !noalias !10481 ; 3 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %.noexc.i, label %bb.db

.noexc.i:                                         ; preds = %bb.cz
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #54, !noalias !10480
  unreachable

bb.da:                                            ; preds = %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread
  %i.sm = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, 17) 1) #51, !noalias !10482 ; 4 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %.noexc14.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

.noexc14.i:                                       ; preds = %bb.da
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #54, !noalias !10480
  unreachable

bb.db:                                            ; preds = %bb.cz
  store i64 19, ptr %i.b, align 8, !noalias !10480
  store ptr %i.sk, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10480
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, %bb.db
  %.sroa.15.0.i375382 = phi i64 [ %.sroa.15.0.i375, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %.sroa.15.0.i375383, %bb.db ]
  %i.so = phi ptr [ %i.sm, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %i.sk, %bb.db ]
  %i.sp = phi i64 [ 20, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 19, %bb.db ]
  %i.sq = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 0, %bb.db ] ; 4 uses
  store i64 %i.sq, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !10480
  %.sroa.011.0.i = call i64 @llvm.abs.i64(i64 %.sroa.15.0.i375382, i1 false)
  %i.sr = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h04203418c0187945E"(i64 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 19)
          to label %bb.dd unwind label %bb.df, !noalias !10480 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %bb.da
  store i64 20, ptr %i.b, align 8, !noalias !10480
  store ptr %i.sm, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10480
  store i8 45, ptr %i.sm, align 1, !noalias !10483
  br label %bb.dc

bb.dd:                                            ; preds = %bb.dc
  %i.ss = extractvalue { ptr, i64 } %i.sr, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10484)
  call void @llvm.experimental.noalias.scope.decl(metadata !10485)
  %i.st = sub nuw nsw i64 %i.sp, %i.sq
  %i.su = icmp ugt i64 %i.ss, %i.st
  br i1 %i.su, label %bb.de, label %"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E.exit", !prof !22

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.sq, i64 noundef %i.ss, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.df, !noalias !10480

.noexc17.i:                                       ; preds = %bb.de
  %.pre.i.i.i230 = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !10486, !noalias !10480
  %.pre.i231 = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !10486, !noalias !10480
  br label %"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E.exit"

bb.df:                                            ; preds = %bb.de, %bb.dc
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10487)
  %.val.i.i228 = load i64, ptr %i.b, align 8, !alias.scope !10487, !noalias !10480 ; 2 uses
  %i.sv = icmp eq i64 %.val.i.i228, 0
  br i1 %i.sv, label %common.resume, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val1.i.i229 = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !10487, !noalias !10480, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i229, i64 noundef %.val.i.i228, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !10488
  br label %common.resume

"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E.exit": ; preds = %bb.dd, %.noexc17.i
  %i.sw = phi ptr [ %i.so, %bb.dd ], [ %.pre.i231, %.noexc17.i ]
  %i.sx = phi i64 [ %i.sq, %bb.dd ], [ %.pre.i.i.i230, %.noexc17.i ] ; 3 uses
  %i.sy = extractvalue { ptr, i64 } %i.sr, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sy) ]
  %i.sz = icmp sgt i64 %i.sx, -1
  call void @llvm.assume(i1 %i.sz)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ta, ptr nonnull readonly align 1 %i.sy, i64 %i.ss, i1 false), !noalias !10489
  %i.tb = add i64 %i.sx, %i.ss
  %.sroa.0328.0.copyload = load i64, ptr %i.b, align 8 ; 4 uses
  %.sroa.5329.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !nonnull !17, !noundef !17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10480
  invoke fastcc void @_ZN5insta7content4json10Serializer17write_escaped_str17hf5d356faca4f2bd4E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5329.0.copyload, i64 noundef %i.tb)
          to label %bb.dj unwind label %bb.dh

_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread376: ; preds = %tailrecurse.i.i, %.split, %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_ZN5insta7content7Content7as_i12817h7d99a48cdcf80a9cE(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.tr.i)
  %i.tc = load i128, ptr %i.x, align 16, !range !10490, !noundef !17
  %i.td = trunc nuw i128 %i.tc to i1
  br i1 %i.td, label %bb.dl, label %bb.dm, !prof !23

bb.dh:                                            ; preds = %"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E.exit"
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = icmp eq i64 %.sroa.0328.0.copyload, 0
  br i1 %i.tf, label %common.resume, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5329.0.copyload, i64 noundef %.sroa.0328.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !10491
  br label %common.resume

bb.dj:                                            ; preds = %"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E.exit"
  %i.tg = icmp eq i64 %.sroa.0328.0.copyload, 0
  br i1 %i.tg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5329.0.copyload, i64 noundef %.sroa.0328.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !10492
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"

bb.dl:                                            ; preds = %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread376
  %i.th = load i128, ptr %i.ja, align 16, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @"_ZN52_$LT$i128$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h8f20a3858feb3cd9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, i128 %i.th)
  %i.ti = load ptr, ptr %i.jb, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.tj = load i64, ptr %i.jc, align 8, !noundef !17
  invoke fastcc void @_ZN5insta7content4json10Serializer17write_escaped_str17hf5d356faca4f2bd4E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ti, i64 noundef %i.tj)
          to label %bb.dp unwind label %bb.dn

bb.dm:                                            ; preds = %_ZN5insta7content7Content6as_i6417hbae2427605730994E.exit.thread376
  call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @387, i64 noundef 49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @388) #54
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10493)
  %.val.i238 = load i64, ptr %i.w, align 8, !alias.scope !10493 ; 2 uses
  %i.tl = icmp eq i64 %.val.i238, 0
  br i1 %i.tl, label %common.resume, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ti, i64 noundef %.val.i238, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !10493
  br label %common.resume

bb.dp:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !10494)
  %.val.i241 = load i64, ptr %i.w, align 8, !alias.scope !10494 ; 2 uses
  %i.tm = icmp eq i64 %.val.i241, 0
  br i1 %i.tm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit243", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ti, i64 noundef %.val.i241, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !10494
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit243"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit243": ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta7content4json10Serializer9write_str17h35cf388476cec32fE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10502)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10503, !noundef !17 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !alias.scope !10503, !noundef !17
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4ac9490b6fb58d97E.exit", !prof !22

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !10504
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4ac9490b6fb58d97E.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4ac9490b6fb58d97E.exit": ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10504, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !10504
  %i.k = add i64 %i.f, %2
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !10504
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta7content4yaml13to_yaml_value17hc53fd79ff101fe7cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.4177 = alloca [143 x i8], align 1        ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.7174 = alloca [143 x i8], align 1        ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.4169 = alloca [143 x i8], align 1        ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [143 x i8], align 1           ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [20 x i8], align 1                ; 3 uses
  %i.w = alloca [39 x i8], align 1                ; 3 uses
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  %i.x = alloca [72 x i8], align 8                ; 5 uses
  %i.y = alloca [72 x i8], align 8                ; 8 uses
  %i.z = alloca [72 x i8], align 8                ; 5 uses
  %i.aa = alloca [64 x i8], align 8               ; 9 uses
  %i.ab = alloca [72 x i8], align 8               ; 5 uses
  %i.ac = alloca [72 x i8], align 8               ; 8 uses
  %i.ad = alloca [72 x i8], align 8               ; 5 uses
  %i.ae = alloca [64 x i8], align 8               ; 9 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 5 uses
  %i.ai = alloca [64 x i8], align 8               ; 9 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr205 = phi ptr [ %1, %bb.a ], [ %.tr205.be, %tailrecurse.backedge ] ; 42 uses
  %i.aj = load i8, ptr %.tr205, align 16, !range !51, !noundef !17
  switch i8 %i.aj, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.h
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.t
    i8 13, label %bb.y
    i8 14, label %bb.ag
    i8 15, label %bb.ah
    i8 16, label %bb.aj
    i8 17, label %bb.ak
    i8 18, label %bb.aj
    i8 19, label %bb.aj
    i8 20, label %bb.al
    i8 21, label %tailrecurse.backedge
    i8 22, label %bb.an
    i8 23, label %bb.ap
    i8 24, label %bb.aq
    i8 25, label %bb.ar
    i8 26, label %bb.as
    i8 27, label %bb.au
    i8 28, label %bb.bc
    i8 29, label %bb.bk
  ]

default.unreachable:                              ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr205, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !21, !noundef !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.al, ptr %i.am, align 1
  store i8 3, ptr %0, align 8
  br label %bb.bm

end_hunk_3
begin_hunk_4_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h664fa4cd280b4615E":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bu, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.bg, %.lr.ph ], [ %i.bx, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bv, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bx = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.by = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.bz = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.by, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.cb = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ca, align 8, !noalias !20438, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20410

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.by, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.prol ]
  %i.cc = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.cc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.cd, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.ce, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.cf, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.cg, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ch, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ci, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cj, align 8, !noalias !20438, !nonnull !17, !noundef !17
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cl = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ck, align 8, !noalias !20438, !nonnull !17, !noundef !17 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.by, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !noalias !20439, !noundef !17
  %i.cp = zext i16 %i.co to i64
  %i.cq = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.cp
  br i1 %i.cq, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cr, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.ct, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cr = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20440, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.cs = zext i16 %i.cv to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ct = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 8, !noalias !20440 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !20439, !noundef !17
  %i.cy = icmp ult i16 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cs, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ct, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cr, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cz = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.da = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cz, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.dc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.de, %.prol.preheader ], [ %i.dd, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20441, !nonnull !17, !noundef !17 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20424

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.dd, %bb.q ], [ %i.de, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.df = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.df, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.do, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.dg, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.dh, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.di, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.dj, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dk, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dl, align 8, !noalias !20441, !nonnull !17, !noundef !17
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.dm, align 8, !noalias !20441, !nonnull !17, !noundef !17 ; 2 uses
  %i.dn = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.do = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.dn, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20442

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.da, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dt = load i8, ptr %i.ds, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dt, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bw, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20443
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.du = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.du, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dv, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.dw = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !17, !noalias !20444, !nonnull !17
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20444, !inline_history !8
  br i1 %i.dy, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dz = icmp eq i64 %i.bx, 0
  br i1 %i.dz, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h6cef4ee38789b5deE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 79
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  %i.ag = call noundef zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %.loopexit253, label %bb.t

.loopexit213.thread:                              ; preds = %bb.v
  %i.ah = call noundef zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ah, label %.loopexit253, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.af, 8
  br i1 %i.ai, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ak = load i8, ptr %i.aj, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.am = load i8, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.ao, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20480
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ap, label %.loopexit253, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.ar = load i8, ptr %i.aq, align 1, !range !21, !noundef !17
  %i.as = trunc nuw i8 %i.ar to i1
  %switch.idx.cast243 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.as, label %switch.lookup242, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast243, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20481
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.au, label %.loopexit253, label %bb.j

switch.lookup242:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset244 = add nuw nsw i64 %switch.idx.cast243, 8
  store i64 %switch.offset244, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20482
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8154.0..sroa_idx, align 8
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10155.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val108, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !20482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_4
begin_hunk_5_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h6cef4ee38789b5deE":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bm, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.ay, %.lr.ph ], [ %i.bp, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bp = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.bq = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.br = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.br, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bq, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bt = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.bs, align 8, !noalias !20486, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20461

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol ]
  %i.bu = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.bv, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.bw, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.bx, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.by, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.bz, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ca, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cb, align 8, !noalias !20486, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cd = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.cc, align 8, !noalias !20486, !nonnull !17, !noundef !17 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.bq, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !20487, !noundef !17
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ch
  br i1 %i.ci, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cj, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.cl, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cj = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20488, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.ck = zext i16 %i.cn to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !20488 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  %i.cp = load i16, ptr %i.co, align 2, !noalias !20487, !noundef !17
  %i.cq = icmp ult i16 %i.cn, %i.cp
  br i1 %i.cq, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ck, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cl, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cr = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.cs = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.cu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.cw, %.prol.preheader ], [ %i.cv, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20489, !nonnull !17, !noundef !17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20475

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.cv, %bb.q ], [ %i.cw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.cx = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.cx, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dg, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.cy, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.cz, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.da, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.db, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dc, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dd, align 8, !noalias !20489, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.de, align 8, !noalias !20489, !nonnull !17, !noundef !17 ; 2 uses
  %i.df = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.df, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20490

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dl = load i8, ptr %i.dk, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dl, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bo, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20491
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.dm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dm, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dn, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.do = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !17, !noalias !20492, !nonnull !17
  %i.dq = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20492, !inline_history !8
  br i1 %i.dq, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dr = icmp eq i64 %i.bp, 0
  br i1 %i.dr, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h74e3106c42c9e55aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 47
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  %i.ag = call noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %.loopexit253, label %bb.t

.loopexit213.thread:                              ; preds = %bb.v
  %i.ah = call noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ah, label %.loopexit253, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.af, 8
  br i1 %i.ai, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ak = load i8, ptr %i.aj, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.am = load i8, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.ao, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20528
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ap, label %.loopexit253, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ar = load i8, ptr %i.aq, align 1, !range !21, !noundef !17
  %i.as = trunc nuw i8 %i.ar to i1
  %switch.idx.cast243 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.as, label %switch.lookup242, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast243, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20529
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.au, label %.loopexit253, label %bb.j

switch.lookup242:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset244 = add nuw nsw i64 %switch.idx.cast243, 8
  store i64 %switch.offset244, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20530
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8154.0..sroa_idx, align 8
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10155.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val108, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !20530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_5
begin_hunk_6_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h74e3106c42c9e55aE":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bm, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.ay, %.lr.ph ], [ %i.bp, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bp = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.bq = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.br = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.br, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bq, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bt = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.bs, align 8, !noalias !20534, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20509

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol ]
  %i.bu = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.bv, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.bw, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.bx, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.by, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.bz, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ca, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cb, align 8, !noalias !20534, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cd = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.cc, align 8, !noalias !20534, !nonnull !17, !noundef !17 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.bq, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !20535, !noundef !17
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ch
  br i1 %i.ci, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cj, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.cl, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cj = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20536, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.ck = zext i16 %i.cn to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !20536 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  %i.cp = load i16, ptr %i.co, align 2, !noalias !20535, !noundef !17
  %i.cq = icmp ult i16 %i.cn, %i.cp
  br i1 %i.cq, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ck, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cl, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cr = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.cs = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.cu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.cw, %.prol.preheader ], [ %i.cv, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20537, !nonnull !17, !noundef !17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20523

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.cv, %bb.q ], [ %i.cw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.cx = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.cx, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dg, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.cy, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.cz, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.da, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.db, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dc, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dd, align 8, !noalias !20537, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.de, align 8, !noalias !20537, !nonnull !17, !noundef !17 ; 2 uses
  %i.df = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.df, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20538

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dl = load i8, ptr %i.dk, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dl, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bo, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20539
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.dm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dm, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dn, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.do = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !17, !noalias !20540, !nonnull !17
  %i.dq = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20540, !inline_history !8
  br i1 %i.dq, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dr = icmp eq i64 %i.bp, 0
  br i1 %i.dr, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h762fedc3e226200dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 39
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %bb.v, %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ], [ true, %bb.v ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20582)
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !20582, !noalias !20583, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20584)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !20584, !noalias !20585, !nonnull !17, !align !31, !noundef !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !20584, !noalias !20585, !noundef !17
  %i.ak = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20586
  br i1 %i.ak, label %.loopexit250, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq i8 %i.af, 8
  br i1 %i.al, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup239, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.an = load i8, ptr %i.am, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.an, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ap = load i8, ptr %i.ao, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aq = zext i8 %i.ap to i64
  store i64 %i.aq, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.ar, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20587
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.as, label %.loopexit250, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.au = load i8, ptr %i.at, align 1, !range !21, !noundef !17
  %i.av = trunc nuw i8 %i.au to i1
  %switch.idx.cast240 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.av, label %switch.lookup239, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast240, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.aw, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20588
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ax, label %.loopexit250, label %bb.j

switch.lookup239:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset241 = add nuw nsw i64 %switch.idx.cast240, 8
  store i64 %switch.offset241, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.aw, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20589
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8154.0..sroa_idx, align 8
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10155.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val108, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !20589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20589
end_hunk_6
begin_hunk_7_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h762fedc3e226200dE":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bp, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.bb, %.lr.ph ], [ %i.bs, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bs = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.bt = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.bu = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bt, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bw = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.bv, align 8, !noalias !20593, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20563

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.bt, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.by, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.bz, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.ca, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.cb, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.cc, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.cd, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ce, align 8, !noalias !20593, !nonnull !17, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cg = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.cf, align 8, !noalias !20593, !nonnull !17, !noundef !17 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.bt, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !20594, !noundef !17
  %i.ck = zext i16 %i.cj to i64
  %i.cl = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ck
  br i1 %i.cl, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cm, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.co, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cm = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20595, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.cn = zext i16 %i.cq to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.co = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cq = load i16, ptr %i.cp, align 8, !noalias !20595 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %i.cs = load i16, ptr %i.cr, align 2, !noalias !20594, !noundef !17
  %i.ct = icmp ult i16 %i.cq, %i.cs
  br i1 %i.ct, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cn, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.co, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cm, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cu = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.cv = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cu, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.cx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %xtraiter257 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.cz, %.prol.preheader ], [ %i.cy, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20596, !nonnull !17, !noundef !17 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20577

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.cy, %bb.q ], [ %i.cz, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.da = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.da, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dj, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.db, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.dc, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.dd, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.de, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.df, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dg, align 8, !noalias !20596, !nonnull !17, !noundef !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.dh, align 8, !noalias !20596, !nonnull !17, !noundef !17 ; 2 uses
  %i.di = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.di, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20597

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.cv, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dm = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.do = load i8, ptr %i.dn, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.do, 1
  %switch.offset249 = zext nneg i8 %narrow to i64
  store i64 %switch.offset249, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.br, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20598
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.dp = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dp, label %.loopexit250, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dq, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.dr = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !17, !noalias !20599, !nonnull !17
  %i.dt = call noundef zeroext i1 %i.ds(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20599, !inline_history !8
  br i1 %i.dt, label %.loopexit250, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit250
  %.sroa.0.1 = phi i1 [ true, %.loopexit250 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit250:                                     ; preds = %.loopexit, %switch.lookup245, %switch.lookup242, %switch.lookup239, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.du = icmp eq i64 %i.bs, 0
  br i1 %i.du, label %.loopexit213, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 55
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit", label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit": ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20639)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !20639, !noalias !20640, !nonnull !17, !noundef !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !20639, !noalias !20640, !noundef !17
  %i.ak = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20639
  br i1 %i.ak, label %.loopexit252, label %bb.t

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit.thread": ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !20641)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !20641, !noalias !20640, !nonnull !17, !noundef !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !20641, !noalias !20640, !noundef !17
  %i.ap = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20641
  br i1 %i.ap, label %.loopexit252, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i8 %i.af, 8
  br i1 %i.aq, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup241, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.as = load i8, ptr %i.ar, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.as, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.au = load i8, ptr %i.at, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.av = zext i8 %i.au to i64
  store i64 %i.av, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.aw, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20642
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ax, label %.loopexit252, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.az = load i8, ptr %i.ay, align 1, !range !21, !noundef !17
  %i.ba = trunc nuw i8 %i.az to i1
  %switch.idx.cast242 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ba, label %switch.lookup241, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast242, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.bb, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20643
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.bc, label %.loopexit252, label %bb.j

switch.lookup241:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset243 = add nuw nsw i64 %switch.idx.cast242, 8
  store i64 %switch.offset243, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.bb, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20644
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
end_hunk_7
begin_hunk_8_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0223 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0222 = phi i64 [ %i.bu, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0221 = phi i64 [ %i.bg, %.lr.ph ], [ %i.bx, %bb.v ]
  %.sroa.10182.0220 = phi i64 [ %i.bv, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bx = add i64 %.sroa.23.0221, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0223, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.by = inttoptr i64 %.sroa.10182.0220 to ptr   ; 3 uses
  %i.bz = icmp eq i64 %.sroa.15.0222, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0222, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.by, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.prol ], [ %.sroa.15.0222, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.cb = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ca, align 8, !noalias !20648, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20620

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.by, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0222, %.lr.ph.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.prol ]
  %i.cc = icmp ult i64 %.sroa.15.0222, 8
  br i1 %i.cc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.cd, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.ce, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.cf, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.cg, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ch, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ci, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cj, align 8, !noalias !20648, !nonnull !17, !noundef !17
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cl = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ck, align 8, !noalias !20648, !nonnull !17, !noundef !17 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0222, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0220, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0223, %bb.m ], [ %i.by, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !noalias !20649, !noundef !17
  %i.cp = zext i16 %i.co to i64
  %i.cq = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.cp
  br i1 %i.cq, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cr, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.ct, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cr = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20650, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.cs = zext i16 %i.cv to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ct = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 8, !noalias !20650 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !20649, !noundef !17
  %i.cy = icmp ult i16 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cs, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ct, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cr, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cz = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.da = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cz, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.dc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %xtraiter259 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.de, %.prol.preheader ], [ %i.dd, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter261 = phi i64 [ %prol.iter261.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20651, !nonnull !17, !noundef !17 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter261.next = add i64 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i64 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20634

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.dd, %bb.q ], [ %i.de, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.df = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.df, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.do, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.dg, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.dh, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.di, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.dj, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dk, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dl, align 8, !noalias !20651, !nonnull !17, !noundef !17
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.dm, align 8, !noalias !20651, !nonnull !17, !noundef !17 ; 2 uses
  %i.dn = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.do = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.dn, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20652

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.da, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dt = load i8, ptr %i.ds, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dt, 1
  %switch.offset251 = zext nneg i8 %narrow to i64
  store i64 %switch.offset251, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bw, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20653
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.du = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.du, label %.loopexit252, label %bb.v

bb.t:                                             ; preds = %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit"
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit.thread", %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dv, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.dw = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !17, !noalias !20654, !nonnull !17
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20654, !inline_history !8
  br i1 %i.dy, label %.loopexit252, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit252
  %.sroa.0.1 = phi i1 [ true, %.loopexit252 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit252:                                     ; preds = %.loopexit, %switch.lookup247, %switch.lookup244, %switch.lookup241, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit.thread", %.split211, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit"
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dz = icmp eq i64 %i.bx, 0
  br i1 %i.dz, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E.exit.thread", label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hab29918bae2e7f3fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 47
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20694)
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !20694, !noalias !20695, !nonnull !17, !align !31, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !20694, !noalias !20695, !noundef !17
  %i.aj = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20694
  br i1 %i.aj, label %.loopexit253, label %bb.t

.loopexit213.thread:                              ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !20696)
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !20696, !noalias !20695, !nonnull !17, !align !31, !noundef !17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !20696, !noalias !20695, !noundef !17
  %i.an = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20696
  br i1 %i.an, label %.loopexit253, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i8 %i.af, 8
  br i1 %i.ao, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.aq = load i8, ptr %i.ap, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.aq, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.as = load i8, ptr %i.ar, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.at = zext i8 %i.as to i64
  store i64 %i.at, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.au, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20697
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.av, label %.loopexit253, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ax = load i8, ptr %i.aw, align 1, !range !21, !noundef !17
  %i.ay = trunc nuw i8 %i.ax to i1
  %switch.idx.cast243 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ay, label %switch.lookup242, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast243, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.az, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20698
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ba, label %.loopexit253, label %bb.j

switch.lookup242:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset244 = add nuw nsw i64 %switch.idx.cast243, 8
  store i64 %switch.offset244, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.az, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20699
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
end_hunk_8
begin_hunk_9_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hab29918bae2e7f3fE":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bs, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.be, %.lr.ph ], [ %i.bv, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bt, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bv = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.bw = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.bx = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bw, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bz = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.by, align 8, !noalias !20703, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20675

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.bw, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.ca, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.cb, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.cc, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.cd, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.ce, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.cf, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.cg, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ch, align 8, !noalias !20703, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cj = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ci, align 8, !noalias !20703, !nonnull !17, !noundef !17 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.bw, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !20704, !noundef !17
  %i.cn = zext i16 %i.cm to i64
  %i.co = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.cn
  br i1 %i.co, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cp, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.cr, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cp = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20705, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.cq = zext i16 %i.ct to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.ct = load i16, ptr %i.cs, align 8, !noalias !20705 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !20704, !noundef !17
  %i.cw = icmp ult i16 %i.ct, %i.cv
  br i1 %i.cw, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cq, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cr, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cp, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cx = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.cy = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cx, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.da = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.dc, %.prol.preheader ], [ %i.db, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20706, !nonnull !17, !noundef !17 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20689

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.db, %bb.q ], [ %i.dc, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.dd = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.dd, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dm, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.de, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.df, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.dg, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.dh, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.di, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dj, align 8, !noalias !20706, !nonnull !17, !noundef !17
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.dk, align 8, !noalias !20706, !nonnull !17, !noundef !17 ; 2 uses
  %i.dl = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.dl, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20707

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.cy, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dr = load i8, ptr %i.dq, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dr, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bu, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20708
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.ds = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ds, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dt, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.du = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !17, !noalias !20709, !nonnull !17
  %i.dw = call noundef zeroext i1 %i.dv(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20709, !inline_history !8
  br i1 %i.dw, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dx = icmp eq i64 %i.bv, 0
  br i1 %i.dx, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd1fcfc902e4e8e90E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i8, ptr %i.v, align 4, !range !19, !noundef !17
  switch i8 %i.w, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val113 = load i8, ptr %i.x, align 1, !range !21, !noundef !17
  %i.y = trunc nuw i8 %.val113 to i1
  br i1 %i.y, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.aa = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ab, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ac = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ac, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.aa, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.ae, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %.loopexit253, label %bb.t

.loopexit213.thread:                              ; preds = %bb.v
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ai, label %.loopexit253, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i8 %i.ae, 8
  br i1 %i.aj, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.al, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.an = load i8, ptr %i.am, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ao = zext i8 %i.an to i64
  store i64 %i.ao, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.ap, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20745
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.aq, label %.loopexit253, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.as = load i8, ptr %i.ar, align 1, !range !21, !noundef !17
  %i.at = trunc nuw i8 %i.as to i1
  %switch.idx.cast243 = zext nneg i8 %i.ae to i64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.at, label %switch.lookup242, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast243, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.au, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20746
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.av, label %.loopexit253, label %bb.j

switch.lookup242:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset244 = add nuw nsw i64 %switch.idx.cast243, 8
  store i64 %switch.offset244, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.au, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20747
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8154.0..sroa_idx, align 8
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10155.0..sroa_idx, align 8
  %i.aw = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val108, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !20747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
end_hunk_9
begin_hunk_10_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd1fcfc902e4e8e90E":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bn, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.az, %.lr.ph ], [ %i.bq, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bo, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bq = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.br = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.bs = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.bs, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.br, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bu = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.bt, align 8, !noalias !20751, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20726

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.br, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.prol ]
  %i.bv = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.bv, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.bw, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.bx, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.by, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.bz, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ca, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.cb, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cc, align 8, !noalias !20751, !nonnull !17, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.ce = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.cd, align 8, !noalias !20751, !nonnull !17, !noundef !17 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.br, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !20752, !noundef !17
  %i.ci = zext i16 %i.ch to i64
  %i.cj = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ci
  br i1 %i.cj, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.ck, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.cm, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.ck = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20753, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.cl = zext i16 %i.co to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cm = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.co = load i16, ptr %i.cn, align 8, !noalias !20753 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  %i.cq = load i16, ptr %i.cp, align 2, !noalias !20752, !noundef !17
  %i.cr = icmp ult i16 %i.co, %i.cq
  br i1 %i.cr, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cl, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cm, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ck, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cs = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.ct = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cs, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.cv = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.cx, %.prol.preheader ], [ %i.cw, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20754, !nonnull !17, !noundef !17 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20740

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.cw, %bb.q ], [ %i.cx, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.cy = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.cy, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dh, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.cz, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.da, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.db, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.dc, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dd, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.de, align 8, !noalias !20754, !nonnull !17, !noundef !17
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.df, align 8, !noalias !20754, !nonnull !17, !noundef !17 ; 2 uses
  %i.dg = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.dg, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20755

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.ct, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dm = load i8, ptr %i.dl, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dm, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bp, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20756
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.dn = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dn, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.do, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.dp = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !17, !noalias !20757, !nonnull !17
  %i.dr = call noundef zeroext i1 %i.dq(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20757, !inline_history !8
  br i1 %i.dr, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.ds = icmp eq i64 %i.bq, 0
  br i1 %i.ds, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he234217d3283371fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i8, ptr %i.w, align 4, !range !19, !noundef !17
  switch i8 %i.x, label %bb.h [
    i8 2, label %bb.b
    i8 0, label %.loopexit213
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 39
  %.val113 = load i8, ptr %i.y, align 1, !range !21, !noundef !17
  %i.z = trunc nuw i8 %.val113 to i1
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic ptr, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE acquire, align 8
  %.not.i.i = icmp eq ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i", label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, ptr noundef nonnull align 8 @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i": ; preds = %bb.d, %bb.c
  %i.ab = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDOUT_COLORS17h641902606c86475fE, i64 9) monotonic, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = load atomic ptr, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE acquire, align 8
  %.not.i1.i = icmp eq ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %.not.i1.i, label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h82e063755a9ecd39E"(ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, ptr noundef nonnull align 8 @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i": ; preds = %bb.f, %bb.e
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7console5utils13STDERR_COLORS17hef486bc36820f0bdE, i64 9) monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i", %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i"
  %.sroa.0.0.in.in.i = phi i8 [ %i.ad, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit2.i" ], [ %i.ab, %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17he902fcd062732bb9E.exit.i" ]
  %.sroa.0.0.in.i.not = icmp eq i8 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i.not, label %.loopexit213, label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !74, !noundef !17 ; 3 uses
  %.not93 = icmp ne i8 %i.af, 9                   ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.j

.loopexit213:                                     ; preds = %.preheader, %bb.a, %bb.g
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.sroa.01.2, %.preheader ]
  %i.ag = call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %.loopexit253, label %bb.t

.loopexit213.thread:                              ; preds = %bb.v
  %i.ah = call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ah, label %.loopexit253, label %.split211

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.af, 8
  br i1 %i.ai, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.k

bb.j:                                             ; preds = %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ak = load i8, ptr %i.aj, align 2, !range !74, !noundef !17 ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 9, label %.preheader
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.am = load i8, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val111 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.ao, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20793
  store ptr @788, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val111, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val112, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !20793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ap, label %.loopexit253, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ar = load i8, ptr %i.aq, align 1, !range !21, !noundef !17
  %i.as = trunc nuw i8 %i.ar to i1
  %switch.idx.cast243 = zext nneg i8 %i.af to i64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.as, label %switch.lookup242, label %switch.lookup

switch.lookup:                                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %switch.offset = add nuw nsw i64 %switch.idx.cast243, 30
  store i64 %switch.offset, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val109 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val110 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20794
  store ptr @790, ptr %i.f, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5158.0..sroa_idx, align 8
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.7159.0..sroa_idx, align 8
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10161.0..sroa_idx, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val109, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val110, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !20794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.au, label %.loopexit253, label %bb.j

switch.lookup242:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %switch.offset244 = add nuw nsw i64 %switch.idx.cast243, 8
  store i64 %switch.offset244, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val107 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val108 = load ptr, ptr %i.at, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20795
  store ptr @788, ptr %i.e, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.7153.0..sroa_idx, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8154.0..sroa_idx, align 8
  %.sroa.10155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10155.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val108, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !20795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_10
begin_hunk_11_@"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he234217d3283371fE":bb.a
  %.sroa.7187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph
  %.sroa.6.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.15.0223 = phi i64 [ %i.bm, %.lr.ph ], [ %.sroa.7.0.i.i.i, %bb.v ] ; 6 uses
  %.sroa.23.0222 = phi i64 [ %i.ay, %.lr.ph ], [ %i.bp, %bb.v ]
  %.sroa.10182.0221 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %bb.v ] ; 2 uses
  %i.bp = add i64 %.sroa.23.0222, -1              ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.6.0224, null
  br i1 %.not.i.i140, label %bb.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"

bb.n:                                             ; preds = %bb.m
  %i.bq = inttoptr i64 %.sroa.10182.0221 to ptr   ; 3 uses
  %i.br = icmp eq i64 %.sroa.15.0223, 0
  br i1 %i.br, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %.sroa.15.0223, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bq, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.prol ], [ %.sroa.15.0223, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 24
  %i.bt = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.bs, align 8, !noalias !20799, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20774

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.0223, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol ]
  %i.bu = icmp ult i64 %.sroa.15.0223, 8
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 24
  %.sroa.012.0.i.i = load ptr, ptr %i.bv, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 24
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.bw, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 24
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.bx, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 24
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.by, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 24
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.bz, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 24
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ca, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 24
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.cb, align 8, !noalias !20799, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 24
  %i.cd = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.cc, align 8, !noalias !20799, !nonnull !17, !noundef !17 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n, %bb.m
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.0223, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10182.0221, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.6.0224, %bb.m ], [ %i.bq, %bb.n ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !20800, !noundef !17
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ch
  br i1 %i.ci, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i", %bb.o
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.cj, %bb.o ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.cl, %bb.o ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ]
  %i.cj = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !20801, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.ck = zext i16 %i.cn to i64
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 8
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !20801 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  %i.cp = load i16, ptr %i.co, align 2, !noalias !20800, !noundef !17
  %i.cq = icmp ult i16 %i.cn, %i.cp
  br i1 %i.cq, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.ck, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cl, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1279561436e786d3E.exit.i" ], [ %i.cj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.cr = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.cs = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 24
  %i.cu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %xtraiter260 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.cw, %.prol.preheader ], [ %i.cv, %bb.q ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.prol.preheader ], [ 0, %bb.q ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !20802, !nonnull !17, !noundef !17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20788

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.cv, %bb.q ], [ %i.cw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.q ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.cx = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.cx, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.dg, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 24
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.cy, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 24
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.cz, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 24
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.da, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 24
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.db, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 24
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.dc, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 24
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.dd, align 8, !noalias !20802, !nonnull !17, !noundef !17
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 24
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.de, align 8, !noalias !20802, !nonnull !17, !noundef !17 ; 2 uses
  %i.df = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 24
  br i1 %i.df, label %.loopexit, label %.new

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #54
          to label %.noexc.i.i unwind label %bb.s, !noalias !20803

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.p
  %.sroa.7.0.i.i.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 12
  %i.dj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dl = load i8, ptr %i.dk, align 1, !range !57, !noundef !17
  %narrow = add nuw nsw i8 %i.dl, 1
  %switch.offset252 = zext nneg i8 %narrow to i64
  store i64 %switch.offset252, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.491.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %.val98 = load ptr, ptr %i.bo, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20804
  store ptr @790, ptr %i.a, align 8
  store i64 2, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.i, ptr %.sroa.7187.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8188.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10189.0..sroa_idx, align 8
  %i.dm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val98, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dm, label %.loopexit253, label %bb.v

bb.t:                                             ; preds = %.loopexit213
  br i1 %.sroa.01.0, label %.split211, label %bb.u

.split211:                                        ; preds = %.loopexit213.thread, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.dn, align 8, !nonnull !17, !noundef !17
  %.val99 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.do = getelementptr inbounds nuw i8, ptr %.val100, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !17, !noalias !20805, !nonnull !17
  %i.dq = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 1 %.val99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 4), !noalias !20805, !inline_history !8
  br i1 %i.dq, label %.loopexit253, label %bb.u

bb.u:                                             ; preds = %.split211, %bb.t, %.loopexit253
  %.sroa.0.1 = phi i1 [ true, %.loopexit253 ], [ false, %bb.t ], [ false, %.split211 ]
  ret i1 %.sroa.0.1

.loopexit253:                                     ; preds = %.loopexit, %switch.lookup248, %switch.lookup245, %switch.lookup242, %switch.lookup, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit129, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.loopexit213.thread, %.split211, %.loopexit213
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  %i.dr = icmp eq i64 %i.bp, 0
  br i1 %i.dr, label %.loopexit213.thread, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1889223427865831E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb487fa0197d53ad6E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdfb311b98bdc262dE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h228fb1ccf682fdd8E", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h288018788ad61b79E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h074a8a6c5abf2b10E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h288018788ad61b79E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h288018788ad61b79E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h228fb1ccf682fdd8E", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17h63b8438f190b64a8E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h228fb1ccf682fdd8E", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdfb311b98bdc262dE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h074a8a6c5abf2b10E"() ; 0 uses
  br label %"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdfb311b98bdc262dE.exit"

"_ZN77_$LT$insta..runtime..INLINE_DUPLICATES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hdfb311b98bdc262dE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hb0ef4e1130a3eecbE", i64 8) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hc9ca8a81e4aa6ff0E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h651d67b805548a8cE"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hc9ca8a81e4aa6ff0E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hc9ca8a81e4aa6ff0E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hb0ef4e1130a3eecbE", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17hecdac75a805fece0E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hb0ef4e1130a3eecbE", i64 8) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h651d67b805548a8cE"() ; 0 uses
  br label %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit"

"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h784d85e851b47185E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20813
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !20813 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !20814
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !20815
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  store i8 14, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbafd2d844f6d415aE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hd7a280d05e70a64eE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17haccb83435dc61b14E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hd7a280d05e70a64eE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hd7a280d05e70a64eE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbafd2d844f6d415aE", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17h9b086e7c9723194eE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbafd2d844f6d415aE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17haccb83435dc61b14E"() ; 0 uses
  br label %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit"

"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$pest..parser_state..ParseAttempt$LT$R$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h72b269f95b0f9eecE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !26, !noundef !17
  %i.c = icmp eq i8 %i.b, 17
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @797, i64 noundef 5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @796, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
end_hunk_11
begin_hunk_12_@"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0f8935c75673fe6bE":bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022, ptr %i.k, align 8, !alias.scope !23878
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$insta..content..Content$RP$$GT$$GT$17h85f13650e2bcc60cE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2e4400eab0af5ce6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = shl i64 %2, 6                            ; 4 uses
  %i.d = icmp ugt i64 %2, 288230376151711743
  %i.e = icmp ugt i64 %i.c, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.g = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23885
  %i.j = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 16) #51, !noalias !23885 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 16, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  store i64 %2, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit", %bb.d
  %.sroa.012.023 = phi ptr [ %i.t, %bb.d ], [ %1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ] ; 3 uses
  %.sroa.7.022 = phi i64 [ %i.s, %bb.d ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ] ; 3 uses
  %.sroa.10.021 = phi i64 [ %i.p, %bb.d ], [ %2, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ]
  %i.p = add nsw i64 %.sroa.10.021, -1            ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.023, %i.n
  br i1 %i.q, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %.lr.ph, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"
  %i.r = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread" ], [ %i.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit" ], [ %i.m, %.lr.ph ], [ %i.m, %bb.d ]
  store i64 %2, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.012.023)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw nsw i64 %.sroa.7.022, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %.sroa.7.022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = icmp eq i64 %i.p, 0
  br i1 %i.v, label %.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022, ptr %i.m, align 8, !alias.scope !23886
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$insta..content..Content$GT$$GT$17hf0ae366195e70e44E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23894
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !23894 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !23895
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 15, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN87_$LT$insta..content..yaml..vendored..emitter..EmitError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8e87b7844efa593E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @931, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @930)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN87_$LT$insta..content..yaml..vendored..scanner..ScanError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ada7957d9668cd5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @934, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @932, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @673, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @744)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$insta..snapshot..SnapshotContents$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h99704bb488acf187E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h825828b0cbb0b431E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$insta..content..yaml..vendored..emitter..EmitError$u20$as$u20$core..fmt..Display$GT$3fmt17h01501f25b2714cffE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN55_$LT$core..fmt..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8ecc88e905e6ba03E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$insta..content..yaml..vendored..scanner..ScanError$u20$as$u20$core..fmt..Display$GT$3fmt17h8c169444a3192a69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !17
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.j, align 8, !nonnull !17, !noundef !17
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23899
  store ptr @956, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !23899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !37, !noundef !17 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE.1376", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$insta..redaction..Redaction$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hdeb0ed21dca4d093E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23910
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !23910 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !23911
  unreachable

"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23912
  store i8 15, ptr %0, align 16
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8c485c864ef256E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23916)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !23916, !noalias !23917, !noundef !17 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23916, !noalias !23917, !noundef !17
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !23916, !noalias !23917, !nonnull !17, !noundef !17 ; 5 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !23918, !noundef !17 ; 2 uses
  %i.h = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !23918
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23916, !noalias !23917, !nonnull !17, !align !31, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !23916, !noalias !23917, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !23916, !noalias !23917, !nonnull !17, !noundef !17 ; 3 uses
  %.val.i4.i = load i64, ptr %i.p, align 8, !noalias !23918, !noundef !17 ; 2 uses
  %i.q = icmp ne i64 %.val.i4.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i4.i, 1                    ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !23918
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit", !prof !22

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i
  tail call void @llvm.trap()
  unreachable

"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.714.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.c, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.c ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !21, !noundef !17
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.k, !prof !22

bb.f:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #54
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E"(ptr noalias noundef align 8 dereferenceable(40) %i.a) #55
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h96c76bf58e26adcdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23931
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 6                   ; 5 uses
  %i.g = mul i64 %i.f, 72                         ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.e, 8198552921648689600
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.noexc1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23932
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #51, !noalias !23932 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.noexc1

end_hunk_12
