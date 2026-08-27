Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN64_$LT$insta..snapshot..Snapshot$u20$as$u20$core..clone..Clone$GT$5clone17h544bef7b70c13d0eE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @728)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.f ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.f ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ -9223372036854775808, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN64_$LT$insta..snapshot..MetaData$u20$as$u20$core..clone..Clone$GT$5clone17hd54e3f735c5063b6E"(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.j unwind label %bb.i

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit": ; preds = %bb.g, %bb.g, %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %bb.g ], [ %.pn, %bb.g ], [ %.pn, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20183)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !20183 ; 2 uses
  %i.h = icmp eq i64 %.val.i, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !20183, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !20183
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"

bb.f:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.g:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.k, %bb.i ] ; 3 uses
  switch i64 %.sroa.0.0, label %bb.h [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !20186
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"

bb.i:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @730)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.c) #55
          to label %bb.g unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.0.0, ptr %i.p, align 16
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx6, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef nonnull align 16 dereferenceable(176) %i.c, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit": ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit"
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h54cdc28633060208E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20191
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20195
  %.idx.i = shl nuw nsw i64 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17haba027d7abd93999E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20196
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !20196
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20196
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17haba027d7abd93999E.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17haba027d7abd93999E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20191
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h87bf71d382b30d69E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20199
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20203
  %.idx.i = shl nuw nsw i64 %i.f, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8c3e390a03a9bb57E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20204
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !20204
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20204
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8c3e390a03a9bb57E.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8c3e390a03a9bb57E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20199
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h94763aa784df0428E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20207
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !20211
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6d377fb06278a84E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20212
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !20212
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20212
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6d377fb06278a84E.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6d377fb06278a84E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20207
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 62 uses
  %.tr122 = phi ptr [ %1, %bb.a ], [ %.tr122.be, %tailrecurse.backedge ] ; 62 uses
  %i.a = load i8, ptr %.tr, align 16, !range !1276, !noundef !15 ; 2 uses
  %i.b = load i8, ptr %.tr122, align 16, !range !1276, !noundef !15 ; 29 uses
  switch i8 %i.a, label %.loopexit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
    i8 14, label %bb.q
    i8 15, label %bb.r
    i8 17, label %bb.s
    i8 19, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.w
    i8 23, label %bb.x
    i8 24, label %bb.y
    i8 25, label %bb.z
    i8 26, label %bb.aa
    i8 27, label %bb.ab
    i8 28, label %bb.ac
    i8 29, label %bb.ad
  ]

.loopexit:                                        ; preds = %tailrecurse, %bb.s, %bb.v, %bb.w
  %2 = zext nneg i8 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %3 = phi i64 [ %2, %.loopexit ], [ 29, %bb.ad ], [ 28, %bb.ac ], [ 27, %bb.ab ], [ 26, %bb.aa ], [ 25, %bb.z ], [ 24, %bb.y ], [ 23, %bb.x ], [ 20, %bb.u ], [ 19, %bb.t ], [ 15, %bb.r ], [ 14, %bb.q ], [ 13, %bb.p ], [ 12, %bb.o ], [ 11, %bb.n ], [ 10, %bb.m ], [ 9, %bb.l ], [ 8, %bb.k ], [ 7, %bb.j ], [ 6, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  %4 = zext nneg i8 %i.b to i64
  %i.c = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %4)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.c:                                             ; preds = %tailrecurse
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %bb.ae, label %bb.b

bb.d:                                             ; preds = %tailrecurse
  %i.e = icmp eq i8 %i.b, 1
  br i1 %i.e, label %bb.af, label %bb.b

bb.e:                                             ; preds = %tailrecurse
  %i.f = icmp eq i8 %i.b, 2
  br i1 %i.f, label %bb.ag, label %bb.b

bb.f:                                             ; preds = %tailrecurse
  %i.g = icmp eq i8 %i.b, 3
  br i1 %i.g, label %bb.ah, label %bb.b

bb.g:                                             ; preds = %tailrecurse
  %i.h = icmp eq i8 %i.b, 4
  br i1 %i.h, label %bb.ai, label %bb.b

bb.h:                                             ; preds = %tailrecurse
  %i.i = icmp eq i8 %i.b, 5
  br i1 %i.i, label %bb.aj, label %bb.b

