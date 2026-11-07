Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E:bb.a

bb.l:                                             ; preds = %bb.k
  %i.as = extractvalue { ptr, i64 } %i.aq, 0
  %bcmp = tail call i32 @bcmp(ptr %i.as, ptr nonnull %2, i64 %3)
  %.not93 = icmp eq i32 %bcmp, 0
  br i1 %.not93, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %i.ao) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 7 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !8

bb.n:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he5b2b0e9409c8b8eE", ptr %.sroa.475.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.p, ptr %i.ax, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he5b2b0e9409c8b8eE", ptr %.sroa.479.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1413
  store ptr @15, ptr %i.c, align 8, !noalias !1414
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4135.0..sroa_idx, align 8, !noalias !1414
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.sroa.5136.0..sroa_idx, align 8, !noalias !1414
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.6137.0..sroa_idx, align 8, !noalias !1414
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7138.0..sroa_idx, align 8, !noalias !1414
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.m
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.p, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1415
  %i.az = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.av, i64 noundef range(i64 1, 9) 1) #42, !noalias !1415 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.m
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.au, i64 %i.av, i1 false), !noalias !1416
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.bb, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.av, ptr %.sroa.5145.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  %i.bc = icmp eq i64 %i.u, 0
  br i1 %i.bc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit103", label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.copyload, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1417
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit103"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit103": ; preds = %bb.f, %bb.e, %bb.w, %bb.x, %bb.q, %bb.p
  ret void

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1418
  store ptr @3, ptr %i.b, align 8, !noalias !1419
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4129.0..sroa_idx, align 8, !noalias !1419
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5130.0..sroa_idx, align 8, !noalias !1419
  %.sroa.6131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6131.0..sroa_idx, align 8, !noalias !1419
  %.sroa.7132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7132.0..sroa_idx, align 8, !noalias !1419
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %.val.i106 = load i64, ptr %i.h, align 8, !alias.scope !1420 ; 2 uses
  %i.be = icmp eq i64 %.val.i106, 0
  br i1 %i.be, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit108", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i107 = load ptr, ptr %i.bf, align 8, !alias.scope !1420, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i107, i64 noundef %.val.i106, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1420
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit108"

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1418
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %.val.i109 = load i64, ptr %i.h, align 8, !alias.scope !1421 ; 2 uses
  %i.bg = icmp eq i64 %.val.i109, 0
  br i1 %i.bg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i110 = load ptr, ptr %i.bh, align 8, !alias.scope !1421, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i110, i64 noundef %.val.i109, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1421
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111"
  %.sink178 = phi ptr [ %i.l, %bb.y ], [ %i.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111" ]
  %.sink = phi i32 [ 354, %bb.y ], [ 356, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit111" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sink178, i64 24, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @11, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 101, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %.sroa.638.0..sroa_idx, align 8
  %i.bi = icmp eq i64 %i.u, 0
  br i1 %i.bi, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit103", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.551.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.copyload, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1422
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit103"

bb.y:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit108"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core6crypto12parse_gen_iv17h8d40a29531abbf48E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1441 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = load i64, ptr %1, align 8, !range !17, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -9223372036854775806
  br i1 %.not.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1442
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h), !noalias !1443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1442
  %.pre.i = load i64, ptr %1, align 8, !range !17
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.g, %bb.a ], [ %.pre.i, %bb.b ]
  %switch = icmp slt i64 %i.i, -9223372036854775806
  br i1 %switch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42", label %.split35

.split35:                                         ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.k, align 8, !noundef !6
  %i.l = tail call fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i)
  br i1 %i.l, label %bb.c, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42"

bb.c:                                             ; preds = %.split35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.m = load i64, ptr %i.f, align 8, !range !11, !noundef !6 ; 2 uses
  %.not36 = icmp eq i64 %i.m, -9223372036854775803
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.061.0.copyload = load i64, ptr %i.n, align 8 ; 7 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.562.0.copyload = load ptr, ptr %.sroa.562.0..sroa_idx, align 8 ; 15 uses
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.663.0.copyload = load i64, ptr %.sroa.663.0..sroa_idx, align 8 ; 7 uses
  br i1 %.not36, label %bb.e, label %bb.d

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit", %bb.i, %bb.h, %.split35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit46"

