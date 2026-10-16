Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN101_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hb64088be888e7ba8E":bb.a
  %.sroa.23.16..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx46, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx62, align 8, !alias.scope !385, !noalias !386
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.aq:                                            ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.25.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.24..sroa_idx, align 8, !alias.scope !385, !noalias !386
  store i8 16, ptr %i.c, align 8, !alias.scope !384, !noalias !382
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ar:                                            ; preds = %bb.z
  store i8 17, ptr %i.c, align 8, !alias.scope !385, !noalias !386
  %.sroa.23.16..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx45, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx60, align 8, !alias.scope !385, !noalias !386
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.as:                                            ; preds = %bb.z
  store i8 18, ptr %i.c, align 8, !alias.scope !385, !noalias !386
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx, align 8, !alias.scope !385, !noalias !386
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i": ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  invoke void @"_ZN89_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17he7f24d20598ea124E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %2)
          to label %bb.av unwind label %bb.au, !inline_history !346

bb.at:                                            ; preds = %._crit_edge, %bb.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.sroa.0.0.i.i.i, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.i, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %.sroa.03.0.copyload, ptr %i.bb, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.427, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.au:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef align 8 dereferenceable(200) %i.e) #53
  br label %.thread275

bb.av:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !382
  %.sroa.427.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.427.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.427, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.429, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429)
  br label %bb.at

.thread275:                                       ; preds = %bb.aw, %bb.au
  %.pn278 = phi { ptr, i32 } [ %i.bc, %bb.au ], [ %lpad.phi, %bb.aw ]
  resume { ptr, i32 } %.pn278

.loopexit:                                        ; preds = %"_ZN88_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17ha3fa6c5352cae527E.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %.invoke, %bb.c, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h18674a0b9b239617E.exit.i.thread"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef align 8 dereferenceable(200) %1) #53
  br label %.thread275
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h2bb1bbd7daac5441E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noalias !399, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !400
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !400
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i": ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !401
  store i8 1, ptr %i.e, align 8, !noalias !401
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.j, %.noexc ]
  %i.l = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.l, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.54.0..sroa_idx, align 8
  call fastcc void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17h38cdac0f2c0c1964E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.b) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17h38cdac0f2c0c1964E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.444 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.6148 = alloca [20 x i8], align 4         ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.631.sroa.8 = alloca [28 x i8], align 4   ; 7 uses
  %.sroa.325 = alloca [20 x i8], align 4          ; 2 uses
  %i.d = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.613.sroa.8 = alloca [20 x i8], align 4   ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !26, !noundef !19 ; 4 uses
  %i.k = icmp ne i32 %i.j, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.j, -3
  %i.m = icmp samesign ugt i32 %i.j, 2
  %narrow = select i1 %i.m, i32 %i.l, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.af
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !noundef !19
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h209d631a6b786bcfE"(ptr noalias noundef align 8 dereferenceable(48) %6, i32 noundef %i.q)
          to label %bb.j unwind label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.2.0.copyload, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.d
  %.sroa.03.0.i1720.i.i = phi ptr [ %i.g, %bb.d ], [ %i.v, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !450, !nonnull !19, !noundef !19 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !450, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !454, !noalias !455, !noundef !19
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !454, !noalias !455, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !454, !noalias !455, !noundef !19
  %i.ac = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f), !noalias !456 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.ad = lshr i64 %i.ac, 57
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !459, !noalias !455, !noundef !19 ; 2 uses
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !459, !noalias !455, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ax, %bb.i ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.f ], [ %i.ay, %bb.i ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !460 ; 2 uses
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.aw, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %7 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.al = zext nneg i16 %7 to i64
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.al
  %i.an = and i64 %i.am, %i.ag
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [72 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.aq, align 4, !noalias !461, !noundef !19
  %i.ar = icmp eq i32 %.sroa.2.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.ar, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit", label %bb.h, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.g
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.i, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", !prof !20

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ax = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ax
  br label %bb.g

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.e
  br i1 %.not4.i.i.i, label %bb.x, label %bb.e

.thread:                                          ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  %lpad.thr_comm.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.thread217

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val.i.i = load i64, ptr %3, align 8, !noundef !19 ; 2 uses
  %i.az = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.ba, ptr %3, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.j
  %.not.i177 = icmp eq ptr %4, null
  br i1 %.not.i177, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !19 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.bd, ptr %4, align 8
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  invoke void @"_ZN142_$LT$nickel_lang_parser..typ..RecordRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h43c426800158fc71E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i32, ptr %i.d, align 8, !range !30, !noundef !19 ; 2 uses
  %.not159 = icmp eq i32 %i.bf, 25
  br i1 %.not159, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.098.0.copyload = load i64, ptr %i.bg, align 8 ; 2 uses
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.599.0.copyload = load i32, ptr %.sroa.599.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.613.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6100.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.325, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.613.sroa.8, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  call fastcc void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17h38cdac0f2c0c1964E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bh = load i32, ptr %i.c, align 8, !range !30, !noundef !19 ; 2 uses
  %.not160 = icmp eq i32 %i.bh, 25
  br i1 %.not160, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0119.0.copyload = load i64, ptr %i.bi, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5120.0.copyload = load i32, ptr %.sroa.5120.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6121.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.444, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.sroa.8)
  %.not162 = icmp eq i32 %.sroa.599.0.copyload, 3
  br i1 %.not162, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not161 = icmp eq i32 %.sroa.5120.0.copyload, 7
  br i1 %.not161, label %bb.s, label %.thread192

bb.s:                                             ; preds = %bb.r
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 7, ptr %.sroa.358.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

.thread192:                                       ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6148)
  %.sroa.0143.0.copyload = load i64, ptr %1, align 8
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6148, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6148.0..sroa_idx, i64 20, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6148)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6148, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.325, i64 20, i1 false)
  %.not163 = icmp eq i32 %.sroa.5120.0.copyload, 7
  br i1 %.not163, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread192, %bb.t
  %.sroa.5145.0198 = phi i32 [ %i.j, %.thread192 ], [ %.sroa.599.0.copyload, %bb.t ]
  %.sroa.0143.0196 = phi i64 [ %.sroa.0143.0.copyload, %.thread192 ], [ %.sroa.098.0.copyload, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = and i64 %i.bo, 7
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr i8, ptr %i.bm, i64 %i.bq  ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult ptr %i.br, %i.bn
  %i.bw = icmp ult i64 %i.bu, 40
  %or.cond.i = or i1 %i.bv, %i.bw
  br i1 %or.cond.i, label %.noexc168, label %.noexc167

.noexc167:                                        ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %i.br, i64 -40    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  store ptr %i.bx, ptr %i.bl, align 8
  br label %bb.w

.noexc168:                                        ; preds = %bb.u
  %i.by = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 40) ; 2 uses
  %.not5.i = icmp eq ptr %i.by, null
  br i1 %.not5.i, label %.noexc169, label %bb.w, !prof !20

.noexc169:                                        ; preds = %.noexc168
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.w
  %.sroa.5145.0199 = phi i32 [ %.sroa.5145.0198, %bb.w ], [ %.sroa.599.0.copyload, %bb.t ]
  %.sroa.0143.0197 = phi i64 [ %.sroa.0143.0196, %bb.w ], [ %.sroa.098.0.copyload, %bb.t ]
  %.sroa.049.0 = phi ptr [ %.sroa.0.0.i, %bb.w ], [ null, %bb.t ] ; 2 uses
  %.not164 = icmp eq ptr %.sroa.049.0, null
  %..sroa.049.0 = select i1 %.not164, ptr %i.o, ptr %.sroa.049.0
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.055.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6148, i64 20, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0143.0197, ptr %i.bz, align 8
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5145.0199, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %..sroa.049.0, ptr %.sroa.456.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6148)
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.w:                                             ; preds = %.noexc168, %.noexc167
  %.sroa.0.0.i = phi ptr [ %i.bx, %.noexc167 ], [ %i.by, %.noexc168 ] ; 4 uses
  %.sroa.5188.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5188.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.444, i64 28, i1 false)
  store i64 %.sroa.0119.0.copyload, ptr %.sroa.0.0.i, align 8, !noalias !462
  %.sroa.4187.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store i32 %.sroa.5120.0.copyload, ptr %.sroa.4187.0..sroa.0.0.i.sroa_idx, align 8, !noalias !462
  br label %bb.v

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit": ; preds = %.lr.ph.i.i.i.i.i.i
  %8 = getelementptr inbounds i8, ptr %i.ap, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  store i64 2, ptr %i.e, align 8
  %i.cb = invoke fastcc noundef zeroext i1 @_ZN18nickel_lang_parser7uniterm11VarKindCell7try_set17h8f513990af00a5f8E(ptr noundef nonnull align 8 %8, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e)
          to label %bb.y unwind label %.thread

bb.x:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.af

bb.y:                                             ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.cb, label %.thread215, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179"

.thread215:                                       ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.395.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.294.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.2.0.copyload, ptr %.sroa.496.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread213

