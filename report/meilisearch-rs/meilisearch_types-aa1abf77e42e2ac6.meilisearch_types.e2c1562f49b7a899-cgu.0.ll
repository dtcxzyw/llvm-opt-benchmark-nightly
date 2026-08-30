Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN82_$LT$meilisearch_types..settings..TypoSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h552a020dd64ae5dcE":bb.a
  %i.be = load i8, ptr %i.bd, align 1, !range !1716, !noundef !26 ; 2 uses
  %i.bf = icmp samesign ugt i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bb, %i.be                 ; 2 uses
  %not.10 = xor i1 %i.bc, true                    ; 2 uses
  %i.bh = and i1 %i.bg, %not.10
  %i.bi = select i1 %i.bf, i1 %i.bh, i1 %i.bc
  %spec.select = or i1 %i.bg, %not.10
  %spec.select15 = select i1 %i.bi, i1 %spec.select, i1 false
  br label %"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit.thread"

"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit.thread": ; preds = %bb.n, %bb.d, %bb.f, %bb.g, %"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit", %bb.j, %bb.m, %bb.a, %bb.b, %"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit.thread6", %bb.k
  %.sroa.0.0 = phi i1 [ false, %bb.f ], [ %spec.select15, %bb.n ], [ false, %bb.d ], [ false, %bb.k ], [ false, %"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit.thread6" ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.j ], [ false, %"_ZN93_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49c8f14945e17b5fE.exit" ], [ false, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN82_$LT$meilisearch_types..tasks..ExportIndexSettings$u20$as$u20$utoipa..ToSchema$GT$7schemas17hc0077f168737110cE"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN82_$LT$meilisearch_types..tasks..network..ImportData$u20$as$u20$utoipa..ToSchema$GT$7schemas17h36174be0caa1a9d1E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$meilisearch_types..tasks..network..RemoteTask$u20$as$u20$utoipa..ToSchema$GT$7schemas17h9e7559d1c559df4aE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [792 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @162, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 13, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28539
  store ptr @2, ptr %i.a, align 8, !noalias !28546
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.422.0..sroa_idx, align 8, !noalias !28546
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !28546
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.624.0..sroa_idx, align 8, !noalias !28546
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !28546
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10 = load i64, ptr %i.e, align 8, !range !206, !noundef !26 ; 2 uses
  %switch = icmp sgt i64 %.val10, 0
  br i1 %switch, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !26, !noundef !26
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28547
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28539
  %.val = load i64, ptr %i.e, align 8, !range !206, !noundef !26 ; 2 uses
  %switch29 = icmp sgt i64 %.val, 0
  br i1 %switch29, label %bb.e, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

bb.e:                                             ; preds = %bb.d
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !26, !noundef !26
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28550
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @"_ZN88_$LT$meilisearch_types..error..ResponseError$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h2c7be11ee43ce3ebE"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28553
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.515.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !28556)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !28559, !noalias !28562, !noundef !26 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !range !27, !alias.scope !28559, !noalias !28562, !noundef !26
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit", !prof !28

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef 1, i64 noundef 8, i64 noundef 776)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" unwind label %bb.j, !noalias !28562

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i": ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !28556, !noalias !28562
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit"

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g, %bb.b, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.j, %bb.c ], [ %i.m, %bb.g ], [ %i.j, %bb.b ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$C$1_usize$GT$$GT$17ha2a939d205ca73a8E"(ptr noalias noundef nonnull align 8 dereferenceable(792) %i.b) #55
          to label %common.resume unwind label %bb.k, !noalias !28556

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28556
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i", %bb.h
  %i.u = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !28556, !noalias !28562, !nonnull !26, !noundef !26
  %i.x = getelementptr inbounds nuw [776 x i8], ptr %i.w, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.x, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.5.0..sroa_idx, i64 776, i1 false), !noalias !28556
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !28556, !noalias !28564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN76_$LT$meilisearch_types..error..ResponseError$u20$as$u20$utoipa..ToSchema$GT$7schemas17h19c26b237470b5ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc5110e0324e011a0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28574)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !28574, !noalias !28577, !noundef !26 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false), !noalias !28574
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ef60a78206c4515E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28579
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 96) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, !prof !527

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !28580
  %i.q = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !28580 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !28580
  br label %bb.g

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.t = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !28580
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h3cd48c8d9f5508e2E.exit.i"

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %.sroa.07.0.i.i6.i.i.i = phi ptr [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i, i64 %i.l
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.02.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h3cd48c8d9f5508e2E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h3cd48c8d9f5508e2E.exit.i": ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.02.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %3, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !28579
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !28579
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !28579
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !28579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28593)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !28595, !noalias !28596, !nonnull !26, !noundef !26 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !28597
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !28595, !noalias !28596, !noundef !26 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h3cd48c8d9f5508e2E.exit.i"
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !28598
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.l, %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.av, %bb.l ], [ %i.av, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr315drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he4af04d7d413a5c8E"(i64 %.sroa.015.031.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #55
          to label %.body.i unwind label %bb.m, !noalias !28601

bb.j:                                             ; preds = %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.015.031.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.be, %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i ]
  %.sroa.016.030.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.016.1.i.i.i, %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i ] ; 2 uses
  %.sroa.6.029.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i ] ; 2 uses
  %.sroa.817.028.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i ] ; 2 uses
  %.sroa.1018.027.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i ]
  %.not13.i.i.i.i = icmp eq i16 %.sroa.817.028.i.i.i, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.029.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.016.030.i.i.i, %bb.j ]
  %.val11.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !28602
  %i.aj = icmp sgt <16 x i8> %.val11.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -1536 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.029.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.016.1.i.i.i = phi ptr [ %.sroa.016.030.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.817.028.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [96 x i8], ptr %.sroa.016.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1018.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28597
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -96
  call void @llvm.experimental.noalias.scope.decl(metadata !28605)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1065)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !28597

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -72
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.au)
          to label %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i unwind label %bb.k, !noalias !28597

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28608)
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !28611, !noalias !28612 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aw, label %.body.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !28611, !noalias !28612, !nonnull !26, !noundef !26
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28614
  br label %.body.i.i.i

