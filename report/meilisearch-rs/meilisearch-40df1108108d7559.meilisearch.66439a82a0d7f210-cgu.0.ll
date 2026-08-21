Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-40df1108108d7559.meilisearch.66439a82a0d7f210-cgu.0?download=true
inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN122_$LT$$RF$rayon..iter..par_bridge..IterParallelProducer$LT$Iter$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedProducer$GT$9fold_with17h2c2de740bb6a2f8dE":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

bb.bt:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit26.thread63"
  %i.ie = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !172893
  %i.if = and i64 %i.ie, 9223372036854775807
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35, label %.noexc39, !prof !17

.noexc39:                                         ; preds = %bb.bt
  %i.ih = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ih, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35, label %bb.bu

bb.bu:                                            ; preds = %.noexc39
  store atomic i8 1, ptr %i.s monotonic, align 4, !noalias !172893
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35: ; preds = %bb.bu, %.noexc39, %bb.bt, %"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit26.thread63"
  %i.ii = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !noalias !172893
  %i.ij = icmp eq i32 %i.ii, 2
  br i1 %i.ij, label %"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit.sink.split.i36", label %"_ZN4core3ptr312drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$$GT$$GT$17h9949b326a512f02aE.exit41", !prof !10

"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit.sink.split.i36": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.r)
  br label %"_ZN4core3ptr312drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$$GT$$GT$17h9949b326a512f02aE.exit41"

"_ZN4core3ptr312drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$$GT$$GT$17h9949b326a512f02aE.exit41": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i35, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i23, %"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit.sink.split.i36", %bb.u, %"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$roaring..bitmap..iter..Iter$GT$$GT$$GT$17hf459ceb9575850d2E.exit26", %bb.g
  ret void

"_ZN4core3ptr616drop_in_place$LT$rayon..iter..map..MapFolder$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each..ok$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..insert_items_at_level_zero$LT$$RF$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..progress..Progress$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a59a69735973730E.exit": ; preds = %bb.bo, %bb.bn, %bb.bm, %.thread68, %bb.bv
  %.pn1048 = phi { ptr, i32 } [ %.pn1049, %bb.bv ], [ %.pn1049, %.thread68 ], [ %i.hx, %bb.bm ], [ %eh.lpad-body.ph.i, %bb.bo ], [ %eh.lpad-body.ph.i, %bb.bn ]
  resume { ptr, i32 } %.pn1048

.thread68:                                        ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %bb.br, %bb.v
  %.pn1049 = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.ic, %bb.br ], [ %lpad.loopexit, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ] ; 2 uses
  %i.ik = load i64, ptr %2, align 8, !range !31853, !alias.scope !172896, !noundef !12
  %i.il = icmp eq i64 %i.ik, 11
  br i1 %i.il, label %"_ZN4core3ptr616drop_in_place$LT$rayon..iter..map..MapFolder$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each..ok$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..insert_items_at_level_zero$LT$$RF$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..progress..Progress$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a59a69735973730E.exit", label %bb.bv

bb.bv:                                            ; preds = %.thread68
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$cellulite..error..Error$GT$17hdd9713c768d2b5e0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %2)
          to label %"_ZN4core3ptr616drop_in_place$LT$rayon..iter..map..MapFolder$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each..ok$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$$C$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..insert_items_at_level_zero$LT$$RF$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..progress..Progress$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a59a69735973730E.exit" unwind label %bb.bs
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN122_$LT$meilisearch..routes..indexes..compact..__path___local__handler_compact$u20$as$u20$utoipa..__dev..SchemaReferences$GT$7schemas17h1fccc14425a03aa1E"(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @"_ZN105_$LT$meilisearch..routes..indexes..compact..__path_compact$u20$as$u20$utoipa..__dev..SchemaReferences$GT$7schemas17ha7cc15b9a423e86bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN122_$LT$meilisearch..routes..indexes..documents..DocumentsDeletionAggregator$u20$as$u20$meilisearch..analytics..Aggregate$GT$10event_name17h9062dadfd591d0c3E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @3690, i64 17 }
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN122_$LT$meilisearch..routes..indexes..documents..DocumentsDeletionAggregator$u20$as$u20$meilisearch..analytics..Aggregate$GT$10into_event17h33e4e035cf7421bdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 1 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload = load i32, ptr %1, align 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172903)
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 16
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 24
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172909
  invoke void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h8b449f535bf94047E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3001, i64 noundef 27, i64 noundef 4)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !191, !noalias !172909, !noundef !12 ; 2 uses
  %i.f = icmp eq i64 %i.e, -9223372036854775807
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !172909 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172909
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !172911, !noalias !172912
  store i64 -9223372036854775803, ptr %i.d, align 8, !alias.scope !172911, !noalias !172912
  br label %.thread