bb.z:                                             ; preds = %bb.p
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.5129.0.copyload = load i32, ptr %.sroa.5129.0..sroa_idx, align 4
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6130.0.copyload = load i64, ptr %.sroa.6130.0..sroa_idx, align 8
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7131.0.copyload = load i32, ptr %.sroa.7131.0..sroa_idx, align 8
  %.sroa.8132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8132.0..sroa_idx, i64 28, i1 false)
  %.sroa.9133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.6139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9133.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, i64 28, i1 false)
  store i32 %i.bh, ptr %0, align 8
  %.sroa.2135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5129.0.copyload, ptr %.sroa.2135.0..sroa_idx, align 4
  %.sroa.3136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6130.0.copyload, ptr %.sroa.3136.0..sroa_idx, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7131.0.copyload, ptr %.sroa.4137.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.sroa.8)
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.aa:                                            ; preds = %bb.o
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5108.0.copyload = load i32, ptr %.sroa.5108.0..sroa_idx, align 4
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6109.0.copyload = load i64, ptr %.sroa.6109.0..sroa_idx, align 8
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7110.0.copyload = load i32, ptr %.sroa.7110.0..sroa_idx, align 8
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.613.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8111.0..sroa_idx, i64 20, i1 false)
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6118.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9112.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5117.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.613.sroa.8, i64 20, i1 false)
  store i32 %i.bf, ptr %0, align 8
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5108.0.copyload, ptr %.sroa.2114.0..sroa_idx, align 4
  %.sroa.3115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6109.0.copyload, ptr %.sroa.3115.0..sroa_idx, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7110.0.copyload, ptr %.sroa.4116.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8)
  %.val173 = load ptr, ptr %6, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val174 = load i64, ptr %i.cc, align 8, !noundef !19 ; 4 uses
  %i.cd = icmp eq i64 %.val174, 0
  br i1 %i.cd, label %.thread213, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ce = shl i64 %.val174, 2
  %i.cf = icmp slt i64 %.val174, 4611686018427387900
  call void @llvm.assume(i1 %i.cf)
  %i.cg = and i64 %i.ce, -16                      ; 2 uses
  %i.ch = add i64 %i.cg, 16                       ; 2 uses
  %i.ci = add nsw i64 %.val174, 17
  %i.cj = add i64 %i.ci, %i.ch                    ; 4 uses
  %i.ck = icmp uge i64 %i.cj, %i.ch
  %i.cl = icmp ult i64 %i.cj, 9223372036854775793
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val173) ]
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %.thread213, label %bb.ab

bb.ab:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i
  %i.cn = sub nuw nsw i64 -16, %i.cg
  %i.co = getelementptr inbounds i8, ptr %.val173, i64 %i.cn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %.thread213

"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit": ; preds = %bb.v, %bb.s, %bb.al, %bb.ak, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i180", %bb.ae, %bb.ad, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i", %bb.z
  ret void

.thread213:                                       ; preds = %bb.aa, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.ab, %.thread215
  %i.cp = load i64, ptr %3, align 8, !noalias !463, !noundef !19
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %3, align 8, !noalias !463
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ac, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

bb.ac:                                            ; preds = %.thread213
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i": ; preds = %bb.ac, %.thread213
  %i.cs = icmp eq ptr %4, null
  br i1 %i.cs, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.ct = load i64, ptr %4, align 8, !noalias !464, !noundef !19
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cu, ptr %4, align 8, !noalias !464
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.ae:                                            ; preds = %bb.ad
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h), !inline_history !0
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.af:                                            ; preds = %bb.a, %bb.a, %bb.x
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 7, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  %.val171 = load ptr, ptr %6, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val172 = load i64, ptr %i.cw, align 8, !noundef !19 ; 4 uses
  %i.cx = icmp eq i64 %.val172, 0
  br i1 %i.cx, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i178

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i178: ; preds = %bb.af
  %i.cy = shl i64 %.val172, 2
  %i.cz = icmp slt i64 %.val172, 4611686018427387900
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = and i64 %i.cy, -16                      ; 2 uses
  %i.db = add i64 %i.da, 16                       ; 2 uses
  %i.dc = add nsw i64 %.val172, 17
  %i.dd = add i64 %i.dc, %i.db                    ; 4 uses
  %i.de = icmp uge i64 %i.dd, %i.db
  %i.df = icmp ult i64 %i.dd, 9223372036854775793
  tail call void @llvm.assume(i1 %i.de)
  tail call void @llvm.assume(i1 %i.df)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val171) ]
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread", label %bb.ag

bb.ag:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i178
  %i.dh = sub nuw nsw i64 -16, %i.da
  %i.di = getelementptr inbounds i8, ptr %.val171, i64 %i.dh
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread"

bb.ah:                                            ; preds = %bb.c, %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %6, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val170 = load i64, ptr %i.dj, align 8, !noundef !19
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E"(ptr %.val, i64 %.val170) #53
  br label %.thread217

bb.ai:                                            ; preds = %.thread217
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 7, ptr %.sroa.395.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  br label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread": ; preds = %bb.ag, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i178, %bb.af, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179"
  %i.dl = load i64, ptr %3, align 8, !noalias !465, !noundef !19
  %i.dm = add i64 %i.dl, -1                       ; 2 uses
  store i64 %i.dm, ptr %3, align 8, !noalias !465
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.aj, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i180"

bb.aj:                                            ; preds = %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i180"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i180": ; preds = %bb.aj, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit179.thread"
  %i.do = icmp eq ptr %4, null
  br i1 %i.do, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i180"
  %i.dp = load i64, ptr %4, align 8, !noalias !466, !noundef !19
  %i.dq = add i64 %i.dp, -1                       ; 2 uses
  store i64 %i.dq, ptr %4, align 8, !noalias !466
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.al, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.al:                                            ; preds = %bb.ak
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h), !inline_history !0
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.am:                                            ; preds = %.thread217
  resume { ptr, i32 } %.pn221

.thread217:                                       ; preds = %.thread, %bb.ah
  %.pn221 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp242, %.thread ], [ %lpad.thr_comm.split-lp, %bb.ah ]
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.g) #53
          to label %bb.am unwind label %bb.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82acf4150493b2e0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = load ptr, ptr %1, align 8, !alias.scope !490, !nonnull !19, !noundef !19 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !490, !nonnull !19, !noundef !19
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store ptr %i.s, ptr %1, align 8, !alias.scope !490
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !491, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !492
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.u, ptr %i.v, align 8, !noalias !492
  store i8 8, ptr %i.b, align 8, !noalias !492
  %.sroa.10.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @237, ptr %.sroa.10.0..sroa_idx.i3, align 8, !noalias !492
  %.sroa.12.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 7, ptr %.sroa.12.0..sroa_idx.i4, align 8, !noalias !492
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !494
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.u, ptr %i.w, align 8, !noalias !494
  store i8 8, ptr %i.c, align 8, !noalias !494
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @127, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !494
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !494
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !494
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hab4b90f7e34641d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !495
  store i64 0, ptr %i.g, align 8, !noalias !495
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !495
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !496
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.y = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x)
          to label %.noexc.i unwind label %bb.d, !noalias !497 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  store ptr %i.z, ptr %i.e, align 8, !noalias !496
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !496
  store ptr %i.e, ptr %i.f, align 8, !noalias !496
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !498
  store ptr @122, ptr %i.d, align 8, !noalias !496
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !496
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !496
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !496
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !496
  %i.ac = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @10196, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.f unwind label %bb.d, !noalias !495

bb.d:                                             ; preds = %bb.g, %.noexc.i, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !499), !noalias !500
  %.val.i7.i = load i64, ptr %i.g, align 8, !alias.scope !499, !noalias !495 ; 2 uses
  %i.ae = icmp eq i64 %.val.i7.i, 0
  br i1 %i.ae, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !499, !noalias !495, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !501
  br label %bb.l

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !496
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10197, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10210, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10199) #52
          to label %.noexc8.i unwind label %bb.d, !noalias !495

.noexc8.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !495
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17he1dbccb1785a12b3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !493
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !491, !nonnull !19, !align !24, !noundef !19
  invoke fastcc void @_ZN18nickel_lang_parser3ast6pretty9Allocator14field_metadata17h330404f1f61a00c7E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.o, i1 noundef zeroext true)
          to label %"_ZN18nickel_lang_parser3ast6pretty9Allocator6record28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h9b4e48302c964b57E.exit" unwind label %bb.j, !noalias !500, !inline_history !489

"_ZN18nickel_lang_parser3ast6pretty9Allocator6record28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h9b4e48302c964b57E.exit": ; preds = %bb.h
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hab4b90f7e34641d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %bb.o

end_hunk_0
begin_hunk_1_@"_ZN95_$LT$nickel_lang_parser..ast..LetBinding$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17ha3cb881cfa9f5a8cE":bb.a
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.24..sroa_idx, align 8, !alias.scope !506416, !noalias !506411
  store i8 16, ptr %i.g, align 8, !alias.scope !506415, !noalias !506413
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ak:                                            ; preds = %bb.s
  store i8 17, ptr %i.g, align 8, !alias.scope !506416, !noalias !506411
  %.sroa.21.16..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx49, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx64, align 8, !alias.scope !506416, !noalias !506411
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.al:                                            ; preds = %bb.s
  store i8 18, ptr %i.g, align 8, !alias.scope !506416, !noalias !506411
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx, align 8, !alias.scope !506416, !noalias !506411
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i": ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  invoke void @"_ZN89_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17he7f24d20598ea124E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %2)
          to label %bb.an unwind label %bb.am, !inline_history !37

bb.am:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..ast..LetMetadata$GT$17hc257252ea1a5ab0dE"(ptr noalias noundef align 8 dereferenceable(136) %i.j) #53
  br label %.thread

bb.an:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !506413
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !506412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.032, i64 16, i1 false), !alias.scope !506413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !506413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sroa.425.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sroa.10.0.i, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.104.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.15.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void

.thread:                                          ; preds = %bb.am, %bb.p, %bb.r, %bb.ao
  %.pn103 = phi { ptr, i32 } [ %i.ck, %bb.am ], [ %i.co, %bb.ao ], [ %i.bz, %bb.p ], [ %lpad.thr_comm, %bb.r ]
  resume { ptr, i32 } %.pn103

