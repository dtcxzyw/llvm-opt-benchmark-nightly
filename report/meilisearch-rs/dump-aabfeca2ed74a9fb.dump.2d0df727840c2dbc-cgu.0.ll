Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17h38ff5639e4f88548E:bb.a

.body.i.i.i.i:                                    ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17hb6ebb0d21444dcaaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #43, !noalias !58059
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43, !noalias !58056
  br label %common.resume.i

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.n, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !58060

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  %.pre.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !58061, !noalias !58056
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !58061, !noalias !58056
  br label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %bb.d
  %i.u = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.pre.i.i.i.i, %.noexc.i.i.i.i.i ]
  %i.v = phi i64 [ 0, %bb.d ], [ %.pre.i.i.i.i.i.i, %.noexc.i.i.i.i.i ] ; 3 uses
  %i.w = icmp ult i64 %i.v, 384307168202282326
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull readonly align 8 %i.i, i64 %i.m, i1 false), !noalias !58062
  %i.y = add nuw nsw i64 %i.v, %i.n
  store i64 %i.y, ptr %i.s, align 8, !alias.scope !58061, !noalias !58056
  %i.z = mul nuw i64 %i.p, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !58063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !58064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58056
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !58048
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he2e1e410ac42ebe1E.exit.i

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.i, i64 %i.m, i1 false), !noalias !58056
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.pre-phi6.i.i.i.i = phi i64 [ %i.n, %bb.f ], [ %.pre5.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.b ]
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.f, align 8, !alias.scope !58065, !noalias !58048
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.aa, align 8, !alias.scope !58065, !noalias !58048
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.pre-phi6.i.i.i.i, ptr %i.ab, align 8, !alias.scope !58065, !noalias !58048
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he2e1e410ac42ebe1E.exit.i

_ZN4core4iter6traits8iterator8Iterator7collect17he2e1e410ac42ebe1E.exit.i: ; preds = %bb.g, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i"
  %i.ac = phi i64 [ %.pre.i, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i" ], [ %.pre-phi6.i.i.i.i, %bb.g ] ; 7 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i.i", label %bb.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he2e1e410ac42ebe1E.exit.i
  store ptr null, ptr %0, align 8, !alias.scope !58046
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !58046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58066)
  %.val2.i.i = load i64, ptr %i.f, align 8, !range !23, !alias.scope !58066, !noalias !58048, !noundef !21 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i, 0
  br i1 %i.af, label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf021fdc297360ad4E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i.i"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !58066, !noalias !58048, !nonnull !21, !noundef !21
  %i.ah = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !58067
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf021fdc297360ad4E.exit"

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he2e1e410ac42ebe1E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !58048, !nonnull !21, !noundef !21 ; 5 uses
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %bb.m, label %bb.j, !prof !26

bb.j:                                             ; preds = %bb.i
  %i.al = icmp samesign ult i64 %i.ac, 21
  br i1 %i.al, label %bb.l, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb9285367ba39bd98E(ptr noalias noundef nonnull align 8 %i.aj, i64 noundef range(i64 1, 384307168202282326) %i.ac, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.m unwind label %bb.ao, !noalias !58048

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc43e24d049e58c2aE(ptr noalias noundef nonnull align 8 %i.aj, i64 noundef range(i64 1, 384307168202282326) %i.ac)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58048
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !58048
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.aj, ptr %i.e, align 8, !alias.scope !58068, !noalias !58048
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.an, align 8, !alias.scope !58068, !noalias !58048
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.aj, ptr %i.ao, align 8, !alias.scope !58068, !noalias !58048
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.am, ptr %i.ap, align 8, !alias.scope !58068, !noalias !58048
  call void @llvm.experimental.noalias.scope.decl(metadata !58069)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !58070
  %i.aq = call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !58070 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.n, label %.loopexit81.i.i.i.i, !prof !19

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #41
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !58070

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

.loopexit81.i.i.i.i:                              ; preds = %bb.m
  store ptr null, ptr %i.aq, align 8, !noalias !58070
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 274
  store i16 0, ptr %i.as, align 2, !noalias !58070
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %.sroa.4.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !58071, !noalias !58072
  %.sroa.481.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.481.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i, i64 48, i1 false), !noalias !58070
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i.i.i, %.loopexit81.i.i.i.i
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.loopexit81.i.i.i.i ], [ %i.hz, %.loopexit.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i = phi i64 [ 0, %.loopexit81.i.i.i.i ], [ %.sroa.8.2.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.aq, %.loopexit81.i.i.i.i ], [ %.sroa.0.2.i.i.i, %.loopexit.i.i.i.i ] ; 10 uses
  %.promoted.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit81.i.i.i.i ], [ %.promoted.i.pre135.i82.i.i.i, %.loopexit.i.i.i.i ]
  %.sroa.0.070.i.i.i.i = phi ptr [ %i.aq, %.loopexit81.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %.loopexit.i.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58074)
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !58074, !noalias !58073, !nonnull !21 ; 4 uses
  %.promoted62.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !58074, !noalias !58073
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i.i.i, align 8, !alias.scope !58074, !noalias !58073
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !58074, !noalias !58073
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i"

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i": ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge", %bb.o
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i, %bb.o ], [ %.sroa.7.sroa.6.051.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.o ], [ %.val12.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge" ]
  %i.aw = phi ptr [ %.promoted62.i.i.i.i.i, %bb.o ], [ %i.bb, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge" ] ; 8 uses
  %.sroa.0.0.copyload1.i.i.i61.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.o ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge" ] ; 2 uses
  store i64 -9223372036854775807, ptr %i.c, align 8, !alias.scope !58074, !noalias !58073
  switch i64 %.sroa.0.0.copyload1.i.i.i61.i.i.i.i.i, label %bb.q [
    i64 -9223372036854775807, label %bb.p
    i64 -9223372036854775808, label %bb.v
  ]

bb.p:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !58075)
  call void @llvm.experimental.noalias.scope.decl(metadata !58076)
  %i.ax = icmp eq ptr %i.aw, %i.av
  br i1 %i.ax, label %bb.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i": ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.au, align 8, !alias.scope !58077, !noalias !58073
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !58078 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.7.sroa.0.0.copyload33.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !58079
  %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.7.sroa.6.0.copyload34.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !58079
  br label %bb.q

bb.q:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i", %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i"
  %i.az = phi ptr [ %i.ay, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i" ], [ %i.aw, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i" ] ; 4 uses
  %.sroa.030.052.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i" ], [ %.sroa.0.0.copyload1.i.i.i61.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i" ] ; 7 uses
  %.sroa.7.sroa.6.051.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload34.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i" ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i" ] ; 5 uses
  %.sroa.7.sroa.0.050.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload33.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb394693b42e26ecE.exit.thread45.i.i.i.i.i" ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i" ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58080)
  call void @llvm.experimental.noalias.scope.decl(metadata !58081)
  call void @llvm.experimental.noalias.scope.decl(metadata !58082)
  call void @llvm.experimental.noalias.scope.decl(metadata !58083)
  call void @llvm.experimental.noalias.scope.decl(metadata !58084)
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %bb.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  store ptr %i.bb, ptr %i.au, align 8, !alias.scope !58085, !noalias !58073
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !58086 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !58087, !noalias !58073
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.481.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !58088
  %i.bc = icmp ne i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %.val13.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !58074, !noalias !58073, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.050.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7.sroa.6.051.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbb9e3be221d53568E.exit.i.i.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01f5f6cd3918f601E.exit.i.i.i.i"

bb.s:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i.i.i", %bb.q
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !58087, !noalias !58073
  br label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01f5f6cd3918f601E.exit.i.i.i.i"

_ZN4core3cmp9PartialEq2ne17hbb9e3be221d53568E.exit.i.i.i.i.i: ; preds = %bb.r
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i.i.i, align 8, !alias.scope !58074, !noalias !58073, !nonnull !21, !noundef !21 ; 2 uses
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.7.sroa.0.050.i.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i.i, i64 %.sroa.7.sroa.6.051.i.i.i.i.i), !alias.scope !58089, !noalias !58090
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01f5f6cd3918f601E.exit.i.i.i.i"

bb.t:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbb9e3be221d53568E.exit.i.i.i.i.i
  %i.bd = icmp eq i64 %.sroa.030.052.i.i.i.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.050.i.i.i.i.i, i64 noundef %.sroa.030.052.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !58091
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge"

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i.backedge": ; preds = %bb.u, %bb.t
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i"

.body.i.i.i6.i.sink.split:                        ; preds = %bb.am, %bb.ah
  %.pn.i.i.i.i.ph = phi { ptr, i32 } [ %i.ey, %bb.ah ], [ %i.il, %bb.am ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.050.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.050.i.i.i.i.i, i64 noundef %.sroa.030.052.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !58073
  br label %.body.i.i.i6.i

.body.i.i.i6.i:                                   ; preds = %.body.i.i.i6.i.sink.split, %bb.am, %bb.ah
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.ah ], [ %i.il, %bb.am ], [ %.pn.i.i.i.i.ph, %.body.i.i.i6.i.sink.split ]
  call fastcc void @"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E"(ptr noalias noundef align 8 dereferenceable(56) %i.c) #43, !noalias !58073
  br label %common.resume.i

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01f5f6cd3918f601E.exit.i.i.i.i": ; preds = %_ZN4core3cmp9PartialEq2ne17hbb9e3be221d53568E.exit.i.i.i.i.i, %bb.r, %bb.s
  %.promoted.i.pre135.i82.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbb9e3be221d53568E.exit.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i.i, i64 274 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !58073, !noundef !21 ; 3 uses
  %i.bg = icmp ult i16 %i.bf, 11
  br i1 %i.bg, label %bb.al, label %.preheader.i.i.i.i

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i", %bb.p, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i"
  %i.bh = phi ptr [ %i.aw, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hc67ccd9a477979a7E.exit19.i.i.i.i.i" ], [ %i.ay, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f81cd745d0ab98E.exit.i.i.i.i.i.i" ], [ %i.aw, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58092)
  call void @llvm.experimental.noalias.scope.decl(metadata !58093)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !58094)
  call void @llvm.experimental.noalias.scope.decl(metadata !58095)
  call void @llvm.experimental.noalias.scope.decl(metadata !58096)
  %i.bj = ptrtoint ptr %i.av to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = udiv exact i64 %i.bl, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !58097)
  %i.bn = icmp eq ptr %i.av, %i.bh
  br i1 %i.bn, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.v ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bp = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58098)
  call void @llvm.experimental.noalias.scope.decl(metadata !58099)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !range !23, !alias.scope !58100, !noalias !58101, !noundef !21 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !58100, !noalias !58101, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !58102
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bs = icmp eq i64 %i.bp, %i.bm
  br i1 %i.bs, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i", %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !58103, !noalias !58073, !noundef !21 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E.exit.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i.i.i"
  %i.bw = load ptr, ptr %i.bi, align 8, !alias.scope !58103, !noalias !58073, !nonnull !21, !noundef !21
  %i.bx = mul nuw i64 %i.bu, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !58101
  br label %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E.exit.i.i.i.i"

"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E.exit.i.i.i.i": ; preds = %bb.x, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h9b8eadee2b50b6e3E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58073
  %i.by = icmp eq i64 %.sroa.8.0.i.i.i, 0
  br i1 %i.by, label %.loopexit.i, label %.lr.ph.i16.preheader.i.i.i.i

.lr.ph.i16.preheader.i.i.i.i:                     ; preds = %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  br label %.lr.ph.i16.i.i.i.i

.lr.ph.i16.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i", %.lr.ph.i16.preheader.i.i.i.i
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %i.cg, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i, %.lr.ph.i16.preheader.i.i.i.i ]
  %.sroa.03.09.i.i.i.i.i = phi ptr [ %i.cj, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i, %.lr.ph.i16.preheader.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 274
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !58073, !noundef !21 ; 3 uses
  %.not.i17.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i17.i.i.i.i, label %.noexc.i.i.i.i, label %bb.y, !prof !19

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i16.i.i.i.i
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1620, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1622) #41, !noalias !58048
  unreachable

bb.y:                                             ; preds = %.lr.ph.i16.i.i.i.i
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 280
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !58104, !nonnull !21, !noundef !21 ; 3 uses
  %i.cg = add i64 %.sroa.02.010.i.i.i.i.i, -1     ; 3 uses
  %i.ch = icmp ult i16 %i.ca, 12
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !58105, !nonnull !21, !noundef !21 ; 15 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 274 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !noalias !58073, !noundef !21 ; 3 uses
  %i.cm = icmp ult i16 %i.cl, 5
  br i1 %i.cm, label %bb.z, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.loopexit.i.i.i.i.i", %bb.y
  %i.cn = icmp eq i64 %i.cg, 0
  br i1 %i.cn, label %.loopexit.i, label %.lr.ph.i16.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %narrow.i.i.i.i.i = sub nuw nsw i16 5, %i.cl    ; 2 uses
  %i.co = zext nneg i16 %narrow.i.i.i.i.i to i64  ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 274 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !noalias !58106, !noundef !21 ; 2 uses
  %i.cr = zext nneg i16 %i.cl to i64              ; 2 uses
  %.not.i.i18.i.i.i.i = icmp ugt i16 %narrow.i.i.i.i.i, %i.cq
  br i1 %.not.i.i18.i.i.i.i, label %.noexc19.i.i.i.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h480d903f80b1e221E.exit.i.i.i.i.i.i, !prof !19

.noexc19.i.i.i.i:                                 ; preds = %bb.z
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1636, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1637) #41, !noalias !58048
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h480d903f80b1e221E.exit.i.i.i.i.i.i: ; preds = %bb.z
  %i.cs = zext i16 %i.cq to i64                   ; 2 uses
  %i.ct = sub nuw nsw i64 %i.cs, %i.co            ; 3 uses
  %i.cu = trunc nuw i64 %i.ct to i16
  store i16 %i.cu, ptr %i.cp, align 2, !noalias !58106
  store i16 5, ptr %i.ck, align 2, !noalias !58106
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.co
  %i.cx = mul nuw nsw i64 %i.cr, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cv, i64 %i.cx, i1 false), !alias.scope !58107, !noalias !58106
  %i.cy = add nuw nsw i64 %i.ct, 1                ; 3 uses
  %i.cz = sub nuw nsw i64 %i.cs, %i.cy            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cy
  %i.dc = mul nuw nsw i64 %i.cz, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr nonnull readonly align 8 %i.db, i64 %i.dc, i1 false), !alias.scope !58108, !noalias !58106
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.ct
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 8
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.cc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !58106
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !58106
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !58106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %cond.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %cond.i.i.i.i.i, label %.loopexit.i, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.loopexit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.loopexit.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h480d903f80b1e221E.exit.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 280 ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.co
  %i.dj = shl nuw nsw i64 %i.cr, 3
  %i.dk = add nuw nsw i64 %i.dj, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.dk, i1 false), !alias.scope !58109, !noalias !58106
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cf, i64 280
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.cy
  %i.dn = shl nuw nsw i64 %i.co, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.dm, i64 %i.dn, i1 false), !alias.scope !58110, !noalias !58106
  %i.do = load ptr, ptr %i.dh, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.do, align 8, !noalias !58112
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  store i16 0, ptr %i.dp, align 8, !noalias !58112
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cj, i64 288
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.dr, align 8, !noalias !58112
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 272
  store i16 1, ptr %i.ds, align 8, !noalias !58112
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 296
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.du, align 8, !noalias !58112
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 272
  store i16 2, ptr %i.dv, align 8, !noalias !58112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cj, i64 304
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.dx, align 8, !noalias !58112
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 272
  store i16 3, ptr %i.dy, align 8, !noalias !58112
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.ea, align 8, !noalias !58112
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  store i16 4, ptr %i.eb, align 8, !noalias !58112
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 320
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !58111, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.cj, ptr %i.ed, align 8, !noalias !58112
end_hunk_0
begin_hunk_1_@_ZN4time10formatting22format_number_pad_zero17hec897a6c54cc1f2eE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.z, i64 %i.u, i1 false), !noalias !77690
  %i.ae = add nuw i64 %i.y, %i.u
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !77690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.af = phi i64 [ %.pre24, %.lr.ph ], [ %i.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ag = phi i64 [ %.pre, %.lr.ph ], [ %i.an, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77694)
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.af, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !77695
  %.pre.i.i.i.i18 = load i64, ptr %i.p, align 8, !alias.scope !77696
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !77684
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ai = phi i64 [ %i.af, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.aj = phi i64 [ %i.ag, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.q, align 8, !alias.scope !77696, !nonnull !21, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 48, ptr %i.am, align 1, !noalias !77696
  %i.an = add nuw i64 %i.aj, 1                    ; 3 uses
  store i64 %i.an, ptr %i.p, align 8, !alias.scope !77696
  %i.ao = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !range !46, !noundef !21
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !77700, !noundef !21 ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) @1591, i64 noundef %i.j, i32 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1594)
  br label %bb.f

_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !77701)
  call void @llvm.experimental.noalias.scope.decl(metadata !77702)
  %i.m = urem i64 %i.j, 60
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60
  %i.p = udiv i64 %i.j, 3600
  %i.q = urem i64 %i.p, 24
  %i.r = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread
  %i.s = udiv i64 %i.j, 86400
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 2440588) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  %i.x = add nsw i32 %i.w, -5373485
  %or.cond.i.i.i = icmp ult i32 %i.x, -7304484
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i, !prof !76

_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i: ; preds = %bb.d
  %i.y = add nuw nsw i32 %i.w, 867409993          ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 3853261555        ; 2 uses
  %i.ab = lshr i64 %i.aa, 15
  %i.ac = lshr i64 %i.aa, 47
  %i.ad = trunc nuw nsw i64 %i.ac to i32          ; 3 uses
  %i.ae = trunc i64 %i.ab to i32
  %i.af = icmp ugt i32 %i.ae, 42920275
  %i.ag = and i32 %i.ad, 3
  %i.ah = icmp eq i32 %i.ag, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.af, %i.ah         ; 2 uses
  %i.ai = lshr i32 %i.ad, 2
  %i.aj = add nuw nsw i32 %i.y, %i.ad
  %i.ak = sub nuw nsw i32 %i.aj, %i.ai
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 3010298776       ; 2 uses
  %i.an = lshr i64 %i.am, 8
  %i.ao = lshr i64 %i.am, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32          ; 2 uses
  %i.aq = and i64 %i.an, 4294967295
  %i.ar = mul nuw nsw i64 %i.aq, 1461
  %i.as = lshr i64 %i.ar, 34
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.av = add nuw nsw i32 %i.at, %i.au
  %i.aw = and i32 %i.ap, 3
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = and i1 %.sroa.0.0.i.i.i.i, %i.ax
  %i.az = shl nuw i32 %i.ap, 10
  %i.ba = add nsw i32 %i.az, 1858256896
  %i.bb = select i1 %i.ay, i32 512, i32 0
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = or i32 %i.bc, %i.av
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %i.q, 48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %i.o, 40
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %i.m, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %i.l to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.be, ptr noundef nonnull align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @1591, i64 12), i64 3, i1 false), !alias.scope !77703
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %0, align 4, !alias.scope !77701
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !77701
  br label %bb.f

bb.e:                                             ; preds = %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread, %bb.d, %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1593) #41, !noalias !77703
  unreachable

bb.f:                                             ; preds = %_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN4time5serde7rfc33396option9serialize17he7c56a6f96b82f4dE(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %i.e = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.622.0.copyload = load i64, ptr %.sroa.622.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.c, ptr noundef nonnull align 4 dereferenceable(7) %0, i64 7, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.622.0.copyload, ptr %.sroa.3.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.f, align 4
  call fastcc void @_ZN4time10formatting11formattable6sealed6Sealed6format17h065728b92f5e76f5E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef align 4 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.017.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.618.sroa.0.0.copyload = load i64, ptr %.sroa.618.0..sroa_idx, align 8 ; 6 uses
  %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.618.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.618.sroa.7.sroa.7.0..sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.618.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.618.sroa.7.sroa.7.0..sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.g = trunc nuw i64 %.sroa.017.0.copyload to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %.sroa.618.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 %.sroa.618.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.616.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.618.sroa.7.sroa.0.0.copyload, ptr %.sroa.616.sroa.8.0..sroa_idx35, align 8
  %.sroa.616.sroa.8.sroa.8.0..sroa.616.sroa.8.0..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.618.sroa.7.sroa.7.0.copyload, ptr %.sroa.616.sroa.8.sroa.8.0..sroa.616.sroa.8.0..sroa_idx35.sroa_idx, align 8
  %i.h = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_json..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h4d248dc595ffbd1cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70"

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.618.sroa.7.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = invoke fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.618.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.618.sroa.7.sroa.7.0.copyload)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit", label %bb.f, !prof !26

bb.f:                                             ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.i)
          to label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit" unwind label %bb.h

.thread:                                          ; preds = %bb.a, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77718)
  %i.k = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !77718, !noalias !77719, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !77718, !noalias !77719, !noundef !21 ; 4 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nsw i64 %i.k, %i.m
  %i.p = icmp ugt i64 %i.o, 4
  br i1 %i.p, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i, !prof !26

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i: ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77720)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !77721, !noalias !77719, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  store i32 1819047278, ptr %i.s, align 1, !noalias !77721
  %i.t = add nuw i64 %i.m, 4
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !77721, !noalias !77719
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i: ; preds = %.thread
  %i.u = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4) ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70", label %bb.g, !prof !28

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i
  %i.v = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.u)
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70"

bb.h:                                             ; preds = %bb.f, %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %cond21 = icmp eq i64 %.sroa.618.sroa.0.0.copyload, 0
  br i1 %cond21, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.618.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !77722
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit": ; preds = %.noexc, %bb.f
  %.sroa.0.0 = phi ptr [ %i.j, %bb.f ], [ null, %.noexc ] ; 2 uses
  %cond = icmp eq i64 %.sroa.618.sroa.0.0.copyload, 0
  br i1 %cond, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70", label %bb.j

bb.j:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.618.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !77723
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit70": ; preds = %bb.g, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i, %bb.j, %bb.d
  %.sroa.0.1 = phi ptr [ %i.h, %bb.d ], [ %.sroa.0.0, %bb.j ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i ], [ %.sroa.0.0, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd257b6d015acf413E.exit" ], [ %i.v, %bb.g ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i ]
  ret ptr %.sroa.0.1

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit": ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN4uuid8external13serde_support67_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$uuid..Uuid$GT$9serialize17ha0a722506449a2ecE"(ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [45 x i8], align 1                ; 40 uses
  %.sroa.05.0.copyload = load i8, ptr %0, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 1 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 1 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 1 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77730)
  %i.c = lshr i8 %.sroa.05.0.copyload, 4
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @1595, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !noalias !77731, !noundef !21
  %i.g = and i8 %.sroa.05.0.copyload, 15
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @1595, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !77731, !noundef !21
  %i.k = lshr i8 %.sroa.4.0.copyload, 4
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @1595, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !77731, !noundef !21
  %i.o = and i8 %.sroa.4.0.copyload, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @1595, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !77731, !noundef !21
  %i.s = lshr i8 %.sroa.5.0.copyload, 4
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @1595, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !77731, !noundef !21
  %i.w = and i8 %.sroa.5.0.copyload, 15
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @1595, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !77731, !noundef !21
  %i.aa = lshr i8 %.sroa.6.0.copyload, 4
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @1595, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !77731, !noundef !21
  %i.ae = and i8 %.sroa.6.0.copyload, 15
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @1595, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !77731, !noundef !21
  %i.ai = lshr i8 %.sroa.7.0.copyload, 4
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @1595, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !77731, !noundef !21
  %i.am = and i8 %.sroa.7.0.copyload, 15
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @1595, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !77731, !noundef !21
  %i.aq = lshr i8 %.sroa.8.0.copyload, 4
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @1595, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !77731, !noundef !21
  %i.au = and i8 %.sroa.8.0.copyload, 15
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @1595, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !77731, !noundef !21
  %i.ay = lshr i8 %.sroa.9.0.copyload, 4
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @1595, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !77731, !noundef !21
  %i.bc = and i8 %.sroa.9.0.copyload, 15
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !77731, !noundef !21
  %i.bg = lshr i8 %.sroa.10.0.copyload, 4
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !77731, !noundef !21
  %i.bk = and i8 %.sroa.10.0.copyload, 15
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !77731, !noundef !21
  %i.bo = lshr i8 %.sroa.11.0.copyload, 4
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !77731, !noundef !21
  %i.bs = and i8 %.sroa.11.0.copyload, 15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !77731, !noundef !21
  %i.bw = and i8 %.sroa.17.0.copyload, 15
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @1595, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !77731, !noundef !21
  %i.ca = lshr i8 %.sroa.17.0.copyload, 4
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @1595, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !77731, !noundef !21
  %i.ce = and i8 %.sroa.16.0.copyload, 15
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @1595, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !77731, !noundef !21
  %i.ci = lshr i8 %.sroa.16.0.copyload, 4
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @1595, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !77731, !noundef !21
  %i.cm = and i8 %.sroa.15.0.copyload, 15
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @1595, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !77731, !noundef !21
end_hunk_1
begin_hunk_2_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h6721c6b42cb12314E":bb.a
  %.sroa.7.031 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit.thread32" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h6c573566e4a66fd4E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.030 = phi i64 [ %i.aj, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit.thread32" ], [ %i.ah, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit" ], [ %.sroa.8.0.i.i.i59, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h6c573566e4a66fd4E.exit.i" ], [ %.sroa.8.0.i.i.i59, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.031) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.7.031, i64 276
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.14.030
  %i.an = zext i1 %2 to i8
  store i8 %i.an, ptr %i.am, align 1
  br label %bb.bd

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit.thread32"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !79444
  %i.ao = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !79444 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #41
          to label %.noexc.i unwind label %bb.bb, !noalias !79444

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.ao, align 8, !noalias !79444
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 274
  store ptr %i.ao, ptr %0, align 8, !noalias !79444
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !noalias !79444
  store i16 1, ptr %i.aq, align 2, !noalias !79445
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.as, align 8, !noalias !79446
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.518.0..sroa_idx19.i, align 8, !noalias !79446
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx21.i, align 8, !noalias !79446
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 276
  %i.au = zext i1 %2 to i8
  store i8 %i.au, ptr %i.at, align 4, !noalias !79445
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit"

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit"
  %.sink63.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sink63.i.sroa.gep121.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink62.i.sroa.gep123.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79447
  %i.av = icmp ugt i16 %i.l, 10
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !79448
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ax, align 8, !noalias !79448
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.aw, label %.invoke.i.i.i, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79449)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.m
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not, label %bb.n, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i: ; preds = %bb.m
  store i64 %.sroa.037.0.copyload.i, ptr %i.az, align 8, !alias.scope !79450, !noalias !79451
  %.sroa.934.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx37.i.i, align 8, !alias.scope !79450, !noalias !79451
  %.sroa.1143.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx46.i.i, align 8, !alias.scope !79450, !noalias !79451
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.ba = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.m, %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.az, i64 %i.bd, i1 false), !alias.scope !79452, !noalias !79453
  store i64 %.sroa.037.0.copyload.i, ptr %i.az, align 8, !alias.scope !79450, !noalias !79451
  %.sroa.934.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx35.i.i, align 8, !alias.scope !79450, !noalias !79451
  %.sroa.1143.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx44.i.i, align 8, !alias.scope !79450, !noalias !79451
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 276 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.4.0.i.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %i.bf, i64 %i.bc, i1 false), !alias.scope !79454, !noalias !79453
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.p [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.q
  ]