bb.d:                                             ; preds = %bb.c
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.324.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.m, ptr %0, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.061.0.copyload, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.223.sroa.2.0..sroa.223.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.562.0.copyload, ptr %.sroa.223.sroa.2.0..sroa.223.0..sroa_idx.sroa_idx, align 8
  %.sroa.223.sroa.3.0..sroa.223.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.663.0.copyload, ptr %.sroa.223.sroa.3.0..sroa.223.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit46"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.562.0.copyload) ]
  switch i64 %.sroa.663.0.copyload, label %bb.k [
    i64 6, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h8684ca7ecac9e543E.exit"
    i64 0, label %.loopexit
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %.loopexit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %.sroa.061.0.copyload, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.562.0.copyload, i64 noundef %.sroa.061.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1445
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h8684ca7ecac9e543E.exit": ; preds = %bb.e
  %i.r = load i32, ptr %.sroa.562.0.copyload, align 1
  %i.s = xor i32 %i.r, 1852796476
  %i.t = getelementptr i8, ptr %.sroa.562.0.copyload, i64 4
  %i.u = load i16, ptr %i.t, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = xor i32 %i.v, 15973
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %.thread66

bb.h:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h8684ca7ecac9e543E.exit"
  %i.aa = icmp eq i64 %.sroa.061.0.copyload, 0
  br i1 %i.aa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.562.0.copyload, i64 noundef %.sroa.061.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1446
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42"

bb.j:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %.sroa.562.0.copyload, align 1, !alias.scope !1447, !noundef !6
  switch i8 %i.ab, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.preheader:                               ; preds = %.thread66, %bb.l, %bb.n, %bb.j
  %.sroa.01.162.i.ph = phi ptr [ %spec.select, %.thread66 ], [ %.sroa.562.0.copyload, %bb.j ], [ %.sroa.562.0.copyload, %bb.n ], [ %i.ac, %bb.l ]
  %.sroa.16.161.i.ph = phi i64 [ %spec.select75, %.thread66 ], [ 1, %bb.j ], [ %.sroa.663.0.copyload, %bb.n ], [ %i.ad, %bb.l ]
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.e
  %.pr.i = load i8, ptr %.sroa.562.0.copyload, align 1, !alias.scope !1447
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.l, label %bb.n

.thread66:                                        ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h8684ca7ecac9e543E.exit"
  %.pr.i67 = load i8, ptr %.sroa.562.0.copyload, align 1, !alias.scope !1447
  %cond.i68 = icmp eq i8 %.pr.i67, 43             ; 2 uses
  %spec.select.idx = zext i1 %cond.i68 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.562.0.copyload, i64 %spec.select.idx
  %spec.select75 = select i1 %cond.i68, i64 5, i64 6
  br label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.562.0.copyload, i64 1 ; 2 uses
  %i.ad = add i64 %.sroa.663.0.copyload, -1       ; 2 uses
  %i.ae = icmp ult i64 %.sroa.663.0.copyload, 18
  br i1 %i.ae, label %.lr.ph.i.preheader, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.n, %bb.l
  %.sroa.16.0.ph.i = phi i64 [ %.sroa.663.0.copyload, %bb.n ], [ %i.ad, %bb.l ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.562.0.copyload, %bb.n ], [ %i.ac, %bb.l ]
  %.not.i4394 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i4394, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph

bb.m:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i97, i64 1
  %i.ag = add i64 %.sroa.16.0.i96, -1             ; 2 uses
  %.not.i43 = icmp eq i64 %i.ag, 0
  br i1 %.not.i43, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph

bb.n:                                             ; preds = %bb.k
  %i.ah = icmp ult i64 %.sroa.663.0.copyload, 17
  br i1 %i.ah, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph:                                           ; preds = %.preheader53.i, %bb.m
  %.sroa.01.0.i97 = phi ptr [ %i.af, %bb.m ], [ %.sroa.01.0.ph.i, %.preheader53.i ] ; 2 uses
  %.sroa.16.0.i96 = phi i64 [ %i.ag, %bb.m ], [ %.sroa.16.0.ph.i, %.preheader53.i ]
  %.sroa.017.0.i95 = phi i64 [ %i.aq, %bb.m ], [ 0, %.preheader53.i ]
  %i.ai = load i8, ptr %.sroa.01.0.i97, align 1, !alias.scope !1447, !noundef !6
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i95, i64 10) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 0       ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.am, 1
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = add i64 %i.an, %i.ap                    ; 3 uses
  %.not50.i = icmp ult i64 %i.aq, %i.an
  %or.cond = select i1 %i.ao, i1 true, i1 %.not50.i
  br i1 %or.cond, label %.loopexit, label %bb.m

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.p
  %.sroa.01.162.i = phi ptr [ %i.ax, %bb.p ], [ %.sroa.01.162.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.161.i = phi i64 [ %i.aw, %bb.p ], [ %.sroa.16.161.i.ph, %.lr.ph.i.preheader ]
  %.sroa.017.160.i = phi i64 [ %i.az, %bb.p ], [ 0, %.lr.ph.i.preheader ]
  %i.ar = load i8, ptr %.sroa.01.162.i, align 1, !alias.scope !1447, !noundef !6
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph.i
  %i.av = mul i64 %.sroa.017.160.i, 10
  %i.aw = add nsw i64 %.sroa.16.161.i, -1         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i, i64 1
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = add i64 %i.av, %i.ay                    ; 2 uses
  %.not51.i = icmp eq i64 %i.aw, 0
  br i1 %.not51.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit46": ; preds = %bb.d, %bb.q, %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit42"
  ret void

.loopexit:                                        ; preds = %bb.o, %.lr.ph, %.lr.ph.i, %bb.e, %bb.j, %bb.j
  %.sroa.2.0.ph = phi i8 [ 1, %bb.j ], [ 1, %bb.j ], [ 0, %bb.e ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph ], [ 2, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.sroa.2.0.ph, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.428.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1448
  store ptr @3, ptr %i.a, align 8, !noalias !1449
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.457.0..sroa_idx, align 8, !noalias !1449
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.558.0..sroa_idx, align 8, !noalias !1449
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1449
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.759.0..sroa_idx, align 8, !noalias !1449
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.s unwind label %bb.f

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit": ; preds = %bb.m, %bb.p, %.preheader53.i
  %.sroa.9.0 = phi i64 [ %i.az, %bb.p ], [ 0, %.preheader53.i ], [ %i.aq, %bb.m ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %i.bb, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"
  %i.bc = icmp eq i64 %.sroa.061.0.copyload, 0
  br i1 %i.bc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit46", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.562.0.copyload, i64 noundef %.sroa.061.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1450
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit46"

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @11, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 101, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 405, ptr %.sroa.612.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core6crypto3Rng5parse17h39821ecc5a5f1351E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1477 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.l = load i64, ptr %i.i, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.l, -9223372036854775803
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.l, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 6 uses
  switch i64 %i.q, label %bb.e [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.o, align 1, !alias.scope !1478, !noundef !6
  switch i8 %i.r, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.preheader:                               ; preds = %bb.f, %bb.h, %bb.d
  %.sroa.01.162.i.ph = phi ptr [ %i.s, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.d ]
  %.sroa.16.161.i.ph = phi i64 [ %i.t, %bb.f ], [ %i.q, %bb.h ], [ 1, %bb.d ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.c
  %.pr.i = load i8, ptr %i.o, align 1, !alias.scope !1478
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.f, label %bb.h
end_hunk_0