bb.i:                                             ; preds = %tailrecurse
  %i.j = icmp eq i8 %i.b, 6
  br i1 %i.j, label %bb.ak, label %bb.b

bb.j:                                             ; preds = %tailrecurse
  %i.k = icmp eq i8 %i.b, 7
  br i1 %i.k, label %bb.al, label %bb.b

bb.k:                                             ; preds = %tailrecurse
  %i.l = icmp eq i8 %i.b, 8
  br i1 %i.l, label %bb.am, label %bb.b

bb.l:                                             ; preds = %tailrecurse
  %i.m = icmp eq i8 %i.b, 9
  br i1 %i.m, label %bb.an, label %bb.b

bb.m:                                             ; preds = %tailrecurse
  %i.n = icmp eq i8 %i.b, 10
  br i1 %i.n, label %bb.ao, label %bb.b

bb.n:                                             ; preds = %tailrecurse
  %i.o = icmp eq i8 %i.b, 11
  br i1 %i.o, label %bb.ap, label %bb.b

bb.o:                                             ; preds = %tailrecurse
  %i.p = icmp eq i8 %i.b, 12
  br i1 %i.p, label %bb.as, label %bb.b

bb.p:                                             ; preds = %tailrecurse
  %i.q = icmp eq i8 %i.b, 13
  br i1 %i.q, label %bb.av, label %bb.b

bb.q:                                             ; preds = %tailrecurse
  %i.r = icmp eq i8 %i.b, 14
  br i1 %i.r, label %bb.aw, label %bb.b

bb.r:                                             ; preds = %tailrecurse
  %i.s = icmp eq i8 %i.b, 15
  br i1 %i.s, label %bb.ax, label %bb.b

bb.s:                                             ; preds = %tailrecurse
  %i.t = icmp eq i8 %i.b, 17
  br i1 %i.t, label %tailrecurse.backedge, label %.loopexit

bb.t:                                             ; preds = %tailrecurse
  %i.u = icmp eq i8 %i.b, 19
  br i1 %i.u, label %bb.ay, label %bb.b

bb.u:                                             ; preds = %tailrecurse
  %i.v = icmp eq i8 %i.b, 20
  br i1 %i.v, label %bb.az, label %bb.b

bb.v:                                             ; preds = %tailrecurse
  %i.w = icmp eq i8 %i.b, 21
  br i1 %i.w, label %bb.be, label %.loopexit

bb.w:                                             ; preds = %tailrecurse
  %i.x = icmp eq i8 %i.b, 22
  br i1 %i.x, label %bb.bg, label %.loopexit

bb.x:                                             ; preds = %tailrecurse
  %i.y = icmp eq i8 %i.b, 23
  br i1 %i.y, label %bb.bm, label %bb.b

bb.y:                                             ; preds = %tailrecurse
  %i.z = icmp eq i8 %i.b, 24
  br i1 %i.z, label %bb.bo, label %bb.b

bb.z:                                             ; preds = %tailrecurse
  %i.aa = icmp eq i8 %i.b, 25
  br i1 %i.aa, label %bb.bq, label %bb.b

bb.aa:                                            ; preds = %tailrecurse
  %i.ab = icmp eq i8 %i.b, 26
  br i1 %i.ab, label %bb.bu, label %bb.b

bb.ab:                                            ; preds = %tailrecurse
  %i.ac = icmp eq i8 %i.b, 27
  br i1 %i.ac, label %bb.cc, label %bb.b

bb.ac:                                            ; preds = %tailrecurse
  %i.ad = icmp eq i8 %i.b, 28
  br i1 %i.ad, label %bb.cd, label %bb.b

bb.ad:                                            ; preds = %tailrecurse
  %i.ae = icmp eq i8 %i.b, 29
  br i1 %i.ae, label %bb.cg, label %bb.b

