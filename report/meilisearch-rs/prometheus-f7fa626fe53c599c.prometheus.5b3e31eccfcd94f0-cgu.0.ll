Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus5proto6Metric13set_histogram17h9ca23eca5f87ea42E:bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !951
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE.exit"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE.exit": ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus5proto6Metric9set_label17h72369be4bd4755e0E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !962, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !962, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !966, !noalias !962 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !966, !noalias !962, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !967
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %.val.i4.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !969, !noalias !962 ; 2 uses
  %i.i = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i5.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !969, !noalias !962, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i, i64 noundef %.val.i4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !970
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.k = icmp eq i64 %i.e, %.val1.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !10, !alias.scope !962, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val2.i, 0
  br i1 %i.l, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  %i.m = mul nuw i64 %.val2.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !962
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus5proto7Summary12set_quantile17hea4e97cdd988f013E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) initializes((16, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit": ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus5proto9Histogram10set_bucket17hd066a756572da77eE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) initializes((16, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit": ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus5proto9LabelPair8set_name17hdfa63e85319d538aE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) initializes((16, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !973 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !973, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !973
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus5proto9LabelPair9set_value17h708a97ad480b10dcE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) initializes((40, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !976 ; 2 uses
  %i.b = icmp eq i64 %.val.i, 0
  br i1 %i.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !976, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !976
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN10prometheus5timer10now_millis17h7e8956ec72fd7fc9E() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE", i64 16) acquire, align 8 ; 2 uses
  %i.g = icmp ult i8 %i.f, 4
  tail call void @llvm.assume(i1 %i.g)
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef align 8 dereferenceable(16) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h314cbca77bb03d08E"()
  br label %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit"

"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.h, %bb.b ], [ @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE", %bb.a ] ; 2 uses
  %i.i = load i64, ptr %.sroa.0.0.i.i, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !21, !noundef !6
  %i.l = call { i64, i32 } @_ZN3std4time7Instant25saturating_duration_since17hc1f195375bc6ef14E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.i, i32 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i32 } %i.l, 0
  %i.n = extractvalue { i64, i32 } %i.l, 1        ; 2 uses
  %i.o = mul i64 %i.m, 1000
  %i.p = icmp ult i32 %i.n, 1000000000
  call void @llvm.assume(i1 %i.p)
  %i.q = udiv i32 %i.n, 1000000
  %i.r = zext nneg i32 %i.q to i64
  %i.s = add i64 %i.o, %i.r                       ; 3 uses
  %i.t = load atomic i64, ptr @_ZN10prometheus5timer6RECENT17hb5364635fd878d0cE monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit"
  %.sroa.01.0 = phi i64 [ %i.t, %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit" ], [ %.sroa.01.0.i, %bb.d ] ; 3 uses
  %i.u = icmp ugt i64 %.sroa.01.0, %i.s
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = cmpxchg weak ptr @_ZN10prometheus5timer6RECENT17hb5364635fd878d0cE, i64 %.sroa.01.0, i64 %i.s monotonic monotonic, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.v, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.v, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %.sroa.01.0, %bb.c ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN10prometheus5timer13recent_millis17haca75ec012459828E() unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN10prometheus5timer6RECENT17hb5364635fd878d0cE monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus5timer14ensure_updater17h5f89db31cab0c6b0E() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 13 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = load atomic i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" acquire, align 1 ; 2 uses
  %i.q = icmp ult i8 %i.p, 4
  tail call void @llvm.assume(i1 %i.q)
  %.not.i.i = icmp eq i8 %i.p, 2
  br i1 %.not.i.i, label %"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6757022b56d77857E.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.r = tail call fastcc noundef nonnull align 1 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h004ca37d1eed6459E"()
  br label %"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6757022b56d77857E.exit"

"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6757022b56d77857E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.r, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i64 1), %bb.a ]
  %i.s = cmpxchg ptr %.sroa.0.0.i.i, i8 0, i8 1 seq_cst seq_cst, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.s, 1
  br i1 %.sroa.18.0.in.i, label %bb.c, label %bb.bp

bb.c:                                             ; preds = %"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6757022b56d77857E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 -9223372036854775808, ptr %i.t, align 8
  store i64 0, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1064
  %i.v = tail call noundef dereferenceable_or_null(12) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, 9) 1) #42, !noalias !1064 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
  unreachable

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) @60, i64 12, i1 false), !noalias !1065
  store i64 12, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 12, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN3std6thread7Builder4name17h994fadd2a6dd1509E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !alias.scope !1068, !noalias !1069 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !alias.scope !1068, !noalias !1069 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1068, !noalias !1069
  %i.y = load i64, ptr %i.n, align 8, !range !22, !alias.scope !1068, !noalias !1069, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !range !23, !alias.scope !1068, !noalias !1069, !noundef !6
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = trunc nuw i64 %i.y to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1068, !noalias !1069
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb49f5dec327be364E.exit.i.i"