bb.ao:                                            ; preds = %.invoke, %bb.h, %bb.g, %bb.f, %"_ZN88_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$core..clone..Clone$GT$5clone17hc80773b56fe75bc9E.exit.i", %bb.d, %bb.c, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..ast..LetMetadata$GT$17hc257252ea1a5ab0dE"(ptr noalias noundef align 8 dereferenceable(136) %1) #53
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 16 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 7 uses
  %i.m = alloca [104 x i8], align 8               ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.4122 = alloca [19 x i8], align 1         ; 2 uses
  %.sroa.4309.sroa.0 = alloca [28 x i8], align 4  ; 3 uses
  %i.o = alloca [104 x i8], align 8               ; 6 uses
  %i.p = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.10.sroa.10280 = alloca [28 x i8], align 4 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.7243.sroa.7 = alloca [28 x i8], align 4  ; 5 uses
  %.sroa.7243.sroa.9 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.10.sroa.10 = alloca [28 x i8], align 4   ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.7204.sroa.7 = alloca [28 x i8], align 4  ; 5 uses
  %.sroa.7204.sroa.9 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.9193 = alloca [72 x i8], align 8         ; 3 uses
  %.sroa.4201 = alloca [24 x i8], align 8         ; 2 uses
  %i.s = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7188.sroa.7 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.9177 = alloca [72 x i8], align 8         ; 3 uses
  %.sroa.4185 = alloca [24 x i8], align 8         ; 2 uses
  %i.t = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7172.sroa.8 = alloca [16 x i8], align 8  ; 5 uses
  %i.u = alloca [104 x i8], align 8               ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7136 = alloca [72 x i8], align 8         ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.0130 = alloca [16 x i8], align 4         ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 4 uses
  %i.aa = alloca [4 x i8], align 4                ; 2 uses
  %i.ab = alloca [104 x i8], align 8              ; 5 uses
  %i.ac = alloca [104 x i8], align 8              ; 6 uses
  %i.ad = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.712 = alloca [72 x i8], align 8          ; 6 uses
  %i.ae = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 6 uses
  %i.af = alloca [16 x i8], align 4               ; 3 uses
  %i.ag = alloca [16 x i8], align 8               ; 10 uses
  store ptr %3, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  store ptr %4, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = load i64, ptr %1, align 8, !range !23, !noundef !19 ; 4 uses
  %i.ak = icmp ne i64 %i.aj, 12
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -3
  %i.am = icmp samesign ugt i64 %i.aj, 2
  %i.an = select i1 %i.am, i64 %i.al, i64 9
  switch i64 %i.an, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 8, label %bb.h
    i64 9, label %bb.n
    i64 10, label %bb.aw
    i64 11, label %bb.ba
    i64 12, label %bb.bd
    i64 13, label %bb.be
    i64 14, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.bd, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i64 18, ptr %0, align 8
  br label %bb.ch

bb.d:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.val.i.i = load i64, ptr %3, align 8, !noundef !19 ; 2 uses
  %i.as = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.at, ptr %3, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.d
  %.not.i541 = icmp eq ptr %4, null
  br i1 %.not.i541, label %bb.bf, label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !19 ; 2 uses
  %i.av = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.aw, ptr %4, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.bf, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !noundef !19 ; 4 uses
  store i32 %i.az, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.h
  %.sroa.03.0.i1720.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.bd, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !506586, !nonnull !19, !noundef !19 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !506586, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506589)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !506590, !noalias !506591, !noundef !19
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !506590, !noalias !506591, !noundef !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !506590, !noalias !506591, !noundef !19
  %i.bk = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aa), !noalias !506592 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506594)
  %i.bl = lshr i64 %i.bk, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !506595, !noalias !506591, !noundef !19 ; 2 uses
  %i.bp = load ptr, ptr %i.bh, align 8, !alias.scope !506595, !noalias !506591, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.cf, %bb.m ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.j ], [ %i.cg, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !506596 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.l ], [ %i.bs, %bb.k ] ; 3 uses
  %6 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.bt = zext nneg i16 %6 to i64
  %i.bu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bt
  %i.bv = and i64 %i.bu, %i.bo
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [72 x i8], ptr %i.bp, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.by, align 4, !noalias !506597, !noundef !19
  %i.bz = icmp eq i32 %i.az, %.val3.i.i.i.i.i.i.i
  br i1 %i.bz, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit", label %bb.l, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.k
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", !prof !20

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cd = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.ce = and i16 %i.cd, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cf = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cg = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cf
  br label %bb.k

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  br i1 %.not4.i.i.i, label %bb.ca, label %bb.i

bb.n:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0130, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2131.0.copyload = load i32, ptr %.sroa.2131.0..sroa_idx, align 8 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 3, ptr %.sroa.4325.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506598)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !506599, !noundef !19
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cn = load i64, ptr %3, align 8, !noalias !506599, !noundef !19
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !506599
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hc11d9366a1152f20E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef align 8 dereferenceable(48) %i.cp, i32 noundef %.sroa.2131.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.y)
          to label %.noexc543 unwind label %.thread657

.noexc543:                                        ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506600)
  %i.cq = load i64, ptr %i.j, align 8, !range !35, !alias.scope !506600, !noalias !506599, !noundef !19
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !506599
  %i.cs = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !range !21, !noalias !506601, !noundef !19
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i: ; preds = %bb.q
  %.pre.i.i.i = load i64, ptr %i.cs, align 8, !noalias !506602
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !506602
  br label %bb.v

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i": ; preds = %bb.q
  %i.cw = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.av, !noalias !506599 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i"
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = extractvalue { i64, i64 } %i.cw, 1      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !noalias !506603
  store i8 1, ptr %i.ct, align 8, !noalias !506603
  br label %bb.v

bb.r:                                             ; preds = %.noexc543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506605)
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506607)
  %i.db = load i64, ptr %i.da, align 8, !range !62, !alias.scope !506608, !noalias !506599, !noundef !19 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 3
  br i1 %i.dc, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506609)
  switch i64 %i.db, label %bb.t [
    i64 0, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i"
    i64 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val3.i.i.i.i.i.i.i542 = load i64, ptr %i.dd, align 8, !alias.scope !506610, !noalias !506599, !noundef !19 ; 4 uses
  %i.de = icmp eq i64 %.val3.i.i.i.i.i.i.i542, 0
  br i1 %i.de, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.df = shl i64 %.val3.i.i.i.i.i.i.i542, 2
  %i.dg = icmp slt i64 %.val3.i.i.i.i.i.i.i542, 4611686018427387900
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = and i64 %i.df, -16                      ; 2 uses
  %i.di = add i64 %i.dh, 16                       ; 2 uses
  %i.dj = add nsw i64 %.val3.i.i.i.i.i.i.i542, 17
  %i.dk = add i64 %i.dj, %i.di                    ; 4 uses
  %i.dl = icmp uge i64 %i.dk, %i.di
  %i.dm = icmp ult i64 %i.dk, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dl)
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.dk, 0
  br i1 %i.dn, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.du, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.dh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i = phi i64 [ %i.dx, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i ], [ %i.dk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.sink.i.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i.i, align 8, !alias.scope !506610, !noalias !506599, !nonnull !19, !noundef !19
  %i.do = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i.i, i64 %i.do
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %.sink7.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !506611
  br label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i"

bb.u:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !506610, !noalias !506599, !noundef !19 ; 4 uses
  %i.dr = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.dr, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.ds = shl i64 %.val1.i.i.i.i.i.i.i, 2
  %i.dt = icmp slt i64 %.val1.i.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = and i64 %i.ds, -16                      ; 2 uses
  %i.dv = add i64 %i.du, 16                       ; 2 uses
  %i.dw = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.dx = add i64 %i.dw, %i.dv                    ; 4 uses
  %i.dy = icmp uge i64 %i.dx, %i.dv
  %i.dz = icmp ult i64 %i.dx, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dy)
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i, %bb.u, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.s, %bb.r, %.noexc543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !506599
  br label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17h7c50cf90119c4b13E.exit"

bb.v:                                             ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i
  %.pre-phi27.i = phi i64 [ %i.cy, %.noexc.i ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.cx, %.noexc.i ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i ] ; 2 uses
  %i.eb = add i64 %.pre-phi.i, 1
  store i64 %i.eb, ptr %i.cs, align 8, !noalias !506602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !506599
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.pre-phi.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !506599
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.pre-phi27.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !506599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !506599
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hc11d9366a1152f20E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef align 8 dereferenceable(48) %i.i, i32 noundef %.sroa.2131.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.y)
          to label %bb.w unwind label %bb.au, !noalias !506598

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !506612)
  %i.ec = load i64, ptr %i.h, align 8, !range !35, !alias.scope !506612, !noalias !506599, !noundef !19
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit16.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !506613)
  call void @llvm.experimental.noalias.scope.decl(metadata !506614)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !506615)
  call void @llvm.experimental.noalias.scope.decl(metadata !506616)
  %i.ef = load i64, ptr %i.ee, align 8, !range !62, !alias.scope !506617, !noalias !506599, !noundef !19 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 3
  br i1 %i.eg, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit16.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !506618)
  switch i64 %i.ef, label %bb.z [
    i64 0, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit16.i"
    i64 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val3.i.i.i.i.i.i14.i = load i64, ptr %i.eh, align 8, !alias.scope !506619, !noalias !506599, !noundef !19 ; 4 uses
  %i.ei = icmp eq i64 %.val3.i.i.i.i.i.i14.i, 0
  br i1 %i.ei, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit16.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i15.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i15.i: ; preds = %bb.z
  %i.ej = shl i64 %.val3.i.i.i.i.i.i14.i, 2
  %i.ek = icmp slt i64 %.val3.i.i.i.i.i.i14.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ek)
  %i.el = and i64 %i.ej, -16                      ; 2 uses
  %i.em = add i64 %i.el, 16                       ; 2 uses
  %i.en = add nsw i64 %.val3.i.i.i.i.i.i14.i, 17
  %i.eo = add i64 %i.en, %i.em                    ; 4 uses
  %i.ep = icmp uge i64 %i.eo, %i.em
  %i.eq = icmp ult i64 %i.eo, 9223372036854775793
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp eq i64 %i.eo, 0
  br i1 %i.er, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit16.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i9.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i9.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i8.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i15.i
  %.sink.i.i.i.i.i.i10.i = phi i64 [ %i.ey, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i8.i ], [ %i.el, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i15.i ]
  %.sink7.i.i.i.i.i.i11.i = phi i64 [ %i.fb, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i8.i ], [ %i.eo, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i15.i ]
  %.val.sink.in.i.i.i.i.i.i12.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val.sink.i.i.i.i.i.i13.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i12.i, align 8, !alias.scope !506619, !noalias !506599, !nonnull !19, !noundef !19
  %i.es = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i10.i
  %i.et = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i13.i, i64 %i.es
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %.sink7.i.i.i.i.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !506620
end_hunk_1
begin_hunk_2_@"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false)
  store i64 19, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %.critedge465