bb.ae:                                            ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !168, !noundef !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr122, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !168, !noundef !15
  %i.aj = sub nsw i8 %i.ag, %i.ai
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit": ; preds = %.lr.ph, %.lr.ph1133, %.lr.ph1138, %.lr.ph1143, %._crit_edge, %._crit_edge1134, %._crit_edge1139, %._crit_edge1144, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ci, %bb.ck, %bb.cl, %bb.cm, %bb.ce, %bb.cf, %bb.bw, %bb.by, %bb.cb, %bb.bt, %bb.bi, %bb.bk, %bb.bl, %bb.bf, %bb.bb, %bb.bd, %bb.bc, %bb.cc, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.b
  %.sroa.0.0 = phi i8 [ %i.c, %bb.b ], [ %i.aj, %bb.ae ], [ %i.ao, %bb.af ], [ %i.at, %bb.ag ], [ %i.ay, %bb.ah ], [ %i.bd, %bb.ai ], [ %i.bi, %bb.aj ], [ %i.bn, %bb.ak ], [ %i.bs, %bb.al ], [ %i.bx, %bb.am ], [ %i.cc, %bb.an ], [ %i.ch, %bb.ao ], [ %i.nv, %bb.ck ], [ %i.nh, %bb.ci ], [ %., %bb.aq ], [ %.98, %bb.ar ], [ %i.oe, %bb.cl ], [ %i.of, %bb.cm ], [ %.99, %bb.at ], [ %.100, %bb.au ], [ %i.cy, %bb.av ], [ %i.dh, %bb.aw ], [ %i.dq, %bb.ax ], [ %i.mo, %bb.cf ], [ %i.ef, %bb.ay ], [ %i.fl, %bb.bc ], [ %i.fm, %bb.bd ], [ %i.ey, %bb.bb ], [ %i.mn, %bb.ce ], [ %i.ga, %bb.bf ], [ %i.lr, %bb.cc ], [ %i.hi, %bb.bl ], [ %i.hh, %bb.bk ], [ %i.gt, %bb.bi ], [ %i.kf, %bb.bw ], [ %i.jk, %.lr.ph1133 ], [ %i.hv, %.lr.ph1143 ], [ %i.jm, %bb.bt ], [ %i.ij, %.lr.ph1138 ], [ %i.li, %bb.cb ], [ %i.kt, %bb.by ], [ %i.hs, %._crit_edge1144 ], [ %i.ig, %._crit_edge1139 ], [ %i.jh, %._crit_edge1134 ], [ %i.ld, %._crit_edge ], [ %i.lg, %.lr.ph ]
  ret i8 %.sroa.0.0