bb.c:                                             ; preds = %.noexc
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload to i8
  %.sroa.621.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.0..sroa_idx.i.i, i64 80, i1 false), !noalias !172909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172909
  store i64 %i.e, ptr %i.c, align 8, !noalias !172909
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !172909
  %i.j = invoke fastcc noundef align 8 ptr @"_ZN89_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17heb16c4991322ca42E"(ptr noalias noundef align 8 dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3002, i64 noundef 15, i8 %.sroa.0.0.extract.trunc.i)
          to label %bb.d unwind label %bb.m, !noalias !172909 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = invoke fastcc noundef align 8 ptr @"_ZN89_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17heb16c4991322ca42E"(ptr noalias noundef align 8 dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3003, i64 noundef 9, i8 %.sroa.2.0.extract.trunc.i)
          to label %bb.f unwind label %bb.m, !noalias !172909 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not25.i.i = icmp eq ptr %i.k, null
  br i1 %.not25.i.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.l = invoke fastcc noundef align 8 ptr @"_ZN89_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17heb16c4991322ca42E"(ptr noalias noundef align 8 dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3004, i64 noundef 9, i8 %.sroa.3.0.extract.trunc.i)
          to label %bb.h unwind label %bb.m, !noalias !172909 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not26.i.i = icmp eq ptr %i.l, null
  br i1 %.not26.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.m = invoke fastcc noundef align 8 ptr @"_ZN89_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17heb16c4991322ca42E"(ptr noalias noundef align 8 dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3005, i64 noundef 10, i8 %.sroa.4.0.extract.trunc.i)
          to label %bb.j unwind label %bb.m, !noalias !172909 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not27.i.i = icmp eq ptr %i.m, null
  br i1 %.not27.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !172909
  invoke void @"_ZN89_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h690f571e412c2dbbE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.sink.i.i = phi ptr [ %i.l, %bb.h ], [ %i.k, %bb.f ], [ %i.j, %bb.d ], [ %i.m, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sink.i.i, ptr %i.n, align 8, !alias.scope !172911, !noalias !172912
  store i64 -9223372036854775803, ptr %i.d, align 8, !alias.scope !172911, !noalias !172912
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17h34451bc29990f827E"(ptr noalias noundef align 8 dereferenceable(96) %i.c)
          to label %.thread unwind label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17h34451bc29990f827E"(ptr noalias noundef align 8 dereferenceable(96) %i.c) #86
          to label %bb.s unwind label %bb.n, !noalias !172909

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !172909
  unreachable

bb.o:                                             ; preds = %bb.r, %bb.l, %bb.k, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %bb.b, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !172909
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172909
  %.pr = load i64, ptr %i.d, align 8, !alias.scope !172913, !noalias !172916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !172909
  call void @llvm.experimental.noalias.scope.decl(metadata !172916)
  call void @llvm.experimental.noalias.scope.decl(metadata !172913)
  %i.q = icmp eq i64 %.pr, -9223372036854775803
  br i1 %i.q, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.d, i64 72, i1 false), !alias.scope !172918
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit"

bb.r:                                             ; preds = %.thread, %bb.p
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !172919, !noalias !172913
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..result..Result$LT$serde_json..value..Value$C$serde_json..error..Error$GT$$GT$17h15c66301a39d0cd7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit" unwind label %bb.o

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit": ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 1) #79
  ret void