bb.f:                                             ; preds = %bb.d
  %i.af = load atomic i64, ptr @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17h33a64b76d9f36017E" monotonic, align 8, !noalias !1070 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1070
  invoke void @_ZN3std3env7_var_os17h5af5bd490bdba3d6E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @166, i64 noundef 14)
          to label %.noexc.i.i unwind label %.thread21.i.i, !noalias !1070

.noexc.i.i:                                       ; preds = %bb.g
  %i.ah = load i64, ptr %i.b, align 8, !range !8, !noalias !1070, !noundef !6 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf0d3a8cfd66fe8cbE.exit.i.i.i", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add i64 %i.af, -1
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb49f5dec327be364E.exit.i.i"

bb.i:                                             ; preds = %.noexc.i.i
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.56.0.copyload.i.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !1070, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.67.0.copyload.i.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1071
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.56.0.copyload.i.i.i, i64 noundef %.sroa.67.0.copyload.i.i.i)
          to label %bb.l unwind label %bb.j, !noalias !1071

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %.thread14.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.copyload.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1071
  br label %.thread14.i.i

bb.l:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.a, align 8, !range !22, !noalias !1071, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1071
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1071, !nonnull !6, !align !24, !noundef !6 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1071, !noundef !6 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1071
  switch i64 %i.aq, label %bb.p [
    i64 0, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ar = load i8, ptr %i.ao, align 1, !alias.scope !1072, !noalias !1073, !noundef !6
  switch i8 %i.ar, label %.lr.ph.i.i.i.i.i.preheader [
    i8 43, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
    i8 45, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.s, %bb.q, %bb.o
  %.sroa.01.162.i.i.i.i.i.ph = phi ptr [ %i.as, %bb.q ], [ %i.ao, %bb.s ], [ %i.ao, %bb.o ]
  %.sroa.16.161.i.i.i.i.i.ph = phi i64 [ %i.at, %bb.q ], [ %i.aq, %bb.s ], [ 1, %bb.o ]
  br label %.lr.ph.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %.pr.i.i.i.i.i = load i8, ptr %i.ao, align 1, !alias.scope !1072, !noalias !1073
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i, 43
  br i1 %cond.i.i.i.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.at = add i64 %i.aq, -1                       ; 2 uses
  %i.au = icmp ult i64 %i.aq, 18
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader53.i.i.i.i.i

.preheader53.i.i.i.i.i:                           ; preds = %bb.s, %bb.q
  %.sroa.16.0.ph.i.i.i.i.i = phi i64 [ %i.aq, %bb.s ], [ %i.at, %bb.q ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i.i = phi ptr [ %i.ao, %bb.s ], [ %i.as, %bb.q ]
  %.not.i.not.i.i.i.i32 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i32, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i", label %.lr.ph

bb.r:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i35, i64 1
  %i.aw = add i64 %.sroa.16.0.i.i.i.i.i34, -1     ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.not.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i", label %.lr.ph

bb.s:                                             ; preds = %bb.p
  %i.ax = icmp ult i64 %i.aq, 17
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader53.i.i.i.i.i

.lr.ph:                                           ; preds = %.preheader53.i.i.i.i.i, %bb.r
  %.sroa.01.0.i.i.i.i.i35 = phi ptr [ %i.av, %bb.r ], [ %.sroa.01.0.ph.i.i.i.i.i, %.preheader53.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i34 = phi i64 [ %i.aw, %bb.r ], [ %.sroa.16.0.ph.i.i.i.i.i, %.preheader53.i.i.i.i.i ]
  %.sroa.017.0.i.i.i.i.i33 = phi i64 [ %i.bg, %bb.r ], [ 0, %.preheader53.i.i.i.i.i ]
  %i.ay = load i8, ptr %.sroa.01.0.i.i.i.i.i35, align 1, !alias.scope !1072, !noalias !1073, !noundef !6
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.t, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"

bb.t:                                             ; preds = %.lr.ph
  %i.bc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i.i.i.i.i33, i64 10) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 0       ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bc, 1
end_hunk_0
begin_hunk_1_@"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$3new17h9065deb719cd6585E":bb.a
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(192) %i.c) #46, !noalias !3309
  br label %.body

"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit": ; preds = %bb.m, %bb.l
  %.not = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload34, -9223372036854775804
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit"
  store i64 %.sroa.6.i.sroa.0.0.copyload34, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.i.sroa.7.0.copyload37, ptr %.sroa.213.0..sroa_idx, align 8
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.i.sroa.8.0.copyload40, ptr %.sroa.314.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread", %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit"
  %.sroa.632.049 = phi ptr [ %i.at, %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread" ], [ %.sroa.6.i.sroa.7.0.copyload37, %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.632.049) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.632.049, ptr %i.aw, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void

.body:                                            ; preds = %bb.t, %bb.p, %.body.i
  %eh.lpad-body43 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.t ], [ %i.aj, %.body.i ], [ %i.av, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body43

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i", %bb.h
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.s, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i" ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef align 8 dereferenceable(192) %1) #46
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$5local17h4a94b36cafdcbd53E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN10prometheus9histogram17LocalHistogramVec3new17h4ba60462b93a880bE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram11start_timer17h100fc22dffd00ddaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  store ptr %i.b, ptr %i.a, align 8, !noalias !3322
  %i.e = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit unwind label %bb.c, !noalias !3322 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !3323
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !3322
  br label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit: ; preds = %bb.b
  %i.i = extractvalue { i64, i32 } %i.e, 0
  %i.j = extractvalue { i64, i32 } %i.e, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.k, align 8, !alias.scope !3322
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8, !alias.scope !3322
  store i64 %i.i, ptr %0, align 8, !alias.scope !3322
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.m, align 8, !alias.scope !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_ZN10prometheus9histogram9Histogram14get_sample_sum17h5f7d29551a74196fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.d = cmpxchg ptr %i.c, i32 0, i32 1 acquire monotonic, align 4, !noalias !3329
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4 %i.c), !noalias !3329
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3329
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i", label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3329
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 1, !noalias !3329
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.e, !prof !14

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3330
  store ptr %i.c, ptr %i.a, align 8, !noalias !3330
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.n, align 8, !noalias !3330
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @118, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #45
          to label %bb.g unwind label %bb.f, !noalias !3331

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hf09890010c860aadE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %bb.i unwind label %bb.h, !noalias !3331

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !3331
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

bb.j:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"
  %i.q = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %.lobit.i = lshr i64 %i.s, 63
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.lobit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.z, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aa = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.n, label %_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit, !prof !11

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.c)
  br label %_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit

_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit: ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.n
  %i.ac = bitcast i64 %i.v to double
  ret double %i.ac
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_ZN10prometheus9histogram9Histogram16get_sample_count17h4ad15ce65c21ff54E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10prometheus9histogram9Histogram26with_opts_and_label_values17h05957183e36cf420E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [40 x i8], align 8                ; 3 uses
  %.sroa.6122.sroa.4.i = alloca [16 x i8], align 8 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.018.sroa.0.i.sroa.7 = alloca [104 x i8], align 8 ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 11 uses
  %i.p = alloca [112 x i8], align 8               ; 9 uses
  %i.q = alloca [112 x i8], align 8               ; 15 uses
  %i.r = alloca [272 x i8], align 8               ; 19 uses
  %.sroa.27 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3440
  call void @"_ZN73_$LT$prometheus..metrics..Opts$u20$as$u20$prometheus..desc..Describer$GT$8describe17haee1c8848682a1d2E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1), !noalias !3441
  %i.s = load i64, ptr %i.p, align 8, !range !8, !noalias !3440, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.i.sroa.0.0.copyload50 = load i64, ptr %i.u, align 8, !noalias !3440 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.i.sroa.7.0.copyload53 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx52, align 8, !noalias !3440 ; 2 uses
  %.sroa.6.i.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.i.sroa.8.0.copyload56 = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx55, align 8, !noalias !3440 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3440
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.626.0..sroa_idx.i, i64 80, i1 false), !noalias !3440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload50, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3440
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.6.i.sroa.7.0.copyload53, ptr %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3440
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.6.i.sroa.8.0.copyload56, ptr %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3440
  store i64 %i.s, ptr %i.q, align 8, !noalias !3440
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3440, !nonnull !6, !noundef !6 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load i64, ptr %i.x, align 8, !noalias !3440, !noundef !6 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.y, 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.038.0198.i = phi ptr [ %i.ab, %bb.h ], [ %i.w, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3441, !noundef !6
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3441, !nonnull !6, !noundef !6
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = icmp ne i16 %i.ah, 25964
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3442
  %i.al = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3442 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.invoke.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !3440, !nonnull !6, !noundef !6 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !3440, !noundef !6 ; 5 uses
  %.idx206.i = mul nuw nsw i64 %i.aq, 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx206.i ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0                    ; 2 uses
  br i1 %i.as, label %._crit_edge205.i, label %.lr.ph204.preheader.i

.lr.ph204.preheader.i:                            ; preds = %._crit_edge.i
  %.sroa.039.1200.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  br label %.lr.ph204.i

bb.f:                                             ; preds = %.invoke.i, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22"

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.al, ptr noundef nonnull align 1 dereferenceable(47) @140, i64 47, i1 false), !noalias !3443
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.h:                                             ; preds = %bb.d, %.lr.ph.i
  %i.au = icmp eq ptr %i.ab, %i.z
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i": ; preds = %.thread232.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", %bb.aw, %bb.bm, %bb.g
  %.sroa.20.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bm ], [ %.sroa.5155.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.5155.0.copyload.i, %bb.aw ], [ %3, %.thread232.i ]
  %.sroa.17.1 = phi ptr [ %i.al, %bb.g ], [ %i.be, %bb.bm ], [ %.sroa.4154.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.4154.0.copyload.i, %bb.aw ], [ %.sroa.613.i.sroa.7.0.copyload.cast, %.thread232.i ]
  %.sroa.10.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bm ], [ %.sroa.0153.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.0153.0.copyload.i, %bb.aw ], [ -9223372036854775807, %.thread232.i ]
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q), !noalias !3441
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