bb.af:                                            ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noundef !15
  %i.am = getelementptr inbounds nuw i8, ptr %.tr122, i64 1
  %i.an = load i8, ptr %i.am, align 1, !noundef !15
  %i.ao = tail call i8 @llvm.ucmp.i8.i8(i8 %i.al, i8 %i.an)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ag:                                            ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr122, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !noundef !15
  %i.at = tail call i8 @llvm.ucmp.i8.i16(i16 %i.aq, i16 %i.as)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ah:                                            ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !15
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr122, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !15
  %i.ay = tail call i8 @llvm.ucmp.i8.i32(i32 %i.av, i32 %i.ax)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ai:                                            ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr122, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !15
  %i.bd = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ba, i64 %i.bc)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.aj:                                            ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.bf = load i128, ptr %i.be, align 16, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr122, i64 16
  %i.bh = load i128, ptr %i.bg, align 16, !noundef !15
  %i.bi = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bf, i128 %i.bh)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ak:                                            ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr122, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !15
  %i.bn = tail call i8 @llvm.scmp.i8.i8(i8 %i.bk, i8 %i.bm)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.al:                                            ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr122, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !noundef !15
  %i.bs = tail call i8 @llvm.scmp.i8.i16(i16 %i.bp, i16 %i.br)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.am:                                            ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr122, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !15
  %i.bx = tail call i8 @llvm.scmp.i8.i32(i32 %i.bu, i32 %i.bw)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.an:                                            ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noundef !15
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr122, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !15
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %i.cb)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ao:                                            ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ce = load i128, ptr %i.cd, align 16, !noundef !15
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr122, i64 16
  %i.cg = load i128, ptr %i.cf, align 16, !noundef !15
  %i.ch = tail call i8 @llvm.scmp.i8.i128(i128 %i.ce, i128 %i.cg)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ap:                                            ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !noundef !15 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr122, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !noundef !15 ; 2 uses
  %i.cm = fcmp ugt float %i.cj, %i.cl
  %i.cn = fcmp ult float %i.cj, %i.cl             ; 2 uses
  br i1 %i.cm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %. = select i1 %i.cn, i8 2, i8 1
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ar:                                            ; preds = %bb.ap
  %.98 = sext i1 %i.cn to i8
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.as:                                            ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.cp = load double, ptr %i.co, align 8, !noundef !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr122, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !noundef !15 ; 2 uses
  %i.cs = fcmp ugt double %i.cp, %i.cr
  %i.ct = fcmp ult double %i.cp, %i.cr            ; 2 uses
  br i1 %i.cs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.99 = select i1 %i.ct, i8 2, i8 1
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.au:                                            ; preds = %bb.as
  %.100 = sext i1 %i.ct to i8
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.av:                                            ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !range !2585, !noundef !15
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr122, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !range !2585, !noundef !15
  %i.cy = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cv, i32 %i.cx)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.aw:                                            ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val116 = load ptr, ptr %i.cz, align 8, !nonnull !15, !noundef !15
  %i.da = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val117 = load i64, ptr %i.da, align 8, !noundef !15 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.tr122, i64 16
  %.val118 = load ptr, ptr %i.db, align 8, !nonnull !15, !noundef !15
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr122, i64 24
  %.val119 = load i64, ptr %i.dc, align 8, !noundef !15 ; 2 uses
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.val117, i64 %.val119)
  %i.dd = sub i64 %.val117, %.val119
  %i.de = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val116, ptr nonnull readonly align 1 %.val118, i64 %..i.i.i), !alias.scope !20215 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp eq i32 %i.de, 0
  %spec.store.select.i.i.i = select i1 %i.dg, i64 %i.dd, i64 %i.df
  %i.dh = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ax:                                            ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val = load ptr, ptr %i.di, align 8, !nonnull !15, !noundef !15
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val113 = load i64, ptr %i.dj, align 8, !noundef !15 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr122, i64 16
  %.val114 = load ptr, ptr %i.dk, align 8, !nonnull !15, !noundef !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr122, i64 24
  %.val115 = load i64, ptr %i.dl, align 8, !noundef !15 ; 2 uses
  %..i.i.i120 = tail call i64 @llvm.umin.i64(i64 %.val113, i64 %.val115)
  %i.dm = sub i64 %.val113, %.val115
  %i.dn = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val114, i64 %..i.i.i120), !alias.scope !20222 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %spec.store.select.i.i.i121 = select i1 %i.dp, i64 %i.dm, i64 %i.do
  %i.dq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i121, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

tailrecurse.backedge:                             ; preds = %bb.s, %bb.bj, %bb.be
end_hunk_0
begin_hunk_1_@"_ZN68_$LT$insta..redaction..ContentPath$u20$as$u20$core..fmt..Display$GT$3fmt17h99d24861f2e6a6f4E":bb.a
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !15, !align !1222, !noundef !15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !15 ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %bb.a
  %.val29 = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.n, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !15, !noalias !20297, !nonnull !15 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.1067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.split