bb.bh:                                            ; preds = %bb.bg
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5296.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false)
  store i64 %i.hz, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %5)
          to label %bb.bi unwind label %bb.bz

bb.bi:                                            ; preds = %bb.bh
  %i.id = load i64, ptr %i.ad, align 8, !range !59, !noundef !19 ; 4 uses
  %i.ie = icmp eq i64 %i.id, 19
  %i.if = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.712, ptr noundef nonnull align 8 dereferenceable(72) %i.if, i64 72, i1 false)
  br i1 %i.ie, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.712, i64 72, i1 false)
  store i64 19, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.712)
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.ac)
  br label %.critedge463

bb.bk:                                            ; preds = %bb.bi
  %.sroa.5299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5299.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.712, i64 72, i1 false)
  store i64 %i.id, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.712)
  %.not452 = icmp eq i64 %i.hz, 18                ; 2 uses
  %.not453 = icmp eq i64 %i.id, 18                ; 2 uses
  %or.cond461 = and i1 %.not452, %.not453
  br i1 %or.cond461, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not452, label %bb.bq, label %bb.bm

.critedge:                                        ; preds = %bb.bk
  store i64 18, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.ab)
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.ac)
  br label %.critedge463

bb.bm:                                            ; preds = %bb.bl
  %.sroa.2301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.49.0..sroa_idx, i64 96, i1 false)
  store i64 %i.hz, ptr %i.p, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = and i64 %i.im, 7
  %i.io = sub nsw i64 0, %i.in
  %i.ip = getelementptr i8, ptr %i.ik, i64 %i.io  ; 3 uses
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.il to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = icmp ult ptr %i.ip, %i.il
  %i.iu = icmp ult i64 %i.is, 104
  %or.cond.i535 = or i1 %i.it, %i.iu
  br i1 %or.cond.i535, label %bb.bn, label %.noexc485

.noexc485:                                        ; preds = %bb.bm
  %i.iv = getelementptr i8, ptr %i.ip, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iv) ]
  store ptr %i.iv, ptr %i.ij, align 8
  br label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.iw = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc486 unwind label %bb.bp ; 2 uses

.noexc486:                                        ; preds = %bb.bn
  %.not5.i = icmp eq ptr %i.iw, null
  br i1 %.not5.i, label %bb.bo, label %bb.br, !prof !20

bb.bo:                                            ; preds = %.noexc486
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc487 unwind label %bb.bp

.noexc487:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.p) #53
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.ab) #53
  br label %.thread641

bb.bq:                                            ; preds = %bb.bl, %bb.br
  %.sroa.022.0 = phi ptr [ %.sroa.0.0.i484, %bb.br ], [ null, %bb.bl ] ; 2 uses
  %.not455 = icmp eq ptr %.sroa.022.0, null
  %..sroa.022.0 = select i1 %.not455, ptr %i.ap, ptr %.sroa.022.0
  br i1 %.not453, label %bb.bw, label %bb.bs

bb.br:                                            ; preds = %.noexc486, %.noexc485
  %.sroa.0.0.i484 = phi ptr [ %i.iv, %.noexc485 ], [ %i.iw, %.noexc486 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i484, ptr noundef nonnull align 8 dereferenceable(104) %i.p, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  %.sroa.2303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2303.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.417.0..sroa_idx, i64 96, i1 false)
  store i64 %i.id, ptr %i.o, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jc = load ptr, ptr %i.iz, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = and i64 %i.jd, 7
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr i8, ptr %i.jb, i64 %i.jf  ; 3 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jc to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = icmp ult ptr %i.jg, %i.jc
  %i.jl = icmp ult i64 %i.jj, 104
  %or.cond.i532 = or i1 %i.jk, %i.jl
  br i1 %or.cond.i532, label %bb.bt, label %.noexc491

.noexc491:                                        ; preds = %bb.bs
  %i.jm = getelementptr i8, ptr %i.jg, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  store ptr %i.jm, ptr %i.ja, align 8
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.jn = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc492 unwind label %bb.bv ; 2 uses

.noexc492:                                        ; preds = %bb.bt
  %.not5.i490 = icmp eq ptr %i.jn, null
  br i1 %.not5.i490, label %bb.bu, label %bb.bx, !prof !20

bb.bu:                                            ; preds = %.noexc492
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc493 unwind label %bb.bv

.noexc493:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.o) #53
  br label %.thread641

bb.bw:                                            ; preds = %bb.bq, %bb.bx
  %.sroa.0.0.i489.sink = phi ptr [ %.sroa.0.0.i489, %bb.bx ], [ %i.ar, %bb.bq ]
  store i64 10, ptr %0, align 8
  %.sroa.1272.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %..sroa.022.0, ptr %.sroa.1272.0..sroa_idx75, align 8
  %.sroa.1577.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i489.sink, ptr %.sroa.1577.0..sroa_idx80, align 8
  %.sroa.2185.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2185.0..sroa_idx87, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %.critedge463

bb.bx:                                            ; preds = %.noexc492, %.noexc491
  %.sroa.0.0.i489 = phi ptr [ %i.jm, %.noexc491 ], [ %i.jn, %.noexc492 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i489, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bw

bb.by:                                            ; preds = %.thread629
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.bz:                                            ; preds = %bb.bh
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.ac) #53
  br label %.thread641

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit": ; preds = %.lr.ph.i.i.i.i.i.i
  %7 = getelementptr inbounds i8, ptr %i.bx, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %i.jr = invoke fastcc noundef zeroext i1 @_ZN18nickel_lang_parser7uniterm11VarKindCell7try_set17h8f513990af00a5f8E(ptr noundef nonnull align 8 %7, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.z)
          to label %bb.cd unwind label %.thread657

bb.ca:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i"
  %.sroa.4122.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4122, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4122.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = and i64 %i.jx, 7
  %i.jz = sub nsw i64 0, %i.jy
  %i.ka = getelementptr i8, ptr %i.jv, i64 %i.jz  ; 3 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jw to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = icmp ult ptr %i.ka, %i.jw
  %i.kf = icmp ult i64 %i.kd, 48
  %or.cond.i = or i1 %i.ke, %i.kf
  br i1 %or.cond.i, label %bb.cb, label %.noexc519

.noexc519:                                        ; preds = %bb.ca
  %i.kg = getelementptr i8, ptr %i.ka, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kg) ]
  store ptr %i.kg, ptr %i.ju, align 8
  br label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.kh = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 48)
          to label %.noexc520 unwind label %.thread657 ; 2 uses

.noexc520:                                        ; preds = %bb.cb
  %.not5.i518 = icmp eq ptr %i.kh, null
  br i1 %.not5.i518, label %bb.cc, label %bb.cg, !prof !20

bb.cc:                                            ; preds = %.noexc520
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc521 unwind label %.thread657

.noexc521:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.jr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.sroa.4309.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4309.sroa.0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4309.sroa.0.12..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4309.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.ki, align 8
  %.sroa.2.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx321, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4309.sroa.0, i64 28, i1 false)
  %.sroa.3322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.az, ptr %.sroa.3322.0..sroa_idx, align 8
  store i64 19, ptr %0, align 8
  br label %.critedge465

bb.cf:                                            ; preds = %bb.cd
  store i64 18, ptr %0, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %.noexc520, %.noexc519
  %.sroa.0.0.i517 = phi ptr [ %i.kg, %.noexc519 ], [ %i.kh, %.noexc520 ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i517, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %.sroa.5611.0..sroa.0.0.i517.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i517, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5611.0..sroa.0.0.i517.sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.4122, i64 19, i1 false)
  %.sroa.4610.0..sroa.0.0.i517.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i517, i64 16
  store i8 8, ptr %.sroa.4610.0..sroa.0.0.i517.sroa_idx, align 8, !noalias !506642
  %.sroa.6612.0..sroa.0.0.i517.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i517, i64 36
  store i32 %i.az, ptr %.sroa.6612.0..sroa.0.0.i517.sroa_idx, align 4, !noalias !506642
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  store i64 9, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i517, ptr %.sroa.4118.0..sroa_idx, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.c, %bb.cf, %bb.dk, %bb.cg
  %i.kj = phi ptr [ %3, %bb.c ], [ %3, %bb.cf ], [ %.pre720, %bb.dk ], [ %3, %bb.cg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !506643)
  call void @llvm.experimental.noalias.scope.decl(metadata !506644)
  call void @llvm.experimental.noalias.scope.decl(metadata !506645)
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !506646, !noundef !19
  %i.kl = add i64 %i.kk, -1                       ; 2 uses
  store i64 %i.kl, ptr %i.kj, align 8, !noalias !506646
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.ci, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

bb.ci:                                            ; preds = %bb.ch
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ag), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i": ; preds = %bb.ci, %bb.ch
  %i.kn = load ptr, ptr %i.ah, align 8, !alias.scope !506647, !noundef !19 ; 3 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %.critedge463, label %bb.cj