.lr.ph204.i:                                      ; preds = %bb.bn, %.lr.ph204.preheader.i
  %.sroa.039.1202.i = phi ptr [ %.sroa.039.1.i, %bb.bn ], [ %.sroa.039.1200.i, %.lr.ph204.preheader.i ] ; 3 uses
  %.sroa.039.0201.i = phi ptr [ %.sroa.039.1202.i, %bb.bn ], [ %i.ao, %.lr.ph204.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !3441, !noundef !6
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.i, label %bb.bn

bb.i:                                             ; preds = %.lr.ph204.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3441, !nonnull !6, !noundef !6
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = icmp ne i16 %i.ba, 25964
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.bn

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3444
  %i.be = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3444 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.invoke.i, label %bb.bm

._crit_edge205.i:                                 ; preds = %bb.bn, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3440
  %i.bg = icmp ult i64 %i.y, 384307168202282326
  tail call void @llvm.assume(i1 %i.bg)
  %.not.i.not.i = icmp eq i64 %i.y, %3
  br i1 %.not.i.not.i, label %bb.k, label %.thread232.i

bb.k:                                             ; preds = %._crit_edge205.i
  %i.bh = icmp ult i64 %i.aq, 192153584101141163
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.aq, %3               ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.m

.thread232.i:                                     ; preds = %._crit_edge205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3440
  %.sroa.613.i.sroa.7.0.copyload.cast = inttoptr i64 %i.y to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3440
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.bk, align 8, !alias.scope !3445, !noalias !3447
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !3445, !noalias !3447
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !3445, !noalias !3447
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %3, 0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bm, ptr nonnull %i.ao, i64 %i.aq)
          to label %.thread.i unwind label %bb.f, !noalias !3441

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3448
  %i.bn = mul i64 %i.bi, 48                       ; 3 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.bi, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !9