.split:                                           ; preds = %.split.lr.ph, %bb.g
  %.sroa.021.084 = phi ptr [ %i.j, %.split.lr.ph ], [ %i.s, %bb.g ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 64 ; 2 uses
  %i.t = call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 1), !noalias !20297, !inline_history !5014
  br i1 %i.t, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.split
  %i.u = load i8, ptr %.sroa.021.084, align 16, !range !2026, !noundef !15 ; 3 uses
  %i.v = icmp samesign ugt i8 %i.u, 29
  %i.w = zext nneg i8 %i.u to i64
  %i.x = add nsw i64 %i.w, -29
  %i.y = select i1 %i.v, i64 %i.x, i64 0
  switch i64 %i.y, label %bb.c [
    i64 0, label %tailrecurse.i.i
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

tailrecurse.i.i:                                  ; preds = %bb.b, %bb.f
  %i.z = phi i8 [ %.pre, %bb.f ], [ %i.u, %bb.b ]
  %.tr.i.i = phi ptr [ %i.ab, %bb.f ], [ %.sroa.021.084, %bb.b ] ; 3 uses
  switch i8 %i.z, label %.split78 [
    i8 17, label %bb.f
    i8 21, label %bb.d
    i8 22, label %bb.e
    i8 14, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45
  ]

bb.d:                                             ; preds = %tailrecurse.i.i
  br label %bb.f

bb.e:                                             ; preds = %tailrecurse.i.i
  br label %bb.f

bb.f:                                             ; preds = %tailrecurse.i.i, %bb.e, %bb.d
  %.sink.i.i = phi i64 [ 40, %bb.e ], [ 24, %bb.d ], [ 8, %tailrecurse.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 %.sink.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !15, !align !1222, !noundef !15 ; 2 uses
  %.pre = load i8, ptr %i.ab, align 16, !range !1276
  br label %tailrecurse.i.i

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !15, !align !328, !noundef !15
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 16
  %i.af = load i64, ptr %i.ae, align 16, !noundef !15
  store ptr %i.ad, ptr %i.g, align 8
  store i64 %i.af, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20300
  store ptr @305, ptr %i.c, align 8
  store i64 1, ptr %.sroa.564.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.765.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.866.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1067.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !20300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ag, label %.loopexit, label %bb.g

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !15
  store i64 %i.ai, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20303
  store ptr @305, ptr %i.b, align 8
  store i64 1, ptr %.sroa.570.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.771.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.872.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1073.0..sroa_idx, align 8
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !20303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aj, label %.loopexit, label %bb.g

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45: ; preds = %tailrecurse.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !15
  %i.am = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.an = load i64, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.al, ptr %i.i, align 8
  store i64 %i.an, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20306
  store ptr @305, ptr %i.a, align 8
  store i64 1, ptr %.sroa.552.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.753.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.854.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1055.0..sroa_idx, align 8
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ao, label %.loopexit, label %bb.g

.split78:                                         ; preds = %tailrecurse.i.i
  %i.ap = call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @755, i64 noundef 9), !noalias !20309, !inline_history !5014
  br i1 %i.ap, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45, %.split78
  %.not87 = icmp eq ptr %i.s, %i.m
  br i1 %.not87, label %.loopexit, label %.split

.loopexit:                                        ; preds = %bb.g, %.split, %.split78, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45, %bb.a
  %i.aq = phi i1 [ false, %bb.a ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35 ], [ false, %bb.g ], [ true, %.split ], [ true, %.split78 ]
  ret i1 %i.aq
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @"_ZN68_$LT$insta..settings..Settings$u20$as$u20$core..default..Default$GT$7default17h87dc4d03a7f5d0cbE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hb0ef4e1130a3eecbE", i64 8) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit", label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h651d67b805548a8cE"()
  br label %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit"

"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hb0ef4e1130a3eecbE", %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.0.0.i.i, align 8, !nonnull !15, !noundef !15
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit"
  %i.g = load ptr, ptr %.sroa.0.0.i.i, align 8, !nonnull !15, !noundef !15
  ret ptr %i.g