.invoke.i.i.i:                                    ; preds = %bb.o, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.o ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.ay, align 8, !noalias !79448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79448
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8e4e8f2bdc713c03E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !79448

bb.p:                                             ; preds = %bb.o
  store i64 6, ptr %i.ay, align 8, !noalias !79448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79448
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8e4e8f2bdc713c03E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.u, !noalias !79448

bb.q:                                             ; preds = %bb.o
  store i64 5, ptr %i.ay, align 8, !noalias !79448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79448
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8e4e8f2bdc713c03E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !79448

bb.r:                                             ; preds = %bb.p
  %i.bh = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %.sink63.i.sroa.phi.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink63.i.sroa.gep121.i.i, %bb.q ], [ %.sink63.i.sroa.gep121.i.i, %bb.r ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.q ], [ %i.bh, %bb.r ] ; 6 uses
  %i.bi = load ptr, ptr %.sink63.i.sroa.phi.i.i, align 8, !noalias !79448, !nonnull !21, !noundef !21 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 274 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !79455, !noundef !21 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79456)
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bl
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.10.0.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i, label %bb.t, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i: ; preds = %bb.s
  store i64 %.sroa.037.0.copyload.i, ptr %i.bn, align 8, !alias.scope !79457, !noalias !79458
  %.sroa.934.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx39.i.i, align 8, !alias.scope !79457, !noalias !79458
  %.sroa.1143.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx48.i.i, align 8, !alias.scope !79457, !noalias !79458
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bo = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = sub nuw nsw i64 %i.bl, %.sroa.10.0.i.i.i ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.bn, i64 %i.br, i1 false), !alias.scope !79459, !noalias !79455
  store i64 %.sroa.037.0.copyload.i, ptr %i.bn, align 8, !alias.scope !79457, !noalias !79458
  %.sroa.934.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.val.i, ptr %.sroa.934.0..sroa_idx41.i.i, align 8, !alias.scope !79457, !noalias !79458
  %.sroa.1143.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val12.i, ptr %.sroa.1143.0..sroa_idx50.i.i, align 8, !alias.scope !79457, !noalias !79458
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 276 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.10.0.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %i.bt, i64 %i.bq, i1 false), !alias.scope !79460, !noalias !79455
  br label %bb.w

.thread.i.i:                                      ; preds = %bb.n, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 276
  %i.bw = add nuw nsw i16 %i.l, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.4.0.i.ph.i.i
  %i.by = zext i1 %2 to i8
  store i8 %i.by, ptr %i.bx, align 1, !alias.scope !79454, !noalias !79453
  store i16 %i.bw, ptr %i.ag, align 2, !noalias !79453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79447
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit"

bb.u:                                             ; preds = %bb.q, %bb.p, %.invoke.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79461
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

bb.w:                                             ; preds = %bb.t, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 276
  %i.cc = add i16 %i.bk, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.10.0.i.i.i
  %i.ce = zext i1 %2 to i8
  store i8 %i.ce, ptr %i.cd, align 1, !alias.scope !79460, !noalias !79455
  store i16 %i.cc, ptr %i.bj, align 2, !noalias !79455
  %.sroa.019.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !79462 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !79462 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79462 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79462 ; 2 uses
  %.sroa.722.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i, align 8, !noalias !79462 ; 3 uses
  %.sroa.823.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !79462
  %.sroa.924.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep121.i.i, align 8, !noalias !79462 ; 3 uses
  %.sroa.1025.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep123.i.i, align 8, !noalias !79462 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79447
  %.not.i.i = icmp eq i64 %.sroa.019.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.722.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.0.copyload.i.i) ]
  %i.cf = load ptr, ptr %.sroa.722.0.copyload.i.i, align 8, !noalias !79463, !noundef !21 ; 2 uses
  %.not.i197.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i197.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.859.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.965.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.1171.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.ai

._crit_edge.i.i:                                  ; preds = %bb.az, %bb.x
  %.sroa.20.0.lcssa.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i, %bb.x ], [ %.sroa.1171.0.copyload73.i.i, %bb.az ]
  %.sroa.16.0.lcssa.i.i = phi ptr [ %.sroa.924.0.copyload.i.i, %bb.x ], [ %.sroa.1068.0.i.i, %bb.az ] ; 3 uses
  %.sroa.913.0.lcssa.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.7.0.i.i, %bb.az ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.6.0.i.i, %bb.az ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.x ], [ %.sroa.859.sroa.0.0.i.i, %bb.az ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.019.0.copyload.i.i, %bb.x ], [ %.sroa.056.0.i.i, %bb.az ] ; 5 uses
  %i.cj = load ptr, ptr %0, align 8, !noalias !79464, !noundef !21 ; 4 uses
  %.not.i19.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i19.i.i, label %bb.y, label %bb.aa, !prof !19

bb.y:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1624) #41
          to label %bb.z unwind label %bb.ag, !noalias !79464

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79465)
  %i.ck = load i64, ptr %i.f, align 8, !alias.scope !79465, !noalias !79464, !noundef !21 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !79466
  %i.cl = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !79466 ; 12 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ab, label %bb.ad, !prof !19

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #41
          to label %.noexc.i.i.i.i unwind label %bb.ac, !noalias !79466

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aa
  store ptr null, ptr %i.cl, align 8, !noalias !79466
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 274 ; 2 uses
  store i16 0, ptr %i.co, align 2, !noalias !79466
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  store ptr %i.cj, ptr %i.cp, align 8, !noalias !79466
  %i.cq = add i64 %i.ck, 1
  store ptr %i.cl, ptr %i.cj, align 8, !noalias !79467
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  store i16 0, ptr %i.cr, align 8, !noalias !79468
  store ptr %i.cl, ptr %0, align 8, !alias.scope !79465, !noalias !79464
  store i64 %i.cq, ptr %i.f, align 8, !alias.scope !79465, !noalias !79464
  %i.cs = icmp eq i64 %.sroa.20.0.lcssa.i.i, %i.ck
  br i1 %i.cs, label %bb.ba, label %.invoke.i.i.i.i, !prof !26

.invoke.i.i.i.i:                                  ; preds = %bb.ad
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1627, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #41
          to label %.cont.i.i.i.i unwind label %bb.ae, !noalias !79469

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ae:                                            ; preds = %.invoke.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79470
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

bb.ag:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79471
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

bb.ai:                                            ; preds = %bb.az, %.lr.ph.i.i
  %i.cx = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.jt, %bb.az ] ; 13 uses
  %.sroa.03.0205.i.i = phi i64 [ %.sroa.019.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.056.0.i.i, %bb.az ] ; 8 uses
  %.sroa.8.0204.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.0.0.i.i, %bb.az ] ; 8 uses
  %.sroa.9.0203.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.6.0.i.i, %bb.az ] ; 6 uses
  %.sroa.913.0202.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.859.sroa.7.0.i.i, %bb.az ] ; 6 uses
  %.sroa.1016.0201.i.i = phi ptr [ %.sroa.722.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.862.0.i.i, %bb.az ]
  %.sroa.13.0200.i.i = phi i64 [ %.sroa.823.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.965.0.i.i, %bb.az ] ; 2 uses
  %.sroa.16.0199.i.i = phi ptr [ %.sroa.924.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1068.0.i.i, %bb.az ] ; 3 uses
  %.sroa.20.0198.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1171.0.copyload73.i.i, %bb.az ]
  %i.cy = add i64 %.sroa.13.0200.i.i, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.1016.0201.i.i, i64 272
  %i.da = load i16, ptr %i.cz, align 8, !noalias !79463 ; 5 uses
  %i.db = zext i16 %i.da to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79447
  %i.dc = icmp eq i64 %.sroa.20.0198.i.i, %.sroa.13.0200.i.i
  br i1 %i.dc, label %bb.ak, label %bb.aj, !prof !26

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1634, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #41
          to label %bb.al unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !79472

bb.ak:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 274
  %i.de = load i16, ptr %i.dd, align 2, !noalias !79472, !noundef !21 ; 4 uses
  %i.df = icmp ult i16 %i.de, 11
  br i1 %i.df, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dg = icmp ult i16 %i.da, 5
  store ptr %i.cx, ptr %i.b, align 8, !noalias !79472
  store i64 %i.cy, ptr %i.cg, align 8, !noalias !79472
  br i1 %i.dg, label %.invoke.i29.i.i, label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 274
  %i.di = zext nneg i16 %i.de to i64              ; 4 uses
  %i.dj = add nuw nsw i16 %i.de, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79473)
  %i.dl = add nuw nsw i64 %i.db, 1                ; 7 uses
  %.not.i.i31.not.i.i = icmp ult i16 %i.da, %i.de
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.db ; 7 uses
  br i1 %.not.i.i31.not.i.i, label %bb.ao, label %_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i.i.i.i: ; preds = %bb.an
  store i64 %.sroa.03.0205.i.i, ptr %i.dm, align 8, !alias.scope !79474, !noalias !79475
  %.sroa.1180.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx89.i.i, align 8, !alias.scope !79474, !noalias !79475
  %.sroa.14.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx99.i.i, align 8, !alias.scope !79474, !noalias !79475
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 276
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.db
  store i8 %.sroa.913.0202.i.i, ptr %i.do, align 1, !alias.scope !79476, !noalias !79477
  br label %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dl
  %i.dq = sub nuw nsw i64 %i.di, %i.db            ; 3 uses
  %i.dr = mul nuw nsw i64 %i.dq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dm, i64 %i.dr, i1 false), !alias.scope !79478, !noalias !79477
  store i64 %.sroa.03.0205.i.i, ptr %i.dm, align 8, !alias.scope !79474, !noalias !79475
  %.sroa.1180.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx87.i.i, align 8, !alias.scope !79474, !noalias !79475
  %.sroa.14.0..sroa_idx97.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx97.i.i, align 8, !alias.scope !79474, !noalias !79475
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 276 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.db ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dt, i64 %i.dq, i1 false), !alias.scope !79476, !noalias !79477
  store i8 %.sroa.913.0202.i.i, ptr %i.dt, align 1, !alias.scope !79476, !noalias !79477
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 288 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dl
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.db
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = shl nuw nsw i64 %i.dq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dw, i64 %i.dz, i1 false), !alias.scope !79479, !noalias !79477
  br label %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i.i.i.i: ; preds = %bb.ao, %_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 288 ; 6 uses
  %i.eb = add nuw nsw i64 %i.di, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dl
  store ptr %.sroa.16.0199.i.i, ptr %i.ec, align 8, !alias.scope !79479, !noalias !79477
  store i16 %i.dj, ptr %i.dh, align 2, !noalias !79477
  %i.ed = icmp samesign ult i64 %i.dl, %i.eb
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.preheader, label %.thread142.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i.i.i.i
  %i.ee = add nuw nsw i64 %i.di, 1
  %i.ef = sub nsw i64 %i.ee, %i.db
  %i.eg = sub nsw i64 %i.di, %i.db
  %xtraiter125 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dl, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
end_hunk_2
begin_hunk_3_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h6721c6b42cb12314E":bb.a
  store ptr %i.fj, ptr %i.gu, align 8, !noalias !79488
  %i.gv = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 272
  store i16 %i.gv, ptr %i.gw, align 8, !noalias !79488
  %i.gx = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gs
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !79487, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fj, ptr %i.gz, align 8, !noalias !79488
  %i.ha = trunc nuw nsw i64 %i.gs to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  store i16 %i.ha, ptr %i.hb, align 8, !noalias !79488
  %i.hc = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gx
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !79487, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fj, ptr %i.he, align 8, !noalias !79488
  %i.hf = trunc nuw nsw i64 %i.gx to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 272
  store i16 %i.hf, ptr %i.hg, align 8, !noalias !79488
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 4 ; 2 uses
  %i.hi = icmp ult i64 %.sroa.0.06.i.i44.i.i.i, 9
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hc
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !79487, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fj, ptr %i.hk, align 8, !noalias !79488
  %i.hl = trunc nuw nsw i64 %i.hc to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 272
  store i16 %i.hl, ptr %i.hm, align 8, !noalias !79488
  %exitcond.not.i.i45.i.i.i.3 = icmp eq i64 %i.hh, %i.gf
  br i1 %exitcond.not.i.i45.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i", label %.lr.ph.i.i43.i.i.i

bb.au:                                            ; preds = %bb.aw, %bb.ar
  %.sroa.10.1.i.i.i = phi i64 [ %i.jr, %bb.aw ], [ 0, %bb.ar ] ; 9 uses
  %i.hn = load ptr, ptr %i.ci, align 8, !noalias !79472, !nonnull !21, !noundef !21 ; 12 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 274 ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2, !noalias !79489, !noundef !21 ; 2 uses
  %i.hq = zext i16 %i.hp to i64                   ; 5 uses
  %i.hr = add i16 %i.hp, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.ht = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 7 uses
  %.not.i48.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.hq
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i, label %bb.av, label %_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i49.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i49.i.i.i: ; preds = %bb.au
  store i64 %.sroa.03.0205.i.i, ptr %i.hu, align 8, !noalias !79483
  %.sroa.1180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx.i.i, align 8, !noalias !79483
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !79483
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 276
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.10.1.i.i.i
  store i8 %.sroa.913.0202.i.i, ptr %i.hw, align 1, !alias.scope !79490, !noalias !79489
  br label %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i50.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ht
  %i.hy = sub nuw nsw i64 %i.hq, %.sroa.10.1.i.i.i ; 3 uses
  %i.hz = mul nuw nsw i64 %i.hy, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hu, i64 %i.hz, i1 false), !alias.scope !79491, !noalias !79489
  store i64 %.sroa.03.0205.i.i, ptr %i.hu, align 8, !noalias !79483
  %.sroa.1180.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %.sroa.8.0204.i.i, ptr %.sroa.1180.0..sroa_idx81.i.i, align 8, !noalias !79483
  %.sroa.14.0..sroa_idx91.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i64 %.sroa.9.0203.i.i, ptr %.sroa.14.0..sroa_idx91.i.i, align 8, !noalias !79483
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 276 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.10.1.i.i.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ht
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %i.ib, i64 %i.hy, i1 false), !alias.scope !79490, !noalias !79489
  store i8 %.sroa.913.0202.i.i, ptr %i.ib, align 1, !alias.scope !79490, !noalias !79489
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 288 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ht
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.sroa.10.1.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.ie, i64 %i.ih, i1 false), !alias.scope !79492, !noalias !79489
  br label %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i50.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i50.i.i.i: ; preds = %bb.av, %_ZN5alloc11collections5btree4node12slice_insert17hdff7e7817a5f0c53E.exit.i49.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hn, i64 288 ; 6 uses
  %i.ij = add nuw nsw i64 %i.hq, 2                ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ht
  store ptr %.sroa.16.0199.i.i, ptr %i.ik, align 8, !alias.scope !79492, !noalias !79489
  store i16 %i.hr, ptr %i.ho, align 2, !noalias !79489
  %i.il = icmp samesign ult i64 %i.ht, %i.ij
  br i1 %i.il, label %.lr.ph.i.i51.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i"

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i50.i.i.i
  %i.im = add nuw nsw i64 %i.hq, 1
  %i.in = sub nsw i64 %i.im, %.sroa.10.1.i.i.i
  %i.io = sub nsw i64 %i.hq, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.in, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol

.lr.ph.i.i51.i.i.i.prol:                          ; preds = %.lr.ph.i.i51.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.prol = phi i64 [ %i.ip, %.lr.ph.i.i51.i.i.i.prol ], [ %i.ht, %.lr.ph.i.i51.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.preheader ]
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.prol, 1 ; 2 uses
  %i.iq = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i52.i.i.i.prol
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !79493, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hn, ptr %i.is, align 8, !noalias !79494
  %i.it = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.prol to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 272
  store i16 %i.it, ptr %i.iu, align 8, !noalias !79494
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol, !llvm.loop !79424

.lr.ph.i.i51.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i51.i.i.i.prol, %.lr.ph.i.i51.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.ip, %.lr.ph.i.i51.i.i.i.prol ]
  %i.iv = icmp ult i64 %i.io, 3
  br i1 %i.iv, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i", label %.lr.ph.i.i51.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i
  %.sroa.0.06.i.i52.i.i.i = phi i64 [ %i.jl, %.lr.ph.i.i51.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 7 uses
  %i.iw = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i52.i.i.i
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !79493, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hn, ptr %i.iy, align 8, !noalias !79494
  %i.iz = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i to i16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 272
  store i16 %i.iz, ptr %i.ja, align 8, !noalias !79494
  %i.jb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 2 ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.iw
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !79493, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hn, ptr %i.jd, align 8, !noalias !79494
  %i.je = trunc nuw nsw i64 %i.iw to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 272
  store i16 %i.je, ptr %i.jf, align 8, !noalias !79494
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jb
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !79493, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hn, ptr %i.ji, align 8, !noalias !79494
  %i.jj = trunc nuw nsw i64 %i.jb to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 272
  store i16 %i.jj, ptr %i.jk, align 8, !noalias !79494
  %i.jl = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 4 ; 2 uses
  %i.jm = icmp ult i64 %.sroa.0.06.i.i52.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !79493, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hn, ptr %i.jo, align 8, !noalias !79494
  %i.jp = trunc nuw nsw i64 %i.jg to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 272
  store i16 %i.jp, ptr %i.jq, align 8, !noalias !79494
  %exitcond.not.i.i53.i.i.i.3 = icmp eq i64 %i.jl, %i.ij
  br i1 %exitcond.not.i.i53.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i", label %.lr.ph.i.i51.i.i.i

bb.aw:                                            ; preds = %bb.aq
  %i.jr = add nsw i64 %i.db, -7
  br label %bb.au

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i50.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.859.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.859.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.862.0.copyload.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.965.0.copyload.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !79495
  br label %bb.ay

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i42.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.859.sroa.6.0.copyload119.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.859.sroa.7.0.copyload120.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.965.0.copyload67.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !79495
  %.sroa.1068.0.copyload70.i.i = load ptr, ptr %i.ci, align 8, !noalias !79495
  br label %bb.ay

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i, %bb.aq, %bb.ar, %bb.aj
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = icmp eq i64 %.sroa.03.0205.i.i, 0
  br i1 %i.js, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i, i64 noundef %.sroa.03.0205.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79496
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

.thread142.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h76c1ab38dc5ddeabE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79447
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit"

bb.ay:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i"
  %.sroa.1068.0.i.i = phi ptr [ %i.hn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i = phi i64 [ %.sroa.965.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %.sroa.965.0.copyload67.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ]
  %.sroa.862.0.i.i = phi ptr [ %.sroa.862.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %i.fj, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit55.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb2ec9fc7ab3c7362E.exit47.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i = load i64, ptr %i.a, align 8, !noalias !79495 ; 3 uses
  %.sroa.1171.0.copyload73.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i, align 8, !noalias !79495 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79447
  %.not16.i.i = icmp eq i64 %.sroa.056.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i) ]
  %i.jt = load ptr, ptr %.sroa.862.0.i.i, align 8, !noalias !79463, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ai

bb.ba:                                            ; preds = %bb.ad
  store i16 1, ptr %i.co, align 2, !noalias !79469
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.ju, align 8, !noalias !79464
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !79464
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !79464
  %i.jv = getelementptr inbounds nuw i8, ptr %i.cl, i64 276
  store i8 %.sroa.913.0.lcssa.i.i, ptr %i.jv, align 4, !noalias !79469
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cl, i64 296
  store ptr %.sroa.16.0.lcssa.i.i, ptr %i.jw, align 8, !noalias !79469
  store ptr %i.cl, ptr %.sroa.16.0.lcssa.i.i, align 8, !noalias !79497
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i, i64 272
  store i16 1, ptr %i.jx, align 8, !noalias !79497
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i": ; preds = %bb.bc, %bb.bb, %bb.ax, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.jy, %bb.bc ], [ %i.jy, %bb.bb ], [ %lpad.loopexit.split-lp63, %bb.ax ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ae ], [ %i.bz, %bb.u ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.bz, %bb.v ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.ah ]
  resume { ptr, i32 } %.pn30.i

bb.bb:                                            ; preds = %bb.i
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.jz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79498
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit": ; preds = %bb.ay, %bb.j, %.thread.i.i, %bb.w, %.thread142.i.i, %bb.ba
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !79444, !noundef !21
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !79444
  br label %bb.bd

bb.bd:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hcb7135b03fa13f4fE.exit.thread", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hdc40d989c75c93e8E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h6b533fefdec291bbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 17 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79667)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !79666, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !79666, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !79667 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12.i = load i64, ptr %i.j, align 8, !alias.scope !79667 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.h, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.ae, %bb.f ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 538
  %i.m = load i16, ptr %i.l, align 2, !noalias !79668, !noundef !21 ; 4 uses
  %i.n = zext i16 %i.m to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.n, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = icmp eq i16 %i.m, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i358, i64 24 ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.8.0.i.i.i357, 1
  %i.s = icmp eq ptr %i.q, %i.o
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i358 = phi ptr [ %i.q, %bb.d ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i357 = phi i64 [ %i.r, %bb.d ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.t = getelementptr i8, ptr %.sroa.03.0.i.i.i358, i64 8
  %.val7.i.i.i = load ptr, ptr %i.t, align 8, !noalias !79668, !nonnull !21, !noundef !21
  %i.u = getelementptr i8, ptr %.sroa.03.0.i.i.i358, i64 16
  %.val8.i.i.i = load i64, ptr %i.u, align 8, !noalias !79668, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val8.i.i.i)
  %i.v = sub i64 %.val12.i, %.val8.i.i.i
  %i.w = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !79669, !noalias !79668 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.y, i64 %i.v, i64 %i.x
  %i.z = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.z, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %.sroa.8.0.i.i.i357, %.lr.ph ] ; 13 uses
  %i.aa = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.aa, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 544
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.4.0.i.ph.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !79670, !nonnull !21, !noundef !21
  %i.af = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79672)
  %.val.i.i13.i = load i64, ptr %2, align 8, !range !23, !alias.scope !79673, !noundef !21 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.ag, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79674
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit": ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 538
  %.sroa.037.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !79667 ; 5 uses
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.aj, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !79667 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !79667 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79667
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.al, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33"
  %.sroa.018.0.copyload52 = load i64, ptr %3, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.copyload54 = load ptr, ptr %.sroa.6.0..sroa_idx53, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.9.0.copyload56 = load i64, ptr %.sroa.9.0..sroa_idx55, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !79675
  %i.am = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !79675 ; 10 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #41
          to label %.noexc.i unwind label %bb.bt, !noalias !79675

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.am, align 8, !noalias !79675
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 538
  store ptr %i.am, ptr %1, align 8, !noalias !79675
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ap, align 8, !noalias !79675
  store i16 1, ptr %i.ao, align 2, !noalias !79676
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.aq, align 8, !noalias !79677
  %.sroa.526.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.526.0..sroa_idx27.i, align 8, !noalias !79677
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx29.i, align 8, !noalias !79677
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  store i64 %.sroa.018.0.copyload52, ptr %i.ar, align 8, !noalias !79678
  %.sroa.533.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  store ptr %.sroa.6.0.copyload54, ptr %.sroa.533.0..sroa_idx34.i, align 8, !noalias !79678
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  store i64 %.sroa.9.0.copyload56, ptr %.sroa.636.0..sroa_idx37.i, align 8, !noalias !79678
  br label %.loopexit

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit"
  %.sroa.018.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sink65.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sink65.i.sroa.gep179.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %.sink64.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sink64.i.sroa.gep181.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79679
  %i.as = icmp ugt i16 %i.m, 10
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !79680
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.au, align 8, !noalias !79680
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.at, label %.invoke.i.i.i, label %bb.p

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79681)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.n
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.4.0.i.ph.i.i ; 4 uses
  br i1 %.not.i.i.i.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79682)
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.ax
  %i.az = sub nuw nsw i64 %i.n, %.sroa.4.0.i.ph.i.i
  %i.ba = mul nuw nsw i64 %i.az, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.aw, i64 %i.ba, i1 false), !alias.scope !79683, !noalias !79684
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272 ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.4.0.i.ph.i.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bc, i64 %i.ba, i1 false), !alias.scope !79685, !noalias !79684
  br label %.thread.i.i

bb.p:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.q [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.r
  ]

.invoke.i.i.i:                                    ; preds = %bb.p, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.p ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.av, align 8, !noalias !79680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79680
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h05b23fbfd101a095E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.t unwind label %bb.w, !noalias !79680

bb.q:                                             ; preds = %bb.p
  store i64 6, ptr %i.av, align 8, !noalias !79680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79680
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h05b23fbfd101a095E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.w, !noalias !79680

bb.r:                                             ; preds = %bb.p
  store i64 5, ptr %i.av, align 8, !noalias !79680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79680
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h05b23fbfd101a095E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.t unwind label %bb.w, !noalias !79680

bb.s:                                             ; preds = %bb.q
  %i.be = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.invoke.i.i.i
  %.sink65.i.sroa.phi.i.i = phi ptr [ %.sink65.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink65.i.sroa.gep179.i.i, %bb.r ], [ %.sink65.i.sroa.gep179.i.i, %bb.s ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.r ], [ %i.be, %bb.s ] ; 6 uses
  %i.bf = load ptr, ptr %.sink65.i.sroa.phi.i.i, align 8, !noalias !79680, !nonnull !21, !noundef !21 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 538 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !79686, !noundef !21 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79687)
  %.not.i40.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.10.0.i.i.i ; 4 uses
  br i1 %.not.i40.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79688)
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.bl = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.10.0.i.i.i
  %i.bo = mul nuw nsw i64 %i.bn, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !79689, !noalias !79686
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 272 ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.10.0.i.i.i
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bo, i1 false), !alias.scope !79690, !noalias !79686
  br label %bb.aa