bb.s:                                             ; preds = %bb.o, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.o ], [ %lpad.thr_comm.i.i, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 1) #79
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 1 ptr @"_ZN122_$LT$meilisearch..routes..indexes..documents..DocumentsDeletionAggregator$u20$as$u20$meilisearch..analytics..Aggregate$GT$9aggregate17h97c5deb2a03ab0cbE"(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull align 1 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %2 = load <4 x i8>, ptr %0, align 1
  %3 = load <4 x i8>, ptr %1, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.a = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #79 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !334

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 4) #85
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 1) #79
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 4, i64 noundef 1) #79
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %4 = or <4 x i8> %3, %2
  store <4 x i8> %4, ptr %i.a, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 1) #79
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 4, i64 noundef 1) #79
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN122_$LT$meilisearch..routes..indexes..documents..__path___local__handler_replace_documents$u20$as$u20$utoipa..__dev..Tags$GT$4tags17h09b75901be245544E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #79 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr @1799, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 9, ptr %i.c, align 8
  store i64 1, ptr %0, align 8, !alias.scope !172922
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8, !alias.scope !172922
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8, !alias.scope !172922
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN122_$LT$meilisearch..routes..indexes..documents..__path_delete_documents_batch$u20$as$u20$utoipa..__dev..SchemaReferences$GT$7schemas17h035e9ea7dff4d553E"(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [752 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [776 x i8], align 8               ; 8 uses
  %i.k = alloca [752 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [776 x i8], align 8               ; 8 uses
  %i.p = alloca [752 x i8], align 8               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [776 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr @49, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 18, ptr %i.v, align 8
  store i64 -9223372036854775808, ptr %i.q, align 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h24ad2e3241060820E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172925
  store ptr @0, ptr %i.c, align 8, !noalias !172933
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !172933
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.551.0..sroa_idx, align 8, !noalias !172933
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.652.0..sroa_idx, align 8, !noalias !172933
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !172933
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val28 = load i64, ptr %i.q, align 8, !range !186, !noundef !12 ; 2 uses
  %switch = icmp sgt i64 %.val28, 0
  br i1 %switch, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %.val29 = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %.val28, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !172934
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !172925
  %.val26 = load i64, ptr %i.q, align 8, !range !186, !noundef !12 ; 2 uses
  %switch81 = icmp sgt i64 %.val26, 0
  br i1 %switch81, label %bb.e, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit30"

bb.e:                                             ; preds = %bb.d
  %.val27 = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %.val26, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !172939
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit30"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit30": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.y, align 8
  invoke void @"_ZN88_$LT$meilisearch..routes..SummarizedTaskView$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h12d5a47cf04e41a4E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit30"
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.aa, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !172944
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit30"
  store i64 %.sroa.0.0.copyload, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx46, align 8
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx48, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.ab, ptr noundef nonnull align 8 dereferenceable(752) %i.p, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !172949)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !172949, !noalias !172952, !noundef !12 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !64, !alias.scope !172949, !noalias !172952, !noundef !12
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9c734755f65372f9E.exit"

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h93c9974e0d5a845aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @348)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9c734755f65372f9E.exit" unwind label %bb.j, !noalias !172955

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$GT$17h0a78cd4db86b8363E"(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.t) #86
          to label %common.resume unwind label %bb.k, !noalias !172949

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !172949
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g, %bb.m, %bb.p, %bb.q, %bb.w, %bb.z, %bb.aa, %bb.b, %bb.l, %bb.v, %bb.ad, %bb.t, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ad ], [ %i.ag, %bb.j ], [ %i.av, %bb.t ], [ %i.bc, %bb.w ], [ %i.ap, %bb.q ], [ %i.ao, %bb.m ], [ %i.z, %bb.g ], [ %i.w, %bb.c ], [ %i.bd, %bb.aa ], [ %i.w, %bb.b ], [ %i.z, %bb.f ], [ %i.bd, %bb.z ], [ %i.ao, %bb.l ], [ %i.ap, %bb.p ], [ %i.bc, %bb.v ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9c734755f65372f9E.exit": ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !172949, !noalias !172952, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw [776 x i8], ptr %i.aj, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.ak, ptr noundef nonnull align 8 dereferenceable(776) %i.t, i64 776, i1 false), !noalias !172949
  %i.al = add i64 %i.ad, 1
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !172949, !noalias !172952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @"_ZN76_$LT$meilisearch..routes..SummarizedTaskView$u20$as$u20$utoipa..ToSchema$GT$7schemas17hbd28c306ba263dfdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr @15, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 13, ptr %i.an, align 8
  store i64 -9223372036854775808, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h24ad2e3241060820E", ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172956
  store ptr @0, ptr %i.b, align 8, !noalias !172964
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !172964
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !172964
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.664.0..sroa_idx, align 8, !noalias !172964
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.765.0..sroa_idx, align 8, !noalias !172964
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9c734755f65372f9E.exit"
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val24 = load i64, ptr %i.l, align 8, !range !186, !noundef !12 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator10advance_by17h7e15116ea1ffc521E:bb.a
  %i.t = icmp eq i64 %.promoted.i.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %1, -1
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h89a994225b295deeE.exit"

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader4, %bb.d
  %i.v = phi i64 [ %i.w, %bb.d ], [ %.ph, %.split.i.i.i.preheader4 ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.y, %bb.d ], [ %.sroa.01.0.i.i.i.ph, %.split.i.i.i.preheader4 ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, %i.v
  br i1 %.not.i.i.i.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h89a994225b295deeE.exit", label %bb.d

bb.d:                                             ; preds = %.split.i.i.i
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !328141
  %i.x = icmp ult i64 %i.v, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h89a994225b295deeE.exit", label %.split.i.i.i, !llvm.loop !328152

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h89a994225b295deeE.exit": ; preds = %.split.i.i.i, %bb.d, %bb.a, %.split.us.preheader.i.i.i, %bb.c
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %i.u, %bb.c ], [ %1, %.split.us.preheader.i.i.i ], [ %.sroa.01.0.i.i.i, %.split.i.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h88fceb0c976f81f5E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h73d5db0d558a8fb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !328153, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !328153 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = sub i64 %i.c, %.promoted.i.i.i3
  %i.e = lshr i64 %i.d, 4
  %i.f = add i64 %1, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.i = sub i64 %i.c, %.promoted.i.i.i3
  %i.j = and i64 %i.i, 15
  %ident.check.not = icmp eq i64 %i.j, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.k = and i64 %i.h, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.h, %i.m                 ; 3 uses
  %i.n = shl i64 %n.vec, 4
  %i.o = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.n
  %i.p = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !328162

middle.block:                                     ; preds = %vector.body
  %i.r = getelementptr i8, ptr %pointer.phi, i64 64
  store ptr %i.r, ptr %0, align 8, !alias.scope !328153
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.o, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.s = phi ptr [ %i.u, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.v, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h73d5db0d558a8fb7E.exit", label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !alias.scope !328153
  %i.v = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h73d5db0d558a8fb7E.exit", label %scalar.ph, !llvm.loop !328163

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h73d5db0d558a8fb7E.exit": ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17ha692a35d2c0cf1cdE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 8 uses
  %i.b = alloca [320 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328164)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h5d4b5ec569c9733eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !328170
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %0), !noalias !328171
  %i.c = load i64, ptr %i.b, align 8, !range !12221, !noalias !328174, !noundef !12 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.c, 98
  br i1 %.not17.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !328170, !nonnull !12
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.e = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.01.018.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.i, %bb.i ]
  %.sroa.39.0.copyload.i.i.i = load ptr, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8, !noalias !328174 ; 3 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !328174 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, 97
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd8a09f07176e179eE.exit.i.i.i", label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328176
  store i64 %i.e, ptr %i.a, align 8, !noalias !328185
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !328174
  %.sroa.53.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.39.0.copyload.i.i.i, ptr %.sroa.53.0..sroa_idx4.i.i.i.i, align 8, !noalias !328185
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 8, !noalias !328185
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.7.0..sroa_idx8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.510.0..sroa_idx.i.i.i, i64 280, i1 false), !noalias !328174
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5341, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1520) #85
          to label %bb.f unwind label %bb.e, !noalias !328186

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17hbb7a724514b11f0eE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.a) #86
          to label %bb.h unwind label %bb.g, !noalias !328186

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !328186
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd8a09f07176e179eE.exit.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.copyload.i.i.i) ]
  %i.h = tail call noundef align 8 dereferenceable(80) ptr @_ZN5milli6prompt8document14ParseableValue8new_bump17he449657ca3ffe0a4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.39.0.copyload.i.i.i, i64 noundef %.sroa.4.0.copyload.i.i.i, ptr noundef nonnull align 8 %.val.i.i.i.i), !noalias !328187 ; 0 uses
  %i.i = add i64 %.sroa.01.018.i.i.i, -1          ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd8a09f07176e179eE.exit.i.i.i"
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %0), !noalias !328171
  %i.k = load i64, ptr %i.b, align 8, !range !12221, !noalias !328174, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 98
  br i1 %.not.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i", label %bb.c

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i": ; preds = %bb.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd8a09f07176e179eE.exit.i.i.i", %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %1, %bb.b ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd8a09f07176e179eE.exit.i.i.i" ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328170
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h5d4b5ec569c9733eE.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h5d4b5ec569c9733eE.exit": ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i"
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0020882b0d672dc5E.exit.i" ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17ha9a592e0dd43a5bbE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h51fbffed11ebcbd2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !328188, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !328188 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = mul i64 %i.c, 988218432520154551
  %i.e = mul i64 %.promoted.i.i.i3, -988218432520154551
  %i.f = add i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 3
  %i.h = add i64 %1, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i.i3
  %i.l = and i64 %i.k, 7
  %ident.check.not = icmp eq i64 %i.l, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = mul i64 %n.vec, 56
  %i.q = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.p
  %i.r = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 224
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !328197

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 224
  store ptr %i.t, ptr %0, align 8, !alias.scope !328188
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h51fbffed11ebcbd2E.exit", label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !alias.scope !328188
  %i.x = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h51fbffed11ebcbd2E.exit", label %scalar.ph, !llvm.loop !328198

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h51fbffed11ebcbd2E.exit": ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hb62e0e26094441d7E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328199)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328202)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !328205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328209)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !328212, !noalias !328215, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !328212, !noalias !328215 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i.i.i.i, %i.c
  br i1 %i.d, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit", label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i": ; preds = %bb.b, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i"
  %.sroa.01.020.i.i.i.i = phi i64 [ %.sroa.0.0.i19.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i" ], [ %1, %bb.b ] ; 5 uses
  %i.e = phi ptr [ %i.f, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i" ], [ %.promoted.i.i.i.i, %bb.b ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328218)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !328212, !noalias !328215
  %.sroa.07.0.copyload8.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !328219 ; 4 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx9.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx9.sroa_idx.i.i.i.i, align 8, !noalias !328219 ; 2 uses
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx9.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx9.sroa_idx.i.i.i.i, align 8, !noalias !328219
  %.not.i.i.i.i = icmp eq ptr %.sroa.07.0.copyload8.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i"
  %.sroa.8.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx9.i.i.i.i, align 8, !noalias !328219
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i" [
    i64 8, label %bb.d
    i64 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %.sroa.07.0.copyload8.i.i.i.i, align 1
  %i.h = icmp ne i64 %i.g, 8318834007381210719
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i", label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr %.sroa.07.0.copyload8.i.i.i.i, align 1
  %i.l = icmp ne i32 %i.k, 1868916575
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i", label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.o = load i64, ptr %.sroa.07.0.copyload8.i.i.i.i, align 1
  %i.p = icmp ne i64 %i.o, 7957705967559599967
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i", label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i": ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.6.0.copyload.i.i.i.i) ]
  %i.s = tail call noundef align 8 dereferenceable(80) ptr @_ZN5milli6prompt8document14ParseableValue8new_bump17he449657ca3ffe0a4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.8.sroa.7.0.copyload.i.i.i.i, ptr noundef nonnull align 8 %.val.i.i), !noalias !328220 ; 0 uses
  %i.t = add i64 %.sroa.01.020.i.i.i.i, -1        ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit", label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i": ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i", %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i19.i.i.i.i = phi i64 [ %i.t, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i" ], [ %.sroa.01.020.i.i.i.i, %bb.f ], [ %.sroa.01.020.i.i.i.i, %bb.e ], [ %.sroa.01.020.i.i.i.i, %bb.d ] ; 2 uses
  %i.v = icmp eq ptr %i.f, %i.c
  br i1 %i.v, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit", label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf6ef6895034126feE.exit": ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i", %bb.a, %bb.b
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.i.i.i.i" ], [ %.sroa.0.0.i19.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h99899ef9e36b43aaE.exit.thread.i.i.i.i" ], [ %.sroa.01.020.i.i.i.i, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i" ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hbc962a317b1b7f2aE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328228)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hc5b5b44c99521713E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328231)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !328234, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !328234, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !12, !noalias !328235, !nonnull !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !328240
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i.i), !noalias !328240, !inline_history !328241
  %i.g = load i64, ptr %i.b, align 8, !range !12236, !noalias !328240, !noundef !12
  %.not3.i.i.i = icmp eq i64 %i.g, 2
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !328240
  %i.h = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17h159ee256ed182490E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328242
  %i.i = add i64 %1, -1                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328240
  br i1 %i.j, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hc5b5b44c99521713E.exit", label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !328240
  %i.k = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17h159ee256ed182490E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328242
  %i.l = add i64 %i.n, -1                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328240
  br i1 %i.m, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hc5b5b44c99521713E.exit", label %.lr.ph