bb.cj:                                            ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.kp = load i64, ptr %i.kn, align 8, !noalias !506648, !noundef !19
  %i.kq = add i64 %i.kp, -1                       ; 2 uses
  store i64 %i.kq, ptr %i.kn, align 8, !noalias !506648
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %bb.ck, label %.critedge463

bb.ck:                                            ; preds = %bb.cj
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ah), !inline_history !0
  br label %.critedge463

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17h7c50cf90119c4b13E.exit": ; preds = %bb.at, %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i"
  %.val538 = phi ptr [ %.val538719, %bb.at ], [ %4, %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i" ] ; 4 uses
  %.val = phi ptr [ %i.fh, %bb.at ], [ %3, %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h123a90838bc1b1abE.exit.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.val.i.i556 = load i64, ptr %.val, align 8, !noundef !19 ; 2 uses
  %i.ks = icmp ne i64 %.val.i.i556, 0
  call void @llvm.assume(i1 %i.ks)
  %i.kt = add i64 %.val.i.i556, 1                 ; 2 uses
  store i64 %i.kt, ptr %.val, align 8
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %bb.cl, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i557, !prof !20

bb.cl:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17h7c50cf90119c4b13E.exit"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i557: ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17h7c50cf90119c4b13E.exit"
  %.not.i558 = icmp eq ptr %.val538, null
  br i1 %.not.i558, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i557
  %.val.i2.i559 = load i64, ptr %.val538, align 8, !noundef !19 ; 2 uses
  %i.kv = icmp ne i64 %.val.i2.i559, 0
  call void @llvm.assume(i1 %i.kv)
  %i.kw = add i64 %.val.i2.i559, 1                ; 2 uses
  store i64 %i.kw, ptr %.val538, align 8
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.cn, label %bb.co, !prof !20

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.trap()
  unreachable

bb.co:                                            ; preds = %bb.cm, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i557
  invoke void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cj, ptr noundef nonnull align 8 %2, ptr noundef nonnull %.val, ptr noundef %.val538, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %5)
          to label %bb.cp unwind label %.thread657

bb.cp:                                            ; preds = %bb.co
  %i.ky = load i64, ptr %i.x, align 8, !range !59, !noundef !19 ; 4 uses
  %i.kz = icmp eq i64 %i.ky, 19
  %i.la = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7136, ptr noundef nonnull align 8 dereferenceable(72) %i.la, i64 72, i1 false)
  br i1 %i.kz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lb, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7136, i64 72, i1 false)
  store i64 19, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7136)
  %.pre = load ptr, ptr %i.ag, align 8, !alias.scope !506649
  br label %.critedge465

bb.cr:                                            ; preds = %bb.cp
  %.sroa.5332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5142.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5332.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4141.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7136, i64 72, i1 false)
  store i64 %i.ky, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.2131.0.copyload, ptr %i.v, align 4
  br label %bb.cs

bb.cs:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583", %bb.cr
  %.sroa.03.0.i1720.i.i562 = phi ptr [ %i.ag, %bb.cr ], [ %i.lf, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583" ] ; 2 uses
  %i.lc = load ptr, ptr %.sroa.03.0.i1720.i.i562, align 8, !noalias !506650, !nonnull !19, !noundef !19 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i562, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !506650, !noundef !19 ; 2 uses
  %.not4.i.i.i564 = icmp eq ptr %i.le, null
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !506651)
  call void @llvm.experimental.noalias.scope.decl(metadata !506652)
  call void @llvm.experimental.noalias.scope.decl(metadata !506653)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !506654, !noalias !506655, !noundef !19
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583", label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %.val.i.i.i.i.i566 = load i64, ptr %i.lk, align 8, !alias.scope !506654, !noalias !506655, !noundef !19
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %.val5.i.i.i.i.i567 = load i64, ptr %i.ll, align 8, !alias.scope !506654, !noalias !506655, !noundef !19
  %i.lm = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i566, i64 %.val5.i.i.i.i.i567, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v), !noalias !506656 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !506657)
  call void @llvm.experimental.noalias.scope.decl(metadata !506658)
  %i.ln = lshr i64 %i.lm, 57
  %i.lo = trunc nuw nsw i64 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !506659, !noalias !506655, !noundef !19 ; 2 uses
  %i.lr = load ptr, ptr %i.lj, align 8, !alias.scope !506659, !noalias !506655, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i568 = insertelement <16 x i8> poison, i8 %i.lo, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i569 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i568, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.sroa.9.0.i.i.i.i.i.i.i570 = phi i64 [ 0, %bb.ct ], [ %i.mi, %bb.cw ]
  %.pn.i.i.i.i.i.i571 = phi i64 [ %i.lm, %bb.ct ], [ %i.mj, %bb.cw ]
  %.sroa.01.0.i.i.i.i.i.i.i572 = and i64 %.pn.i.i.i.i.i.i571, %i.lq ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.sroa.01.0.i.i.i.i.i.i.i572
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i573 = load <16 x i8>, ptr %i.ls, align 1, !noalias !506660 ; 2 uses
  %i.lt = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i573, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i569
  %i.lu = bitcast <16 x i1> %i.lt to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i574 = icmp eq i16 %i.lu, 0
  br i1 %.not.i.not32.i.i.i.i.i.i574, label %._crit_edge.i.i.i.i.i.i579, label %.lr.ph.i.i.i.i.i.i575

.lr.ph.i.i.i.i.i.i575:                            ; preds = %bb.cu, %bb.cv
  %.sroa.06.0.i33.i.i.i.i.i.i576 = phi i16 [ %i.mh, %bb.cv ], [ %i.lu, %bb.cu ] ; 3 uses
  %i.lv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i576, i1 true)
  %i.lw = zext nneg i16 %i.lv to i64
  %i.lx = add i64 %.sroa.01.0.i.i.i.i.i.i.i572, %i.lw
  %i.ly = and i64 %i.lx, %i.lq
  %i.lz = sub nsw i64 0, %i.ly
  %i.ma = getelementptr inbounds [72 x i8], ptr %i.lr, i64 %i.lz ; 4 uses
  %i.mb = getelementptr inbounds i8, ptr %i.ma, i64 -72
  %.val3.i.i.i.i.i.i.i577 = load i32, ptr %i.mb, align 4, !noalias !506661, !noundef !19
  %i.mc = icmp eq i32 %.sroa.2131.0.copyload, %.val3.i.i.i.i.i.i.i577
  br i1 %i.mc, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit589", label %bb.cv, !prof !22

._crit_edge.i.i.i.i.i.i579:                       ; preds = %bb.cv, %bb.cu
  %i.md = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i573, splat (i8 -1)
  %i.me = bitcast <16 x i1> %i.md to i16
  %i.mf = icmp eq i16 %i.me, 0
  br i1 %i.mf, label %bb.cw, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583", !prof !20

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i575
  %i.mg = add i16 %.sroa.06.0.i33.i.i.i.i.i.i576, -1
  %i.mh = and i16 %i.mg, %.sroa.06.0.i33.i.i.i.i.i.i576 ; 2 uses
  %.not.i.not.i.i.i.i.i.i578 = icmp eq i16 %i.mh, 0
  br i1 %.not.i.not.i.i.i.i.i.i578, label %._crit_edge.i.i.i.i.i.i579, label %.lr.ph.i.i.i.i.i.i575

bb.cw:                                            ; preds = %._crit_edge.i.i.i.i.i.i579
  %i.mi = add i64 %.sroa.9.0.i.i.i.i.i.i.i570, 16 ; 2 uses
  %i.mj = add i64 %.sroa.01.0.i.i.i.i.i.i.i572, %i.mi
  br label %bb.cu

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583": ; preds = %._crit_edge.i.i.i.i.i.i579, %bb.cs
  br i1 %.not4.i.i.i564, label %bb.cy, label %bb.cs

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit589": ; preds = %.lr.ph.i.i.i.i.i.i575
  %8 = getelementptr inbounds i8, ptr %i.ma, i64 -64
  %i.mk = load i64, ptr %8, align 8, !noalias !506662, !noundef !19
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %bb.da, label %bb.cx, !prof !22

bb.cx:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit589"
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10169) #52
          to label %.noexc590 unwind label %bb.dl

.noexc590:                                        ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i583"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10579) #52
          to label %bb.cz unwind label %bb.dl

bb.cz:                                            ; preds = %bb.cy
  unreachable

bb.da:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit589"
  %i.mm = getelementptr inbounds i8, ptr %i.ma, i64 -56 ; 2 uses
  %.sroa.0.0.copyload595 = load i64, ptr %i.mm, align 8 ; 2 uses
  store i64 3, ptr %i.mm, align 8, !noalias !506662
  %.not446 = icmp eq i64 %.sroa.0.0.copyload595, 3
  br i1 %.not446, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.5596.0..sroa_idx597 = getelementptr inbounds i8, ptr %i.ma, i64 -48
  %.sroa.4603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4603.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5596.0..sroa_idx597, i64 48, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.sroa.0.0.copyload595.sink = phi i64 [ %.sroa.0.0.copyload595, %bb.db ], [ 0, %bb.da ] ; 2 uses
  store i64 %.sroa.0.0.copyload595.sink, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.mn = icmp eq i64 %i.ky, 18                   ; 2 uses
  %i.mo = or i64 %.sroa.0.0.copyload595.sink, %i.aj
  %i.mp = icmp eq i64 %i.mo, 0
  %or.cond3 = and i1 %i.mn, %i.mp
  br i1 %or.cond3, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.mn, label %bb.df, label %bb.dg

bb.de:                                            ; preds = %bb.dc
  store i64 18, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E"(ptr noalias noundef align 8 dereferenceable(56) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.u)
  br label %bb.dk