.thread.i.i:                                      ; preds = %bb.o, %bb.n
  store i64 %.sroa.037.0.copyload.i, ptr %i.aw, align 8, !alias.scope !79691, !noalias !79692
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.val.i, ptr %i.bs, align 8, !alias.scope !79691, !noalias !79692
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.val12.i, ptr %i.bt, align 8, !alias.scope !79691, !noalias !79692
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272
  %i.bv = add nuw nsw i16 %i.m, 1
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.bw, align 8, !alias.scope !79693, !noalias !79684
  %.sroa.6184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6184.0..sroa_idx.i.i, align 8, !alias.scope !79693, !noalias !79684
  %.sroa.8185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8185.0..sroa_idx.i.i, align 8, !alias.scope !79693, !noalias !79684
  store i16 %i.bv, ptr %i.ah, align 2, !noalias !79684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79679
  br label %.loopexit

bb.w:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = icmp eq i64 %.sroa.018.0.copyload, 0
  br i1 %i.by, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.018.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79694
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.bz, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79695
  br label %.body

bb.aa:                                            ; preds = %bb.v, %bb.u
  store i64 %.sroa.037.0.copyload.i, ptr %i.bk, align 8, !alias.scope !79696, !noalias !79697
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.val.i, ptr %i.ca, align 8, !alias.scope !79696, !noalias !79697
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val12.i, ptr %i.cb, align 8, !alias.scope !79696, !noalias !79697
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.cd = add i16 %i.bh, 1
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.sroa.10.0.i.i.i ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.ce, align 8, !alias.scope !79698, !noalias !79686
  %.sroa.6187.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6187.0..sroa_idx.i.i, align 8, !alias.scope !79698, !noalias !79686
  %.sroa.8188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8188.0..sroa_idx.i.i, align 8, !alias.scope !79698, !noalias !79686
  store i16 %i.cd, ptr %i.bg, align 2, !noalias !79686
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !79699 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !79699 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79699 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79699 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79699 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79699 ; 2 uses
  %.sroa.726.0.copyload.i.i = load ptr, ptr %.sink65.i.sroa.gep.i.i, align 8, !noalias !79699 ; 3 uses
  %.sroa.827.0.copyload.i.i = load i64, ptr %.sink64.i.sroa.gep.i.i, align 8, !noalias !79699
  %.sroa.928.0.copyload.i.i = load ptr, ptr %.sink65.i.sroa.gep179.i.i, align 8, !noalias !79699 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink64.i.sroa.gep181.i.i, align 8, !noalias !79699 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79679
  %.not.i.i = icmp eq i64 %.sroa.023.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.726.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.928.0.copyload.i.i) ]
  %i.cf = load ptr, ptr %.sroa.726.0.copyload.i.i, align 8, !noalias !79700, !noundef !21 ; 2 uses
  %.not.i278.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i278.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.sroa.887.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.890.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.993.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.sroa.1199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.aq

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.ab
  %.sroa.22.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.ab ], [ %.sroa.1199.0.copyload101.i.i, %bb.br ]
  %.sroa.18.0.lcssa.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %bb.ab ], [ %.sroa.1096.0.i.i, %bb.br ] ; 3 uses
  %.sroa.12.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.9.0.i.i, %bb.br ]
  %.sroa.11.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.8.0.i.i, %bb.br ] ; 5 uses
  %.sroa.913.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.7.0.i.i, %bb.br ] ; 5 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.6.0.i.i, %bb.br ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.ab ], [ %.sroa.887.sroa.0.0.i.i, %bb.br ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.ab ], [ %.sroa.084.0.i.i, %bb.br ] ; 5 uses
  %i.cj = load ptr, ptr %1, align 8, !noalias !79701, !noundef !21 ; 4 uses
  %.not.i23.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i.i, label %bb.ac, label %bb.ae, !prof !19

bb.ac:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1624) #41
          to label %bb.ad unwind label %bb.am, !noalias !79701

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79702)
  %i.ck = load i64, ptr %i.g, align 8, !alias.scope !79702, !noalias !79701, !noundef !21 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !79703
  %i.cl = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !79703 ; 14 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.af, label %bb.ah, !prof !19

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 640) #41
          to label %.noexc.i.i.i.i unwind label %bb.ag, !noalias !79703

.noexc.i.i.i.i:                                   ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ae
  store ptr null, ptr %i.cl, align 8, !noalias !79703
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 538 ; 2 uses
  store i16 0, ptr %i.co, align 2, !noalias !79703
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 544
  store ptr %i.cj, ptr %i.cp, align 8, !noalias !79703
  %i.cq = add i64 %i.ck, 1
  store ptr %i.cl, ptr %i.cj, align 8, !noalias !79704
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 536
  store i16 0, ptr %i.cr, align 8, !noalias !79705
  store ptr %i.cl, ptr %1, align 8, !alias.scope !79702, !noalias !79701
  store i64 %i.cq, ptr %i.g, align 8, !alias.scope !79702, !noalias !79701
  %i.cs = icmp eq i64 %.sroa.22.0.lcssa.i.i, %i.ck
  br i1 %i.cs, label %bb.bs, label %.invoke.i.i.i.i, !prof !26

.invoke.i.i.i.i:                                  ; preds = %bb.ah
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1627, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #41
          to label %.cont.i.i.i.i unwind label %bb.ai, !noalias !79706

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ai:                                            ; preds = %.invoke.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.cu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %.sroa.913.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79707
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cv = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cv, label %.body, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79708
  br label %.body

bb.am:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.cx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79709
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cy = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.cy, label %.body, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %.sroa.913.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79710
  br label %.body

bb.aq:                                            ; preds = %bb.br, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.jy, %bb.br ] ; 12 uses
  %.sroa.03.0288.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.084.0.i.i, %bb.br ] ; 7 uses
  %.sroa.8.0287.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.0.0.i.i, %bb.br ] ; 7 uses
  %.sroa.9.0286.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.6.0.i.i, %bb.br ] ; 5 uses
  %.sroa.913.0285.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.7.0.i.i, %bb.br ] ; 7 uses
  %.sroa.11.0284.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.8.0.i.i, %bb.br ] ; 7 uses
  %.sroa.12.0283.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.9.0.i.i, %bb.br ] ; 5 uses
  %.sroa.1220.0282.i.i = phi ptr [ %.sroa.726.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.890.0.i.i, %bb.br ]
  %.sroa.15.0281.i.i = phi i64 [ %.sroa.827.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.993.0.i.i, %bb.br ] ; 2 uses
  %.sroa.18.0280.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1096.0.i.i, %bb.br ] ; 3 uses
  %.sroa.22.0279.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1199.0.copyload101.i.i, %bb.br ]
  %i.da = add i64 %.sroa.15.0281.i.i, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.1220.0282.i.i, i64 536
  %i.dc = load i16, ptr %i.db, align 8, !noalias !79700 ; 5 uses
  %i.dd = zext i16 %i.dc to i64                   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79679
  %i.de = icmp eq i64 %.sroa.22.0279.i.i, %.sroa.15.0281.i.i
  br i1 %i.de, label %bb.as, label %bb.ar, !prof !26

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1634, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #41
          to label %bb.at unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !79711

bb.as:                                            ; preds = %bb.aq
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 538
  %i.dg = load i16, ptr %i.df, align 2, !noalias !79711, !noundef !21 ; 4 uses
  %i.dh = icmp ult i16 %i.dg, 11
  br i1 %i.dh, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.di = icmp ult i16 %i.dc, 5
  store ptr %i.cz, ptr %i.b, align 8, !noalias !79711
  store i64 %i.da, ptr %i.cg, align 8, !noalias !79711
  br i1 %i.di, label %.invoke.i34.i.i, label %bb.bb

bb.av:                                            ; preds = %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 538
  %i.dk = zext nneg i16 %i.dg to i64              ; 5 uses
  %i.dl = add nuw nsw i16 %i.dg, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79712)
  %i.dn = add nuw nsw i64 %i.dd, 1                ; 7 uses
  %.not.i.i36.not.i.i = icmp ult i16 %i.dc, %i.dg ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dd ; 4 uses
  br i1 %.not.i.i36.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79713)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.dq = sub nuw nsw i64 %i.dk, %i.dd
  %i.dr = mul nuw nsw i64 %i.dq, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %i.dr, i1 false), !alias.scope !79714, !noalias !79715
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 272 ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dd
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dt, i64 %i.dr, i1 false), !alias.scope !79716, !noalias !79715
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store i64 %.sroa.03.0288.i.i, ptr %i.do, align 8, !alias.scope !79717, !noalias !79718
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %i.dv, align 8, !alias.scope !79717, !noalias !79718
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %i.dw, align 8, !alias.scope !79717, !noalias !79718
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 272
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dd ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.dy, align 8, !alias.scope !79719, !noalias !79715
  %.sroa.6190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.6190.0..sroa_idx.i.i, align 8, !alias.scope !79719, !noalias !79715
  %.sroa.8191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.8191.0..sroa_idx.i.i, align 8, !alias.scope !79719, !noalias !79715
  %i.dz = add nuw nsw i64 %i.dk, 2                ; 2 uses
end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h6b533fefdec291bbE":bb.a
  store ptr %i.fn, ptr %i.ho, align 8, !noalias !79730
  %i.hp = trunc nuw nsw i64 %i.hg to i16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 536
  store i16 %i.hp, ptr %i.hq, align 8, !noalias !79730
  %exitcond.not.i.i40.i.i.i.3 = icmp eq i64 %i.hl, %i.gj
  br i1 %exitcond.not.i.i40.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i", label %.lr.ph.i.i38.i.i.i

bb.bi:                                            ; preds = %bb.bm, %bb.bd
  %.sroa.10.1.i.i.i = phi i64 [ %i.jv, %bb.bm ], [ 0, %bb.bd ] ; 9 uses
  %i.hr = load ptr, ptr %i.ci, align 8, !noalias !79711, !nonnull !21, !noundef !21 ; 12 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 538 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !noalias !79731, !noundef !21 ; 2 uses
  %i.hu = zext i16 %i.ht to i64                   ; 5 uses
  %i.hv = add i16 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hx = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 7 uses
  %.not.i42.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.hu
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i42.not.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %.sroa.03.0288.i.i, ptr %i.hy, align 8, !noalias !79724
  %.sroa.11108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx.i.i, align 8, !noalias !79724
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !79724
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 272
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %.sroa.10.1.i.i.i ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.ia, align 8, !noalias !79725
  %.sroa.11135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx.i.i, align 8, !noalias !79725
  %.sroa.14146.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx.i.i, align 8, !noalias !79725
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hx
  %i.ic = sub nuw nsw i64 %i.hu, %.sroa.10.1.i.i.i ; 2 uses
  %i.id = mul nuw nsw i64 %i.ic, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.hy, i64 %i.id, i1 false), !alias.scope !79732, !noalias !79731
  store i64 %.sroa.03.0288.i.i, ptr %i.hy, align 8, !noalias !79724
  %.sroa.11108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx109.i.i, align 8, !noalias !79724
  %.sroa.14.0..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx119.i.i, align 8, !noalias !79724
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 272 ; 2 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %.sroa.10.1.i.i.i ; 4 uses
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.hx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.if, i64 %i.id, i1 false), !alias.scope !79733, !noalias !79731
  store i64 %.sroa.913.0285.i.i, ptr %i.if, align 8, !noalias !79725
  %.sroa.11135.0..sroa_idx136.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx136.i.i, align 8, !noalias !79725
  %.sroa.14146.0..sroa_idx147.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx147.i.i, align 8, !noalias !79725
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 544 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.hx
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.sroa.10.1.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = shl nuw nsw i64 %i.ic, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ik, ptr nonnull align 8 %i.ii, i64 %i.il, i1 false), !alias.scope !79734, !noalias !79731
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 544 ; 6 uses
  %i.in = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.hx
  store ptr %.sroa.18.0280.i.i, ptr %i.io, align 8, !alias.scope !79734, !noalias !79731
  store i16 %i.hv, ptr %i.hs, align 2, !noalias !79731
  %i.ip = icmp samesign ult i64 %i.hx, %i.in
  br i1 %i.ip, label %.lr.ph.i.i43.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i"

.lr.ph.i.i43.i.i.i.preheader:                     ; preds = %bb.bl
  %i.iq = add nuw nsw i64 %i.hu, 1
  %i.ir = sub nsw i64 %i.iq, %.sroa.10.1.i.i.i
  %i.is = sub nsw i64 %i.hu, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.ir, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i43.i.i.i.prol

.lr.ph.i.i43.i.i.i.prol:                          ; preds = %.lr.ph.i.i43.i.i.i.preheader, %.lr.ph.i.i43.i.i.i.prol
  %.sroa.0.06.i.i44.i.i.i.prol = phi i64 [ %i.it, %.lr.ph.i.i43.i.i.i.prol ], [ %i.hx, %.lr.ph.i.i43.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i43.i.i.i.prol ], [ 0, %.lr.ph.i.i43.i.i.i.preheader ]
  %i.it = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.prol, 1 ; 2 uses
  %i.iu = icmp samesign ult i64 %.sroa.0.06.i.i44.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i44.i.i.i.prol
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !79735, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hr, ptr %i.iw, align 8, !noalias !79736
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 536
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !79736
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i43.i.i.i.prol, !llvm.loop !79644

.lr.ph.i.i43.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i43.i.i.i.prol, %.lr.ph.i.i43.i.i.i.preheader
  %.sroa.0.06.i.i44.i.i.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i43.i.i.i.preheader ], [ %i.it, %.lr.ph.i.i43.i.i.i.prol ]
  %i.iz = icmp ult i64 %i.is, 3
  br i1 %i.iz, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i", label %.lr.ph.i.i43.i.i.i

.lr.ph.i.i43.i.i.i:                               ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i
  %.sroa.0.06.i.i44.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i43.i.i.i ], [ %.sroa.0.06.i.i44.i.i.i.unr, %.lr.ph.i.i43.i.i.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i44.i.i.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !79735, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hr, ptr %i.jc, align 8, !noalias !79736
  %i.jd = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 536
  store i16 %i.jd, ptr %i.je, align 8, !noalias !79736
  %i.jf = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ja
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !79735, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hr, ptr %i.jh, align 8, !noalias !79736
  %i.ji = trunc nuw nsw i64 %i.ja to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 536
  store i16 %i.ji, ptr %i.jj, align 8, !noalias !79736
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jf
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !79735, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hr, ptr %i.jm, align 8, !noalias !79736
  %i.jn = trunc nuw nsw i64 %i.jf to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 536
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !79736
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 4 ; 2 uses
  %i.jq = icmp ult i64 %.sroa.0.06.i.i44.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jk
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !79735, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hr, ptr %i.js, align 8, !noalias !79736
  %i.jt = trunc nuw nsw i64 %i.jk to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 536
  store i16 %i.jt, ptr %i.ju, align 8, !noalias !79736
  %exitcond.not.i.i45.i.i.i.3 = icmp eq i64 %i.jp, %i.in
  br i1 %exitcond.not.i.i45.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i", label %.lr.ph.i.i43.i.i.i

bb.bm:                                            ; preds = %bb.bc
  %i.jv = add nsw i64 %i.dd, -7
  br label %bb.bi

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %bb.bl
  %.sroa.887.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.887.0..sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.890.0.copyload.i.i = load ptr, ptr %.sroa.890.0..sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.993.0.copyload.i.i = load i64, ptr %.sroa.993.0..sroa_idx.i.i, align 8, !noalias !79737
  br label %bb.bq

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i.prol.loopexit, %.lr.ph.i.i38.i.i.i, %bb.bh
  %.sroa.887.sroa.0.0.copyload174.i.i = load ptr, ptr %.sroa.887.0..sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.6.0.copyload175.i.i = load i64, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.7.0.copyload176.i.i = load i64, ptr %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.8.0.copyload177.i.i = load ptr, ptr %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.887.sroa.9.0.copyload178.i.i = load i64, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.993.0.copyload95.i.i = load i64, ptr %.sroa.993.0..sroa_idx.i.i, align 8, !noalias !79737
  %.sroa.1096.0.copyload98.i.i = load ptr, ptr %i.ci, align 8, !noalias !79737
  br label %bb.bq

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i34.i.i, %bb.bc, %bb.bd, %bb.ar
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = icmp eq i64 %.sroa.913.0285.i.i, 0
  br i1 %i.jw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0284.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0284.i.i, i64 noundef %.sroa.913.0285.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79738
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.jx = icmp eq i64 %.sroa.03.0288.i.i, 0
  br i1 %i.jx, label %.body, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0287.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0287.i.i, i64 noundef %.sroa.03.0288.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79739
  br label %.body

.thread211.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79679
  br label %.loopexit

bb.bq:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i"
  %.sroa.887.sroa.0.0.i.i = phi ptr [ %.sroa.887.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.887.sroa.0.0.copyload174.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.6.0.i.i = phi i64 [ %.sroa.887.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.887.sroa.6.0.copyload175.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.7.0.i.i = phi i64 [ %.sroa.887.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.887.sroa.7.0.copyload176.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.8.0.i.i = phi ptr [ %.sroa.887.sroa.8.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.887.sroa.8.0.copyload177.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 2 uses
  %.sroa.887.sroa.9.0.i.i = phi i64 [ %.sroa.887.sroa.9.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.887.sroa.9.0.copyload178.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 2 uses
  %.sroa.1096.0.i.i = phi ptr [ %i.hr, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.1096.0.copyload98.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 3 uses
  %.sroa.993.0.i.i = phi i64 [ %.sroa.993.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %.sroa.993.0.copyload95.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ]
  %.sroa.890.0.i.i = phi ptr [ %.sroa.890.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit46.i.i.i" ], [ %i.fn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h80f632c282febe97E.exit41.i.i.i" ] ; 3 uses
  %.sroa.084.0.i.i = load i64, ptr %i.a, align 8, !noalias !79737 ; 3 uses
  %.sroa.1199.0.copyload101.i.i = load i64, ptr %.sroa.1199.0..sroa_idx.i.i, align 8, !noalias !79737 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79679
  %.not16.i.i = icmp eq i64 %.sroa.084.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.890.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1096.0.i.i) ]
  %i.jy = load ptr, ptr %.sroa.890.0.i.i, align 8, !noalias !79700, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.aq

bb.bs:                                            ; preds = %bb.ah
  store i16 1, ptr %i.co, align 2, !noalias !79706
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.jz, align 8, !noalias !79740
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !79740
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !79740
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  store i64 %.sroa.913.0.lcssa.i.i, ptr %i.ka, align 8, !noalias !79741
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 280
  store ptr %.sroa.11.0.lcssa.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !noalias !79741
  %.sroa.612.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  store i64 %.sroa.12.0.lcssa.i.i, ptr %.sroa.612.0..sroa_idx13.i.i.i, align 8, !noalias !79741
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cl, i64 552
  store ptr %.sroa.18.0.lcssa.i.i, ptr %i.kb, align 8, !noalias !79706
  store ptr %i.cl, ptr %.sroa.18.0.lcssa.i.i, align 8, !noalias !79742
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.18.0.lcssa.i.i, i64 536
  store i16 1, ptr %i.kc, align 8, !noalias !79742
  br label %.loopexit

bb.bt:                                            ; preds = %bb.i
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = icmp eq i64 %.sroa.018.0.copyload52, 0
  br i1 %i.ke, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload54) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload54, i64 noundef %.sroa.018.0.copyload52, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79743
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kf = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.kf, label %.body, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79744
  br label %.body

.loopexit:                                        ; preds = %bb.bq, %bb.j, %.thread.i.i, %bb.aa, %.thread211.i.i, %bb.bs
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !79675, !noundef !21
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.kg, align 8, !noalias !79675
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread", %.loopexit
  ret void

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread": ; preds = %bb.g, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33"
  %.sroa.7.032 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.031 = phi i64 [ %i.ak, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit.thread33" ], [ %i.ai, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb816cdcb7c8dd947E.exit" ], [ %.sroa.8.0.i.i.i357, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hcb98b2e23e261a58E.exit.i" ], [ %.sroa.8.0.i.i.i357, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.032) ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.7.032, i64 272
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %.sroa.14.031 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i64 24, i1 false), !noalias !79745
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !79746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bx

.body:                                            ; preds = %bb.bw, %bb.bv, %bb.bp, %bb.bo, %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.ap ], [ %lpad.loopexit.split-lp361, %bb.bp ], [ %i.kd, %bb.bw ], [ %i.cw, %bb.ao ], [ %i.ct, %bb.al ], [ %i.kd, %bb.bv ], [ %i.ct, %bb.ak ], [ %i.bx, %bb.y ], [ %lpad.loopexit.split-lp361, %bb.bo ], [ %i.bx, %bb.z ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h99decf5a3afa143eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 16 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 15 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.16.i.i = alloca [24 x i8], align 8       ; 13 uses
  %.sroa.842.sroa.7.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.6.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79895)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !79894, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread32", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !79894, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !79895 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12.i = load i64, ptr %i.n, align 8, !alias.scope !79895 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.ai, %bb.f ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 538
  %i.q = load i16, ptr %i.p, align 2, !noalias !79896, !noundef !21 ; 4 uses
  %i.r = zext i16 %i.q to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i289, i64 24 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.8.0.i.i.i288, 1
  %i.w = icmp eq ptr %i.u, %i.s
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i289 = phi ptr [ %i.u, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i288 = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.x = getelementptr i8, ptr %.sroa.03.0.i.i.i289, i64 8
  %.val7.i.i.i = load ptr, ptr %i.x, align 8, !noalias !79896, !nonnull !21, !noundef !21
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i289, i64 16
  %.val8.i.i.i = load i64, ptr %i.y, align 8, !noalias !79896, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val8.i.i.i)
  %i.z = sub i64 %.val12.i, %.val8.i.i.i
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !79897, !noalias !79896 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ac, i64 %i.z, i64 %i.ab
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.ad, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb802fe760d3526d9E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.8.0.i.i.i288, %.lr.ph ] ; 13 uses
  %i.ae = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ae, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 544
  %i.ag = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.4.0.i.ph.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !79898, !nonnull !21, !noundef !21
  %i.aj = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb802fe760d3526d9E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79900)
  %.val.i.i13.i = load i64, ptr %2, align 8, !range !23, !alias.scope !79901, !noundef !21 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.ak, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb802fe760d3526d9E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !79902
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit": ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 538
  %.sroa.037.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !79895 ; 5 uses
  %i.am = ptrtoint ptr %1 to i64
  %i.an = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.an, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread32": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !79895 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !79895 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79895
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.ap, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h631b1dc53946b204E.exit.thread32"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !79903
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !79903 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #41
          to label %.noexc.i unwind label %bb.bw, !noalias !79903
end_hunk_4
begin_hunk_5_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9b79a01281c035acE":bb.a
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.sroa.8.0.i.i.i52, %.lr.ph ] ; 11 uses
  %i.z = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.z, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 280
  %i.ab = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.4.0.i.ph.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !80087, !nonnull !21, !noundef !21
  %i.ae = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h4bf0d575b0489365E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80089)
  %.val.i.i13.i = load i64, ptr %1, align 8, !range !23, !alias.scope !80090, !noundef !21 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.af, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h4bf0d575b0489365E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80091
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit": ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %.sroa.037.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !80084 ; 5 uses
  %i.ah = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.ah, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread29": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !80084 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !80084 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !80084
  %i.ai = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.ai, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread29"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !80092
  %i.aj = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !80092 ; 7 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #41
          to label %.noexc.i unwind label %bb.aw, !noalias !80092

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.aj, align 8, !noalias !80092
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 274
  store ptr %i.aj, ptr %0, align 8, !noalias !80092
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8, !noalias !80092
  store i16 1, ptr %i.al, align 2, !noalias !80093
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.an, align 8, !noalias !80094
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.518.0..sroa_idx19.i, align 8, !noalias !80094
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx21.i, align 8, !noalias !80094
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit"

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit"
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sink62.i.sroa.gep98.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.sink61.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink61.i.sroa.gep100.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80095
  %i.ao = icmp ugt i16 %i.l, 10
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !80096
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.aq, align 8, !noalias !80096
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.ap, label %.invoke.i.i.i, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80097)
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.m
  br i1 %.not.i.i.i.i.not, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = sub nuw nsw i64 %i.m, %.sroa.4.0.i.ph.i.i
  %i.av = mul nuw nsw i64 %i.au, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.as, i64 %i.av, i1 false), !alias.scope !80098, !noalias !80099
  br label %.thread.i.i

bb.o:                                             ; preds = %bb.l
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.p [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.q
  ]

.invoke.i.i.i:                                    ; preds = %bb.o, %bb.l
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.o ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i, ptr %i.ar, align 8, !noalias !80096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80096
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17haeba4f0c0c73cd76E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !80096

bb.p:                                             ; preds = %bb.o
  store i64 6, ptr %i.ar, align 8, !noalias !80096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80096
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17haeba4f0c0c73cd76E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.u, !noalias !80096

bb.q:                                             ; preds = %bb.o
  store i64 5, ptr %i.ar, align 8, !noalias !80096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80096
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17haeba4f0c0c73cd76E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.s unwind label %bb.u, !noalias !80096

bb.r:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.invoke.i.i.i
  %.sink62.i.sroa.phi.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink62.i.sroa.gep98.i.i, %bb.q ], [ %.sink62.i.sroa.gep98.i.i, %bb.r ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.q ], [ %i.aw, %bb.r ] ; 4 uses
  %i.ax = load ptr, ptr %.sink62.i.sroa.phi.i.i, align 8, !noalias !80096, !nonnull !21, !noundef !21 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 274 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !noalias !80100, !noundef !21 ; 2 uses
  %i.ba = zext i16 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80101)
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.ba
  br i1 %.not.i41.not.i.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.10.0.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = sub nuw nsw i64 %i.ba, %.sroa.10.0.i.i.i
  %i.bf = mul nuw nsw i64 %i.be, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false), !alias.scope !80102, !noalias !80100
  br label %bb.w

.thread.i.i:                                      ; preds = %bb.n, %bb.m
  %i.bg = add nuw nsw i16 %i.l, 1
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  store i64 %.sroa.037.0.copyload.i, ptr %i.bh, align 8, !alias.scope !80103, !noalias !80104
  %.sroa.730.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.val.i, ptr %.sroa.730.0..sroa_idx31.i.i, align 8, !alias.scope !80103, !noalias !80104
  %.sroa.935.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.val12.i, ptr %.sroa.935.0..sroa_idx36.i.i, align 8, !alias.scope !80103, !noalias !80104
  store i16 %i.bg, ptr %i.ag, align 2, !noalias !80099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80095
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit"