._crit_edge.i.i.i:                                ; preds = %.lr.ph, %bb.b
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ %1, %bb.b ], [ %i.n, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328240
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hc5b5b44c99521713E.exit"

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.n = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !328240
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i.i), !noalias !328240, !inline_history !328241
  %i.o = load i64, ptr %i.b, align 8, !range !12236, !noalias !328240, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hc5b5b44c99521713E.exit": ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %._crit_edge.i.i.i
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ], [ 0, %.lr.ph.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator3nth17h07351b7f47ac5109E:bb.a
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1508, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator3nth17h0bec27c329e72b46E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 9 uses
  %i.b = alloca [320 x i8], align 8               ; 9 uses
  %i.c = tail call noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hc9bdeba59c702526E(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.b, ptr noalias noundef align 8 dereferenceable(40) %1), !noalias !328491
  %i.d = load i64, ptr %i.b, align 8, !range !12221, !noalias !328496, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.d, 98
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.417.0.copyload.i = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !328496 ; 3 uses
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !328496 ; 2 uses
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.619.0.copyload.i = load ptr, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !328496 ; 3 uses
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.720.0.copyload.i = load i64, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !328496 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.d, 97
  br i1 %.not.i.i.i, label %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4iter28_$u7b$$u7b$closure$u7d$$u7d$17h9c4ccdcd0ff5d423E.exit.i", label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328497
  store i64 %i.d, ptr %i.a, align 8, !noalias !328505
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.417.0.copyload.i, ptr %.sroa.54.0..sroa_idx5.i, align 8, !noalias !328505
  %.sroa.67.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.518.0.copyload.i, ptr %.sroa.67.0..sroa_idx8.i, align 8, !noalias !328505
  %.sroa.710.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.619.0.copyload.i, ptr %.sroa.710.0..sroa_idx11.i, align 8, !noalias !328505
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.720.0.copyload.i, ptr %.sroa.8.0..sroa_idx13.i, align 8, !noalias !328505
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.9.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.821.0..sroa_idx.i, i64 280, i1 false), !noalias !328496
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5341, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1512) #85
          to label %bb.f unwind label %bb.e, !noalias !328506

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17hbb7a724514b11f0eE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.a) #86
          to label %common.resume.i.i unwind label %bb.g, !noalias !328506

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !328506
  unreachable