bb.df:                                            ; preds = %bb.dj, %bb.dd
  %.sroa.0146.0 = phi ptr [ %.sroa.0.0.i496, %bb.dj ], [ null, %bb.dd ] ; 2 uses
  %.not448 = icmp eq ptr %.sroa.0146.0, null
  %..sroa.0146.0 = select i1 %.not448, ptr %i.cj, ptr %.sroa.0146.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.w, i64 56, i1 false)
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5164.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0130, i64 16, i1 false)
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8167.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false)
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %..sroa.0146.0, ptr %.sroa.4163.0..sroa_idx, align 8
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.2131.0.copyload, ptr %.sroa.6165.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.dk

bb.dg:                                            ; preds = %bb.dd
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2334.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4141.0..sroa_idx, i64 96, i1 false)
  store i64 %i.ky, ptr %i.n, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.mu = load ptr, ptr %i.mr, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = and i64 %i.mv, 7
  %i.mx = sub nsw i64 0, %i.mw
  %i.my = getelementptr i8, ptr %i.mt, i64 %i.mx  ; 3 uses
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.mu to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = icmp ult ptr %i.my, %i.mu
  %i.nd = icmp ult i64 %i.nb, 104
  %or.cond.i529 = or i1 %i.nc, %i.nd
  br i1 %or.cond.i529, label %bb.dh, label %.noexc498

.noexc498:                                        ; preds = %bb.dg
  %i.ne = getelementptr i8, ptr %i.my, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ne) ]
  store ptr %i.ne, ptr %i.ms, align 8
  br label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.nf = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc499 unwind label %.body473 ; 2 uses

.noexc499:                                        ; preds = %bb.dh
  %.not5.i497 = icmp eq ptr %i.nf, null
  br i1 %.not5.i497, label %bb.di, label %bb.dj, !prof !20

bb.di:                                            ; preds = %.noexc499
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc500 unwind label %.body473

.noexc500:                                        ; preds = %bb.di
  unreachable

.body473:                                         ; preds = %bb.dh, %bb.di
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.n) #53
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E"(ptr noalias noundef align 8 dereferenceable(56) %i.w) #53
  br label %.thread629

bb.dj:                                            ; preds = %.noexc499, %.noexc498
  %.sroa.0.0.i496 = phi ptr [ %i.ne, %.noexc498 ], [ %i.nf, %.noexc499 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i496, ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.df

bb.dk:                                            ; preds = %bb.de, %bb.df
  %.pre720 = load ptr, ptr %i.ag, align 8, !alias.scope !506646
  br label %bb.ch

bb.dl:                                            ; preds = %bb.cx, %bb.cy
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.u) #53
  br label %.thread629

.critedge463:                                     ; preds = %bb.bw, %.critedge, %bb.do, %bb.dn, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i591", %bb.ck, %bb.cj, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i", %bb.bj, %bb.ds, %bb.dw, %bb.ee, %bb.em, %bb.eg, %bb.dy, %bb.dt, %bb.dp
  ret void

.critedge465:                                     ; preds = %.thread, %bb.ce, %bb.cq
  %i.ni = phi ptr [ %3, %.thread ], [ %3, %bb.ce ], [ %.pre, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !506663)
  call void @llvm.experimental.noalias.scope.decl(metadata !506664)
  call void @llvm.experimental.noalias.scope.decl(metadata !506665)
  %i.nj = load i64, ptr %i.ni, align 8, !noalias !506649, !noundef !19
  %i.nk = add i64 %i.nj, -1                       ; 2 uses
  store i64 %i.nk, ptr %i.ni, align 8, !noalias !506649
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %bb.dm, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i591"

bb.dm:                                            ; preds = %.critedge465
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ag), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i591"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i591": ; preds = %bb.dm, %.critedge465
  %i.nm = load ptr, ptr %i.ah, align 8, !alias.scope !506666, !noundef !19 ; 3 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %.critedge463, label %bb.dn

bb.dn:                                            ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i591"
  %i.no = load i64, ptr %i.nm, align 8, !noalias !506667, !noundef !19
  %i.np = add i64 %i.no, -1                       ; 2 uses
  store i64 %i.np, ptr %i.nm, align 8, !noalias !506667
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %bb.do, label %.critedge463

bb.do:                                            ; preds = %bb.dn
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ah), !inline_history !0
  br label %.critedge463

bb.dp:                                            ; preds = %bb.ax
  %.sroa.5368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.5368.0.copyload = load i32, ptr %.sroa.5368.0..sroa_idx, align 4
  %.sroa.6369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6369.0.copyload = load i64, ptr %.sroa.6369.0..sroa_idx, align 8
  %.sroa.7370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.7370.0.copyload = load i32, ptr %.sroa.7370.0..sroa_idx, align 8
  %.sroa.8371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.sroa.10, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8371.0..sroa_idx, i64 28, i1 false)
  %.sroa.9372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.12395.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12395.0..sroa_idx396, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9372.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.10.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.0..sroa_idx394, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.sroa.10, i64 28, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.gz, ptr %i.nr, align 8
  %.sroa.4385.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5368.0.copyload, ptr %.sroa.4385.0..sroa_idx386, align 4
  %.sroa.6388.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6369.0.copyload, ptr %.sroa.6388.0..sroa_idx389, align 8
  %.sroa.8391.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7370.0.copyload, ptr %.sroa.8391.0..sroa_idx392, align 8
  store i64 19, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204.sroa.9)
  br label %.critedge463

bb.dq:                                            ; preds = %bb.ax
  %i.ns = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0358.0.copyload = load i64, ptr %i.ns, align 8
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5359.0.copyload = load i32, ptr %.sroa.5359.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.sroa.10, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6360.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not444 = icmp eq i32 %.sroa.5359.0.copyload, 6
  br i1 %.not444, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7204.sroa.7, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.sroa.10, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7204.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %.sroa.0202.0 = phi i64 [ 13, %bb.dr ], [ 18, %bb.dq ]
  %.sroa.7204.sroa.0.0 = phi i64 [ %.sroa.0358.0.copyload, %bb.dr ], [ undef, %bb.dq ]
  store i64 %.sroa.0202.0, ptr %0, align 8
  %.sroa.7204.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7204.sroa.0.0, ptr %.sroa.7204.0..sroa_idx205, align 8
  %.sroa.7204.sroa.6.0..sroa.7204.0..sroa_idx205.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5359.0.copyload, ptr %.sroa.7204.sroa.6.0..sroa.7204.0..sroa_idx205.sroa_idx, align 8
  %.sroa.7204.sroa.7.0..sroa.7204.0..sroa_idx205.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7204.sroa.7.0..sroa.7204.0..sroa_idx205.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7204.sroa.7, i64 28, i1 false)
  %.sroa.7204.sroa.9.0..sroa.7204.0..sroa_idx205.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7204.sroa.9.0..sroa.7204.0..sroa_idx205.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7204.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204.sroa.9)
  br label %.critedge463

end_hunk_2
begin_hunk_3_@"_ZN99_$LT$nickel_lang_parser..ast..record..Record$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h61aeac7cdc83fe0aE":bb.a
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph82, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit"
  %.sroa.04.0.i.i1081 = phi i64 [ 0, %.lr.ph82 ], [ %i.ce, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit" ] ; 2 uses
  %.sroa.0.080 = phi ptr [ %i.bg, %.lr.ph82 ], [ %i.cc, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.447)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.644)
  %i.cb = icmp eq ptr %.sroa.0.080, %i.bj
  br i1 %i.cb, label %.loopexit, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit": ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 280
  call fastcc void @"_ZN80_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$core..clone..Clone$GT$5clone17hb57ff880ad338284E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.0.080)
  %.pr = load i64, ptr %i.d, align 8
  %.not.i.i12 = icmp eq i64 %.pr, 19
  br i1 %.not.i.i12, label %.loopexit, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !506964
  call void @"_ZN101_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hb64088be888e7ba8E"(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.d, ptr noundef nonnull align 8 %2)
  %.sroa.042.0.copyload = load i64, ptr %i.e, align 8, !noalias !506965 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644.0..sroa_idx, i64 272, i1 false), !noalias !506965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !506964
  %.not.i13 = icmp eq i64 %.sroa.042.0.copyload, 19
  br i1 %.not.i13, label %.loopexit, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit", !prof !40

.loopexit:                                        ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i", %bb.t, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10550, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10552) #52, !noalias !506966, !inline_history !506944
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644, i64 272, i1 false), !noalias !506967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.644)
  %i.cd = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i.i9, i64 %.sroa.04.0.i.i1081 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.04.0.i.i1081, 1  ; 2 uses
  store i64 %.sroa.042.0.copyload, ptr %i.cd, align 8, !noalias !506962
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447, i64 272, i1 false), !noalias !506962
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.447)
  %exitcond84.not = icmp eq i64 %i.ce, %i.bi
  br i1 %exitcond84.not, label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h3b32cf942828ed27E.exit, label %bb.t