bb.u:                                             ; preds = %bb.q, %bb.p, %.invoke.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.037.0.copyload.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sroa.037.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80105
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bk = add i16 %i.az, 1
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.10.0.i.i.i ; 3 uses
  store i64 %.sroa.037.0.copyload.i, ptr %i.bl, align 8, !alias.scope !80106, !noalias !80107
  %.sroa.730.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.val.i, ptr %.sroa.730.0..sroa_idx33.i.i, align 8, !alias.scope !80106, !noalias !80107
  %.sroa.935.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.val12.i, ptr %.sroa.935.0..sroa_idx38.i.i, align 8, !alias.scope !80106, !noalias !80107
  store i16 %i.bk, ptr %i.ay, align 2, !noalias !80100
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !80108 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !80108 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80108 ; 2 uses
  %.sroa.719.0.copyload.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !80108 ; 3 uses
  %.sroa.820.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i, align 8, !noalias !80108
  %.sroa.921.0.copyload.i.i = load ptr, ptr %.sink62.i.sroa.gep98.i.i, align 8, !noalias !80108 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep100.i.i, align 8, !noalias !80108 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80095
  %.not.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.719.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.921.0.copyload.i.i) ]
  %i.bm = load ptr, ptr %.sroa.719.0.copyload.i.i, align 8, !noalias !80109, !noundef !21 ; 2 uses
  %.not.i168.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i168.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.847.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.850.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.953.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.ad

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.x
  %.sroa.19.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.x ], [ %.sroa.1159.0.copyload61.i.i, %bb.au ]
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.921.0.copyload.i.i, %bb.x ], [ %.sroa.1056.0.i.i, %bb.au ] ; 3 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.x ], [ %.sroa.847.sroa.6.0.i.i, %bb.au ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.x ], [ %.sroa.847.sroa.0.0.i.i, %bb.au ] ; 3 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.016.0.copyload.i.i, %bb.x ], [ %.sroa.044.0.i.i, %bb.au ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80110)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !80111
  %i.bq = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !80111 ; 11 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %bb.aa, !prof !19

bb.y:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 376) #41
          to label %.noexc.i.i.i.i unwind label %bb.z, !noalias !80111

.noexc.i.i.i.i:                                   ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !noalias !80111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 274 ; 2 uses
  store i16 0, ptr %i.bt, align 2, !noalias !80111
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  store ptr %i.e, ptr %i.bu, align 8, !noalias !80111
  %i.bv = add i64 %i.g, 1
  store ptr %i.bq, ptr %i.e, align 8, !noalias !80112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  store i16 0, ptr %i.bw, align 8, !noalias !80113
  store ptr %i.bq, ptr %0, align 8, !alias.scope !80110, !noalias !80114
  store i64 %i.bv, ptr %i.f, align 8, !alias.scope !80110, !noalias !80114
  %i.bx = icmp eq i64 %.sroa.19.0.lcssa.i.i, %i.g
  br i1 %i.bx, label %bb.av, label %.invoke.i.i.i.i, !prof !26

.invoke.i.i.i.i:                                  ; preds = %bb.aa
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1627, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #41
          to label %.cont.i.i.i.i unwind label %bb.ab, !noalias !80115

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %.invoke.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80116
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

bb.ad:                                            ; preds = %bb.au, %.lr.ph.i.i
  %i.ca = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.ih, %bb.au ] ; 11 uses
  %.sroa.03.0175.i.i = phi i64 [ %.sroa.016.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.044.0.i.i, %bb.au ] ; 8 uses
  %.sroa.8.0174.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.847.sroa.0.0.i.i, %bb.au ] ; 8 uses
  %.sroa.9.0173.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.847.sroa.6.0.i.i, %bb.au ] ; 6 uses
  %.sroa.913.0172.i.i = phi ptr [ %.sroa.719.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.850.0.i.i, %bb.au ]
  %.sroa.12.0171.i.i = phi i64 [ %.sroa.820.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.953.0.i.i, %bb.au ] ; 2 uses
  %.sroa.15.0170.i.i = phi ptr [ %.sroa.921.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1056.0.i.i, %bb.au ] ; 3 uses
  %.sroa.19.0169.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1159.0.copyload61.i.i, %bb.au ]
  %i.cb = add i64 %.sroa.12.0171.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.913.0172.i.i, i64 272
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !80109 ; 5 uses
  %i.ce = zext i16 %i.cd to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80095
  %i.cf = icmp eq i64 %.sroa.19.0169.i.i, %.sroa.12.0171.i.i
  br i1 %i.cf, label %bb.af, label %bb.ae, !prof !26

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1634, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #41
          to label %bb.ag unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !80117

bb.af:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 274
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !80117, !noundef !21 ; 4 uses
  %i.ci = icmp ult i16 %i.ch, 11
  br i1 %i.ci, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cj = icmp ult i16 %i.cd, 5
  store ptr %i.ca, ptr %i.b, align 8, !noalias !80117
  store i64 %i.cb, ptr %i.bn, align 8, !noalias !80117
  br i1 %i.cj, label %.invoke.i29.i.i, label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 274
  %i.cl = zext nneg i16 %i.ch to i64              ; 4 uses
  %i.cm = add nuw nsw i16 %i.ch, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80118)
  %i.co = add nuw nsw i64 %i.ce, 1                ; 6 uses
  %.not.i.i31.not.i.i = icmp ult i16 %i.cd, %i.ch
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ce ; 7 uses
  br i1 %.not.i.i31.not.i.i, label %bb.aj, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i: ; preds = %bb.ai
  store i64 %.sroa.03.0175.i.i, ptr %i.cp, align 8, !alias.scope !80119, !noalias !80120
  %.sroa.1067.0..sroa_idx74.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx74.i.i, align 8, !alias.scope !80119, !noalias !80120
  %.sroa.13.0..sroa_idx82.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx82.i.i, align 8, !alias.scope !80119, !noalias !80120
  br label %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co
  %i.cr = sub nuw nsw i64 %i.cl, %i.ce            ; 2 uses
  %i.cs = mul nuw nsw i64 %i.cr, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false), !alias.scope !80121, !noalias !80122
  store i64 %.sroa.03.0175.i.i, ptr %i.cp, align 8, !alias.scope !80119, !noalias !80120
  %.sroa.1067.0..sroa_idx74238.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx74238.i.i, align 8, !alias.scope !80119, !noalias !80120
  %.sroa.13.0..sroa_idx82239.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx82239.i.i, align 8, !alias.scope !80119, !noalias !80120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 280 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ce
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cu, i64 %i.cx, i1 false), !alias.scope !80123, !noalias !80122
  br label %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i.i.i.i: ; preds = %bb.aj, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 280 ; 6 uses
  %i.cz = add nuw nsw i64 %i.cl, 2                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.co
  store ptr %.sroa.15.0170.i.i, ptr %i.da, align 8, !alias.scope !80123, !noalias !80122
  store i16 %i.cm, ptr %i.ck, align 2, !noalias !80122
  %i.db = icmp samesign ult i64 %i.co, %i.cz
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.preheader, label %.thread118.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i.i.i.i
  %i.dc = add nuw nsw i64 %i.cl, 1
  %i.dd = sub nsw i64 %i.dc, %i.ce
  %i.de = sub nsw i64 %i.cl, %i.ce
  %xtraiter111 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.prol ], [ %i.co, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.df = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !80124, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ca, ptr %i.di, align 8, !noalias !80125
  %i.dj = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 272
  store i16 %i.dj, ptr %i.dk, align 8, !noalias !80125
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !80048

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.prol ]
  %i.dl = icmp ult i64 %i.de, 3
  br i1 %i.dl, label %.thread118.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.sroa.0.06.i.i.i.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !80124, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ca, ptr %i.do, align 8, !noalias !80125
  %i.dp = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  store i16 %i.dp, ptr %i.dq, align 8, !noalias !80125
  %i.dr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dm
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !80124, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ca, ptr %i.dt, align 8, !noalias !80125
  %i.du = trunc nuw nsw i64 %i.dm to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 272
  store i16 %i.du, ptr %i.dv, align 8, !noalias !80125
end_hunk_5
begin_hunk_6_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9b79a01281c035acE":bb.a

.lr.ph.i.i41.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i41.i.i.i.prol, %.lr.ph.i.i41.i.i.i.preheader
  %.sroa.0.06.i.i42.i.i.i.unr = phi i64 [ %i.en, %.lr.ph.i.i41.i.i.i.preheader ], [ %i.fe, %.lr.ph.i.i41.i.i.i.prol ]
  %i.fk = icmp ult i64 %i.fd, 3
  br i1 %i.fk, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i", label %.lr.ph.i.i41.i.i.i

.lr.ph.i.i41.i.i.i:                               ; preds = %.lr.ph.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i
  %.sroa.0.06.i.i42.i.i.i = phi i64 [ %i.ga, %.lr.ph.i.i41.i.i.i ], [ %.sroa.0.06.i.i42.i.i.i.unr, %.lr.ph.i.i41.i.i.i.prol.loopexit ] ; 7 uses
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i42.i.i.i
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !80130, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eh, ptr %i.fn, align 8, !noalias !80131
  %i.fo = trunc nuw nsw i64 %.sroa.0.06.i.i42.i.i.i to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 272
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !80131
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fl
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !80130, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eh, ptr %i.fs, align 8, !noalias !80131
  %i.ft = trunc nuw nsw i64 %i.fl to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 272
  store i16 %i.ft, ptr %i.fu, align 8, !noalias !80131
  %i.fv = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fq
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !80130, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eh, ptr %i.fx, align 8, !noalias !80131
  %i.fy = trunc nuw nsw i64 %i.fq to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 272
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !80131
  %i.ga = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i, 4 ; 2 uses
  %i.gb = icmp ult i64 %.sroa.0.06.i.i42.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !80130, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eh, ptr %i.gd, align 8, !noalias !80131
  %i.ge = trunc nuw nsw i64 %i.fv to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 272
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !80131
  %exitcond.not.i.i43.i.i.i.3 = icmp eq i64 %i.ga, %i.ey
  br i1 %exitcond.not.i.i43.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i", label %.lr.ph.i.i41.i.i.i

bb.ap:                                            ; preds = %bb.ar, %bb.am
  %.sroa.10.1.i.i.i = phi i64 [ %i.if, %bb.ar ], [ 0, %bb.am ] ; 7 uses
  %i.gg = load ptr, ptr %i.bp, align 8, !noalias !80117, !nonnull !21, !noundef !21 ; 10 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 274 ; 2 uses
  %i.gi = load i16, ptr %i.gh, align 2, !noalias !80132, !noundef !21 ; 2 uses
  %i.gj = zext i16 %i.gi to i64                   ; 5 uses
  %i.gk = add i16 %i.gi, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.10.1.i.i.i, 1    ; 6 uses
  %.not.i45.not.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i, %i.gj
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.sroa.10.1.i.i.i ; 7 uses
  br i1 %.not.i45.not.i.i.i, label %bb.aq, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i46.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i46.i.i.i: ; preds = %bb.ap
  store i64 %.sroa.03.0175.i.i, ptr %i.gn, align 8, !noalias !80127
  %.sroa.1067.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx.i.i, align 8, !noalias !80127
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !80127
  br label %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i47.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm
  %i.gp = sub nuw nsw i64 %i.gj, %.sroa.10.1.i.i.i ; 2 uses
  %i.gq = mul nuw nsw i64 %i.gp, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 8 %i.gn, i64 %i.gq, i1 false), !alias.scope !80133, !noalias !80132
  store i64 %.sroa.03.0175.i.i, ptr %i.gn, align 8, !noalias !80127
  %.sroa.1067.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.sroa.8.0174.i.i, ptr %.sroa.1067.0..sroa_idx68.i.i, align 8, !noalias !80127
  %.sroa.13.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.9.0173.i.i, ptr %.sroa.13.0..sroa_idx76.i.i, align 8, !noalias !80127
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 280 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gm
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.sroa.10.1.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = shl nuw nsw i64 %i.gp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.gs, i64 %i.gv, i1 false), !alias.scope !80134, !noalias !80132
  br label %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i47.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i47.i.i.i: ; preds = %bb.aq, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i46.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 280 ; 6 uses
  %i.gx = add nuw nsw i64 %i.gj, 2                ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gm
  store ptr %.sroa.15.0170.i.i, ptr %i.gy, align 8, !alias.scope !80134, !noalias !80132
  store i16 %i.gk, ptr %i.gh, align 2, !noalias !80132
  %i.gz = icmp samesign ult i64 %i.gm, %i.gx
  br i1 %i.gz, label %.lr.ph.i.i48.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i"

.lr.ph.i.i48.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i47.i.i.i
  %i.ha = add nuw nsw i64 %i.gj, 1
  %i.hb = sub nsw i64 %i.ha, %.sroa.10.1.i.i.i
  %i.hc = sub nsw i64 %i.gj, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.hb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i48.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.prol

.lr.ph.i.i48.i.i.i.prol:                          ; preds = %.lr.ph.i.i48.i.i.i.preheader, %.lr.ph.i.i48.i.i.i.prol
  %.sroa.0.06.i.i49.i.i.i.prol = phi i64 [ %i.hd, %.lr.ph.i.i48.i.i.i.prol ], [ %i.gm, %.lr.ph.i.i48.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i48.i.i.i.prol ], [ 0, %.lr.ph.i.i48.i.i.i.preheader ]
  %i.hd = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.prol, 1 ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.0.06.i.i49.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.sroa.0.06.i.i49.i.i.i.prol
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !80135, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.gg, ptr %i.hg, align 8, !noalias !80136
  %i.hh = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.prol to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 272
  store i16 %i.hh, ptr %i.hi, align 8, !noalias !80136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i48.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.prol, !llvm.loop !80072

.lr.ph.i.i48.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i48.i.i.i.prol, %.lr.ph.i.i48.i.i.i.preheader
  %.sroa.0.06.i.i49.i.i.i.unr = phi i64 [ %i.gm, %.lr.ph.i.i48.i.i.i.preheader ], [ %i.hd, %.lr.ph.i.i48.i.i.i.prol ]
  %i.hj = icmp ult i64 %i.hc, 3
  br i1 %i.hj, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i", label %.lr.ph.i.i48.i.i.i

.lr.ph.i.i48.i.i.i:                               ; preds = %.lr.ph.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i
  %.sroa.0.06.i.i49.i.i.i = phi i64 [ %i.hz, %.lr.ph.i.i48.i.i.i ], [ %.sroa.0.06.i.i49.i.i.i.unr, %.lr.ph.i.i48.i.i.i.prol.loopexit ] ; 7 uses
  %i.hk = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.sroa.0.06.i.i49.i.i.i
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !80135, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.gg, ptr %i.hm, align 8, !noalias !80136
  %i.hn = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 272
  store i16 %i.hn, ptr %i.ho, align 8, !noalias !80136
  %i.hp = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hk
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !80135, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.gg, ptr %i.hr, align 8, !noalias !80136
  %i.hs = trunc nuw nsw i64 %i.hk to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 272
  store i16 %i.hs, ptr %i.ht, align 8, !noalias !80136
  %i.hu = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hp
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !80135, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.gg, ptr %i.hw, align 8, !noalias !80136
  %i.hx = trunc nuw nsw i64 %i.hp to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 272
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !80136
  %i.hz = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i, 4 ; 2 uses
  %i.ia = icmp ult i64 %.sroa.0.06.i.i49.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hu
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !80135, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.gg, ptr %i.ic, align 8, !noalias !80136
  %i.id = trunc nuw nsw i64 %i.hu to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 272
  store i16 %i.id, ptr %i.ie, align 8, !noalias !80136
  %exitcond.not.i.i50.i.i.i.3 = icmp eq i64 %i.hz, %i.gx
  br i1 %exitcond.not.i.i50.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i", label %.lr.ph.i.i48.i.i.i

bb.ar:                                            ; preds = %bb.al
  %i.if = add nsw i64 %i.ce, -7
  br label %bb.ap

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i": ; preds = %.lr.ph.i.i48.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i47.i.i.i
  %.sroa.847.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.847.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.850.0.copyload.i.i = load ptr, ptr %.sroa.850.0..sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.953.0.copyload.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i, align 8, !noalias !80137
  br label %bb.at

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i40.i.i.i
  %.sroa.847.sroa.0.0.copyload96.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.847.sroa.6.0.copyload97.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.953.0.copyload55.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i, align 8, !noalias !80137
  %.sroa.1056.0.copyload58.i.i = load ptr, ptr %i.bp, align 8, !noalias !80137
  br label %bb.at

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i, %bb.al, %bb.am, %bb.ae
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = icmp eq i64 %.sroa.03.0175.i.i, 0
  br i1 %i.ig, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0174.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0174.i.i, i64 noundef %.sroa.03.0175.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80138
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

.thread118.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h68bad9086b7ae906E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80095
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit"

bb.at:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i"
  %.sroa.1056.0.i.i = phi ptr [ %i.gg, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i" ], [ %.sroa.1056.0.copyload58.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i" ] ; 3 uses
  %.sroa.953.0.i.i = phi i64 [ %.sroa.953.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i" ], [ %.sroa.953.0.copyload55.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i" ]
  %.sroa.850.0.i.i = phi ptr [ %.sroa.850.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i" ], [ %i.eh, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i" ] ; 3 uses
  %.sroa.847.sroa.0.0.i.i = phi ptr [ %.sroa.847.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i" ], [ %.sroa.847.sroa.0.0.copyload96.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i" ] ; 2 uses
  %.sroa.847.sroa.6.0.i.i = phi i64 [ %.sroa.847.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit51.i.i.i" ], [ %.sroa.847.sroa.6.0.copyload97.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h503daf38f2df3ecdE.exit44.i.i.i" ] ; 2 uses
  %.sroa.044.0.i.i = load i64, ptr %i.a, align 8, !noalias !80137 ; 3 uses
  %.sroa.1159.0.copyload61.i.i = load i64, ptr %.sroa.1159.0..sroa_idx.i.i, align 8, !noalias !80137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80095
  %.not16.i.i = icmp eq i64 %.sroa.044.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit", label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.850.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1056.0.i.i) ]
  %i.ih = load ptr, ptr %.sroa.850.0.i.i, align 8, !noalias !80109, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ad

bb.av:                                            ; preds = %bb.aa
  store i16 1, ptr %i.bt, align 2, !noalias !80115
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.ii, align 8, !noalias !80114
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !80114
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !80114
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 288
  store ptr %.sroa.15.0.lcssa.i.i, ptr %i.ij, align 8, !noalias !80115
  store ptr %i.bq, ptr %.sroa.15.0.lcssa.i.i, align 8, !noalias !80139
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa.i.i, i64 272
  store i16 1, ptr %i.ik, align 8, !noalias !80139
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i": ; preds = %bb.ax, %bb.aw, %bb.as, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ab, %bb.v, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.il, %bb.ax ], [ %i.il, %bb.aw ], [ %lpad.loopexit.split-lp56, %bb.as ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ], [ %i.bi, %bb.u ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.bi, %bb.v ]
  resume { ptr, i32 } %.pn30.i

bb.aw:                                            ; preds = %bb.i
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.im, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80140
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit14.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit": ; preds = %bb.at, %bb.j, %.thread.i.i, %bb.w, %.thread118.i.i, %bb.av
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !noalias !80092, !noundef !21
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !noalias !80092
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h98f7c7870d53a787E.exit.thread29", %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h4bf0d575b0489365E.exit.i", %bb.g, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf72d5354d04fe3c9E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hcdff3deeb419ff5cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 16 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 15 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [128 x i8], align 8               ; 10 uses
  %.sroa.842.sroa.7.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.6.i.i = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.16.i.i = alloca [72 x i8], align 8       ; 15 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80291)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !80290, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread32", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !80290, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !80291 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12.i = load i64, ptr %i.n, align 8, !alias.scope !80291 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.ai, %bb.f ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1066
  %i.q = load i16, ptr %i.p, align 2, !noalias !80292, !noundef !21 ; 4 uses
  %i.r = zext i16 %i.q to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i309, i64 24 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.8.0.i.i.i308, 1
  %i.w = icmp eq ptr %i.u, %i.s
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i.i309 = phi ptr [ %i.u, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i308 = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.x = getelementptr i8, ptr %.sroa.03.0.i.i.i309, i64 8
  %.val7.i.i.i = load ptr, ptr %i.x, align 8, !noalias !80292, !nonnull !21, !noundef !21
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i309, i64 16
  %.val8.i.i.i = load i64, ptr %i.y, align 8, !noalias !80292, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val8.i.i.i)
  %i.z = sub i64 %.val12.i, %.val8.i.i.i
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !80293, !noalias !80292 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ac, i64 %i.z, i64 %i.ab
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.ad, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hda230960bc2630b9E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.8.0.i.i.i308, %.lr.ph ] ; 13 uses
  %i.ae = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ae, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1072
  %i.ag = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.4.0.i.ph.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !80294, !nonnull !21, !noundef !21
  %i.aj = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hda230960bc2630b9E.exit.i": ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80296)
  %.val.i.i13.i = load i64, ptr %2, align 8, !range !23, !alias.scope !80297, !noundef !21 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.ak, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hda230960bc2630b9E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !80298
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit": ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1066
  %.sroa.037.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !80291 ; 5 uses
  %i.am = ptrtoint ptr %1 to i64
  %i.an = icmp eq i64 %.sroa.037.0.copyload.i, -9223372036854775808
  br i1 %i.an, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread", label %bb.k

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread32": ; preds = %bb.a
  %.sroa.022.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !80291 ; 4 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !80291 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !80291
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %i.ap, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit.thread32"
  %.sroa.0.0.copyload380 = load i64, ptr %3, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !80299
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(1072) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1072, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !80299 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1072) #41
          to label %.noexc.i unwind label %bb.bw, !noalias !80299

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.aq, align 8, !noalias !80299
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1066
  store ptr %i.aq, ptr %1, align 8, !noalias !80299
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.at, align 8, !noalias !80299
  store i16 1, ptr %i.as, align 2, !noalias !80300
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.022.0.copyload.i, ptr %i.au, align 8, !noalias !80301
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.524.0.copyload.i, ptr %.sroa.5.0..sroa_idx24.i, align 8, !noalias !80301
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !80301
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  br label %bb.bz

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h63925d616f994f81E.exit"
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i)
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %.sink62.i.sroa.gep92.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %.sink61.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sink61.i.sroa.gep94.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
end_hunk_6
begin_hunk_7_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h25aa7d3b19f3fbbeE":bb.a
  %i.hy = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !89323, !nonnull !21, !noundef !21
  %i.ib = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.bx

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h940068d0edba96f7E.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.ic = icmp eq i64 %i.cb, 0
  br i1 %i.ic, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17he37e5bb3626f20e2E.exit.thread.i.i.i.i", label %bb.cb

bb.cb:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h940068d0edba96f7E.exit.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89324
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17he37e5bb3626f20e2E.exit.thread.i.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17he37e5bb3626f20e2E.exit.thread.i.i.i.i": ; preds = %bb.cb, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h940068d0edba96f7E.exit.i.i.i.i.i"
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.8.0.i.i.i.i.i.i.i867
  store i8 %.sroa.15.0.i.i.i, ptr %i.ie, align 1, !noalias !89325
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h5e19b61deacd7012E.exit.i.i.i"

bb.cc:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h660c6a3dd868422aE.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !89326
  %i.if = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !89326 ; 9 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.cd, label %bb.ce, !prof !19

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #41
          to label %.noexc.i.i9.i.i.i unwind label %bb.dq, !noalias !89326

.noexc.i.i9.i.i.i:                                ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cc
  store ptr null, ptr %i.if, align 8, !noalias !89326
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 274
  store ptr %i.if, ptr %i.z, align 8, !alias.scope !89318, !noalias !89327
  store i64 0, ptr %i.bo, align 8, !alias.scope !89318, !noalias !89327
  store i16 1, ptr %i.ih, align 2, !noalias !89328
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i64 %i.cb, ptr %i.ii, align 8, !noalias !89329
  %.sroa.518.0..sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.cd, ptr %.sroa.518.0..sroa_idx19.i.i.i.i.i, align 8, !noalias !89329
  %.sroa.6.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i.i, align 8, !noalias !89329
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 276
  store i8 %.sroa.15.0.i.i.i, ptr %i.ij, align 4, !noalias !89328
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i"

bb.cf:                                            ; preds = %._crit_edge
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !89330
  %i.il = icmp ugt i16 %i.hi, 10
  br i1 %i.il, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.im = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !89331
  store i64 0, ptr %i.bp, align 8, !noalias !89331
  br i1 %i.im, label %.invoke.i.i.i.i.i.i.i, label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !89332)
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.hj
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ci, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  store i64 %i.cb, ptr %i.in, align 8, !alias.scope !89333, !noalias !89334
  %.sroa.934.0..sroa_idx37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.cd, ptr %.sroa.934.0..sroa_idx37.i.i.i.i.i.i, align 8, !alias.scope !89333, !noalias !89334
  %.sroa.1143.0..sroa_idx46.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx46.i.i.i.i.i.i, align 8, !alias.scope !89333, !noalias !89334
  br label %.thread.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.io = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.io
  %i.iq = sub nuw nsw i64 %i.hj, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.ir = mul nuw nsw i64 %i.iq, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %i.in, i64 %i.ir, i1 false), !alias.scope !89335, !noalias !89336
  store i64 %i.cb, ptr %i.in, align 8, !alias.scope !89333, !noalias !89334
  %.sroa.934.0..sroa_idx35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.cd, ptr %.sroa.934.0..sroa_idx35.i.i.i.i.i.i, align 8, !alias.scope !89333, !noalias !89334
  %.sroa.1143.0..sroa_idx44.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx44.i.i.i.i.i.i, align 8, !alias.scope !89333, !noalias !89334
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.io
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull align 1 %i.it, i64 %i.iq, i1 false), !alias.scope !89337, !noalias !89336
  br label %.thread.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.cg
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ck [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.cl
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.cj, %bb.cg
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cj ], [ 4, %bb.cg ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.bq, align 8, !noalias !89331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !89331
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h0e03e7ac5ef929a5E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cn unwind label %bb.cp, !noalias !89338

bb.ck:                                            ; preds = %bb.cj
  store i64 6, ptr %i.bq, align 8, !noalias !89331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !89331
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h0e03e7ac5ef929a5E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cm unwind label %bb.cp, !noalias !89338

bb.cl:                                            ; preds = %bb.cj
  store i64 5, ptr %i.bq, align 8, !noalias !89331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !89331
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h0e03e7ac5ef929a5E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cn unwind label %bb.cp, !noalias !89338

bb.cm:                                            ; preds = %bb.ck
  %i.iv = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %.invoke.i.i.i.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink63.i.sroa.gep121.i.i.i.i.i.i, %bb.cl ], [ %.sink63.i.sroa.gep121.i.i.i.i.i.i, %bb.cm ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.cl ], [ %i.iv, %bb.cm ] ; 6 uses
  %i.iw = load ptr, ptr %.sink63.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !89331, !nonnull !21, !noundef !21 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 274 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 2, !noalias !89339, !noundef !21 ; 2 uses
  %i.iz = zext i16 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89340)
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.iz
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.co, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i: ; preds = %bb.cn
  store i64 %i.cb, ptr %i.jb, align 8, !alias.scope !89341, !noalias !89342
  %.sroa.934.0..sroa_idx39.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.cd, ptr %.sroa.934.0..sroa_idx39.i.i.i.i.i.i, align 8, !alias.scope !89341, !noalias !89342
  %.sroa.1143.0..sroa_idx48.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx48.i.i.i.i.i.i, align 8, !alias.scope !89341, !noalias !89342
  br label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.jc = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.jc
  %i.je = sub nuw nsw i64 %i.iz, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.jf = mul nuw nsw i64 %i.je, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %i.jb, i64 %i.jf, i1 false), !alias.scope !89343, !noalias !89339
  store i64 %i.cb, ptr %i.jb, align 8, !alias.scope !89341, !noalias !89342
  %.sroa.934.0..sroa_idx41.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.cd, ptr %.sroa.934.0..sroa_idx41.i.i.i.i.i.i, align 8, !alias.scope !89341, !noalias !89342
  %.sroa.1143.0..sroa_idx50.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx50.i.i.i.i.i.i, align 8, !alias.scope !89341, !noalias !89342
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 276 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr nonnull align 1 %i.jh, i64 %i.je, i1 false), !alias.scope !89344, !noalias !89339
  br label %bb.cr