_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.af, %i.ay
  %i.ba = sdiv exact i64 %i.az, 96                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [96 x i8], ptr %.sroa.0.0.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bd, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28597
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.as, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28597
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$17h8fb45d68ee386166E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #55
          to label %bb.o unwind label %bb.n, !noalias !28579

.loopexit.i:                                      ; preds = %_ZN4core5clone5Clone5clone17hcaeb255affe28824E.exit.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h3cd48c8d9f5508e2E.exit.i"
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !28615, !noalias !28601
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !28595, !noalias !28596, !noundef !26
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !28615, !noalias !28601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !28574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28579
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ef60a78206c4515E.exit"

bb.n:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28579
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ef60a78206c4515E.exit": ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$meilisearch_types..locales..Locale$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h636017b9eb62356fE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [2240 x i8], align 8              ; 280 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.d = alloca [752 x i8], align 8               ; 7 uses
  %i.e = alloca [752 x i8], align 8               ; 9 uses
  %i.f = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN6utoipa7openapi6schema6Object7builder17hb3dfec70c75ef677E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn.i, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28616)
  call void @llvm.experimental.noalias.scope.decl(metadata !28619)
  call void @llvm.experimental.noalias.scope.decl(metadata !28621)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.h, align 8, !range !152, !alias.scope !28619, !noalias !28623, !noundef !26 ; 3 uses
  %i.i = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %.val2.i = load ptr, ptr %i.j, align 8, !alias.scope !28619, !noalias !28623, !nonnull !26, !noundef !26
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28624
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.n
  store i64 139, ptr %i.ah, align 8, !alias.scope !28625, !noalias !28630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !28661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28661
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !range !206, !alias.scope !28663, !noalias !28666, !noundef !26 ; 5 uses
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !28667)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %.val4.i = load ptr, ptr %i.n, align 8, !alias.scope !28667, !noalias !28666, !nonnull !26, !noundef !26 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 376
end_hunk_0