common.resume.i.i:                                ; preds = %bb.e
  resume { ptr, i32 } %i.e

"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4iter28_$u7b$$u7b$closure$u7d$$u7d$17h9c4ccdcd0ff5d423E.exit.i": ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !328494, !noalias !328491, !nonnull !12, !noundef !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.619.0.copyload.i) ]
  %i.h = tail call noundef align 8 dereferenceable(80) ptr @_ZN5milli6prompt8document14ParseableValue8new_bump17he449657ca3ffe0a4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.619.0.copyload.i, i64 noundef %.sroa.720.0.copyload.i, ptr noundef nonnull align 8 %.val.i), !noalias !328507
  store i64 0, ptr %0, align 8, !alias.scope !328491, !noalias !328494
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.417.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !328491, !noalias !328494
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.518.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !328491, !noalias !328494
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.61.0..sroa_idx.i, align 8, !alias.scope !328491, !noalias !328494
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @1508, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !328491, !noalias !328494
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57a02e7d64a3186bE.exit"

bb.h:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8, !alias.scope !328491, !noalias !328494
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57a02e7d64a3186bE.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57a02e7d64a3186bE.exit": ; preds = %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4iter28_$u7b$$u7b$closure$u7d$$u7d$17h9c4ccdcd0ff5d423E.exit.i", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h57a02e7d64a3186bE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17h1989e553e4647e25E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328514)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328520)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !328522, !noalias !328520, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !328522, !noalias !328520
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !328523, !noalias !328517, !nonnull !12, !align !4496
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %.promoted.i.i.i.i, %bb.a ], [ %i.l, %bb.c ] ; 5 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %2, %bb.a ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha559b699396c94b8E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !328524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 160, i1 false), !noalias !328524
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 4 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !328522, !noalias !328520
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.c, align 8, !noalias !328524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !328525
  %i.m = load ptr, ptr %i.i, align 8, !noalias !328528, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @_ZN11meilisearch6routes7api_key7KeyView8from_key17ha5029d7cb591b4e7E(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n), !noalias !328524
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.b, align 8, !noalias !328525
  %i.o = add i64 %.sroa.0.0.i.i.i.i, -1           ; 2 uses
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$meilisearch..routes..api_key..KeyView$GT$17h8852b101263e5a28E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(184) %i.j), !noalias !328525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !328525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !328524
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328537)
  %i.q = icmp eq ptr %i.l, %i.f
  br i1 %i.q, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !328540, !noalias !328541
  %.sroa.0.0.copyload1.i = load i64, ptr %i.l, align 8, !noalias !328543 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.thread.i", label %bb.e

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.6.0..sroa_idx2.i, i64 152, i1 false), !noalias !328544
  store i64 %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !328544
  %i.s = load ptr, ptr %i.i, align 8, !noalias !328545, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @_ZN11meilisearch6routes7api_key7KeyView8from_key17ha5029d7cb591b4e7E(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t), !noalias !328535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328544
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f16cf70fc261fbbE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.thread.i": ; preds = %bb.d, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.i"
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !328532, !noalias !328535
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f16cf70fc261fbbE.exit"