.thread.i.i.i.i.i.i:                              ; preds = %bb.ci, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 276
  %i.jk = add nuw nsw i16 %i.hi, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i8 %.sroa.15.0.i.i.i, ptr %i.jl, align 1, !alias.scope !89337, !noalias !89336
  store i16 %i.jk, ptr %i.ik, align 2, !noalias !89336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !89330
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i"

bb.cp:                                            ; preds = %bb.cl, %bb.ck, %.invoke.i.i.i.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = icmp eq i64 %i.cb, 0
  br i1 %i.jn, label %.body.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89345
  br label %.body.i.i.i

bb.cr:                                            ; preds = %bb.co, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iw, i64 276
  %i.jp = add i16 %i.iy, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i8 %.sroa.15.0.i.i.i, ptr %i.jq, align 1, !alias.scope !89344, !noalias !89339
  store i16 %i.jp, ptr %i.ix, align 2, !noalias !89339
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !89346 ; 3 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89346 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89346 ; 2 uses
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89346 ; 2 uses
  %.sroa.722.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !89346 ; 3 uses
  %.sroa.823.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !89346
  %.sroa.924.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep121.i.i.i.i.i.i, align 8, !noalias !89346 ; 3 uses
  %.sroa.1025.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep123.i.i.i.i.i.i, align 8, !noalias !89346 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !89331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !89330
  %.not.i.i.i7.i.i.i = icmp eq i64 %.sroa.019.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i7.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.722.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.0.copyload.i.i.i.i.i.i) ]
  %i.jr = load ptr, ptr %.sroa.722.0.copyload.i.i.i.i.i.i, align 8, !noalias !89347, !noundef !21 ; 2 uses
  %.not.i197.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i197.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.do, %bb.cs
  %.sroa.20.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1171.0.copyload73.i.i.i.i.i.i, %bb.do ]
  %.sroa.16.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.924.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1068.0.i.i.i.i.i.i, %bb.do ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.859.sroa.7.0.i.i.i.i.i.i, %bb.do ]
  %.sroa.9.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.859.sroa.6.0.i.i.i.i.i.i, %bb.do ]
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.859.sroa.0.0.i.i.i.i.i.i, %bb.do ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.056.0.i.i.i.i.i.i, %bb.do ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89348)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !89349
  %i.js = call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !89349 ; 13 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.ct, label %bb.cv, !prof !19

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cu, !noalias !89349

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.cv:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.js, align 8, !noalias !89349
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 274 ; 2 uses
  store i16 0, ptr %i.jv, align 2, !noalias !89349
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 288
  store ptr %.ph, ptr %i.jw, align 8, !noalias !89349
  %i.jx = add i64 %i.hf, 1
  store ptr %i.js, ptr %.ph, align 8, !noalias !89350
  %i.jy = getelementptr inbounds nuw i8, ptr %.ph, i64 272
  store i16 0, ptr %i.jy, align 8, !noalias !89351
  store ptr %i.js, ptr %i.z, align 8, !alias.scope !89352, !noalias !89353
  store i64 %i.jx, ptr %i.bo, align 8, !alias.scope !89352, !noalias !89353
  %i.jz = icmp eq i64 %.sroa.20.0.lcssa.i.i.i.i.i.i, %i.hf
  br i1 %i.jz, label %bb.dp, label %.invoke.i.i.i.i.i.i.i.i, !prof !26

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.cv
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1627, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #41
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.cw, !noalias !89354

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.cw:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.kb, label %.body.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89355
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cs, %bb.do
  %i.kc = phi ptr [ %i.qy, %bb.do ], [ %i.jr, %bb.cs ] ; 13 uses
  %.sroa.03.0205.i.i.i.i.i.i = phi i64 [ %.sroa.056.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.019.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 8 uses
  %.sroa.8.0204.i.i.i.i.i.i = phi ptr [ %.sroa.859.sroa.0.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 8 uses
  %.sroa.9.0203.i.i.i.i.i.i = phi i64 [ %.sroa.859.sroa.6.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.913.0202.i.i.i.i.i.i = phi i8 [ %.sroa.859.sroa.7.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.1016.0201.i.i.i.i.i.i = phi ptr [ %.sroa.862.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.722.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %.sroa.13.0200.i.i.i.i.i.i = phi i64 [ %.sroa.965.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.823.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.sroa.16.0199.i.i.i.i.i.i = phi ptr [ %.sroa.1068.0.i.i.i.i.i.i, %bb.do ], [ %.sroa.924.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 3 uses
  %.sroa.20.0198.i.i.i.i.i.i = phi i64 [ %.sroa.1171.0.copyload73.i.i.i.i.i.i, %bb.do ], [ %.sroa.1025.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %i.kd = add i64 %.sroa.13.0200.i.i.i.i.i.i, 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.1016.0201.i.i.i.i.i.i, i64 272
  %i.kf = load i16, ptr %i.ke, align 8, !noalias !89347 ; 5 uses
  %i.kg = zext i16 %i.kf to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !89330
  %i.kh = icmp eq i64 %.sroa.20.0198.i.i.i.i.i.i, %.sroa.13.0200.i.i.i.i.i.i
  br i1 %i.kh, label %bb.cz, label %bb.cy, !prof !26

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1634, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #41
          to label %bb.da unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !89356

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 274
  %i.kj = load i16, ptr %i.ki, align 2, !noalias !89356, !noundef !21 ; 4 uses
  %i.kk = icmp ult i16 %i.kj, 11
  br i1 %i.kk, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cy
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.kl = icmp ult i16 %i.kf, 5
  store ptr %i.kc, ptr %i.e, align 8, !noalias !89357
  store i64 %i.kd, ptr %i.br, align 8, !noalias !89357
  br i1 %i.kl, label %.invoke.i29.i.i.i.i.i.i, label %bb.de

bb.dc:                                            ; preds = %bb.cz
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 274
  %i.kn = zext nneg i16 %i.kj to i64              ; 4 uses
  %i.ko = add nuw nsw i16 %i.kj, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89358)
  %i.kq = add nuw nsw i64 %i.kg, 1                ; 7 uses
  %.not.i.i31.not.i.i.i.i.i.i = icmp ult i16 %i.kf, %i.kj
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kg ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i.i, label %bb.dd, label %_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dc
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.kr, align 8, !alias.scope !89359, !noalias !89360
  %.sroa.1180.0..sroa_idx89.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx89.i.i.i.i.i.i, align 8, !alias.scope !89359, !noalias !89360
  %.sroa.14.0..sroa_idx99.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx99.i.i.i.i.i.i, align 8, !alias.scope !89359, !noalias !89360
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 276
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kg
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.kt, align 1, !alias.scope !89361, !noalias !89362
  br label %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kq
  %i.kv = sub nuw nsw i64 %i.kn, %i.kg            ; 3 uses
  %i.kw = mul nuw nsw i64 %i.kv, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ku, ptr nonnull align 8 %i.kr, i64 %i.kw, i1 false), !alias.scope !89363, !noalias !89362
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.kr, align 8, !alias.scope !89359, !noalias !89360
  %.sroa.1180.0..sroa_idx87.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx87.i.i.i.i.i.i, align 8, !alias.scope !89359, !noalias !89360
  %.sroa.14.0..sroa_idx97.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx97.i.i.i.i.i.i, align 8, !alias.scope !89359, !noalias !89360
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 276 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kg ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr nonnull align 1 %i.ky, i64 %i.kv, i1 false), !alias.scope !89361, !noalias !89362
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.ky, align 1, !alias.scope !89361, !noalias !89362
  %i.la = getelementptr inbounds nuw i8, ptr %i.kc, i64 288 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kq
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = shl nuw nsw i64 %i.kv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ld, ptr nonnull align 8 %i.lb, i64 %i.le, i1 false), !alias.scope !89364, !noalias !89362
  br label %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dd, %_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i.i.i.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kc, i64 288 ; 6 uses
  %i.lg = add nuw nsw i64 %i.kn, 2                ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.kq
  store ptr %.sroa.16.0199.i.i.i.i.i.i, ptr %i.lh, align 8, !alias.scope !89364, !noalias !89362
  store i16 %i.ko, ptr %i.km, align 2, !noalias !89362
  %i.li = icmp samesign ult i64 %i.kq, %i.lg
  br i1 %i.li, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.thread142.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i.i.i.i.i.i.i.i
  %i.lj = add nuw nsw i64 %i.kn, 1
  %i.lk = sub nsw i64 %i.lj, %i.kg
  %i.ll = sub nsw i64 %i.kn, %i.kg
  %xtraiter1106 = and i64 %i.lk, 3                ; 2 uses
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1108 = phi i64 [ %prol.iter1108.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ln = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.ln)
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !89365, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.lp, align 8, !noalias !89366
  %i.lq = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 272
  store i16 %i.lq, ptr %i.lr, align 8, !noalias !89366
  %prol.iter1108.next = add i64 %prol.iter1108, 1 ; 2 uses
  %prol.iter1108.cmp.not = icmp eq i64 %prol.iter1108.next, %xtraiter1106
  br i1 %prol.iter1108.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !89168

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ls = icmp ult i64 %i.ll, 3
  br i1 %i.ls, label %.thread142.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lt = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !89365, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.lv, align 8, !noalias !89366
  %i.lw = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 272
  store i16 %i.lw, ptr %i.lx, align 8, !noalias !89366
  %i.ly = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lt
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !89365, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.ma, align 8, !noalias !89366
  %i.mb = trunc nuw nsw i64 %i.lt to i16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 272
  store i16 %i.mb, ptr %i.mc, align 8, !noalias !89366
  %i.md = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
end_hunk_7
begin_hunk_8_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h25aa7d3b19f3fbbeE":bb.a
  store ptr %i.mo, ptr %i.nz, align 8, !noalias !89373
  %i.oa = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 272
  store i16 %i.oa, ptr %i.ob, align 8, !noalias !89373
  %i.oc = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nx
  %i.oe = load ptr, ptr %i.od, align 8, !noalias !89372, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mo, ptr %i.oe, align 8, !noalias !89373
  %i.of = trunc nuw nsw i64 %i.nx to i16
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 272
  store i16 %i.of, ptr %i.og, align 8, !noalias !89373
  %i.oh = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.oc
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !89372, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mo, ptr %i.oj, align 8, !noalias !89373
  %i.ok = trunc nuw nsw i64 %i.oc to i16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 272
  store i16 %i.ok, ptr %i.ol, align 8, !noalias !89373
  %i.om = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.on = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.oh
  %i.op = load ptr, ptr %i.oo, align 8, !noalias !89372, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mo, ptr %i.op, align 8, !noalias !89373
  %i.oq = trunc nuw nsw i64 %i.oh to i16
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 272
  store i16 %i.oq, ptr %i.or, align 8, !noalias !89373
  %exitcond.not.i.i45.i.i.i.i.i.i.i.3 = icmp eq i64 %i.om, %i.nk
  br i1 %exitcond.not.i.i45.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dl, %bb.dg
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.qw, %bb.dl ], [ 0, %bb.dg ] ; 9 uses
  %i.os = load ptr, ptr %i.bt, align 8, !noalias !89357, !nonnull !21, !noundef !21 ; 12 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 274 ; 2 uses
  %i.ou = load i16, ptr %i.ot, align 2, !noalias !89374, !noundef !21 ; 2 uses
  %i.ov = zext i16 %i.ou to i64                   ; 5 uses
  %i.ow = add i16 %i.ou, 1
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.oy = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i48.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.ov
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i.i.i.i, label %bb.dk, label %_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i49.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i49.i.i.i.i.i.i.i: ; preds = %bb.dj
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.oz, align 8, !noalias !89368
  %.sroa.1180.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89368
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89368
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 276
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.pb, align 1, !alias.scope !89375, !noalias !89374
  br label %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i50.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %i.oy
  %i.pd = sub nuw nsw i64 %i.ov, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  %i.pe = mul nuw nsw i64 %i.pd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pc, ptr nonnull align 8 %i.oz, i64 %i.pe, i1 false), !alias.scope !89376, !noalias !89374
  store i64 %.sroa.03.0205.i.i.i.i.i.i, ptr %i.oz, align 8, !noalias !89368
  %.sroa.1180.0..sroa_idx81.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %.sroa.8.0204.i.i.i.i.i.i, ptr %.sroa.1180.0..sroa_idx81.i.i.i.i.i.i, align 8, !noalias !89368
  %.sroa.14.0..sroa_idx91.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store i64 %.sroa.9.0203.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx91.i.i.i.i.i.i, align 8, !noalias !89368
  %i.pf = getelementptr inbounds nuw i8, ptr %i.os, i64 276 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.oy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ph, ptr nonnull align 1 %i.pg, i64 %i.pd, i1 false), !alias.scope !89375, !noalias !89374
  store i8 %.sroa.913.0202.i.i.i.i.i.i, ptr %i.pg, align 1, !alias.scope !89375, !noalias !89374
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 288 ; 2 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.oy
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = shl nuw nsw i64 %i.pd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pl, ptr nonnull align 8 %i.pj, i64 %i.pm, i1 false), !alias.scope !89377, !noalias !89374
  br label %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i50.i.i.i.i.i.i.i: ; preds = %bb.dk, %_ZN5alloc11collections5btree4node12slice_insert17h677745d5ae26cad8E.exit.i49.i.i.i.i.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.os, i64 288 ; 6 uses
  %i.po = add nuw nsw i64 %i.ov, 2                ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.oy
  store ptr %.sroa.16.0199.i.i.i.i.i.i, ptr %i.pp, align 8, !alias.scope !89377, !noalias !89374
  store i16 %i.ow, ptr %i.ot, align 2, !noalias !89374
  %i.pq = icmp samesign ult i64 %i.oy, %i.po
  br i1 %i.pq, label %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i50.i.i.i.i.i.i.i
  %i.pr = add nuw nsw i64 %i.ov, 1
  %i.ps = sub nsw i64 %i.pr, %.sroa.10.1.i.i.i.i.i.i.i
  %i.pt = sub nsw i64 %i.ov, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.ps, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol = phi i64 [ %i.pu, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ %i.oy, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ]
  %i.pu = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.pv = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.pv)
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol
  %i.px = load ptr, ptr %i.pw, align 8, !noalias !89378, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.os, ptr %i.px, align 8, !noalias !89379
  %i.py = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol to i16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 272
  store i16 %i.py, ptr %i.pz, align 8, !noalias !89379
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, !llvm.loop !89196

.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr = phi i64 [ %i.oy, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ], [ %i.pu, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ]
  %i.qa = icmp ult i64 %i.pt, 3
  br i1 %i.qa, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i = phi i64 [ %i.qq, %.lr.ph.i.i51.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.qb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i
  %i.qd = load ptr, ptr %i.qc, align 8, !noalias !89378, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.os, ptr %i.qd, align 8, !noalias !89379
  %i.qe = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i to i16
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 272
  store i16 %i.qe, ptr %i.qf, align 8, !noalias !89379
  %i.qg = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.qb
  %i.qi = load ptr, ptr %i.qh, align 8, !noalias !89378, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.os, ptr %i.qi, align 8, !noalias !89379
  %i.qj = trunc nuw nsw i64 %i.qb to i16
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 272
  store i16 %i.qj, ptr %i.qk, align 8, !noalias !89379
  %i.ql = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.qg
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !89378, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.os, ptr %i.qn, align 8, !noalias !89379
  %i.qo = trunc nuw nsw i64 %i.qg to i16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 272
  store i16 %i.qo, ptr %i.qp, align 8, !noalias !89379
  %i.qq = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.qr = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.ql
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !89378, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.os, ptr %i.qt, align 8, !noalias !89379
  %i.qu = trunc nuw nsw i64 %i.ql to i16
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 272
  store i16 %i.qu, ptr %i.qv, align 8, !noalias !89379
  %exitcond.not.i.i53.i.i.i.i.i.i.i.3 = icmp eq i64 %i.qq, %i.po
  br i1 %exitcond.not.i.i53.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.df
  %i.qw = add nsw i64 %i.kg, -7
  br label %bb.dj

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i50.i.i.i.i.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.859.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.859.sroa.7.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.862.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.965.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  br label %bb.dn

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i42.i.i.i.i.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i.i.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.859.sroa.6.0.copyload119.i.i.i.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.859.sroa.7.0.copyload120.i.i.i.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.965.0.copyload67.i.i.i.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380
  %.sroa.1068.0.copyload70.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !89380
  br label %bb.dn

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i.i, %bb.df, %bb.dg, %bb.cy
  %lpad.loopexit.split-lp871 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qx = icmp eq i64 %.sroa.03.0205.i.i.i.i.i.i, 0
  br i1 %i.qx, label %.body.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i.i.i.i.i, i64 noundef %.sroa.03.0205.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89381
  br label %.body.i.i.i

.thread142.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hd43b1cb4e7a9d413E.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89330
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i"

bb.dn:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i"
  %.sroa.1068.0.i.i.i.i.i.i = phi ptr [ %i.os, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i.i.i.i.i = phi i64 [ %.sroa.965.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.965.0.copyload67.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ]
  %.sroa.862.0.i.i.i.i.i.i = phi ptr [ %.sroa.862.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %i.mo, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i.i.i.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit55.i.i.i.i.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hb76a0ca36178793aE.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !89380 ; 3 uses
  %.sroa.1171.0.copyload73.i.i.i.i.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89380 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !89357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89330
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.056.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i.i.i.i.i) ]
  %i.qy = load ptr, ptr %.sroa.862.0.i.i.i.i.i.i, align 8, !noalias !89347, !noundef !21 ; 2 uses
  %.not.i.i.i.i8.i.i.i = icmp eq ptr %i.qy, null
  br i1 %.not.i.i.i.i8.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.cv
  store i16 1, ptr %i.jv, align 2, !noalias !89354
  %i.qz = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.qz, align 8, !noalias !89382
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !89382
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !89382
  %i.ra = getelementptr inbounds nuw i8, ptr %i.js, i64 276
  store i8 %.sroa.913.0.lcssa.i.i.i.i.i.i, ptr %i.ra, align 4, !noalias !89354
  %i.rb = getelementptr inbounds nuw i8, ptr %i.js, i64 296
  store ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, ptr %i.rb, align 8, !noalias !89354
  store ptr %i.js, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, align 8, !noalias !89383
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, i64 272
  store i16 1, ptr %i.rc, align 8, !noalias !89383
  %.pre.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !89318, !noalias !89327
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i"

bb.dq:                                            ; preds = %bb.cd
  %i.rd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.re = icmp eq i64 %i.cb, 0
  br i1 %i.re, label %.body.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89384
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h44fa5c1e7d724012E.exit.i.i.i.i": ; preds = %bb.dn, %bb.dp, %.thread142.i.i.i.i.i.i, %bb.cr, %.thread.i.i.i.i.i.i, %bb.ce
  %i.rf = phi ptr [ %i.if, %bb.ce ], [ %i.js, %bb.dp ], [ %.ph, %.thread142.i.i.i.i.i.i ], [ %.ph, %bb.cr ], [ %.ph, %.thread.i.i.i.i.i.i ], [ %.ph, %bb.dn ]
  %i.rg = phi i64 [ %.ph880, %bb.ce ], [ %.pre.i.i.i, %bb.dp ], [ %.ph880, %.thread142.i.i.i.i.i.i ], [ %.ph880, %bb.cr ], [ %.ph880, %.thread.i.i.i.i.i.i ], [ %.ph880, %bb.dn ]
  %i.rh = add i64 %i.rg, 1                        ; 2 uses
  store i64 %i.rh, ptr %i.ba, align 8, !alias.scope !89318, !noalias !89327
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h5e19b61deacd7012E.exit.i.i.i.outer"

_ZN10serde_core2de9MapAccess10next_entry17h660c6a3dd868422aE.exit.thread21.i.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !89385
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hda18ae9fabb1f900E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.ei, %bb.dw, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.si, %bb.ei ], [ %i.rr, %bb.dw ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ds:                                            ; preds = %.body.i.i.i
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !89245
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hda18ae9fabb1f900E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h660c6a3dd868422aE.exit.thread21.i.i.i, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h4adef6cdedccdc6cE.exit.i.i.i"
  %.sroa.731.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h4adef6cdedccdc6cE.exit.i.i.i" ], [ %.ph, %_ZN10serde_core2de9MapAccess10next_entry17h660c6a3dd868422aE.exit.thread21.i.i.i ] ; 7 uses
  %.sroa.030.0.i.i = phi i64 [ 1, %"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$GT$17h4adef6cdedccdc6cE.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h660c6a3dd868422aE.exit.thread21.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !89240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !89236
  %i.rj = load i8, ptr %i.aq, align 8, !range !44, !alias.scope !89238, !noundef !21
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %bb.dv, label %bb.du

bb.dt:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !89236
  store i64 24, ptr %i.ac, align 8, !noalias !89236
  %i.rl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !89237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !89236
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rl, ptr %i.rm, align 8, !alias.scope !89237
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h9bbba62476d47349E.exit"

bb.du:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hda18ae9fabb1f900E.exit.i.i"
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !alias.scope !89238, !noundef !21
  %i.rp = add i8 %i.ro, 1
  store i8 %i.rp, ptr %i.rn, align 1, !alias.scope !89238
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hda18ae9fabb1f900E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !89236
  store i64 %.sroa.030.0.i.i, ptr %i.ab, align 8, !noalias !89236
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !89236
  %.sroa.932.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, i64 16, i1 false), !noalias !89236
  %i.rq = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd749302c89dd846aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.dx unwind label %bb.dw, !noalias !89237 ; 9 uses

bb.dw:                                            ; preds = %bb.dv
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr192drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$GT$$C$serde_json..error..Error$GT$$GT$17he522ac45c18278c3E"(ptr noalias noundef align 8 dereferenceable(32) %i.ab) #43
          to label %common.resume.i.i unwind label %bb.ee, !noalias !89237

bb.dx:                                            ; preds = %bb.dv
  %.sroa.936.0.copyload.i.i = load i64, ptr %.sroa.932.0..sroa_idx.i.i, align 8, !noalias !89236 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !89236 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !89236
  %i.rs = trunc nuw i64 %.sroa.030.0.i.i to i1
  br i1 %i.rs, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not.i.i = icmp eq ptr %i.rq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  br i1 %.not.i.i, label %bb.ej, label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  %.not62.i.i = icmp eq ptr %i.rq, null
  br i1 %.not62.i.i, label %.thread52.i.i, label %bb.ef

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !89386
  %.not.i.i.i25.i.i = icmp eq ptr %.sroa.731.0.i.i, null
  br i1 %.not.i.i.i25.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30be0a1904f1d06dE.exit.i.i.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.731.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.731.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !89387, !noalias !89386
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30be0a1904f1d06dE.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30be0a1904f1d06dE.exit.i.i.i.i": ; preds = %bb.eb, %bb.ea
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.eb ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.eb ], [ 0, %bb.ea ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !89387, !noalias !89386
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.rt, align 8, !alias.scope !89387, !noalias !89386
  %i.ru = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.ru, align 8, !alias.scope !89387, !noalias !89386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89388
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha30d2c7495924542E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !89237
  %i.rv = load ptr, ptr %i.b, align 8, !noalias !89388, !noundef !21 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.lr.ph.i.i.i.i26.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30be0a1904f1d06dE.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ec

bb.ec:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i26.i.i
  %i.rw = phi ptr [ %i.rv, %.lr.ph.i.i.i.i26.i.i ], [ %i.sb, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !89388
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = getelementptr inbounds nuw [24 x i8], ptr %i.rx, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89389)
  call void @llvm.experimental.noalias.scope.decl(metadata !89390)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ry, align 8, !range !23, !alias.scope !89391, !noalias !89392, !noundef !21 ; 2 uses
  %i.rz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.rz, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i", label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sa, align 8, !alias.scope !89391, !noalias !89392, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !89393
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i": ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89388
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha30d2c7495924542E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !89237
  %i.sb = load ptr, ptr %i.b, align 8, !noalias !89388, !noundef !21 ; 2 uses
  %.not.i.i.i.i27.i.i = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i27.i.i, label %.thread57.i.i, label %bb.ec

.thread57.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb10e739fe30aee80E.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h30be0a1904f1d06dE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !89386
  br label %.thread52.i.i

bb.ee:                                            ; preds = %bb.dw
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !89237
  unreachable

bb.ef:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !89394)
  call void @llvm.experimental.noalias.scope.decl(metadata !89395)
  %i.sd = load i64, ptr %i.rq, align 8, !range !47, !alias.scope !89396, !noalias !89237, !noundef !21
  switch i64 %i.sd, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.eg
    i64 1, label %bb.eh
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.se = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.se, align 8, !alias.scope !89396, !noalias !89237, !noundef !21 ; 2 uses
  %i.sf = icmp eq i64 %.val1.i.i.i.i.i.i, 0