_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h3b32cf942828ed27E.exit: ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8"
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load i8, ptr %i.cf, align 8, !range !21, !noundef !19
  store ptr %.sroa.0.0.i.i.i, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i9, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bi, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.cg, ptr %i.ck, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17hec4a5cdb500ff2dcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noalias !506980, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !506981
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !506981
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i": ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !506982
  store i8 1, ptr %i.e, align 8, !noalias !506982
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.j, %.noexc ]
  %i.l = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !506981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.l, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.54.0..sroa_idx, align 8
  call fastcc void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17hdbebde7f7f63193eE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.b) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17hdbebde7f7f63193eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.444 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.5.sroa.5 = alloca [16 x i8], align 4     ; 6 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.631.sroa.8 = alloca [28 x i8], align 4   ; 7 uses
  %.sroa.325.sroa.0 = alloca [16 x i8], align 4   ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 15 uses
  %.sroa.613.sroa.8.sroa.0 = alloca [16 x i8], align 4 ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !range !25, !noundef !19 ; 4 uses
  %i.j = icmp ne i32 %i.i, 4
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i32 %i.i, -3
  %i.l = icmp samesign ugt i32 %i.i, 2
  %narrow = select i1 %i.l, i32 %i.k, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  %.val186 = load ptr, ptr %6, align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val187 = load i64, ptr %i.m, align 8, !noundef !19 ; 4 uses
  %i.n = icmp eq i64 %.val187, 0
  br i1 %i.n, label %.critedge176, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = shl i64 %.val187, 2
  %i.p = icmp slt i64 %.val187, 4611686018427387900
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i64 %i.o, -16                        ; 2 uses
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add nsw i64 %.val187, 17
  %i.t = add i64 %i.s, %i.r                       ; 4 uses
  %i.u = icmp uge i64 %i.t, %i.r
  %i.v = icmp ult i64 %i.t, 9223372036854775793
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val186) ]
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %.critedge176, label %bb.d

bb.d:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i
  %i.x = sub nuw nsw i64 -16, %i.q
  %i.y = getelementptr inbounds i8, ptr %.val186, i64 %i.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %.critedge176

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !align !24, !noundef !19 ; 2 uses
  %.not166 = icmp eq ptr %i.ab, null
  br i1 %.not166, label %bb.q, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.2.0.copyload, ptr %i.e, align 4
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.f
  %.sroa.03.0.i1720.i.i = phi ptr [ %i.f, %bb.f ], [ %i.ag, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.03.0.i1720.i.i, align 8, !noalias !507031, !nonnull !19, !noundef !19 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1720.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !507031, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507034)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !507035, !noalias !507036, !noundef !19
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !507035, !noalias !507036, !noundef !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !507035, !noalias !507036, !noundef !19
  %i.an = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !507037 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507039)
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !507040, !noalias !507036, !noundef !19 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !507040, !noalias !507036, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bi, %bb.k ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.an, %bb.h ], [ %i.bj, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.at, align 1, !noalias !507041 ; 2 uses
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.bh, %bb.j ], [ %i.av, %bb.i ] ; 3 uses
  %7 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.aw = zext nneg i16 %7 to i64
  %i.ax = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.ar
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [72 x i8], ptr %i.as, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 4, !noalias !507042, !noundef !19
  %i.bc = icmp eq i32 %.sroa.2.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.bc, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit", label %bb.j, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %bb.i
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.k, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", !prof !20

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.bh = and i16 %i.bg, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bi = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.bj = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bi
  br label %bb.i

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  br i1 %.not4.i.i.i, label %bb.ae, label %bb.g

bb.l:                                             ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  %lpad.thr_comm.split-lp241 = landingpad { ptr, i32 }
          cleanup
  br label %.thread235

.critedge176:                                     ; preds = %bb.af, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i191, %bb.ae, %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.c, %bb.ah
  %i.bk = load i64, ptr %3, align 8, !noalias !507043, !noundef !19
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %3, align 8, !noalias !507043
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

bb.m:                                             ; preds = %.critedge176
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i": ; preds = %bb.m, %.critedge176
  %i.bn = icmp eq ptr %4, null
  br i1 %i.bn, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.bo = load i64, ptr %4, align 8, !noalias !507044, !noundef !19
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %4, align 8, !noalias !507044
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.o:                                             ; preds = %bb.n
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g), !inline_history !0
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.p:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !noundef !19
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h209d631a6b786bcfE"(ptr noalias noundef align 8 dereferenceable(48) %6, i32 noundef %i.bs)
          to label %bb.q unwind label %bb.ao

bb.q:                                             ; preds = %bb.p, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.8.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i.i = load i64, ptr %3, align 8, !noundef !19 ; 2 uses
  %i.bt = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.bu, ptr %3, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.q
  %.not.i190 = icmp eq ptr %4, null
  br i1 %.not.i190, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !19 ; 2 uses
  %i.bw = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.bx, ptr %4, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.t, label %bb.u, !prof !20

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  invoke void @"_ZN140_$LT$nickel_lang_parser..typ..EnumRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17hc9ee1054036982f1E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %5)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.bz = load i32, ptr %i.c, align 8, !range !30, !noundef !19 ; 2 uses
  %.not167 = icmp eq i32 %i.bz, 25
  br i1 %.not167, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0108.0.copyload = load i64, ptr %i.ca, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5109.0.copyload = load i32, ptr %.sroa.5109.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.613.sroa.8.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6110.0..sroa_idx, i64 16, i1 false)
  %.sroa.6110.sroa.5.0..sroa.6110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.6110.sroa.5.0.copyload = load i32, ptr %.sroa.6110.sroa.5.0..sroa.6110.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.325.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.613.sroa.8.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  call fastcc void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17hdbebde7f7f63193eE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = load i32, ptr %i.b, align 8, !range !30, !noundef !19 ; 2 uses
  %.not168 = icmp eq i32 %i.cb, 25
  br i1 %.not168, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0129.0.copyload = load i64, ptr %i.cc, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5130.0.copyload = load i32, ptr %.sroa.5130.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6131.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.444, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.sroa.8)
  %.not170 = icmp eq i32 %.sroa.5109.0.copyload, 3
  br i1 %.not170, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.not169 = icmp eq i32 %.sroa.5130.0.copyload, 6
  br i1 %.not169, label %bb.z, label %.thread206

bb.z:                                             ; preds = %bb.y
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %.sroa.367.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

.thread206:                                       ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.5)
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4158.0..sroa_idx, i64 16, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.325.sroa.0, i64 16, i1 false)
  %i.cd = inttoptr i64 %.sroa.0108.0.copyload to ptr ; 2 uses
  %.not172 = icmp eq i32 %.sroa.5130.0.copyload, 6
  br i1 %.not172, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.thread206, %bb.aa
  %.sroa.5.sroa.0.0215 = phi i32 [ %i.i, %.thread206 ], [ %.sroa.5109.0.copyload, %bb.aa ]
  %.sroa.048.0213 = phi ptr [ %i.ab, %.thread206 ], [ %i.cd, %bb.aa ]
  %.sroa.651.0211 = phi i32 [ undef, %.thread206 ], [ %.sroa.6110.sroa.5.0.copyload, %bb.aa ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = and i64 %i.cj, 7
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr i8, ptr %i.ch, i64 %i.cl  ; 3 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ci to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult ptr %i.cm, %i.ci
  %i.cr = icmp ult i64 %i.cp, 40
  %or.cond.i = or i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %.noexc179, label %.noexc178

.noexc178:                                        ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %i.cm, i64 -40    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  store ptr %i.cs, ptr %i.cg, align 8
  br label %bb.ad

.noexc179:                                        ; preds = %bb.ab
  %i.ct = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 40) ; 2 uses
  %.not5.i = icmp eq ptr %i.ct, null
  br i1 %.not5.i, label %.noexc180, label %bb.ad, !prof !20

.noexc180:                                        ; preds = %.noexc179
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  %.sroa.5.sroa.0.0216 = phi i32 [ %.sroa.5.sroa.0.0215, %bb.ad ], [ %.sroa.5109.0.copyload, %bb.aa ]
  %.sroa.048.0214 = phi ptr [ %.sroa.048.0213, %bb.ad ], [ %i.cd, %bb.aa ]
  %.sroa.651.0212 = phi i32 [ %.sroa.651.0211, %bb.ad ], [ %.sroa.6110.sroa.5.0.copyload, %bb.aa ]
  %.sroa.055.0 = phi ptr [ %.sroa.0.0.i, %bb.ad ], [ null, %bb.aa ] ; 2 uses
  %.not173 = icmp eq ptr %.sroa.055.0, null
  %..sroa.055.0 = select i1 %.not173, ptr %i.aa, ptr %.sroa.055.0
  %.sroa.061.sroa.4.sroa.4.0..sroa.061.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.061.sroa.4.sroa.4.0..sroa.061.sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.sroa.5, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.048.0214, ptr %i.cu, align 8
  %.sroa.061.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.sroa.0.0216, ptr %.sroa.061.sroa.4.0..sroa_idx, align 8
  %.sroa.061.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.651.0212, ptr %.sroa.061.sroa.5.0..sroa_idx, align 4
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %..sroa.055.0, ptr %.sroa.462.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.5)
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.ad:                                            ; preds = %.noexc179, %.noexc178
  %.sroa.0.0.i = phi ptr [ %i.cs, %.noexc178 ], [ %i.ct, %.noexc179 ] ; 4 uses
  %.sroa.5202.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5202.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.444, i64 28, i1 false)
  store i64 %.sroa.0129.0.copyload, ptr %.sroa.0.0.i, align 8, !noalias !507045
  %.sroa.4201.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store i32 %.sroa.5130.0.copyload, ptr %.sroa.4201.0..sroa.0.0.i.sroa_idx, align 8, !noalias !507045
  br label %bb.ac

"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit": ; preds = %.lr.ph.i.i.i.i.i.i
  %8 = getelementptr inbounds i8, ptr %i.ba, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.cw = invoke fastcc noundef zeroext i1 @_ZN18nickel_lang_parser7uniterm11VarKindCell7try_set17h8f513990af00a5f8E(ptr noundef nonnull align 8 %8, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d)
          to label %bb.ag unwind label %bb.l