_ZN4core4iter6traits8iterator8Iterator10advance_by17ha559b699396c94b8E.exit: ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f16cf70fc261fbbE.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f16cf70fc261fbbE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb25beeb1177b6dabE.exit.thread.i", %bb.e, %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha559b699396c94b8E.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3nth17h26b4d456c8506903E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 6 uses
  %.pre10 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre49 = ptrtoaddr ptr %.pre4 to i64           ; 2 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = mul i64 %.pre49, 988218432520154551
  %i.b = mul i64 %.pre10, -988218432520154551
  %i.c = add i64 %i.a, %i.b
  %i.d = lshr i64 %i.c, 3
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.h = sub i64 %.pre49, %.pre10
  %i.i = and i64 %i.h, 7
  %ident.check.not = icmp eq i64 %i.i, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.j = and i64 %i.g, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.g, %i.l                 ; 3 uses
  %i.m = mul i64 %n.vec, 56
  %i.n = getelementptr i8, ptr %.pre, i64 %i.m
  %i.o = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 224
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !328549

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 224
  store ptr %i.q, ptr %0, align 8, !alias.scope !328550
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.preheader ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %.preheader ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.r = phi ptr [ %i.t, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.s = icmp eq ptr %i.r, %.pre4
  br i1 %i.s, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha9a592e0dd43a5bbE.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !alias.scope !328550
  %i.u = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %scalar.ph, !llvm.loop !328561

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.w = phi ptr [ %.pre, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = icmp eq ptr %i.w, %.pre4
  br i1 %i.x, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha9a592e0dd43a5bbE.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr %i.y, ptr %0, align 8, !alias.scope !328562
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17ha9a592e0dd43a5bbE.exit

_ZN4core4iter6traits8iterator8Iterator10advance_by17ha9a592e0dd43a5bbE.exit: ; preds = %scalar.ph, %bb.c, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.w, %bb.c ], [ null, %scalar.ph ]
  %i.z = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.aa = insertvalue { ptr, ptr } %i.z, ptr @247, 1
  ret { ptr, ptr } %i.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator3nth17h2e501f9a6f1922c3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 7 uses
  %i.b = alloca [320 x i8], align 8               ; 7 uses
  %i.c = alloca [320 x i8], align 8               ; 7 uses
  %i.d = alloca [320 x i8], align 8               ; 10 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !328567
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = load i64, ptr %i.d, align 8, !range !12221, !noalias !328574, !noundef !12 ; 2 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 98
  br i1 %.not16.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.f = phi i64 [ %i.e, %.lr.ph.i.i.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %.sroa.01.017.i.i.i.i = phi i64 [ %2, %.lr.ph.i.i.i.i ], [ %i.i, %bb.h ]
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.f, 97
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h67f95d3df3fc9388E.exit.i.i.i.i", label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %.sroa.39.0.copyload.i.i.i.i = load i64, ptr %.sroa.39.0..sroa_idx.i.i.i.i, align 8, !noalias !328574
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !328574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !328577
  store i64 %i.f, ptr %i.c, align 8, !noalias !328587
  %.sroa.56.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.56.0..sroa_idx7.i.i.i.i.i, align 8, !noalias !328587
  %.sroa.69.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.39.0.copyload.i.i.i.i, ptr %.sroa.69.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !328587
  %.sroa.712.0..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.712.0..sroa_idx13.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.4.0..sroa_idx.i.i.i.i, i64 296, i1 false), !noalias !328574
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5341, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1516) #85
          to label %bb.f unwind label %bb.e, !noalias !328588

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17hbb7a724514b11f0eE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.c) #86
          to label %common.resume unwind label %bb.g, !noalias !328588

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !328588
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.m, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h67f95d3df3fc9388E.exit.i.i.i.i": ; preds = %bb.c
  %i.i = add i64 %.sroa.01.017.i.i.i.i, -1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit, label %bb.h