end_hunk_8
begin_hunk_9_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h5f657d94c70bbdcaE":bb.a
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !100526, !noalias !100524
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.fn, align 8, !alias.scope !100526, !noalias !100524
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.fo, align 8, !alias.scope !100526, !noalias !100524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !100527
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !100528
  %i.fp = load ptr, ptr %i.h, align 8, !noalias !100527, !noundef !21
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !100527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !100527
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !100528
  %i.fq = load ptr, ptr %i.h, align 8, !noalias !100527, !noundef !21
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !100527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !100524
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i"

bb.cd:                                            ; preds = %.noexc26.i.i.i
  %i.fr = load i32, ptr %i.bj, align 4, !noalias !100513, !noundef !21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !100513
  call void @llvm.experimental.noalias.scope.decl(metadata !100529)
  call void @llvm.experimental.noalias.scope.decl(metadata !100530)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ch
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.gh, %bb.ch ], [ %i.bq, %bb.cd ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.ch ], [ %.ph582, %bb.cd ] ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.fu = load i16, ptr %i.ft, align 2, !noalias !100531, !noundef !21 ; 4 uses
  %i.fv = zext i16 %i.fu to i64                   ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fv
  %i.fx = icmp eq i16 %i.fu, 0
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

bb.cf:                                            ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i572, i64 1 ; 2 uses
  %i.fz = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i571, 1
  %i.ga = icmp eq ptr %i.fy, %i.fw
  br i1 %i.ga, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ce, %bb.cf
  %.sroa.03.0.i.i.i.i.i.i.i572 = phi ptr [ %i.fy, %bb.cf ], [ %i.fs, %bb.ce ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i571 = phi i64 [ %i.fz, %bb.cf ], [ 0, %bb.ce ] ; 3 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i572, align 1, !range !121, !noalias !100531, !noundef !21
  %i.gb = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %.sroa.10.020.i.i.i.i.i, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.gb, label %bb.cg [
    i8 -1, label %._crit_edge
    i8 0, label %bb.ci
    i8 1, label %bb.cf
  ]

bb.cg:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.cf, %.lr.ph, %bb.ce
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.fv, %bb.ce ], [ %i.fv, %bb.cf ], [ %.sroa.8.0.i.i.i.i.i.i.i571, %.lr.ph ] ; 13 uses
  %i.gc = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.gc, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.ge = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !100532, !nonnull !21, !noundef !21
  %i.gh = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.ce

bb.ci:                                            ; preds = %.lr.ph
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.sroa.8.0.i.i.i.i.i.i.i571
  store i32 %i.fr, ptr %i.gj, align 4, !noalias !100533
  br label %bb.h

bb.cj:                                            ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !100534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100534
  %i.gl = icmp ult i16 %i.fu, 11
  br i1 %i.gl, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gm = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !100535
  store i64 0, ptr %i.bl, align 8, !noalias !100535
  br i1 %i.gm, label %bb.cq, label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.fv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.cm, label %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.gn, align 1, !alias.scope !100536, !noalias !100537
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i"

bb.cm:                                            ; preds = %bb.cl
  %i.go = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.go
  %i.gq = sub nuw nsw i64 %i.fv, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull align 1 %i.gn, i64 %i.gq, i1 false), !alias.scope !100536, !noalias !100537
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.gn, align 1, !alias.scope !100536, !noalias !100537
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.go
  %i.gu = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gt, ptr nonnull align 4 %i.gs, i64 %i.gu, i1 false), !alias.scope !100538, !noalias !100537
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i": ; preds = %bb.cm, %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gw = add nuw nsw i16 %i.fu, 1
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.fr, ptr %i.gx, align 4, !alias.scope !100538, !noalias !100537
  store i16 %i.gw, ptr %i.gk, align 2, !noalias !100537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !100534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100534
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i"

bb.cn:                                            ; preds = %bb.ck
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.co [
    i64 5, label %bb.cq
    i64 6, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  store i64 6, ptr %i.bm, align 8, !noalias !100535
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !100448

.noexc29.i.i.i:                                   ; preds = %bb.co
  %i.gy = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc30.i.i.i

bb.cp:                                            ; preds = %bb.cn
  store i64 5, ptr %i.bm, align 8, !noalias !100535
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !100448

bb.cq:                                            ; preds = %bb.cn, %bb.ck
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.ck ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cn ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.bm, align 8, !noalias !100535
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !100448

.noexc30.i.i.i:                                   ; preds = %bb.cq, %bb.cp, %.noexc29.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.cp ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc29.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.cq ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cp ], [ %i.gy, %.noexc29.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cq ] ; 6 uses
  %i.gz = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !100535, !nonnull !21, !noundef !21 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 54 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !noalias !100539, !noundef !21 ; 2 uses
  %i.hc = zext i16 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.cr, label %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.he, align 1, !alias.scope !100540, !noalias !100539
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"

bb.cr:                                            ; preds = %.noexc30.i.i.i
  %i.hf = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  %i.hh = sub nuw nsw i64 %i.hc, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %i.he, i64 %i.hh, i1 false), !alias.scope !100540, !noalias !100539
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.he, align 1, !alias.scope !100540, !noalias !100539
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hf
  %i.hl = shl nuw nsw i64 %i.hh, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr nonnull align 4 %i.hj, i64 %i.hl, i1 false), !alias.scope !100541, !noalias !100539
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i": ; preds = %bb.cr, %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hn = add i16 %i.hb, 1
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.fr, ptr %i.ho, align 4, !alias.scope !100541, !noalias !100539
  store i16 %i.hn, ptr %i.ha, align 2, !noalias !100539
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !100542 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !100542 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !100542 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !100542
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !100542 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !100542 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !100534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100534
  %.not.i.i.i27.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 18
  br i1 %.not.i.i.i27.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i", label %bb.cs

bb.cs:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.hp = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !100543, !noundef !21 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.df, %bb.cs
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.df ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.1024.0.i.i.i.i.i.i, %bb.df ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.715.0.i.i.i.i.i.i, %bb.df ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.df ]
  call void @llvm.experimental.noalias.scope.decl(metadata !100544)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !100545
  %i.hq = call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !100545 ; 11 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ct, label %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i, !prof !19

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cu, !noalias !100545

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.hq, align 8, !noalias !100545
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 54 ; 2 uses
  store i16 0, ptr %i.ht, align 2, !noalias !100545
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  store ptr %.ph582, ptr %i.hu, align 8, !noalias !100545
  %i.hv = add i64 %i.bq, 1
  store ptr %i.hq, ptr %.ph582, align 8, !noalias !100546
  %i.hw = getelementptr inbounds nuw i8, ptr %.ph582, i64 52
  store i16 0, ptr %i.hw, align 4, !noalias !100547
  store ptr %i.hq, ptr %i.ac, align 8, !alias.scope !100548, !noalias !100549
  store i64 %i.hv, ptr %i.bk, align 8, !alias.scope !100548, !noalias !100549
  %i.hx = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.bq
  br i1 %i.hx, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !26

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.ht, align 2, !noalias !100550
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.hy, align 8, !noalias !100550
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.hz, align 8, !noalias !100550
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.ia, align 8, !noalias !100550
  store ptr %i.hq, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, align 8, !noalias !100551
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, i64 52
  store i16 1, ptr %i.ib, align 4, !noalias !100551
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cs, %bb.df
  %i.ic = phi ptr [ %i.pa, %bb.df ], [ %i.hp, %bb.cs ] ; 13 uses
  %.sroa.0.097.i.i.i.i.i.i = phi i8 [ %.sroa.011.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.74.096.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 6 uses
  %.sroa.9.095.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %.sroa.10.094.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.sroa.11.093.i.i.i.i.i.i = phi ptr [ %.sroa.1024.0.i.i.i.i.i.i, %bb.df ], [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.cs ] ; 3 uses
  %.sroa.13.092.i.i.i.i.i.i = phi i64 [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.df ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.cs ]
  %i.id = add i64 %.sroa.10.094.i.i.i.i.i.i, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.9.095.i.i.i.i.i.i, i64 52
  %i.if = load i16, ptr %i.ie, align 4, !noalias !100543 ; 5 uses
  %i.ig = zext i16 %i.if to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !100534
  %i.ih = icmp eq i64 %.sroa.13.092.i.i.i.i.i.i, %.sroa.10.094.i.i.i.i.i.i
  br i1 %i.ih, label %bb.cv, label %.invoke.i.i.i, !prof !26

.invoke.i.i.i:                                    ; preds = %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ii = phi ptr [ @1634, %.lr.ph.i.i.i.i.i.i ], [ @1627, %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i ]
  %i.ij = phi i64 [ 53, %.lr.ph.i.i.i.i.i.i ], [ 48, %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i ]
  %i.ik = phi ptr [ @1635, %.lr.ph.i.i.i.i.i.i ], [ @1628, %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ii, i64 noundef %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #41
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !100448

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 54
  %i.im = load i16, ptr %i.il, align 2, !noalias !100552, !noundef !21 ; 4 uses
  %i.in = icmp ult i16 %i.im, 11
  br i1 %i.in, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.io = icmp ult i16 %i.if, 5
  store ptr %i.ic, ptr %i.e, align 8, !noalias !100553
  store i64 %i.id, ptr %i.bn, align 8, !noalias !100553
  br i1 %i.io, label %bb.dc, label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 54
  %i.iq = zext nneg i16 %i.im to i64              ; 4 uses
  %i.ir = add nuw nsw i16 %i.im, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 56 ; 2 uses
  %i.it = add nuw nsw i64 %i.ig, 1                ; 7 uses
  %.not.i.i45.not.i.i.i.i.i.i = icmp ult i16 %i.if, %i.im
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ig ; 3 uses
  br i1 %.not.i.i45.not.i.i.i.i.i.i, label %bb.cy, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cx
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.iu, align 1, !alias.scope !100554, !noalias !100555
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ig
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.iw, align 4, !alias.scope !100556, !noalias !100555
  br label %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  %i.iy = sub nuw nsw i64 %i.iq, %i.ig            ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr nonnull align 1 %i.iu, i64 %i.iy, i1 false), !alias.scope !100554, !noalias !100555
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.iu, align 1, !alias.scope !100554, !noalias !100555
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ig ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.it
  %i.jc = shl nuw nsw i64 %i.iy, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr nonnull align 4 %i.ja, i64 %i.jc, i1 false), !alias.scope !100556, !noalias !100555
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.ja, align 4, !alias.scope !100556, !noalias !100555
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 72 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.it
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ig
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !100557, !noalias !100555
  br label %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ic, i64 72 ; 6 uses
  %i.jj = add nuw nsw i64 %i.iq, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.it
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.jk, align 8, !alias.scope !100557, !noalias !100555
  store i16 %i.ir, ptr %i.ip, align 2, !noalias !100555
  %i.jl = icmp samesign ult i64 %i.it, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.thread.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i.i.i.i.i.i.i.i
  %i.jm = add nuw nsw i64 %i.iq, 1
  %i.jn = sub nsw i64 %i.jm, %i.ig
  %i.jo = sub nsw i64 %i.iq, %i.ig
  %xtraiter727 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter729 = phi i64 [ %prol.iter729.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !100558, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ic, ptr %i.js, align 8, !noalias !100559
  %i.jt = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 52
  store i16 %i.jt, ptr %i.ju, align 4, !noalias !100559
  %prol.iter729.next = add i64 %prol.iter729, 1   ; 2 uses
  %prol.iter729.cmp.not = icmp eq i64 %prol.iter729.next, %xtraiter727
  br i1 %prol.iter729.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !100385

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.jv = icmp ult i64 %i.jo, 3
  br i1 %i.jv, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !100558, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ic, ptr %i.jy, align 8, !noalias !100559
  %i.jz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 52
  store i16 %i.jz, ptr %i.ka, align 4, !noalias !100559
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jw
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !100558, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ic, ptr %i.kd, align 8, !noalias !100559
  %i.ke = trunc nuw nsw i64 %i.jw to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 52
  store i16 %i.ke, ptr %i.kf, align 4, !noalias !100559
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kb
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !100558, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ic, ptr %i.ki, align 8, !noalias !100559
  %i.kj = trunc nuw nsw i64 %i.kb to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 52
  store i16 %i.kj, ptr %i.kk, align 4, !noalias !100559
  %i.kl = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.km = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.km)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kg
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !100558, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ic, ptr %i.ko, align 8, !noalias !100559
  %i.kp = trunc nuw nsw i64 %i.kg to i16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 52
  store i16 %i.kp, ptr %i.kq, align 4, !noalias !100559
end_hunk_9
begin_hunk_10_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h5f657d94c70bbdcaE":bb.a
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol = phi i64 [ %i.lu, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ %i.ky, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter726 = phi i64 [ %prol.iter726.next, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ]
  %i.lu = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.lv = icmp samesign ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !100564, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ks, ptr %i.lx, align 8, !noalias !100565
  %i.ly = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 52
  store i16 %i.ly, ptr %i.lz, align 4, !noalias !100565
  %prol.iter726.next = add i64 %prol.iter726, 1   ; 2 uses
  %prol.iter726.cmp.not = icmp eq i64 %prol.iter726.next, %xtraiter724
  br i1 %prol.iter726.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, !llvm.loop !100398

.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr = phi i64 [ %i.ky, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ], [ %i.lu, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ]
  %i.ma = icmp ult i64 %i.lt, 3
  br i1 %i.ma, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i = phi i64 [ %i.mq, %.lr.ph.i.i44.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !100564, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ks, ptr %i.md, align 8, !noalias !100565
  %i.me = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i to i16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 52
  store i16 %i.me, ptr %i.mf, align 4, !noalias !100565
  %i.mg = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mb
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !100564, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ks, ptr %i.mi, align 8, !noalias !100565
  %i.mj = trunc nuw nsw i64 %i.mb to i16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 52
  store i16 %i.mj, ptr %i.mk, align 4, !noalias !100565
  %i.ml = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.mg
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !100564, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ks, ptr %i.mn, align 8, !noalias !100565
  %i.mo = trunc nuw nsw i64 %i.mg to i16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 52
  store i16 %i.mo, ptr %i.mp, align 4, !noalias !100565
  %i.mq = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.mr = icmp ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.mr)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.ml
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !100564, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.ks, ptr %i.mt, align 8, !noalias !100565
  %i.mu = trunc nuw nsw i64 %i.ml to i16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 52
  store i16 %i.mu, ptr %i.mv, align 4, !noalias !100565
  %exitcond.not.i.i46.i.i.i.i.i.i.i.3 = icmp eq i64 %i.mq, %i.lo
  br i1 %exitcond.not.i.i46.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i43.i.i.i.i.i.i.i
  %.sroa.715.0.copyload17.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !100566
  %.sroa.921.0.copyload23.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100566
  %.sroa.1024.0.copyload26.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !100566
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i"

.noexc35.i.i.i:                                   ; preds = %bb.db, %.noexc34.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.kr, %.noexc34.i.i.i ], [ 0, %bb.db ] ; 9 uses
  %i.mw = load ptr, ptr %i.bp, align 8, !noalias !100553, !nonnull !21, !noundef !21 ; 12 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 54 ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !noalias !100567, !noundef !21 ; 2 uses
  %i.mz = zext i16 %i.my to i64                   ; 5 uses
  %i.na = add i16 %i.my, 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i49.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.mz
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i49.not.i.i.i.i.i.i.i, label %bb.de, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i: ; preds = %.noexc35.i.i.i
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.nd, align 1, !alias.scope !100568, !noalias !100567
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.nf, align 4, !alias.scope !100569, !noalias !100567
  br label %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i51.i.i.i.i.i.i.i

bb.de:                                            ; preds = %.noexc35.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc
  %i.nh = sub nuw nsw i64 %i.mz, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull align 1 %i.nd, i64 %i.nh, i1 false), !alias.scope !100568, !noalias !100567
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.nd, align 1, !alias.scope !100568, !noalias !100567
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nc
  %i.nl = shl nuw nsw i64 %i.nh, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nk, ptr nonnull align 4 %i.nj, i64 %i.nl, i1 false), !alias.scope !100569, !noalias !100567
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.nj, align 4, !alias.scope !100569, !noalias !100567
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 72 ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nc
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = shl nuw nsw i64 %i.nh, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.np, ptr nonnull align 8 %i.nn, i64 %i.nq, i1 false), !alias.scope !100570, !noalias !100567
  br label %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i51.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i51.i.i.i.i.i.i.i: ; preds = %bb.de, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mw, i64 72 ; 6 uses
  %i.ns = add nuw nsw i64 %i.mz, 2                ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nc
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.nt, align 8, !alias.scope !100570, !noalias !100567
  store i16 %i.na, ptr %i.mx, align 2, !noalias !100567
  %i.nu = icmp samesign ult i64 %i.nc, %i.ns
  br i1 %i.nu, label %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i"

.lr.ph.i.i52.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i51.i.i.i.i.i.i.i
  %i.nv = add nuw nsw i64 %i.mz, 1
  %i.nw = sub nsw i64 %i.nv, %.sroa.10.1.i.i.i.i.i.i.i
  %i.nx = sub nsw i64 %i.mz, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.nw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol

.lr.ph.i.i52.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol = phi i64 [ %i.ny, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ %i.nc, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ]
  %i.ny = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.nz = icmp samesign ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.nz)
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !100571, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mw, ptr %i.ob, align 8, !noalias !100572
  %i.oc = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol to i16
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 52
  store i16 %i.oc, ptr %i.od, align 4, !noalias !100572
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, !llvm.loop !100411

.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr = phi i64 [ %i.nc, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ], [ %i.ny, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ]
  %i.oe = icmp ult i64 %i.nx, 3
  br i1 %i.oe, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

.lr.ph.i.i52.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i = phi i64 [ %i.ou, %.lr.ph.i.i52.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.of = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !100571, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mw, ptr %i.oh, align 8, !noalias !100572
  %i.oi = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i to i16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 52
  store i16 %i.oi, ptr %i.oj, align 4, !noalias !100572
  %i.ok = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.of
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !100571, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mw, ptr %i.om, align 8, !noalias !100572
  %i.on = trunc nuw nsw i64 %i.of to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 52
  store i16 %i.on, ptr %i.oo, align 4, !noalias !100572
  %i.op = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.ok
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !100571, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mw, ptr %i.or, align 8, !noalias !100572
  %i.os = trunc nuw nsw i64 %i.ok to i16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 52
  store i16 %i.os, ptr %i.ot, align 4, !noalias !100572
  %i.ou = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ov = icmp ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.op
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !100571, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.mw, ptr %i.ox, align 8, !noalias !100572
  %i.oy = trunc nuw nsw i64 %i.op to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 52
  store i16 %i.oy, ptr %i.oz, align 4, !noalias !100572
  %exitcond.not.i.i54.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ou, %i.ns
  br i1 %exitcond.not.i.i54.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i51.i.i.i.i.i.i.i
  %.sroa.715.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !100566
  %.sroa.818.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100566
  %.sroa.921.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100566
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.thread.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hfad9d952f3b37de5E.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100534
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i"
  %.sroa.1024.0.i.i.i.i.i.i = phi ptr [ %i.mw, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.1024.0.copyload26.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.921.0.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.921.0.copyload23.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i" ]
  %.sroa.818.0.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i" ], [ %i.ks, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.715.0.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit56.i.i.i.i.i.i.i" ], [ %.sroa.715.0.copyload17.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h6b8db3fb2bd8fbe4E.exit48.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.011.0.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !100566 ; 3 uses
  %.sroa.1127.0.copyload29.i.i.i.i.i.i = load i64, ptr %.sroa.1127.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100566 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100534
  %.not41.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0.i.i.i.i.i.i, 18
  br i1 %.not41.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i", label %bb.df

bb.df:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1024.0.i.i.i.i.i.i) ]
  %i.pa = load ptr, ptr %.sroa.818.0.i.i.i.i.i.i, align 8, !noalias !100543, !noundef !21 ; 2 uses
  %.not.i.i.i.i28.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i28.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cd
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !100573
  %i.pb = call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !100573 ; 7 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.dg, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h04a3794bb7427ae0E.exit.i.i.i.i.i", !prof !19

bb.dg:                                            ; preds = %.thread.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc37.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !100448

.noexc37.i.i.i:                                   ; preds = %bb.dg
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h04a3794bb7427ae0E.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i
  store ptr null, ptr %i.pb, align 8, !noalias !100573
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 54
  store ptr %i.pb, ptr %i.ac, align 8, !alias.scope !100529, !noalias !100574
  store i64 0, ptr %i.bk, align 8, !alias.scope !100529, !noalias !100574
  store i16 1, ptr %i.pd, align 2, !noalias !100575
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.pe, align 8, !noalias !100575
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %i.fr, ptr %i.pf, align 8, !noalias !100575
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h04a3794bb7427ae0E.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.thread.i.i.i.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i"
  %i.pg = phi ptr [ %.ph582, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i" ], [ %i.pb, %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h04a3794bb7427ae0E.exit.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.thread.i.i.i.i.i.i" ], [ %i.hq, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i" ], [ %.ph582, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0a0c500049ff586E.exit.i.i.i.i.i.i" ]
  %i.ph = add i64 %.ph, 1                         ; 2 uses
  store i64 %i.ph, ptr %i.bd, align 8, !alias.scope !100529, !noalias !100574
  br label %.outer

_ZN10serde_core2de9MapAccess10next_entry17h56400141a51c8bb8E.exit.thread43.i.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !noalias !100576
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i"

common.resume.i.i:                                ; preds = %bb.dv, %bb.dl, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.qd, %bb.dv ], [ %i.pr, %bb.dl ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.dh:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !100448
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h56400141a51c8bb8E.exit.thread43.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i"
  %.sroa.731.0.i.i = phi ptr [ %.sroa.1238.0.ph.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i" ], [ %.ph582, %_ZN10serde_core2de9MapAccess10next_entry17h56400141a51c8bb8E.exit.thread43.i.i.i ] ; 7 uses
  %.sroa.030.0.i.i = phi i64 [ 1, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h56400141a51c8bb8E.exit.thread43.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !100443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !100439
  %i.pj = load i8, ptr %i.at, align 8, !range !44, !alias.scope !100441, !noundef !21
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !100439
  store i64 24, ptr %i.af, align 8, !noalias !100439
  %i.pl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af), !noalias !100440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !100439
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pl, ptr %i.pm, align 8, !alias.scope !100440
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h4d92e29b53738508E.exit"

bb.dj:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i"
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !alias.scope !100441, !noundef !21
  %i.pp = add i8 %i.po, 1
  store i8 %i.pp, ptr %i.pn, align 1, !alias.scope !100441
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !100439
  store i64 %.sroa.030.0.i.i, ptr %i.ae, align 8, !noalias !100439
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !100439
  %.sroa.932.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, i64 16, i1 false), !noalias !100439
  %i.pq = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd749302c89dd846aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.dm unwind label %bb.dl, !noalias !100440 ; 9 uses

bb.dl:                                            ; preds = %bb.dk
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h1cfbeb059ad845aeE"(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %common.resume.i.i unwind label %bb.dr, !noalias !100440

bb.dm:                                            ; preds = %bb.dk
  %.sroa.936.0.copyload.i.i = load i64, ptr %.sroa.932.0..sroa_idx.i.i, align 8, !noalias !100439 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !100439 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !100439
  %i.ps = trunc nuw i64 %.sroa.030.0.i.i to i1
  br i1 %i.ps, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not.i.i = icmp eq ptr %i.pq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  br i1 %.not.i.i, label %bb.dw, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  %.not62.i.i = icmp eq ptr %i.pq, null
  br i1 %.not62.i.i, label %.thread52.i.i, label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !100577
  %.not.i.i.i25.i.i = icmp eq ptr %.sroa.731.0.i.i, null
  br i1 %.not.i.i.i25.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.731.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.731.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !100578, !noalias !100577
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i": ; preds = %bb.dq, %bb.dp
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.dq ], [ 0, %bb.dp ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.dq ], [ 0, %bb.dp ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !100578, !noalias !100577
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.pt, align 8, !alias.scope !100578, !noalias !100577
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.pu, align 8, !alias.scope !100578, !noalias !100577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100579
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !100440
  %i.pv = load ptr, ptr %i.b, align 8, !noalias !100579, !noundef !21
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.lr.ph.i.i.i.i26.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i", %.lr.ph.i.i.i.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100579
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !100440
  %i.pw = load ptr, ptr %i.b, align 8, !noalias !100579, !noundef !21
  %.not.i.i.i.i27.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i27.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.thread57.i.i:                                    ; preds = %.lr.ph.i.i.i.i26.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !100577
  br label %.thread52.i.i

bb.dr:                                            ; preds = %bb.dl
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !100440
  unreachable

bb.ds:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !100580)
  call void @llvm.experimental.noalias.scope.decl(metadata !100581)
  %i.py = load i64, ptr %i.pq, align 8, !range !47, !alias.scope !100582, !noalias !100440, !noundef !21
  switch i64 %i.py, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.dt
    i64 1, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.pz, align 8, !alias.scope !100582, !noalias !100440, !noundef !21 ; 2 uses
  %i.qa = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.qa, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dt
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.qb, align 8, !alias.scope !100582, !noalias !100440, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !100583
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i"

bb.du:                                            ; preds = %bb.ds
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.qc)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" unwind label %bb.dv, !noalias !100440

bb.dv:                                            ; preds = %bb.du
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef 40, i64 noundef 8) #42, !noalias !100440
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i": ; preds = %bb.du, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.dt, %bb.ds
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef 40, i64 noundef 8) #42, !noalias !100440
  br label %.thread52.i.i

.thread52.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", %.thread57.i.i, %bb.do, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.pq, %.thread57.i.i ], [ %i.aw, %bb.e ], [ %.sroa.731.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" ], [ %.sroa.731.0.i.i, %bb.do ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.2.i.i) ]
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6dc3b80c611ee5faE":bb.a
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !101973, !noalias !101971
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !101973, !noalias !101971
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.cc, align 8, !alias.scope !101973, !noalias !101971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !101974
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !101975
  %i.cd = load ptr, ptr %i.h, align 8, !noalias !101974, !noundef !21
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !101974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !101974
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !101975
  %i.ce = load ptr, ptr %i.h, align 8, !noalias !101974, !noundef !21
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !101974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !101971
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i"