bb.ae:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  %.val184 = load ptr, ptr %6, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val185 = load i64, ptr %i.cx, align 8, !noundef !19 ; 4 uses
  %i.cy = icmp eq i64 %.val185, 0
  br i1 %i.cy, label %.critedge176, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i191

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i191: ; preds = %bb.ae
  %i.cz = shl i64 %.val185, 2
  %i.da = icmp slt i64 %.val185, 4611686018427387900
  tail call void @llvm.assume(i1 %i.da)
  %i.db = and i64 %i.cz, -16                      ; 2 uses
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add nsw i64 %.val185, 17
  %i.de = add i64 %i.dd, %i.dc                    ; 4 uses
  %i.df = icmp uge i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.de, 9223372036854775793
  tail call void @llvm.assume(i1 %i.df)
  tail call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val184) ]
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %.critedge176, label %bb.af

bb.af:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i191
  %i.di = sub nuw nsw i64 -16, %i.db
  %i.dj = getelementptr inbounds i8, ptr %.val184, i64 %i.di
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %.critedge176

bb.ag:                                            ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.3105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.cw, label %.thread228, label %bb.ah

.thread228:                                       ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3105.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false)
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2104.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.2.0.copyload, ptr %.sroa.4106.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread226

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 6, ptr %.sroa.3105.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  br label %.critedge176

bb.ai:                                            ; preds = %bb.w
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.5139.0.copyload = load i32, ptr %.sroa.5139.0..sroa_idx, align 4
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6140.0.copyload = load i64, ptr %.sroa.6140.0..sroa_idx, align 8
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7141.0.copyload = load i32, ptr %.sroa.7141.0..sroa_idx, align 8
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8142.0..sroa_idx, i64 28, i1 false)
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9143.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5148.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.sroa.8, i64 28, i1 false)
  store i32 %i.cb, ptr %0, align 8
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5139.0.copyload, ptr %.sroa.2145.0..sroa_idx, align 4
  %.sroa.3146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6140.0.copyload, ptr %.sroa.3146.0..sroa_idx, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7141.0.copyload, ptr %.sroa.4147.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.sroa.8)
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.aj:                                            ; preds = %bb.v
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.5118.0.copyload = load i32, ptr %.sroa.5118.0..sroa_idx, align 4
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6119.0.copyload = load i64, ptr %.sroa.6119.0..sroa_idx, align 8
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7120.0.copyload = load i32, ptr %.sroa.7120.0..sroa_idx, align 8
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.613.sroa.8.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8121.0..sroa_idx, i64 16, i1 false)
  %.sroa.8121.sroa.5.0..sroa.8121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.8121.sroa.5.0.copyload = load i32, ptr %.sroa.8121.sroa.5.0..sroa.8121.0..sroa_idx.sroa_idx, align 4
  %.sroa.9122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9122.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5127.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.613.sroa.8.sroa.0, i64 16, i1 false)
  store i32 %i.bz, ptr %0, align 8
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5118.0.copyload, ptr %.sroa.2124.0..sroa_idx, align 4
  %.sroa.3125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6119.0.copyload, ptr %.sroa.3125.0..sroa_idx, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7120.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.sroa.2.0..sroa.5127.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.8121.sroa.5.0.copyload, ptr %.sroa.5127.sroa.2.0..sroa.5127.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.8.sroa.0)
  %.val182 = load ptr, ptr %6, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val183 = load i64, ptr %i.dk, align 8, !noundef !19 ; 4 uses
  %i.dl = icmp eq i64 %.val183, 0
  br i1 %i.dl, label %.thread226, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i193

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i193: ; preds = %bb.aj
  %i.dm = shl i64 %.val183, 2
  %i.dn = icmp slt i64 %.val183, 4611686018427387900
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = and i64 %i.dm, -16                      ; 2 uses
  %i.dp = add i64 %i.do, 16                       ; 2 uses
  %i.dq = add nsw i64 %.val183, 17
  %i.dr = add i64 %i.dq, %i.dp                    ; 4 uses
  %i.ds = icmp uge i64 %i.dr, %i.dp
  %i.dt = icmp ult i64 %i.dr, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ds)
  tail call void @llvm.assume(i1 %i.dt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.du = icmp eq i64 %i.dr, 0
  br i1 %i.du, label %.thread226, label %bb.ak

bb.ak:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i193
  %i.dv = sub nuw nsw i64 -16, %i.do
  %i.dw = getelementptr inbounds i8, ptr %.val182, i64 %i.dv
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %.thread226

"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit": ; preds = %bb.an, %bb.am, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i195", %bb.ai, %bb.o, %bb.n, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i", %bb.z, %bb.ac
  ret void

.thread226:                                       ; preds = %bb.aj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i193, %bb.ak, %.thread228
  %i.dx = load i64, ptr %3, align 8, !noalias !507046, !noundef !19
  %i.dy = add i64 %i.dx, -1                       ; 2 uses
  store i64 %i.dy, ptr %3, align 8, !noalias !507046
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.al, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i195"

bb.al:                                            ; preds = %.thread226
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i195"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i195": ; preds = %bb.al, %.thread226
  %i.ea = icmp eq ptr %4, null
  br i1 %i.ea, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i195"
  %i.eb = load i64, ptr %4, align 8, !noalias !507047, !noundef !19
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  store i64 %i.ec, ptr %4, align 8, !noalias !507047
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.an, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.an:                                            ; preds = %bb.am
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g), !inline_history !0
  br label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.ao:                                            ; preds = %bb.p, %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %6, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val181 = load i64, ptr %i.ee, align 8, !noundef !19
  tail call fastcc void @"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E"(ptr %.val, i64 %.val181) #53
  br label %.thread235

bb.ap:                                            ; preds = %.thread235
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.aq:                                            ; preds = %.thread235
  resume { ptr, i32 } %.pn234

.thread235:                                       ; preds = %bb.ao, %bb.l
  %.pn234 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ao ], [ %lpad.thr_comm.split-lp241, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.f) #53
          to label %bb.aq unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$nickel_lang_parser..utils..ExtendedInfixOp$u20$as$u20$nickel_lang_parser..utils..EtaExpand$GT$10eta_expand17h21db0cb35d51c007E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 4                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 4                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [48 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [48 x i8], align 8                ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !19
  %i.w = icmp eq i32 %i.v, 0                      ; 2 uses
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.w, label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit", label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !507070
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.h, align 8, !noalias !507070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !507070
  store ptr %i.h, ptr %i.g, align 8, !noalias !507070
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193), !noalias !507070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !507070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !507070
  br label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit"

"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit": ; preds = %bb.b, %bb.c
  %i.x = call fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10576, i64 noundef 1), !noalias !507071 ; 2 uses
  %i.y = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !507072
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit90", label %bb.d, !prof !22

bb.d:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !507072
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.f, align 8, !noalias !507072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !507072
  store ptr %i.f, ptr %i.e, align 8, !noalias !507072
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193), !noalias !507072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !507072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !507072
  br label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit90"

"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit90": ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit", %bb.d
  %i.aa = call fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10577, i64 noundef 1), !noalias !507073 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54
  %i.ab = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #54 ; 13 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !20

bb.e:                                             ; preds = %bb.a
  br i1 %i.w, label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit91", label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !507074
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.d, align 8, !noalias !507074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !507074
  store ptr %i.d, ptr %i.c, align 8, !noalias !507074
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193), !noalias !507074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !507074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !507074
  br label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit91"

"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit91": ; preds = %bb.e, %bb.f
  %i.ad = call fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10576, i64 noundef 1), !noalias !507075 ; 2 uses
  %i.ae = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !507076
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit92", label %bb.g, !prof !22

bb.g:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit91"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !507076
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !507076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !507076
  store ptr %i.b, ptr %i.a, align 8, !noalias !507076
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193), !noalias !507076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !507076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !507076
  br label %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit92"

"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit92": ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit91", %bb.g
  %i.ag = call fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10577, i64 noundef 1), !noalias !507077 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54
  %i.ah = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #54 ; 13 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit92"
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #52
  unreachable

bb.i:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit92"
  store i32 2, ptr %i.ah, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 2, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  store i32 %i.ad, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 3, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i32 2, ptr %i.aj, align 8
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i32 1, ptr %.sroa.011.sroa.4.0..sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  store i32 2, ptr %.sroa.011.sroa.5.0..sroa_idx, align 4
  %.sroa.011.sroa.5.sroa.5.0..sroa.011.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 100
  store i32 %i.ag, ptr %.sroa.011.sroa.5.sroa.5.0..sroa.011.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  store i32 3, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 2, ptr %i.u, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ah, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 8, ptr %i.ak, align 8
  %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 2, ptr %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx.sroa_idx, align 4
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i32 %i.ag, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, align 4
  store i32 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 2, ptr %i.q, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 8, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.sroa.4.0..sroa.642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 2, ptr %.sroa.642.sroa.4.0..sroa.642.0..sroa_idx.sroa_idx, align 4
  %.sroa.642.sroa.6.0..sroa.642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %i.ad, ptr %.sroa.642.sroa.6.0..sroa.642.0..sroa_idx.sroa_idx, align 4
  invoke fastcc void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc3app17hc01a88dd129d99faE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.j unwind label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit"

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc3fun17h36f8f0e35cf3c3beE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.j
  ret void

bb.l:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit93", %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit"
  %.sink = phi ptr [ %i.ab, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit93" ], [ %i.ah, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit" ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit93" ], [ %i.am, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  resume { ptr, i32 } %.pn

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h884a5d53c2a362b8E.exit": ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.m:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit90"
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #52
  unreachable

bb.n:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E.exit90"
  store i32 2, ptr %i.ab, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 1, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 2, ptr %.sroa.552.0..sroa_idx, align 4
  %.sroa.552.sroa.5.0..sroa.552.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  store i32 %i.x, ptr %.sroa.552.sroa.5.0..sroa.552.0..sroa_idx.sroa_idx, align 4
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 3, ptr %.sroa.653.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i32 2, ptr %i.an, align 8
  %.sroa.058.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i32 1, ptr %.sroa.058.sroa.4.0..sroa_idx, align 8
end_hunk_3
