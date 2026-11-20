Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd7d911c51c447b2aE":bb.a
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  invoke void @"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17h157bbaf3356d7a30E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc.i unwind label %bb.g, !noalias !118

.noexc.i:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8, !noalias !119, !noundef !13 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  store ptr %i.m, ptr %i.c, align 8, !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !119
  invoke void @"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hbcaa53c91ac98fa0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc1.i unwind label %bb.g, !noalias !118

.noexc1.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  %i.o = invoke { ptr, ptr } @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Immut$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$7into_kv17h29410c201e5637e5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %_ZN5alloc11collections5btree3mem7replace17h9d2e5fe03d7a70f3E.exit unwind label %bb.g, !noalias !118 ; 2 uses

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @647) #35
          to label %.noexc3.i unwind label %bb.g, !noalias !118

.noexc3.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %.noexc1.i, %bb.e, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h9d2e5fe03d7a70f3E.exit: ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !118
  %i.q = extractvalue { ptr, ptr } %i.o, 0
  %i.r = extractvalue { ptr, ptr } %i.o, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #35
  unreachable
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef range(i64 4294967296, 0) i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !120 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = load atomic i64, ptr %0 seq_cst, align 8 ; 4 uses
  %i.b = and i64 %i.a, 4294967296
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.a, 4294967296         ; 2 uses
  %i.e = cmpxchg ptr %0, i64 %i.a, i64 %i.d seq_cst monotonic, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ %i.a, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_core2de5impls76_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$std..path..PathBuf$GT$11deserialize17h9e44593241ee5358E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !guid !121 {
bb.a:
  tail call void @"_ZN58_$LT$envy..Val$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf571d601dbf6728aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_json3ser9to_string17h4d6d21d08ee2fd95E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !128 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !129
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !129
  %i.d = load i64, ptr %i.b, align 8, !range !21, !noalias !129, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !noalias !129, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !20

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !129
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #35, !noalias !129
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !129, !nonnull !13, !noundef !13
  %i.k = icmp ugt i64 %i.g, 127
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !129
  store i64 %i.g, ptr %i.c, align 8, !noalias !129
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  store ptr %i.c, ptr %i.a, align 8, !noalias !130
  %i.n = invoke noundef align 8 ptr @"_ZN4anki4sync7request17header_and_stream1_107_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..sync..request..header_and_stream..SyncHeader$GT$9serialize17hb99140a1360c642bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !131 ; 2 uses

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %common.resume.i unwind label %bb.h, !noalias !131

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit.thread unwind label %bb.f, !noalias !131

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.g, !noalias !131

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !131
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit.thread: ; preds = %bb.e
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !131
  unreachable

_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit: ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !132 ; 2 uses
  %.sroa.7.0.copyload3 = load ptr, ptr %i.l, align 8, !noalias !132 ; 2 uses
  %.sroa.9.0.copyload5 = load i64, ptr %i.m, align 8, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129
  %i.s = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775808
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit.thread, %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit
  %.sroa.7.013 = phi ptr [ %i.n, %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit.thread ], [ %.sroa.7.0.copyload3, %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.013) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.013, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %_ZN10serde_json3ser6to_vec17hacf2e691082c1931E.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload3, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload5, ptr %.sroa.39.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17h289dc04301bcf60cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !133 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17h5ec1c1cab3a4912eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 !guid !134 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !22, !noundef !13
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !24, !noundef !13 ; 2 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775785
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, -9223372036854775799
  br i1 %i.f, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17h9bad21fc57505d06E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !135 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.d, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17haeb2f294bb37ecf5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 9)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !136 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.b, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.c, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17hb457c19efd889254E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 !guid !137 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !25, !noundef !13
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !24, !noundef !13 ; 2 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775785
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, -9223372036854775799
  br i1 %i.f, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17hce51bb6476c3a287E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !138 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17he572b487388c8be0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !139 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN111_$LT$core..result..Result$LT$T$C$rusqlite..error..Error$GT$$u20$as$u20$rusqlite..OptionalExtension$LT$T$GT$$GT$8optional17hedf1ccc8551463e2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !140 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !13 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 -9223372036854775783, label %bb.b
    i64 -9223372036854775799, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.d, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.a, -9223372036854775785
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path17h3fd4b74d138f62a5E"(ptr noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !150 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.d, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.e = tail call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !range !21, !noalias !151, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !noalias !151, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17ha719d41788712b19E.exit", !prof !20

bb.c:                                             ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !151
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #35
          to label %.noexc6.i unwind label %bb.d

.noexc6.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i

"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17ha719d41788712b19E.exit": ; preds = %.noexc.i
  %i.m = load ptr, ptr %i.j, align 8, !noalias !151, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = icmp ule i64 %.val4, %i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %.val, i64 %.val4, i1 false), !noalias !152
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.o, align 8
  %i.p = call noundef nonnull ptr @_ZN3std2io5error5Error3new17h547ffd1baa16f37aE(i8 noundef %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17ha719d41788712b19E.exit"
  %.sroa.03.0 = phi ptr [ %i.p, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17ha719d41788712b19E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path17h490ac955a793c2a6E"(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !162 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = trunc nuw i64 %0 to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.val = load ptr, ptr %2, align 8, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load i64, ptr %i.e, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.f = tail call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !range !21, !noalias !163, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !22, !noalias !163, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h884602aa7d897fd0E.exit", !prof !20

bb.c:                                             ; preds = %.noexc.i
  %i.l = load i64, ptr %i.k, align 8, !noalias !163
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #35
          to label %.noexc6.i unwind label %bb.d

.noexc6.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i

"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h884602aa7d897fd0E.exit": ; preds = %.noexc.i
  %i.n = load ptr, ptr %i.k, align 8, !noalias !163, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %.val6, %i.j
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val, i64 %.val6, i1 false), !noalias !164
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val6, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.p, align 8
  %i.q = call noundef nonnull ptr @_ZN3std2io5error5Error3new17h547ffd1baa16f37aE(i8 noundef %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h884602aa7d897fd0E.exit"
  %.sroa.04.0 = phi i64 [ 1, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h884602aa7d897fd0E.exit" ], [ 0, %bb.a ]
  %.sroa.35.0 = phi ptr [ %i.q, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h884602aa7d897fd0E.exit" ], [ %1, %bb.a ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.04.0, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.35.0, 1
  ret { i64, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path17h54398b158811aa71E"(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !174 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = trunc nuw i64 %0 to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.val = load ptr, ptr %2, align 8, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load i64, ptr %i.e, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.f = tail call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !range !21, !noalias !175, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !22, !noalias !175, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17hacf0d7607d740d35E.exit", !prof !20

bb.c:                                             ; preds = %.noexc.i
  %i.l = load i64, ptr %i.k, align 8, !noalias !175
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #35
          to label %.noexc6.i unwind label %bb.d

.noexc6.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
end_hunk_0