bb.d:                                             ; preds = %"_ZN77_$LT$insta..settings..DEFAULT_SETTINGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd41713f4824e6494E.exit"
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @"_ZN69_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..Ord$GT$3cmp17h8c8e35885fc35e8eE"(ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #32 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20315)
  %i.a = load i8, ptr %0, align 16, !range !2843, !alias.scope !20312, !noalias !20315, !noundef !15 ; 2 uses
  %2 = zext nneg i8 %i.a to i64
  %i.b = load i8, ptr %1, align 16, !range !2843, !alias.scope !20315, !noalias !20312, !noundef !15 ; 9 uses
  %3 = zext nneg i8 %i.b to i64
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.l, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.b, 2
  br i1 %i.e, label %bb.m, label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.b, 3
  br i1 %i.f, label %bb.n, label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.b, 4
  br i1 %i.g, label %bb.q, label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.b, 5
  br i1 %i.h, label %bb.r, label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.b, 6
  br i1 %i.i, label %bb.s, label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %i.b, 7
  br i1 %i.j, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.k:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !168, !alias.scope !20312, !noalias !20315, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !168, !alias.scope !20315, !noalias !20312, !noundef !15
  %i.p = sub nsw i8 %i.m, %i.o
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.l:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !20312, !noalias !20315, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !20315, !noalias !20312, !noundef !15
  %i.u = tail call i8 @llvm.ucmp.i8.i64(i64 %i.r, i64 %i.t)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.m:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !20312, !noalias !20315, !noundef !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !20315, !noalias !20312, !noundef !15
  %i.z = tail call i8 @llvm.scmp.i8.i64(i64 %i.w, i64 %i.y)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.n:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !alias.scope !20312, !noalias !20315, !noundef !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !alias.scope !20315, !noalias !20312, !noundef !15 ; 2 uses
  %i.ae = fcmp ugt double %i.ab, %i.ad
  %i.af = fcmp ult double %i.ab, %i.ad            ; 2 uses
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %..i = select i1 %i.af, i8 2, i8 1
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.p:                                             ; preds = %bb.n
  %.14.i = sext i1 %i.af to i8
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.q:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i128, ptr %i.ag, align 16, !alias.scope !20312, !noalias !20315, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i128, ptr %i.ai, align 16, !alias.scope !20315, !noalias !20312, !noundef !15
  %i.ak = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ah, i128 %i.aj)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.r:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i128, ptr %i.al, align 16, !alias.scope !20312, !noalias !20315, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i128, ptr %i.an, align 16, !alias.scope !20315, !noalias !20312, !noundef !15
  %i.ap = tail call i8 @llvm.scmp.i8.i128(i128 %i.am, i128 %i.ao)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.s:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !20312, !noalias !20315, !nonnull !15, !align !328, !noundef !15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !20312, !noalias !20315, !noundef !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !20315, !noalias !20312, !nonnull !15, !align !328, !noundef !15
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 16, !alias.scope !20315, !noalias !20312, !noundef !15 ; 2 uses
  %i.ay = sub i64 %i.at, %i.ax
  %.15.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.az = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %.15.i), !noalias !20317 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %spec.store.select.i = select i1 %i.bb, i64 %i.ay, i64 %i.ba
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i, i64 0)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

bb.t:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !20312, !noalias !20315, !nonnull !15, !align !328, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.bf, align 16, !alias.scope !20312, !noalias !20315, !noundef !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !20315, !noalias !20312, !nonnull !15, !align !328, !noundef !15
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 16, !alias.scope !20315, !noalias !20312, !noundef !15 ; 2 uses
  %i.bl = sub i64 %i.bg, %i.bk
  %.16.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk)
  %i.bm = tail call i32 @memcmp(ptr nonnull %i.be, ptr nonnull %i.bi, i64 %.16.i), !noalias !20317 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp eq i32 %i.bm, 0
  %spec.store.select1.i = select i1 %i.bo, i64 %i.bl, i64 %i.bn
  %i.bp = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i, i64 0)
  br label %"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit"