bb.s:                                             ; preds = %.noexc8.i.i.i
  %i.cf = load i32, ptr %i.as, align 4, !noalias !101957, !noundef !21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101977)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.w ], [ %.ph359, %bb.s ] ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !101978, !noundef !21 ; 4 uses
  %i.cj = zext i16 %i.ci to i64                   ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i351, i64 1 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i350, 1
  %i.co = icmp eq ptr %i.cm, %i.ck
  br i1 %i.co, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.03.0.i.i.i.i.i.i.i351 = phi ptr [ %i.cm, %bb.u ], [ %i.cg, %bb.t ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i350 = phi i64 [ %i.cn, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i351, align 1, !range !67, !noalias !101978, !noundef !21
  %i.cp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.bl, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.cp, label %bb.v [
    i8 -1, label %._crit_edge
    i8 0, label %bb.x
    i8 1, label %bb.u
  ]

bb.v:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.u, %.lr.ph, %bb.t
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.t ], [ %i.cj, %bb.u ], [ %.sroa.8.0.i.i.i.i.i.i.i350, %.lr.ph ] ; 13 uses
  %i.cq = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.cs = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !101979, !nonnull !21, !noundef !21
  %i.cv = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.8.0.i.i.i.i.i.i.i350
  store i32 %i.cf, ptr %i.cx, align 4, !noalias !101980
  br label %bb.h

bb.y:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !101981
  %i.cz = icmp ult i16 %i.ci, 11
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !101982
  store i64 0, ptr %i.au, align 8, !noalias !101982
  br i1 %i.da, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cj
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ab, label %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !101983, !noalias !101984
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dc
  %i.de = sub nuw nsw i64 %i.cj, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.db, i64 %i.de, i1 false), !alias.scope !101983, !noalias !101984
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !101983, !noalias !101984
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.di = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull align 4 %i.dg, i64 %i.di, i1 false), !alias.scope !101985, !noalias !101984
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i": ; preds = %bb.ab, %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.dk = add nuw nsw i16 %i.ci, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.dl, align 4, !alias.scope !101985, !noalias !101984
  store i16 %i.dk, ptr %i.cy, align 2, !noalias !101984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !101981
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i"

bb.ac:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ad [
    i64 5, label %bb.af
    i64 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  store i64 6, ptr %i.av, align 8, !noalias !101982
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !101955

.noexc11.i.i.i:                                   ; preds = %bb.ad
  %i.dm = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc12.i.i.i

bb.ae:                                            ; preds = %bb.ac
  store i64 5, ptr %i.av, align 8, !noalias !101982
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !101955

bb.af:                                            ; preds = %bb.ac, %bb.z
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.z ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.ac ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !101982
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !101955

.noexc12.i.i.i:                                   ; preds = %bb.af, %bb.ae, %.noexc11.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.ae ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc11.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.af ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.dm, %.noexc11.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.af ] ; 6 uses
  %i.dn = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !101982, !nonnull !21, !noundef !21 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 54 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !noalias !101986, !noundef !21 ; 2 uses
  %i.dq = zext i16 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.ag, label %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !101987, !noalias !101986
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"

bb.ag:                                            ; preds = %.noexc12.i.i.i
  %i.dt = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub nuw nsw i64 %i.dq, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !101987, !noalias !101986
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !101987, !noalias !101986
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dt
  %i.dz = shl nuw nsw i64 %i.dv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.dx, i64 %i.dz, i1 false), !alias.scope !101988, !noalias !101986
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i": ; preds = %bb.ag, %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eb = add i16 %i.dp, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.ec, align 4, !alias.scope !101988, !noalias !101986
  store i16 %i.eb, ptr %i.do, align 2, !noalias !101986
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !101989 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !101989 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !101989 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !101989
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !101989 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !101989 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !101981
  %.not.i.i.i9.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i9.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.ed = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !101990, !noundef !21 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.au, %bb.ah
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1024.0.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.715.0.i.i.i.i.i.i, %bb.au ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101991)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !101992
  %i.ee = tail call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !101992 ; 11 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ai, label %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i, !prof !19

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !101992

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.ee, align 8, !noalias !101992
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 54 ; 2 uses
  store i16 0, ptr %i.eh, align 2, !noalias !101992
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr %.ph359, ptr %i.ei, align 8, !noalias !101992
  %i.ej = add i64 %i.az, 1
  store ptr %i.ee, ptr %.ph359, align 8, !noalias !101993
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph359, i64 52
  store i16 0, ptr %i.ek, align 4, !noalias !101994
  store ptr %i.ee, ptr %i.o, align 8, !alias.scope !101995, !noalias !101996
  store i64 %i.ej, ptr %i.at, align 8, !alias.scope !101995, !noalias !101996
  %i.el = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.az
  br i1 %i.el, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !26

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.eh, align 2, !noalias !101997
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.em, align 8, !noalias !101997
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !101997
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.eo, align 8, !noalias !101997
  store ptr %i.ee, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, align 8, !noalias !101998
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, i64 52
  store i16 1, ptr %i.ep, align 4, !noalias !101998
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %bb.au
  %i.eq = phi ptr [ %i.lo, %bb.au ], [ %i.ed, %bb.ah ] ; 13 uses
  %.sroa.0.097.i.i.i.i.i.i = phi i8 [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 6 uses
  %.sroa.74.096.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 6 uses
  %.sroa.9.095.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.ah ]
  %.sroa.10.094.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.11.093.i.i.i.i.i.i = phi ptr [ %.sroa.1024.0.i.i.i.i.i.i, %bb.au ], [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.13.092.i.i.i.i.i.i = phi i64 [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ]
  %i.er = add i64 %.sroa.10.094.i.i.i.i.i.i, 1
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.9.095.i.i.i.i.i.i, i64 52
  %i.et = load i16, ptr %i.es, align 4, !noalias !101990 ; 5 uses
  %i.eu = zext i16 %i.et to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101981
  %i.ev = icmp eq i64 %.sroa.13.092.i.i.i.i.i.i, %.sroa.10.094.i.i.i.i.i.i
  br i1 %i.ev, label %bb.ak, label %.invoke.i.i.i, !prof !26

.invoke.i.i.i:                                    ; preds = %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ew = phi ptr [ @1634, %.lr.ph.i.i.i.i.i.i ], [ @1627, %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i ]
  %i.ex = phi i64 [ 53, %.lr.ph.i.i.i.i.i.i ], [ 48, %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i ]
  %i.ey = phi ptr [ @1635, %.lr.ph.i.i.i.i.i.i ], [ @1628, %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ew, i64 noundef %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey) #41
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !101955

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 54
  %i.fa = load i16, ptr %i.ez, align 2, !noalias !101999, !noundef !21 ; 4 uses
  %i.fb = icmp ult i16 %i.fa, 11
  br i1 %i.fb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = icmp ult i16 %i.et, 5
  store ptr %i.eq, ptr %i.e, align 8, !noalias !102000
  store i64 %i.er, ptr %i.aw, align 8, !noalias !102000
  br i1 %i.fc, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 54
  %i.fe = zext nneg i16 %i.fa to i64              ; 4 uses
  %i.ff = add nuw nsw i16 %i.fa, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %i.fh = add nuw nsw i64 %i.eu, 1                ; 7 uses
  %.not.i.i45.not.i.i.i.i.i.i = icmp ult i16 %i.et, %i.fa
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.eu ; 3 uses
  br i1 %.not.i.i45.not.i.i.i.i.i.i, label %bb.an, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.fi, align 1, !alias.scope !102001, !noalias !102002
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.eu
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.fk, align 4, !alias.scope !102003, !noalias !102002
  br label %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fm = sub nuw nsw i64 %i.fe, %i.eu            ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %i.fi, i64 %i.fm, i1 false), !alias.scope !102001, !noalias !102002
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.fi, align 1, !alias.scope !102001, !noalias !102002
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.eu ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fh
  %i.fq = shl nuw nsw i64 %i.fm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr nonnull align 4 %i.fo, i64 %i.fq, i1 false), !alias.scope !102003, !noalias !102002
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.fo, align 4, !alias.scope !102003, !noalias !102002
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fh
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.eu
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = shl nuw nsw i64 %i.fm, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull align 8 %i.fs, i64 %i.fv, i1 false), !alias.scope !102004, !noalias !102002
  br label %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 6 uses
  %i.fx = add nuw nsw i64 %i.fe, 2                ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fh
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.fy, align 8, !alias.scope !102004, !noalias !102002
  store i16 %i.ff, ptr %i.fd, align 2, !noalias !102002
  %i.fz = icmp samesign ult i64 %i.fh, %i.fx
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.thread.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i.i.i.i.i.i.i.i
  %i.ga = add nuw nsw i64 %i.fe, 1
  %i.gb = sub nsw i64 %i.ga, %i.eu
  %i.gc = sub nsw i64 %i.fe, %i.eu
  %xtraiter451 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter453 = phi i64 [ %prol.iter453.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ge = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !102005, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eq, ptr %i.gg, align 8, !noalias !102006
  %i.gh = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  store i16 %i.gh, ptr %i.gi, align 4, !noalias !102006
  %prol.iter453.next = add i64 %prol.iter453, 1   ; 2 uses
  %prol.iter453.cmp.not = icmp eq i64 %prol.iter453.next, %xtraiter451
  br i1 %prol.iter453.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !101892

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.gj = icmp ult i64 %i.gc, 3
  br i1 %i.gj, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !102005, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eq, ptr %i.gm, align 8, !noalias !102006
  %i.gn = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  store i16 %i.gn, ptr %i.go, align 4, !noalias !102006
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gk
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !102005, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eq, ptr %i.gr, align 8, !noalias !102006
  %i.gs = trunc nuw nsw i64 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 52
  store i16 %i.gs, ptr %i.gt, align 4, !noalias !102006
  %i.gu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gp
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !102005, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eq, ptr %i.gw, align 8, !noalias !102006
  %i.gx = trunc nuw nsw i64 %i.gp to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 52
  store i16 %i.gx, ptr %i.gy, align 4, !noalias !102006
  %i.gz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ha = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gu
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !102005, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.eq, ptr %i.hc, align 8, !noalias !102006
  %i.hd = trunc nuw nsw i64 %i.gu to i16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 52
  store i16 %i.hd, ptr %i.he, align 4, !noalias !102006
end_hunk_11
begin_hunk_12_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6dc3b80c611ee5faE":bb.a
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol = phi i64 [ %i.ii, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ %i.hm, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter450 = phi i64 [ %prol.iter450.next, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ]
  %i.ii = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !102011, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hg, ptr %i.il, align 8, !noalias !102012
  %i.im = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i.prol to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 52
  store i16 %i.im, ptr %i.in, align 4, !noalias !102012
  %prol.iter450.next = add i64 %prol.iter450, 1   ; 2 uses
  %prol.iter450.cmp.not = icmp eq i64 %prol.iter450.next, %xtraiter448
  br i1 %prol.iter450.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, !llvm.loop !101905

.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr = phi i64 [ %i.hm, %.lr.ph.i.i44.i.i.i.i.i.i.i.preheader ], [ %i.ii, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol ]
  %i.io = icmp ult i64 %i.ih, 3
  br i1 %i.io, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i
  %.sroa.0.06.i.i45.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i44.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i45.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !102011, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hg, ptr %i.ir, align 8, !noalias !102012
  %i.is = trunc nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 52
  store i16 %i.is, ptr %i.it, align 4, !noalias !102012
  %i.iu = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ip
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !102011, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hg, ptr %i.iw, align 8, !noalias !102012
  %i.ix = trunc nuw nsw i64 %i.ip to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 52
  store i16 %i.ix, ptr %i.iy, align 4, !noalias !102012
  %i.iz = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iu
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !102011, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hg, ptr %i.jb, align 8, !noalias !102012
  %i.jc = trunc nuw nsw i64 %i.iu to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 52
  store i16 %i.jc, ptr %i.jd, align 4, !noalias !102012
  %i.je = add nuw nsw i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jf = icmp ult i64 %.sroa.0.06.i.i45.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iz
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !102011, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hg, ptr %i.jh, align 8, !noalias !102012
  %i.ji = trunc nuw nsw i64 %i.iz to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 52
  store i16 %i.ji, ptr %i.jj, align 4, !noalias !102012
  %exitcond.not.i.i46.i.i.i.i.i.i.i.3 = icmp eq i64 %i.je, %i.ic
  br i1 %exitcond.not.i.i46.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i", label %.lr.ph.i.i44.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i43.i.i.i.i.i.i.i
  %.sroa.715.0.copyload17.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !102013
  %.sroa.921.0.copyload23.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !102013
  %.sroa.1024.0.copyload26.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !102013
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i"

.noexc17.i.i.i:                                   ; preds = %bb.aq, %.noexc16.i.i.i
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.noexc16.i.i.i ], [ 0, %bb.aq ] ; 9 uses
  %i.jk = load ptr, ptr %i.ay, align 8, !noalias !102000, !nonnull !21, !noundef !21 ; 12 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 54 ; 2 uses
  %i.jm = load i16, ptr %i.jl, align 2, !noalias !102014, !noundef !21 ; 2 uses
  %i.jn = zext i16 %i.jm to i64                   ; 5 uses
  %i.jo = add i16 %i.jm, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 56 ; 2 uses
  %i.jq = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i49.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.jn
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i49.not.i.i.i.i.i.i.i, label %bb.at, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i: ; preds = %.noexc17.i.i.i
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.jr, align 1, !alias.scope !102015, !noalias !102014
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.jt, align 4, !alias.scope !102016, !noalias !102014
  br label %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i51.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc17.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq
  %i.jv = sub nuw nsw i64 %i.jn, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr nonnull align 1 %i.jr, i64 %i.jv, i1 false), !alias.scope !102015, !noalias !102014
  store i8 %.sroa.0.097.i.i.i.i.i.i, ptr %i.jr, align 1, !alias.scope !102015, !noalias !102014
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jq
  %i.jz = shl nuw nsw i64 %i.jv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jy, ptr nonnull align 4 %i.jx, i64 %i.jz, i1 false), !alias.scope !102016, !noalias !102014
  store i32 %.sroa.74.096.i.i.i.i.i.i, ptr %i.jx, align 4, !alias.scope !102016, !noalias !102014
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 72 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jq
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = shl nuw nsw i64 %i.jv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kd, ptr nonnull align 8 %i.kb, i64 %i.ke, i1 false), !alias.scope !102017, !noalias !102014
  br label %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i51.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i51.i.i.i.i.i.i.i: ; preds = %bb.at, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i50.i.i.i.i.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 72 ; 6 uses
  %i.kg = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jq
  store ptr %.sroa.11.093.i.i.i.i.i.i, ptr %i.kh, align 8, !alias.scope !102017, !noalias !102014
  store i16 %i.jo, ptr %i.jl, align 2, !noalias !102014
  %i.ki = icmp samesign ult i64 %i.jq, %i.kg
  br i1 %i.ki, label %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i"

.lr.ph.i.i52.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i51.i.i.i.i.i.i.i
  %i.kj = add nuw nsw i64 %i.jn, 1
  %i.kk = sub nsw i64 %i.kj, %.sroa.10.1.i.i.i.i.i.i.i
  %i.kl = sub nsw i64 %i.jn, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.kk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol

.lr.ph.i.i52.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol = phi i64 [ %i.km, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ %i.jq, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ]
  %i.km = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kn = icmp samesign ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !102018, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.jk, ptr %i.kp, align 8, !noalias !102019
  %i.kq = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i.prol to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 52
  store i16 %i.kq, ptr %i.kr, align 4, !noalias !102019
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, !llvm.loop !101918

.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr = phi i64 [ %i.jq, %.lr.ph.i.i52.i.i.i.i.i.i.i.preheader ], [ %i.km, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol ]
  %i.ks = icmp ult i64 %i.kl, 3
  br i1 %i.ks, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

.lr.ph.i.i52.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i
  %.sroa.0.06.i.i53.i.i.i.i.i.i.i = phi i64 [ %i.li, %.lr.ph.i.i52.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i53.i.i.i.i.i.i.i.unr, %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kt = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !102018, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.jk, ptr %i.kv, align 8, !noalias !102019
  %i.kw = trunc nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i to i16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 52
  store i16 %i.kw, ptr %i.kx, align 4, !noalias !102019
  %i.ky = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kt
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !102018, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.jk, ptr %i.la, align 8, !noalias !102019
  %i.lb = trunc nuw nsw i64 %i.kt to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 52
  store i16 %i.lb, ptr %i.lc, align 4, !noalias !102019
  %i.ld = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ky
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !102018, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.jk, ptr %i.lf, align 8, !noalias !102019
  %i.lg = trunc nuw nsw i64 %i.ky to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 52
  store i16 %i.lg, ptr %i.lh, align 4, !noalias !102019
  %i.li = add nuw nsw i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.lj = icmp ult i64 %.sroa.0.06.i.i53.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ld
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !102018, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.jk, ptr %i.ll, align 8, !noalias !102019
  %i.lm = trunc nuw nsw i64 %i.ld to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  store i16 %i.lm, ptr %i.ln, align 4, !noalias !102019
  %exitcond.not.i.i54.i.i.i.i.i.i.i.3 = icmp eq i64 %i.li, %i.kg
  br i1 %exitcond.not.i.i54.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i", label %.lr.ph.i.i52.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i52.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i51.i.i.i.i.i.i.i
  %.sroa.715.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !102013
  %.sroa.818.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.818.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !102013
  %.sroa.921.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.921.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !102013
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.thread.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h2968a2c97242c99fE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101981
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i"
  %.sroa.1024.0.i.i.i.i.i.i = phi ptr [ %i.jk, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i" ], [ %.sroa.1024.0.copyload26.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.921.0.i.i.i.i.i.i = phi i64 [ %.sroa.921.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i" ], [ %.sroa.921.0.copyload23.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i" ]
  %.sroa.818.0.i.i.i.i.i.i = phi ptr [ %.sroa.818.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i" ], [ %i.hg, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.715.0.i.i.i.i.i.i = phi i32 [ %.sroa.715.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit56.i.i.i.i.i.i.i" ], [ %.sroa.715.0.copyload17.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17he07638e59a837ecaE.exit48.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.011.0.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !102013 ; 3 uses
  %.sroa.1127.0.copyload29.i.i.i.i.i.i = load i64, ptr %.sroa.1127.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !102013 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101981
  %.not41.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0.i.i.i.i.i.i, 5
  br i1 %.not41.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1024.0.i.i.i.i.i.i) ]
  %i.lo = load ptr, ptr %.sroa.818.0.i.i.i.i.i.i, align 8, !noalias !101990, !noundef !21 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i10.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.s
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !102020
  %i.lp = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !102020 ; 7 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.av, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h350e3373c481f083E.exit.i.i.i.i.i", !prof !19

bb.av:                                            ; preds = %.thread.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !101955

.noexc19.i.i.i:                                   ; preds = %bb.av
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h350e3373c481f083E.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i
  store ptr null, ptr %i.lp, align 8, !noalias !102020
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 54
  store ptr %i.lp, ptr %i.o, align 8, !alias.scope !101976, !noalias !102021
  store i64 0, ptr %i.at, align 8, !alias.scope !101976, !noalias !102021
  store i16 1, ptr %i.lr, align 2, !noalias !102022
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  store i8 %i.bl, ptr %i.ls, align 8, !noalias !102022
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %i.cf, ptr %i.lt, align 8, !noalias !102022
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h350e3373c481f083E.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.thread.i.i.i.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i"
  %i.lu = phi ptr [ %.ph359, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i" ], [ %i.lp, %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h350e3373c481f083E.exit.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.thread.i.i.i.i.i.i" ], [ %i.ee, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i" ], [ %.ph359, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h9fda8cf0052c3d07E.exit.i.i.i.i.i.i" ]
  %i.lv = add i64 %.ph, 1                         ; 2 uses
  store i64 %i.lv, ptr %i.ap, align 8, !alias.scope !101976, !noalias !102021
  br label %.outer

bb.aw:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !102023
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.bl, %bb.bb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.mr, %bb.bl ], [ %i.mf, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ax:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !101955
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i": ; preds = %bb.aw, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i"
  %.sroa.731.0.i.i = phi ptr [ %.sroa.1220.0.ph.i.i.i, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i" ], [ %.ph359, %bb.aw ] ; 7 uses
  %.sroa.030.0.i.i = phi i64 [ 1, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i" ], [ 0, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !101950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !101946
  %i.lx = load i8, ptr %i.af, align 8, !range !44, !alias.scope !101948, !noundef !21
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !101946
  store i64 24, ptr %i.r, align 8, !noalias !101946
  %i.lz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !101947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !101946
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lz, ptr %i.ma, align 8, !alias.scope !101947
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17hfbbad1bf63abcedbE.exit"

bb.az:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i"
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !alias.scope !101948, !noundef !21
  %i.md = add i8 %i.mc, 1
  store i8 %i.md, ptr %i.mb, align 1, !alias.scope !101948
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !101946
  store i64 %.sroa.030.0.i.i, ptr %i.q, align 8, !noalias !101946
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !101946
  %.sroa.932.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, i64 16, i1 false), !noalias !101946
  %i.me = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd749302c89dd846aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !101947 ; 9 uses

bb.bb:                                            ; preds = %bb.ba
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17hce51ba30f5016fbcE"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #43
          to label %common.resume.i.i unwind label %bb.bh, !noalias !101947

bb.bc:                                            ; preds = %bb.ba
  %.sroa.936.0.copyload.i.i = load i64, ptr %.sroa.932.0..sroa_idx.i.i, align 8, !noalias !101946 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !101946 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !101946
  %i.mg = trunc nuw i64 %.sroa.030.0.i.i to i1
  br i1 %i.mg, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.me, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  br i1 %.not.i.i, label %bb.bm, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  %.not62.i.i = icmp eq ptr %i.me, null
  br i1 %.not62.i.i, label %.thread52.i.i, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102024
  %.not.i.i.i25.i.i = icmp eq ptr %.sroa.731.0.i.i, null
  br i1 %.not.i.i.i25.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.731.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.731.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !102025, !noalias !102024
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i": ; preds = %bb.bg, %bb.bf
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.bg ], [ 0, %bb.bf ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !102025, !noalias !102024
  %i.mh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.mh, align 8, !alias.scope !102025, !noalias !102024
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.mi, align 8, !alias.scope !102025, !noalias !102024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102026
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !101947
  %i.mj = load ptr, ptr %i.b, align 8, !noalias !102026, !noundef !21
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.lr.ph.i.i.i.i26.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i", %.lr.ph.i.i.i.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102026
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !101947
  %i.mk = load ptr, ptr %i.b, align 8, !noalias !102026, !noundef !21
  %.not.i.i.i.i27.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i27.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.thread57.i.i:                                    ; preds = %.lr.ph.i.i.i.i26.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102024
  br label %.thread52.i.i

bb.bh:                                            ; preds = %bb.bb
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !101947
  unreachable

bb.bi:                                            ; preds = %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102028)
  %i.mm = load i64, ptr %i.me, align 8, !range !47, !alias.scope !102029, !noalias !101947, !noundef !21
  switch i64 %i.mm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.mn, align 8, !alias.scope !102029, !noalias !101947, !noundef !21 ; 2 uses
  %i.mo = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.mo, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bj
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.mp, align 8, !alias.scope !102029, !noalias !101947, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !102030
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i"

bb.bk:                                            ; preds = %bb.bi
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.mq)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" unwind label %bb.bl, !noalias !101947

bb.bl:                                            ; preds = %bb.bk
  %i.mr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef 40, i64 noundef 8) #42, !noalias !101947
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i": ; preds = %bb.bk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.bj, %bb.bi
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef 40, i64 noundef 8) #42, !noalias !101947
  br label %.thread52.i.i

.thread52.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", %.thread57.i.i, %bb.be, %bb.e
  %.sroa.8.2.i.i = phi ptr [ %i.me, %.thread57.i.i ], [ %i.ai, %bb.e ], [ %.sroa.731.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" ], [ %.sroa.731.0.i.i, %bb.be ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.2.i.i) ]
end_hunk_12
begin_hunk_13_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he64b19eba07c6269E":bb.a
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !124457, !nonnull !21, !noundef !21
  %i.dh = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.z

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h413d29df72dcab59E.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.di = icmp eq i64 %i.bg, 0
  br i1 %i.di, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h03a0dd224d7e9167E.exit.thread.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h413d29df72dcab59E.exit.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124458
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h03a0dd224d7e9167E.exit.thread.i.i.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h03a0dd224d7e9167E.exit.thread.i.i.i.i": ; preds = %bb.ad, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h413d29df72dcab59E.exit.i.i.i.i.i"
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.8.0.i.i.i.i.i.i.i593
  store i32 %i.ck, ptr %i.dk, align 4, !noalias !124459
  br label %bb.h

bb.ae:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h2d4e4ae3ca2363ebE.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !124460
  %i.dl = tail call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 320, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !124460 ; 9 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.af, label %bb.ag, !prof !19

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 320) #41
          to label %.noexc.i.i9.i.i.i unwind label %bb.bs, !noalias !124460

.noexc.i.i9.i.i.i:                                ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr null, ptr %i.dl, align 8, !noalias !124460
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 318
  store ptr %i.dl, ptr %i.o, align 8, !alias.scope !124452, !noalias !124461
  store i64 0, ptr %i.at, align 8, !alias.scope !124452, !noalias !124461
  store i16 1, ptr %i.dn, align 2, !noalias !124462
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.bg, ptr %i.do, align 8, !noalias !124463
  %.sroa.518.0..sroa_idx19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.bi, ptr %.sroa.518.0..sroa_idx19.i.i.i.i.i, align 8, !noalias !124463
  %.sroa.6.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i.i, align 8, !noalias !124463
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 272
  store i32 %i.ck, ptr %i.dp, align 8, !noalias !124462
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i"