bb.h:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h67f95d3df3fc9388E.exit.i.i.i.i"
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = load i64, ptr %i.d, align 8, !range !12221, !noalias !328574, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.k, 98
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit: ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h67f95d3df3fc9388E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !328567
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit.thread

_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit.thread: ; preds = %bb.a, %_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1aa5c24c76f0820E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.b, ptr noalias noundef align 8 dereferenceable(32) %1), !noalias !328589
  %i.l = load i64, ptr %i.b, align 8, !range !12221, !noalias !328592, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.l, 98
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17hc4f4ff76230e7e77E.exit.thread
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !328592 ; 3 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !328592 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 97
  br i1 %.not.i.i.i, label %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4keys28_$u7b$$u7b$closure$u7d$$u7d$17h35b969b1c5f53f11E.exit.i", label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328594
  store i64 %i.l, ptr %i.a, align 8, !noalias !328602
  %.sroa.53.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.411.0.copyload.i, ptr %.sroa.53.0..sroa_idx4.i, align 8, !noalias !328602
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.66.0..sroa_idx7.i, align 8, !noalias !328602
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.7.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.613.0..sroa_idx.i, i64 296, i1 false), !noalias !328592
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5341, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1516) #85
          to label %bb.l unwind label %bb.k, !noalias !328603

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17hbb7a724514b11f0eE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.a) #86
          to label %common.resume unwind label %bb.m, !noalias !328603

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !328603
  unreachable

"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4keys28_$u7b$$u7b$closure$u7d$$u7d$17h35b969b1c5f53f11E.exit.i": ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.411.0.copyload.i) ]
  store i64 0, ptr %0, align 8, !alias.scope !328589, !noalias !328604
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.411.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !328589, !noalias !328604
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !328589, !noalias !328604
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h504e903d2717abe9E.exit"
end_hunk_2