"_ZN76_$LT$insta..content..serialization..Key$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h7007cbc39aed0e4bE.exit": ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0.0.i = phi i8 [ %i.p, %bb.k ], [ %i.k, %bb.j ], [ %i.u, %bb.l ], [ %i.z, %bb.m ], [ %i.bc, %bb.s ], [ %i.bp, %bb.t ], [ %..i, %bb.o ], [ %.14.i, %bb.p ], [ %i.ak, %bb.q ], [ %i.ap, %bb.r ] ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.i, 2
  %. = select i1 %.not, i8 -1, i8 %.sroa.0.0.i
  ret i8 %.
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !20318
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !20318
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !20318, !noundef !15
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !15
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !20321
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !20321
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !15
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !20324, !noundef !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !20324, !noundef !15 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !20324, !noundef !15
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
end_hunk_1
begin_hunk_2_@"_ZN78_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h784d85e851b47185E":bb.a
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
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17hd7a280d05e70a64eE.exit", label %bb.b, !prof !206

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
  br i1 %.not.i.i, label %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit", label %bb.b, !prof !206

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
  %i.b = load i8, ptr %0, align 1, !range !288, !noundef !15
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
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN79_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..hash..Hash$GT$4hash17he4f16d753ceb94f6E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #34 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i8, ptr %0, align 8, !range !14, !noundef !15 ; 2 uses
  %i.h = zext nneg i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20812
  store i64 %i.h, ptr %i.f, align 8, !noalias !20812
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20812
  switch i8 %i.g, label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit: ; preds = %.lr.ph, %.lr.ph7, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !15, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !15
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20817
  store i8 -1, ptr %i.e, align 1, !noalias !20817
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !20824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20817
  br label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20825
  store i64 %i.n, ptr %i.d, align 8, !noalias !20825
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20825
  br label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !15
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20830
  store i8 -1, ptr %i.c, align 1, !noalias !20830
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !20837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20830
  br label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !168, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20838
  store i8 %i.t, ptr %i.b, align 1, !noalias !20838
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20838
  br label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20841
  store i64 %i.x, ptr %i.a, align 8, !noalias !20841
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20841
  %.idx = mul nuw nsw i64 %i.x, 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %.lr.ph7
  %.sroa.0.06 = phi ptr [ %i.aa, %.lr.ph7 ], [ %i.v, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 72 ; 2 uses
  tail call fastcc void @"_ZN79_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..hash..Hash$GT$4hash17he4f16d753ceb94f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.06, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !20846
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit, label %.lr.ph7

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20847)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !20847, !noalias !20850, !noundef !15 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !20852, !noundef !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i = phi ptr [ %i.ag, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.01.0.i, %i.ad
  br i1 %i.ah, label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.02.0.i5 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.01.0.i, %bb.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i5, i64 72
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i5) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i5, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !20847, !noundef !15 ; 2 uses
  tail call fastcc void @"_ZN79_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..hash..Hash$GT$4hash17he4f16d753ceb94f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.02.0.i5, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !20847, !inline_history !20853
  tail call fastcc void @"_ZN79_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..hash..Hash$GT$4hash17he4f16d753ceb94f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !20847, !inline_history !20853
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZN4core4hash4Hash10hash_slice17h6f858520af946436E.exit, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20857)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !20860, !noalias !20861, !noundef !15 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !20860, !noalias !20861, !noundef !15 ; 3 uses
  %3 = zext nneg i8 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.t, %bb.f ] ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.h = load i16, ptr %i.g, align 2, !noalias !20863, !noundef !15 ; 4 uses
  %i.i = zext i16 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp eq i16 %i.h, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i209, i64 1 ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.8.0.i.i.i.i208, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i.i209 = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i.i208 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i209, align 1, !range !2843, !noalias !20863, !noundef !15
  %4 = zext nneg i8 %.val7.i.i.i.i to i64
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %3, i64 %4)
  switch i8 %i.o, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h217f4a4b8d4817b1E.exit"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.8.0.i.i.i.i208, %.lr.ph ] ; 10 uses
  %i.p = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 24
  %i.r = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.4.0.i.ph.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !noalias !20866, !nonnull !15, !noundef !15
  %i.u = add i64 %.sroa.3.0.i.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10 ; 9 uses
  %i.w = icmp ult i16 %i.h, 11
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20869
  %i.y = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !20869 ; 19 uses
  %i.z = icmp eq ptr %i.y, null                   ; 4 uses
  br i1 %i.x, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.i
  br i1 %.not.i.i.i.i.not.i, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = sub nuw nsw i64 %i.i, %.sroa.4.0.i.ph.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false), !alias.scope !20879, !noalias !20882
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.o [
    i64 5, label %bb.r
    i64 6, label %bb.u
  ]

bb.l:                                             ; preds = %bb.h
  br i1 %i.z, label %.invoke, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i.i.i.i", !prof !169

.invoke:                                          ; preds = %.thread.i, %bb.u, %bb.r, %bb.o, %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #54
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i.i.i.i": ; preds = %bb.l
  store ptr null, ptr %i.y, align 8, !noalias !20886
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20890)
  %i.ae = load i16, ptr %i.v, align 2, !noalias !20893, !noundef !15
  %i.af = zext i16 %i.ae to i64
  %i.ag = add nsw i64 %i.af, -5                   ; 4 uses
  %i.ah = trunc i64 %i.ag to i16
  store i16 %i.ah, ptr %i.ad, align 2, !alias.scope !20890, !noalias !20886
  %i.ai = icmp ult i64 %i.ag, 12
  br i1 %i.ai, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit.i.i.i.i", label %bb.m, !prof !206