bb.ah:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !124464
  %i.dr = icmp ugt i16 %i.co, 10
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !124465
  store i64 0, ptr %i.au, align 8, !noalias !124465
  br i1 %i.ds, label %.invoke.i.i.i.i.i.i.i, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124466)
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cp
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ak, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  store i64 %i.bg, ptr %i.dt, align 8, !alias.scope !124467, !noalias !124468
  %.sroa.936.0..sroa_idx39.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx39.i.i.i.i.i.i, align 8, !alias.scope !124467, !noalias !124468
  %.sroa.1145.0..sroa_idx48.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx48.i.i.i.i.i.i, align 8, !alias.scope !124467, !noalias !124468
  br label %.thread.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.du = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.du
  %i.dw = sub nuw nsw i64 %i.cp, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.dx = mul nuw nsw i64 %i.dw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.dt, i64 %i.dx, i1 false), !alias.scope !124469, !noalias !124470
  store i64 %i.bg, ptr %i.dt, align 8, !alias.scope !124467, !noalias !124468
  %.sroa.936.0..sroa_idx37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx37.i.i.i.i.i.i, align 8, !alias.scope !124467, !noalias !124468
  %.sroa.1145.0..sroa_idx46.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx46.i.i.i.i.i.i, align 8, !alias.scope !124467, !noalias !124468
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.du
  %i.eb = shl nuw nsw i64 %i.dw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull align 4 %i.dz, i64 %i.eb, i1 false), !alias.scope !124471, !noalias !124470
  br label %.thread.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ai
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.am [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.an
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.al, %bb.ai
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.al ], [ 4, %bb.ai ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !124465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124465
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8778efc91eee77fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ap unwind label %bb.ar, !noalias !124472

bb.am:                                            ; preds = %bb.al
  store i64 6, ptr %i.av, align 8, !noalias !124465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124465
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8778efc91eee77fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ao unwind label %bb.ar, !noalias !124472

bb.an:                                            ; preds = %bb.al
  store i64 5, ptr %i.av, align 8, !noalias !124465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124465
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8778efc91eee77fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ap unwind label %bb.ar, !noalias !124472

bb.ao:                                            ; preds = %bb.am
  %i.ec = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.invoke.i.i.i.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink63.i.sroa.gep124.i.i.i.i.i.i, %bb.an ], [ %.sink63.i.sroa.gep124.i.i.i.i.i.i, %bb.ao ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.an ], [ %i.ec, %bb.ao ] ; 6 uses
  %i.ed = load ptr, ptr %.sink63.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !124465, !nonnull !21, !noundef !21 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 318 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !124473, !noundef !21 ; 2 uses
  %i.eg = zext i16 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124474)
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.eg
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.aq, label %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i: ; preds = %bb.ap
  store i64 %i.bg, ptr %i.ei, align 8, !alias.scope !124475, !noalias !124476
  %.sroa.936.0..sroa_idx41.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx41.i.i.i.i.i.i, align 8, !alias.scope !124475, !noalias !124476
  %.sroa.1145.0..sroa_idx50.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx50.i.i.i.i.i.i, align 8, !alias.scope !124475, !noalias !124476
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ej = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ej
  %i.el = sub nuw nsw i64 %i.eg, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.em = mul nuw nsw i64 %i.el, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.ei, i64 %i.em, i1 false), !alias.scope !124477, !noalias !124473
  store i64 %i.bg, ptr %i.ei, align 8, !alias.scope !124475, !noalias !124476
  %.sroa.936.0..sroa_idx43.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.bi, ptr %.sroa.936.0..sroa_idx43.i.i.i.i.i.i, align 8, !alias.scope !124475, !noalias !124476
  %.sroa.1145.0..sroa_idx52.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx52.i.i.i.i.i.i, align 8, !alias.scope !124475, !noalias !124476
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 272 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ej
  %i.eq = shl nuw nsw i64 %i.el, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %i.eo, i64 %i.eq, i1 false), !alias.scope !124478, !noalias !124473
  br label %bb.at

.thread.i.i.i.i.i.i:                              ; preds = %bb.ak, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 272
  %i.es = add nuw nsw i16 %i.co, 1
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.ck, ptr %i.et, align 4, !alias.scope !124471, !noalias !124470
  store i16 %i.es, ptr %i.dq, align 2, !noalias !124470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124464
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i"

bb.ar:                                            ; preds = %bb.an, %bb.am, %.invoke.i.i.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %i.bg, 0
  br i1 %i.ev, label %.body.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124479
  br label %.body.i.i.i

bb.at:                                            ; preds = %bb.aq, %_ZN5alloc11collections5btree4node12slice_insert17h882a9c87087604baE.exit.i42.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 272
  %i.ex = add i16 %i.ef, 1
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.ck, ptr %i.ey, align 4, !alias.scope !124478, !noalias !124473
  store i16 %i.ex, ptr %i.ee, align 2, !noalias !124473
  %.sroa.021.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !124480 ; 3 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124480 ; 2 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124480 ; 2 uses
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124480 ; 2 uses
  %.sroa.724.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !124480 ; 3 uses
  %.sroa.825.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !124480
  %.sroa.926.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink63.i.sroa.gep124.i.i.i.i.i.i, align 8, !noalias !124480 ; 3 uses
  %.sroa.1027.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink62.i.sroa.gep126.i.i.i.i.i.i, align 8, !noalias !124480 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124464
  %.not.i.i.i7.i.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i7.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.724.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.926.0.copyload.i.i.i.i.i.i) ]
  %i.ez = load ptr, ptr %.sroa.724.0.copyload.i.i.i.i.i.i, align 8, !noalias !124481, !noundef !21 ; 2 uses
  %.not.i201.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i201.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bq, %bb.au
  %.sroa.20.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.1027.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.1173.0.copyload75.i.i.i.i.i.i, %bb.bq ]
  %.sroa.16.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.926.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.1070.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.7.0.i.i.i.i.i.i, %bb.bq ]
  %.sroa.9.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.6.0.i.i.i.i.i.i, %bb.bq ]
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.861.sroa.0.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.021.0.copyload.i.i.i.i.i.i, %bb.au ], [ %.sroa.058.0.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124482)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !124483
  %i.fa = tail call noalias noundef align 8 dereferenceable_or_null(416) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !124483 ; 13 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.av, label %bb.ax, !prof !19

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 416) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aw, !noalias !124483

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.fa, align 8, !noalias !124483
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 318 ; 2 uses
  store i16 0, ptr %i.fd, align 2, !noalias !124483
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 320
  store ptr %.ph, ptr %i.fe, align 8, !noalias !124483
  %i.ff = add i64 %i.cl, 1
  store ptr %i.fa, ptr %.ph, align 8, !noalias !124484
  %i.fg = getelementptr inbounds nuw i8, ptr %.ph, i64 316
  store i16 0, ptr %i.fg, align 4, !noalias !124485
  store ptr %i.fa, ptr %i.o, align 8, !alias.scope !124486, !noalias !124487
  store i64 %i.ff, ptr %i.at, align 8, !alias.scope !124486, !noalias !124487
  %i.fh = icmp eq i64 %.sroa.20.0.lcssa.i.i.i.i.i.i, %i.cl
  br i1 %i.fh, label %bb.br, label %.invoke.i.i.i.i.i.i.i.i, !prof !26

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.ax
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1627, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #41
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !124488

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.fj, label %.body.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124489
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.au, %bb.bq
  %i.fk = phi ptr [ %i.mj, %bb.bq ], [ %i.ez, %bb.au ] ; 13 uses
  %.sroa.03.0209.i.i.i.i.i.i = phi i64 [ %.sroa.058.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.021.0.copyload.i.i.i.i.i.i, %bb.au ] ; 8 uses
  %.sroa.8.0208.i.i.i.i.i.i = phi ptr [ %.sroa.861.sroa.0.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %bb.au ] ; 8 uses
  %.sroa.9.0207.i.i.i.i.i.i = phi i64 [ %.sroa.861.sroa.6.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, %bb.au ] ; 6 uses
  %.sroa.913.0206.i.i.i.i.i.i = phi i32 [ %.sroa.861.sroa.7.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i, %bb.au ] ; 6 uses
  %.sroa.1018.0205.i.i.i.i.i.i = phi ptr [ %.sroa.864.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.724.0.copyload.i.i.i.i.i.i, %bb.au ]
  %.sroa.13.0204.i.i.i.i.i.i = phi i64 [ %.sroa.967.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.825.0.copyload.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.16.0203.i.i.i.i.i.i = phi ptr [ %.sroa.1070.0.i.i.i.i.i.i, %bb.bq ], [ %.sroa.926.0.copyload.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.20.0202.i.i.i.i.i.i = phi i64 [ %.sroa.1173.0.copyload75.i.i.i.i.i.i, %bb.bq ], [ %.sroa.1027.0.copyload.i.i.i.i.i.i, %bb.au ]
  %i.fl = add i64 %.sroa.13.0204.i.i.i.i.i.i, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.1018.0205.i.i.i.i.i.i, i64 316
  %i.fn = load i16, ptr %i.fm, align 4, !noalias !124481 ; 5 uses
  %i.fo = zext i16 %i.fn to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !124464
  %i.fp = icmp eq i64 %.sroa.20.0202.i.i.i.i.i.i, %.sroa.13.0204.i.i.i.i.i.i
  br i1 %i.fp, label %bb.bb, label %bb.ba, !prof !26

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1634, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #41
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !124490

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 318
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !124490, !noundef !21 ; 4 uses
  %i.fs = icmp ult i16 %i.fr, 11
  br i1 %i.fs, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.ft = icmp ult i16 %i.fn, 5
  store ptr %i.fk, ptr %i.e, align 8, !noalias !124491
  store i64 %i.fl, ptr %i.aw, align 8, !noalias !124491
  br i1 %i.ft, label %.invoke.i29.i.i.i.i.i.i, label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 318
  %i.fv = zext nneg i16 %i.fr to i64              ; 4 uses
  %i.fw = add nuw nsw i16 %i.fr, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124492)
  %i.fy = add nuw nsw i64 %i.fo, 1                ; 7 uses
  %.not.i.i31.not.i.i.i.i.i.i = icmp ult i16 %i.fn, %i.fr
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fo ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i.i, label %bb.bf, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.be
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.fz, align 8, !alias.scope !124493, !noalias !124494
  %.sroa.1182.0..sroa_idx91.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx91.i.i.i.i.i.i, align 8, !alias.scope !124493, !noalias !124494
  %.sroa.14.0..sroa_idx101.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx101.i.i.i.i.i.i, align 8, !alias.scope !124493, !noalias !124494
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 272
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fo
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !124495, !noalias !124496
  br label %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fy
  %i.gd = sub nuw nsw i64 %i.fv, %i.fo            ; 3 uses
  %i.ge = mul nuw nsw i64 %i.gd, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.fz, i64 %i.ge, i1 false), !alias.scope !124497, !noalias !124496
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.fz, align 8, !alias.scope !124493, !noalias !124494
  %.sroa.1182.0..sroa_idx89.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx89.i.i.i.i.i.i, align 8, !alias.scope !124493, !noalias !124494
  %.sroa.14.0..sroa_idx99.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx99.i.i.i.i.i.i, align 8, !alias.scope !124493, !noalias !124494
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 272 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.fo ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.fy
  %i.gi = shl nuw nsw i64 %i.gd, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr nonnull align 4 %i.gg, i64 %i.gi, i1 false), !alias.scope !124495, !noalias !124496
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.gg, align 4, !alias.scope !124495, !noalias !124496
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 320 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.fy
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.fo
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = shl nuw nsw i64 %i.gd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %i.gk, i64 %i.gn, i1 false), !alias.scope !124498, !noalias !124496
  br label %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i.i.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fk, i64 320 ; 6 uses
  %i.gp = add nuw nsw i64 %i.fv, 2                ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.fy
  store ptr %.sroa.16.0203.i.i.i.i.i.i, ptr %i.gq, align 8, !alias.scope !124498, !noalias !124496
  store i16 %i.fw, ptr %i.fu, align 2, !noalias !124496
  %i.gr = icmp samesign ult i64 %i.fy, %i.gp
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.thread146.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i.i.i.i.i.i.i.i
  %i.gs = add nuw nsw i64 %i.fv, 1
  %i.gt = sub nsw i64 %i.gs, %i.fo
  %i.gu = sub nsw i64 %i.fv, %i.fo
  %xtraiter750 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gw = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !124499, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fk, ptr %i.gy, align 8, !noalias !124500
  %i.gz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.prol to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 316
  store i16 %i.gz, ptr %i.ha, align 4, !noalias !124500
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !124345

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hb = icmp ult i64 %i.gu, 3
  br i1 %i.hb, label %.thread146.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.hc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !124499, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fk, ptr %i.he, align 8, !noalias !124500
  %i.hf = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 316
  store i16 %i.hf, ptr %i.hg, align 4, !noalias !124500
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hc
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !124499, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fk, ptr %i.hj, align 8, !noalias !124500
  %i.hk = trunc nuw nsw i64 %i.hc to i16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 316
  store i16 %i.hk, ptr %i.hl, align 4, !noalias !124500
end_hunk_13
begin_hunk_14_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he64b19eba07c6269E":bb.a
  %i.jk = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 316
  store i16 %i.jk, ptr %i.jl, align 4, !noalias !124507
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jh
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !124506, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hx, ptr %i.jo, align 8, !noalias !124507
  %i.jp = trunc nuw nsw i64 %i.jh to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 316
  store i16 %i.jp, ptr %i.jq, align 4, !noalias !124507
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jm
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !124506, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hx, ptr %i.jt, align 8, !noalias !124507
  %i.ju = trunc nuw nsw i64 %i.jm to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 316
  store i16 %i.ju, ptr %i.jv, align 4, !noalias !124507
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jx = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jr
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !124506, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.hx, ptr %i.jz, align 8, !noalias !124507
  %i.ka = trunc nuw nsw i64 %i.jr to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 316
  store i16 %i.ka, ptr %i.kb, align 4, !noalias !124507
  %exitcond.not.i.i45.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jw, %i.iu
  br i1 %exitcond.not.i.i45.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bn, %bb.bi
  %.sroa.10.1.i.i.i.i.i.i.i = phi i64 [ %i.mh, %bb.bn ], [ 0, %bb.bi ] ; 9 uses
  %i.kc = load ptr, ptr %i.ay, align 8, !noalias !124491, !nonnull !21, !noundef !21 ; 12 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 318 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !noalias !124508, !noundef !21 ; 2 uses
  %i.kf = zext i16 %i.ke to i64                   ; 5 uses
  %i.kg = add i16 %i.ke, 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ki = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i.i, 1 ; 7 uses
  %.not.i48.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i.i, %i.kf
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i.i.i.i, label %bb.bm, label %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i49.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i49.i.i.i.i.i.i.i: ; preds = %bb.bl
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !124502
  %.sroa.1182.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124502
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124502
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 272
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.sroa.10.1.i.i.i.i.i.i.i
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.kl, align 4, !alias.scope !124509, !noalias !124508
  br label %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i50.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %i.ki
  %i.kn = sub nuw nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i ; 3 uses
  %i.ko = mul nuw nsw i64 %i.kn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.km, ptr nonnull align 8 %i.kj, i64 %i.ko, i1 false), !alias.scope !124510, !noalias !124508
  store i64 %.sroa.03.0209.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !124502
  %.sroa.1182.0..sroa_idx83.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.sroa.8.0208.i.i.i.i.i.i, ptr %.sroa.1182.0..sroa_idx83.i.i.i.i.i.i, align 8, !noalias !124502
  %.sroa.14.0..sroa_idx93.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 %.sroa.9.0207.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx93.i.i.i.i.i.i, align 8, !noalias !124502
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 272 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.sroa.10.1.i.i.i.i.i.i.i ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ki
  %i.ks = shl nuw nsw i64 %i.kn, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kr, ptr nonnull align 4 %i.kq, i64 %i.ks, i1 false), !alias.scope !124509, !noalias !124508
  store i32 %.sroa.913.0206.i.i.i.i.i.i, ptr %i.kq, align 4, !alias.scope !124509, !noalias !124508
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 320 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ki
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.sroa.10.1.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = shl nuw nsw i64 %i.kn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kw, ptr nonnull align 8 %i.ku, i64 %i.kx, i1 false), !alias.scope !124511, !noalias !124508
  br label %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i50.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i50.i.i.i.i.i.i.i: ; preds = %bb.bm, %_ZN5alloc11collections5btree4node12slice_insert17h89ea7c62a258e8c6E.exit.i49.i.i.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kc, i64 320 ; 6 uses
  %i.kz = add nuw nsw i64 %i.kf, 2                ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.ki
  store ptr %.sroa.16.0203.i.i.i.i.i.i, ptr %i.la, align 8, !alias.scope !124511, !noalias !124508
  store i16 %i.kg, ptr %i.kd, align 2, !noalias !124508
  %i.lb = icmp samesign ult i64 %i.ki, %i.kz
  br i1 %i.lb, label %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i50.i.i.i.i.i.i.i
  %i.lc = add nuw nsw i64 %i.kf, 1
  %i.ld = sub nsw i64 %i.lc, %.sroa.10.1.i.i.i.i.i.i.i
  %i.le = sub nsw i64 %i.kf, %.sroa.10.1.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.ld, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol = phi i64 [ %i.lf, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ]
  %i.lf = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.lg = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !124512, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.li, align 8, !noalias !124513
  %i.lj = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i.prol to i16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 316
  store i16 %i.lj, ptr %i.lk, align 4, !noalias !124513
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, !llvm.loop !124373

.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr = phi i64 [ %i.ki, %.lr.ph.i.i51.i.i.i.i.i.i.i.preheader ], [ %i.lf, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol ]
  %i.ll = icmp ult i64 %i.le, 3
  br i1 %i.ll, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i51.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lm = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !124512, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.lo, align 8, !noalias !124513
  %i.lp = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i to i16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 316
  store i16 %i.lp, ptr %i.lq, align 4, !noalias !124513
  %i.lr = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lm
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !124512, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.lt, align 8, !noalias !124513
  %i.lu = trunc nuw nsw i64 %i.lm to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 316
  store i16 %i.lu, ptr %i.lv, align 4, !noalias !124513
  %i.lw = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lr
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !124512, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.ly, align 8, !noalias !124513
  %i.lz = trunc nuw nsw i64 %i.lr to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 316
  store i16 %i.lz, ptr %i.ma, align 4, !noalias !124513
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lw
  %i.me = load ptr, ptr %i.md, align 8, !noalias !124512, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.kc, ptr %i.me, align 8, !noalias !124513
  %i.mf = trunc nuw nsw i64 %i.lw to i16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 316
  store i16 %i.mf, ptr %i.mg, align 4, !noalias !124513
  %exitcond.not.i.i53.i.i.i.i.i.i.i.3 = icmp eq i64 %i.mb, %i.kz
  br i1 %exitcond.not.i.i53.i.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bh
  %i.mh = add nsw i64 %i.fo, -7
  br label %bb.bl

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i50.i.i.i.i.i.i.i
  %.sroa.861.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.861.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.861.sroa.6.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.861.sroa.7.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.864.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.864.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.967.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.967.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  br label %bb.bp

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i42.i.i.i.i.i.i.i
  %.sroa.861.sroa.0.0.copyload120.i.i.i.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.861.sroa.6.0.copyload121.i.i.i.i.i.i = load i64, ptr %.sroa.861.sroa.6.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.861.sroa.7.0.copyload122.i.i.i.i.i.i = load i32, ptr %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.967.0.copyload69.i.i.i.i.i.i = load i64, ptr %.sroa.967.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514
  %.sroa.1070.0.copyload72.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !124514
  br label %bb.bp

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i.i, %bb.bh, %bb.bi, %bb.ba
  %lpad.loopexit.split-lp597 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = icmp eq i64 %.sroa.03.0209.i.i.i.i.i.i, 0
  br i1 %i.mi, label %.body.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0208.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0208.i.i.i.i.i.i, i64 noundef %.sroa.03.0209.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124515
  br label %.body.i.i.i

.thread146.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h88c1d49bb126074fE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124464
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i"

bb.bp:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i"
  %.sroa.1070.0.i.i.i.i.i.i = phi ptr [ %i.kc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.1070.0.copyload72.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.967.0.i.i.i.i.i.i = phi i64 [ %.sroa.967.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.967.0.copyload69.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ]
  %.sroa.864.0.i.i.i.i.i.i = phi ptr [ %.sroa.864.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %i.hx, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.861.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.861.sroa.0.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.0.0.copyload120.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.861.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.861.sroa.6.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.6.0.copyload121.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.861.sroa.7.0.i.i.i.i.i.i = phi i32 [ %.sroa.861.sroa.7.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit55.i.i.i.i.i.i.i" ], [ %.sroa.861.sroa.7.0.copyload122.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hba9826f1e822e317E.exit47.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !124514 ; 3 uses
  %.sroa.1173.0.copyload75.i.i.i.i.i.i = load i64, ptr %.sroa.1173.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124514 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !124491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124464
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.058.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.864.0.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1070.0.i.i.i.i.i.i) ]
  %i.mj = load ptr, ptr %.sroa.864.0.i.i.i.i.i.i, align 8, !noalias !124481, !noundef !21 ; 2 uses
  %.not.i.i.i.i8.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i8.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.ax
  store i16 1, ptr %i.fd, align 2, !noalias !124488
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.mk, align 8, !noalias !124516
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !124516
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !124516
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fa, i64 272
  store i32 %.sroa.913.0.lcssa.i.i.i.i.i.i, ptr %i.ml, align 8, !noalias !124488
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fa, i64 328
  store ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, ptr %i.mm, align 8, !noalias !124488
  store ptr %i.fa, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, align 8, !noalias !124517
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i.i.i.i, i64 316
  store i16 1, ptr %i.mn, align 4, !noalias !124517
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !124452, !noalias !124461
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i"

bb.bs:                                            ; preds = %bb.af
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = icmp eq i64 %i.bg, 0
  br i1 %i.mp, label %.body.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124518
  br label %.body.i.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9f6ee5b0a45a812dE.exit.i.i.i.i": ; preds = %bb.bp, %bb.br, %.thread146.i.i.i.i.i.i, %bb.at, %.thread.i.i.i.i.i.i, %bb.ag
  %i.mq = phi ptr [ %i.dl, %bb.ag ], [ %i.fa, %bb.br ], [ %.ph, %.thread146.i.i.i.i.i.i ], [ %.ph, %bb.at ], [ %.ph, %.thread.i.i.i.i.i.i ], [ %.ph, %bb.bp ]
  %i.mr = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.ag ], [ %.pre.i.i.i, %bb.br ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread146.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.at ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %.thread.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.ph, %bb.bp ]
  %i.ms = add i64 %i.mr, 1                        ; 2 uses
  store i64 %i.ms, ptr %i.ap, align 8, !alias.scope !124452, !noalias !124461
  br label %.outer

_ZN10serde_core2de9MapAccess10next_entry17h2d4e4ae3ca2363ebE.exit.thread21.i.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !124519
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hb5a1937d2ab69239E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.ck, %bb.by, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.nt, %bb.ck ], [ %i.nc, %bb.by ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.bu:                                            ; preds = %.body.i.i.i
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !124422
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hb5a1937d2ab69239E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17h2d4e4ae3ca2363ebE.exit.thread21.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17hb4ff7a2b35f456c3E.exit.i.i.i"
  %.sroa.731.0.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17hb4ff7a2b35f456c3E.exit.i.i.i" ], [ %.ph, %_ZN10serde_core2de9MapAccess10next_entry17h2d4e4ae3ca2363ebE.exit.thread21.i.i.i ] ; 7 uses
  %.sroa.030.0.i.i = phi i64 [ 1, %"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$GT$17hb4ff7a2b35f456c3E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17h2d4e4ae3ca2363ebE.exit.thread21.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !124417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !124413
  %i.mu = load i8, ptr %i.af, align 8, !range !44, !alias.scope !124415, !noundef !21
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !124413
  store i64 24, ptr %i.r, align 8, !noalias !124413
  %i.mw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !124414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !124413
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mw, ptr %i.mx, align 8, !alias.scope !124414
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h3ece506e2106ae46E.exit"

bb.bw:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hb5a1937d2ab69239E.exit.i.i"
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !124415, !noundef !21
  %i.na = add i8 %i.mz, 1
  store i8 %i.na, ptr %i.my, align 1, !alias.scope !124415
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hb5a1937d2ab69239E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !124413
  store i64 %.sroa.030.0.i.i, ptr %i.q, align 8, !noalias !124413
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !124413
  %.sroa.932.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.932.i.i, i64 16, i1 false), !noalias !124413
  %i.nb = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd749302c89dd846aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.bz unwind label %bb.by, !noalias !124414 ; 9 uses

bb.by:                                            ; preds = %bb.bx
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h3025664fcba43fabE"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #43
          to label %common.resume.i.i unwind label %bb.cg, !noalias !124414

bb.bz:                                            ; preds = %bb.bx
  %.sroa.936.0.copyload.i.i = load i64, ptr %.sroa.932.0..sroa_idx.i.i, align 8, !noalias !124413 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !124413 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !124413
  %i.nd = trunc nuw i64 %.sroa.030.0.i.i to i1
  br i1 %i.nd, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not.i.i = icmp eq ptr %i.nb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  br i1 %.not.i.i, label %bb.cl, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.932.i.i)
  %.not62.i.i = icmp eq ptr %i.nb, null
  br i1 %.not62.i.i, label %.thread52.i.i, label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !124520
  %.not.i.i.i25.i.i = icmp eq ptr %.sroa.731.0.i.i, null
  br i1 %.not.i.i.i25.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4270c2d4dd51769E.exit.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.731.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.731.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.936.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !124521, !noalias !124520
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4270c2d4dd51769E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4270c2d4dd51769E.exit.i.i.i.i": ; preds = %bb.cd, %bb.cc
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %bb.cc ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.cd ], [ 0, %bb.cc ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !124521, !noalias !124520
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.ne, align 8, !alias.scope !124521, !noalias !124520
  %i.nf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.nf, align 8, !alias.scope !124521, !noalias !124520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124522
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha0f7b31d5f6ecabbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !124414
  %i.ng = load ptr, ptr %i.b, align 8, !noalias !124522, !noundef !21 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread57.i.i, label %.lr.ph.i.i.i.i26.i.i

.lr.ph.i.i.i.i26.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4270c2d4dd51769E.exit.i.i.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ce

bb.ce:                                            ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i26.i.i
  %i.nh = phi ptr [ %i.ng, %.lr.ph.i.i.i.i26.i.i ], [ %i.nm, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !124522
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %i.ni, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124524)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nj, align 8, !range !23, !alias.scope !124525, !noalias !124526, !noundef !21 ; 2 uses
  %i.nk = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nk, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nl, align 8, !alias.scope !124525, !noalias !124526, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !124527
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i": ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124522
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha0f7b31d5f6ecabbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !124414
  %i.nm = load ptr, ptr %i.b, align 8, !noalias !124522, !noundef !21 ; 2 uses
  %.not.i.i.i.i27.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i27.i.i, label %.thread57.i.i, label %bb.ce

.thread57.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb1e93fcf1bdaf35aE.exit.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4270c2d4dd51769E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !124520
  br label %.thread52.i.i

bb.cg:                                            ; preds = %bb.by
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !124414
  unreachable

bb.ch:                                            ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124529)
  %i.no = load i64, ptr %i.nb, align 8, !range !47, !alias.scope !124530, !noalias !124414, !noundef !21
  switch i64 %i.no, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.ci
    i64 1, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.np = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.np, align 8, !alias.scope !124530, !noalias !124414, !noundef !21 ; 2 uses
  %i.nq = icmp eq i64 %.val1.i.i.i.i.i.i, 0
end_hunk_14