end_hunk_1
begin_hunk_2_@"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h2d622e356fdc0336E"
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #37

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1784bb9643b282d4E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN72_$LT$std..sys..thread..unix..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h558a9315bdd03fb9E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN76_$LT$std..thread..spawnhook..SpawnHooks$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdcfa2a90b0220483E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #35

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #35

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h04203418c0187945E"(i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #26

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #30

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8758b9bad7525337E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #38

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #39

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #40

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #41

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() unnamed_addr #42

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #33

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h5b616571e567f281E(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha56bad30c82fe40aE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN11parking_lot10raw_rwlock9RawRwLock18unlock_shared_slow17h0e231163cd41f1c9E(ptr noundef nonnull align 8) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN11parking_lot10raw_rwlock9RawRwLock21unlock_exclusive_slow17h3d76446a59e1df9cE(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @sysconf(i32 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process3new17h1992f5ab82d8e50cE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process8fd_count17h01f4a40a770f4d29E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process6limits17hf437febe01245655E(ptr dead_on_unwind noalias noundef writable sret([512 x i8]) align 8 captures(address) dereferenceable(512), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #35

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #35

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h27055644a9d4e38bE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #26

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #35

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #38 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nounwind }
attributes #43 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { cold noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, i1 false, !"_ZN10prometheus7metrics80_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$prometheus..proto..LabelPair$GT$11partial_cmp17h9a801f9343a63511E"}
!1 = distinct !{!1, !0, !"_ZN10prometheus7metrics80_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$prometheus..proto..LabelPair$GT$11partial_cmp17h9a801f9343a63511E: argument 0"}
!2 = distinct !{!2, !0, !"_ZN10prometheus7metrics80_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$prometheus..proto..LabelPair$GT$11partial_cmp17h9a801f9343a63511E: argument 1"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!6 = !{}
!7 = !{i64 8}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!13 = !{i64 0, i64 -9223372036854775803}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 0, i64 -9223372036854775802}
!16 = !{i32 0, i32 -1}
!17 = !{i64 0, i64 3}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!21 = !{i32 0, i32 1000000000}
!22 = !{i64 0, i64 2}
!23 = !{i8 0, i8 2}
!24 = !{i64 1}
!25 = !{i8 0, i8 5}
!26 = !{i64 1, i64 0}
!27 = !{!"branch_weights", i32 1, i32 1999}
!28 = !{!"branch_weights", i32 0, i32 1}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!32 = !{i64 0, i64 -9223372036854775804}
!33 = !{!1}
!34 = !{!2}
!35 = !{!"branch_weights", i32 4001, i32 4000000}
!36 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!37 = !{!"branch_weights", i32 4000000, i32 4001}
!38 = distinct !{!38, i1 false, !"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E"}
!39 = distinct !{!39, !38, !"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E: argument 1"}
!40 = distinct !{!40, !38, !"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E: argument 0"}
!41 = distinct !{!41, i1 false, !"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE"}
!42 = distinct !{!42, !41, !"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE: argument 1"}
!43 = distinct !{!43, !41, !"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE: argument 0"}
!44 = distinct !{!44, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!45 = distinct !{!45, !44, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E"}
!47 = distinct !{!47, !46, !"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E: argument 1"}
!48 = distinct !{!48, !46, !"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E"}
!50 = distinct !{!50, !49, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 1"}
!51 = distinct !{!51, !49, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE"}
!53 = distinct !{!53, !52, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 1"}
!54 = distinct !{!54, !52, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 0"}
!55 = distinct !{!55, i1 false, !"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E"}
!56 = distinct !{!56, !55, !"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E: argument 0"}
!57 = distinct !{!57, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!58 = distinct !{!58, !57, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!60 = distinct !{!60, !59, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE"}
!62 = distinct !{!62, !61, !"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZN10prometheus5proto12MetricFamily8set_name17h018b1b0a417bd957E"}
!64 = distinct !{!64, !63, !"_ZN10prometheus5proto12MetricFamily8set_name17h018b1b0a417bd957E: argument 0"}
!65 = distinct !{!65, !63, !"_ZN10prometheus5proto12MetricFamily8set_name17h018b1b0a417bd957E: argument 1"}
!66 = distinct !{!66, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!67 = distinct !{!67, !66, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!68 = distinct !{!68, i1 false, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hf907cbab5cd01583E"}
!69 = distinct !{!69, !68, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hf907cbab5cd01583E: argument 1"}
!70 = distinct !{!70, !68, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hf907cbab5cd01583E: argument 0"}
!71 = distinct !{!71, i1 false, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17hbca5ad1ecc8514eeE"}
!72 = distinct !{!72, !71, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17hbca5ad1ecc8514eeE: argument 0"}
!73 = distinct !{!73, i1 false, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd84525f01338f6ffE"}
!74 = distinct !{!74, !73, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd84525f01338f6ffE: argument 0"}
!75 = distinct !{!75, i1 false, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h3949fc7d60735495E"}
!76 = distinct !{!76, !75, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h3949fc7d60735495E: argument 0"}
!77 = distinct !{!77, !73, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd84525f01338f6ffE: argument 1"}
!78 = distinct !{!78, !75, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h3949fc7d60735495E: argument 1"}
!79 = distinct !{!79, i1 false, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h784f316b7776b406E"}
!80 = distinct !{!80, !79, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h784f316b7776b406E: argument 1"}
!81 = distinct !{!81, !79, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h784f316b7776b406E: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hbe010f4bb7e66f5eE"}
!83 = distinct !{!83, !82, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hbe010f4bb7e66f5eE: argument 0"}
!84 = distinct !{!84, !82, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hbe010f4bb7e66f5eE: argument 1"}
!85 = distinct !{!85, i1 false, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc38d73f1e4b407afE"}
!86 = distinct !{!86, !85, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc38d73f1e4b407afE: argument 0"}
!87 = distinct !{!87, !85, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc38d73f1e4b407afE: argument 1"}
!88 = distinct !{!88, i1 false, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"}
!89 = distinct !{!89, !88, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!91 = distinct !{!91, !90, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!92 = distinct !{!92, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!93 = distinct !{!93, !92, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE"}
!95 = distinct !{!95, !94, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE: argument 0"}
!96 = distinct !{!96, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE"}
!97 = distinct !{!97, !96, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE: argument 0"}
!98 = distinct !{!98, i1 false, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h68264e39564e6073E"}
!99 = distinct !{!99, !98, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h68264e39564e6073E: argument 0"}
!100 = distinct !{!100, !98, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h68264e39564e6073E: argument 1"}
!101 = distinct !{!101, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h267046391ed8471eE"}
!102 = distinct !{!102, !101, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h267046391ed8471eE: argument 0"}
!103 = distinct !{!103, !101, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h267046391ed8471eE: argument 1"}
!104 = distinct !{!104, i1 false, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"}
!105 = distinct !{!105, !104, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZN4core3ptr59drop_in_place$LT$$u5b$prometheus..proto..LabelPair$u5d$$GT$17hd5921e302f98382bE"}
!107 = distinct !{!107, !106, !"_ZN4core3ptr59drop_in_place$LT$$u5b$prometheus..proto..LabelPair$u5d$$GT$17hd5921e302f98382bE: argument 0"}
!108 = distinct !{!108, i1 false, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"}
!109 = distinct !{!109, !108, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E: argument 0"}
!110 = distinct !{!110, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!111 = distinct !{!111, !110, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!113 = distinct !{!113, !112, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hbac4b4fee70250e1E"}
!115 = distinct !{!115, !114, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hbac4b4fee70250e1E: argument 1"}
!116 = distinct !{!116, !114, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hbac4b4fee70250e1E: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2761942f7dde1eacE"}
!118 = distinct !{!118, !117, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2761942f7dde1eacE: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"}
!120 = distinct !{!120, !119, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E: argument 0"}
!121 = distinct !{!121, i1 false, !"_ZN10prometheus5proto6Metric9set_label17h72369be4bd4755e0E"}
!122 = distinct !{!122, !121, !"_ZN10prometheus5proto6Metric9set_label17h72369be4bd4755e0E: argument 0"}
!123 = distinct !{!123, i1 false, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"}
!124 = distinct !{!124, !123, !"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E: argument 0"}
!125 = distinct !{!125, !121, !"_ZN10prometheus5proto6Metric9set_label17h72369be4bd4755e0E: argument 1"}
!126 = distinct !{!126, i1 false, !"_ZN4core3ptr59drop_in_place$LT$$u5b$prometheus..proto..LabelPair$u5d$$GT$17hd5921e302f98382bE"}
!127 = distinct !{!127, !126, !"_ZN4core3ptr59drop_in_place$LT$$u5b$prometheus..proto..LabelPair$u5d$$GT$17hd5921e302f98382bE: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"}
!129 = distinct !{!129, !128, !"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!131 = distinct !{!131, !130, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!132 = distinct !{!132, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"}
!133 = distinct !{!133, !132, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E: argument 0"}
!134 = !{!43, !42, !40, !39}
!135 = !{!43, !40}
!136 = !{!40, !39}
!137 = !{!45, !40, !39}
!138 = !{!48, !47}
!139 = !{!54, !53, !51, !50, !48, !47}
!140 = !{!54, !51, !48, !47}
!141 = !{!58, !56, !48}
!142 = !{!60, !56, !48}
!143 = !{!62, !56, !48}
!144 = !{!64}
!145 = !{!65}
!146 = !{!67, !64, !65, !48, !47}
!147 = !{!64, !65}
!148 = !{!48}
!149 = !{!69}
!150 = !{!70, !48, !47}
!151 = !{!72, !70, !69, !48, !47}
!152 = !{!74}
!153 = !{!76}
!154 = !{!76, !78, !74, !77, !48, !47}
!155 = !{!81, !80}
end_hunk_2