bb.m:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ag, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #54
          to label %.noexc.i.i.i.i.i unwind label %bb.n, !noalias !20886

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.w, %bb.t, %bb.q, %bb.n
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.au, %bb.q ], [ %i.bg, %bb.t ], [ %i.br, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 24, i64 noundef 8) #51, !noalias !20869
  br label %.body

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 2, !range !2843, !noalias !20893, !noundef !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.an = getelementptr i8, ptr %.sroa.0.0.i.i.i, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull readonly align 1 %i.an, i64 range(i64 0, 65536) %i.ag, i1 false), !alias.scope !20894, !noalias !20886
  store i16 4, ptr %i.v, align 2, !noalias !20893
  br label %bb.x

bb.o:                                             ; preds = %bb.k
  br i1 %i.z, label %.invoke, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i41.i.i.i.i", !prof !169

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i41.i.i.i.i": ; preds = %bb.o
  store ptr null, ptr %i.y, align 8, !noalias !20898
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20902)
  %i.ap = load i16, ptr %i.v, align 2, !noalias !20905, !noundef !15
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, -7                   ; 4 uses
  %i.as = trunc i64 %i.ar to i16                  ; 2 uses
  store i16 %i.as, ptr %i.ao, align 2, !alias.scope !20902, !noalias !20898
  %i.at = icmp ult i64 %i.ar, 12
  br i1 %i.at, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit45.i.i.i.i", label %bb.p, !prof !206

bb.p:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i41.i.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ar, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #54
          to label %.noexc.i44.i.i.i.i unwind label %bb.q, !noalias !20898

.noexc.i44.i.i.i.i:                               ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit45.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i41.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !range !2843, !noalias !20905, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ay = getelementptr i8, ptr %.sroa.0.0.i.i.i, i64 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr nonnull readonly align 1 %i.ay, i64 range(i64 0, 65536) %i.ar, i1 false), !alias.scope !20906, !noalias !20898
  store i16 6, ptr %i.v, align 2, !noalias !20905
  %i.az = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.x

bb.r:                                             ; preds = %bb.k
  br i1 %i.z, label %.invoke, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i46.i.i.i.i", !prof !169

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i46.i.i.i.i": ; preds = %bb.r
  store ptr null, ptr %i.y, align 8, !noalias !20910
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20914)
  %i.bb = load i16, ptr %i.v, align 2, !noalias !20917, !noundef !15
  %i.bc = zext i16 %i.bb to i64
  %i.bd = add nsw i64 %i.bc, -6                   ; 4 uses
  %i.be = trunc i64 %i.bd to i16
  store i16 %i.be, ptr %i.ba, align 2, !alias.scope !20914, !noalias !20910
  %i.bf = icmp ult i64 %i.bd, 12
  br i1 %i.bf, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit50.i.i.i.i", label %bb.s, !prof !206

bb.s:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i46.i.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bd, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #54
          to label %.noexc.i49.i.i.i.i unwind label %bb.t, !noalias !20910

.noexc.i49.i.i.i.i:                               ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit50.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i46.i.i.i.i"
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 17
  %i.bi = load i8, ptr %i.bh, align 1, !range !2843, !noalias !20917, !noundef !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bk = getelementptr i8, ptr %.sroa.0.0.i.i.i, i64 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull readonly align 2 %i.bk, i64 range(i64 0, 65536) %i.bd, i1 false), !alias.scope !20918, !noalias !20910
  store i16 5, ptr %i.v, align 2, !noalias !20917
  br label %bb.x

bb.u:                                             ; preds = %bb.k
  br i1 %i.z, label %.invoke, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i51.i.i.i.i", !prof !169

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i51.i.i.i.i": ; preds = %bb.u
  store ptr null, ptr %i.y, align 8, !noalias !20922
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20926)
  %i.bm = load i16, ptr %i.v, align 2, !noalias !20929, !noundef !15
  %i.bn = zext i16 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, -6                   ; 4 uses
  %i.bp = trunc i64 %i.bo to i16                  ; 2 uses
  store i16 %i.bp, ptr %i.bl, align 2, !alias.scope !20926, !noalias !20922
  %i.bq = icmp ult i64 %i.bo, 12
  br i1 %i.bq, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h2df55ed443f96346E.exit55.i.i.i.i", label %bb.v, !prof !206

bb.v:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i51.i.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bo, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #54
          to label %.noexc.i54.i.i.i.i unwind label %bb.w, !noalias !20922

.noexc.i54.i.i.i.i:                               ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

end_hunk_2
