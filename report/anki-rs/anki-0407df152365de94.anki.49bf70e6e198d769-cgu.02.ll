Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h20ec17ec7a04ac68E":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !804
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h62529422c4d37cb4E.exit": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !804
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !804
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h62529422c4d37cb4E.exit", %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h62529422c4d37cb4E.exit" ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h2381f27c38342f17E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.v, %bb.k ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !813
  store ptr %2, ptr %i.d, align 8, !noalias !813
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !813
  invoke void @"_ZN4anki4card7service100_$LT$impl$u20$core..convert..TryFrom$LT$anki_proto..cards..Card$GT$$u20$for$u20$anki..card..Card$GT$8try_from17hf8d99c991b0c373cE"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.b)
          to label %bb.c unwind label %bb.h, !noalias !813

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !813
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !813 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !813
  store ptr %2, ptr %i.a, align 8, !noalias !814
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !814
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, 2
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.n = load i64, ptr %.val.le, align 8, !range !33, !alias.scope !815, !noalias !814, !noundef !14
  %i.o = icmp eq i64 %i.n, -9223372036854775773
  br i1 %i.o, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %.val.le)
          to label %bb.j unwind label %bb.f, !noalias !814

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.val.le, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.16..sroa_idx.i, i64 112, i1 false), !noalias !813
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$anki..card..Card$GT$$GT$17hbefdcbd58b1f8ee5E"(ptr noalias noundef align 8 dereferenceable(16) %i.a) #32
          to label %.body.i unwind label %bb.g, !noalias !814

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !814
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.h:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$anki..card..Card$GT$$GT$17hbefdcbd58b1f8ee5E"(ptr noalias noundef align 8 dereferenceable(16) %i.d) #32
          to label %.body.i unwind label %bb.i, !noalias !813

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !813
  unreachable

._crit_edge:                                      ; preds = %bb.k, %bb.a, %bb.j
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.j ], [ %3, %bb.a ], [ %i.v, %bb.k ]
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.k ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.u, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.val.le, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.16..sroa_idx.i, i64 112, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.c
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.16..sroa_idx.i, i64 32, i1 false), !noalias !813
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.16..sroa_idx.i, i64 112, i1 false), !noalias !813
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !814
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 152 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h295c12b769934c4cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not34 = icmp eq ptr %.promoted, %i.e
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.4.035 = phi ptr [ %3, %.lr.ph ], [ %i.cl, %bb.af ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !830
  store ptr %2, ptr %i.c, align 8, !noalias !830
  store ptr %.sroa.4.035, ptr %i.g, align 8, !noalias !830
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !831, !noalias !830, !nonnull !14, !noundef !14 ; 6 uses
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !831, !noalias !830, !noundef !14 ; 8 uses
  switch i64 %i.n, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.m, align 1, !alias.scope !832, !noalias !833, !noundef !14 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.b
  %.pr.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !832, !noalias !833
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i, %bb.c
  %i.p = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.o, %bb.c ]
  switch i8 %i.p, label %bb.k [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.r = add i64 %i.n, -1                         ; 3 uses
  %i.s = icmp ult i64 %i.n, 17
  br i1 %i.s, label %.preheader.i.i.i, label %.preheader98.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.u = add i64 %i.n, -1                         ; 3 uses
  %i.v = icmp ult i64 %i.n, 17
  br i1 %i.v, label %.preheader100.i.i.i, label %.lr.ph104

.preheader100.i.i.i:                              ; preds = %bb.f
  %.not92112.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not92112.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.m
  %i.w = extractvalue { i64, i1 } %i.be, 0        ; 2 uses
  %.not93.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not93.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader102.i.i.i:                              ; preds = %bb.i
  %i.x = extractvalue { i64, i1 } %i.ai, 0        ; 2 uses
  %.not91.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not91.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.f, %.preheader102.i.i.i
  %.sroa.0.2.i.i.i103 = phi ptr [ %i.y, %.preheader102.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.27.2.i.i.i102 = phi i64 [ %i.z, %.preheader102.i.i.i ], [ %i.u, %bb.f ]
  %.sroa.070.2.i.i.i101 = phi i64 [ %i.x, %.preheader102.i.i.i ], [ 0, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i103, i64 1
  %i.z = add i64 %.sroa.27.2.i.i.i102, -1         ; 2 uses
  %i.aa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i.i.i101, i64 10) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %i.ac = load i8, ptr %.sroa.0.2.i.i.i103, align 1, !alias.scope !832, !noalias !833, !noundef !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph104
  %i.ag = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ag, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %.loopexit.i.i, label %.preheader102.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader100.i.i.i, %bb.j
  %.sroa.0.3115.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.t, %.preheader100.i.i.i ] ; 2 uses
  %.sroa.27.3114.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.u, %.preheader100.i.i.i ]
  %.sroa.070.4113.i.i.i = phi i64 [ %i.as, %bb.j ], [ 0, %.preheader100.i.i.i ]
  %i.ak = load i8, ptr %.sroa.0.3115.i.i.i, align 1, !alias.scope !832, !noalias !833, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = mul i64 %.sroa.070.4113.i.i.i, 10
  %i.ap = add nsw i64 %.sroa.27.3114.i.i.i, -1    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i.i.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = sub i64 %i.ao, %i.ar                    ; 2 uses
  %.not92.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not92.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.at = icmp ult i64 %i.n, 16
  br i1 %i.at, label %.lr.ph120.i.i.i.preheader, label %.preheader98.i.i.i

.lr.ph120.i.i.i.preheader:                        ; preds = %.preheader.i.i.i, %bb.k
  %.sroa.0.1119.i.i.i.ph = phi ptr [ %i.m, %bb.k ], [ %i.q, %.preheader.i.i.i ]
  %.sroa.27.1118.i.i.i.ph = phi i64 [ %i.n, %bb.k ], [ %i.r, %.preheader.i.i.i ]
  br label %.lr.ph120.i.i.i

.preheader98.i.i.i:                               ; preds = %bb.k, %bb.e
  %.sroa.27.0.ph.i.i.i = phi i64 [ %i.n, %bb.k ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.m, %bb.k ], [ %i.q, %bb.e ]
  %.not93.i.i.i105 = icmp eq i64 %.sroa.27.0.ph.i.i.i, 0
  br i1 %.not93.i.i.i105, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader.i.i.i:                                 ; preds = %bb.e
  %.not94116.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not94116.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i.preheader

.lr.ph109:                                        ; preds = %.preheader98.i.i.i, %bb.g
  %.sroa.0.0.i.i.i108 = phi ptr [ %i.au, %bb.g ], [ %.sroa.0.0.ph.i.i.i, %.preheader98.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i107 = phi i64 [ %i.av, %bb.g ], [ %.sroa.27.0.ph.i.i.i, %.preheader98.i.i.i ]
  %.sroa.070.0.i.i.i106 = phi i64 [ %i.w, %bb.g ], [ 0, %.preheader98.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i108, i64 1
  %i.av = add i64 %.sroa.27.0.i.i.i107, -1        ; 2 uses
  %i.aw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i.i.i106, i64 10) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 0
  %i.ay = load i8, ptr %.sroa.0.0.i.i.i108, align 1, !alias.scope !832, !noalias !833, !noundef !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %.lr.ph109
  %i.bc = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.bc, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit.i.i, label %bb.g

.lr.ph120.i.i.i:                                  ; preds = %.lr.ph120.i.i.i.preheader, %bb.n
  %.sroa.0.1119.i.i.i = phi ptr [ %i.bm, %bb.n ], [ %.sroa.0.1119.i.i.i.ph, %.lr.ph120.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1118.i.i.i = phi i64 [ %i.bl, %bb.n ], [ %.sroa.27.1118.i.i.i.ph, %.lr.ph120.i.i.i.preheader ]
  %.sroa.070.1117.i.i.i = phi i64 [ %i.bo, %bb.n ], [ 0, %.lr.ph120.i.i.i.preheader ]
  %i.bg = load i8, ptr %.sroa.0.1119.i.i.i, align 1, !alias.scope !832, !noalias !833, !noundef !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.n, label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph120.i.i.i
  %i.bk = mul i64 %.sroa.070.1117.i.i.i, 10
  %i.bl = add nsw i64 %.sroa.27.1118.i.i.i, -1    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i.i.i, i64 1
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = add i64 %i.bk, %i.bn                    ; 2 uses
  %.not94.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not94.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i

bb.o:                                             ; preds = %.loopexit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #32
          to label %bb.ac unwind label %bb.s, !noalias !830

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph104, %.lr.ph.i.i.i, %bb.m, %bb.l, %.lr.ph109, %.lr.ph120.i.i.i, %bb.c, %bb.c, %bb.b
  %.sroa.5.0.ph.i.i = phi i8 [ 1, %bb.c ], [ 1, %bb.c ], [ 0, %bb.b ], [ 2, %bb.l ], [ 1, %.lr.ph.i.i.i ], [ 1, %.lr.ph120.i.i.i ], [ 2, %bb.m ], [ 1, %.lr.ph109 ], [ 1, %.lr.ph104 ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.bq = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %.sroa.5.0.ph.i.i)
          to label %bb.p unwind label %bb.o, !noalias !834

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i": ; preds = %.preheader102.i.i.i, %bb.j, %bb.g, %bb.n, %.preheader98.i.i.i, %.preheader.i.i.i, %.preheader100.i.i.i
  %.sroa.161.0.i.i = phi i64 [ %i.bo, %bb.n ], [ %i.w, %bb.g ], [ %i.as, %bb.j ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader100.i.i.i ], [ 0, %.preheader98.i.i.i ], [ %i.x, %.preheader102.i.i.i ]
  %i.br = inttoptr i64 %.sroa.161.0.i.i to ptr
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", %.loopexit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.br, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ %i.bq, %.loopexit.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i1 [ false, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ true, %.loopexit.i.i ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.q, !noalias !830

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ac unwind label %bb.r, !noalias !830

bb.r:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !830
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.p
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.u unwind label %bb.t, !noalias !830

bb.s:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !830
  unreachable

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !830
  store ptr %2, ptr %i.a, align 8, !noalias !835
  store ptr %.sroa.4.035, ptr %i.j, align 8, !noalias !835
  br i1 %.sroa.0.0.i.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.bw, align 8, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i) ]
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !835, !align !15, !noundef !14 ; 7 uses
  %i.bx = icmp eq ptr %.val.i.i, null
  br i1 %i.bx, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.by = load i64, ptr %.val.i.i, align 8, !range !34, !alias.scope !838, !noalias !835, !noundef !14
  switch i64 %i.by, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" [
    i64 0, label %bb.x
    i64 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !838, !noalias !835, !noundef !14 ; 2 uses
  %i.ca = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !838, !noalias !835, !nonnull !14, !noundef !14
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i.i.i.i, i64 noundef 1) #34, !noalias !839
  br label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"

bb.z:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !838, !noalias !835, !nonnull !14, !noundef !14
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" unwind label %bb.aa, !noalias !835

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !835
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !835
  %i.ce = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17h36fd3a8b4157bdb9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.body.i unwind label %bb.ab, !noalias !835 ; 0 uses

"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i": ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !835
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !835
  unreachable

.body.i:                                          ; preds = %bb.ac, %bb.aa
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %eh.lpad-body.ph.i, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.ac:                                            ; preds = %bb.t, %bb.q, %bb.o
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bs, %bb.q ], [ %i.bp, %bb.o ]
  %i.cg = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17h36fd3a8b4157bdb9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.body.i unwind label %bb.ad, !noalias !830 ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !830
  unreachable

._crit_edge:                                      ; preds = %bb.af, %bb.a, %bb.ae
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.035, %bb.ae ], [ %3, %bb.a ], [ %i.cl, %bb.af ]
  %storemerge = phi i64 [ 1, %bb.ae ], [ 0, %bb.a ], [ 0, %bb.af ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cj, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ae:                                            ; preds = %bb.v, %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !830
  br label %._crit_edge

bb.af:                                            ; preds = %bb.u
  %i.ck = ptrtoint ptr %.sroa.3.0.i.i to i64
  store i64 %i.ck, ptr %.sroa.4.035, align 8, !noalias !835
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.4.035, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !830
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h297db85011961dc0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 9 uses
  %.sroa.6 = alloca [184 x i8], align 8           ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.d
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i64 192, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.h = invoke noundef zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hf8102e35f8114ebeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !844

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.a) #32
          to label %bb.f unwind label %bb.e, !noalias !844

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hc6541bb0b392ee12E.exit", label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hc6541bb0b392ee12E.exit.thread"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hc6541bb0b392ee12E.exit.thread": ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.a), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !844
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hc6541bb0b392ee12E.exit": ; preds = %bb.d
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !845, !noalias !846 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6.0..sroa_idx, i64 184, i1 false), !alias.scope !845, !noalias !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.05.0.copyload, -9223372036854775808
  br i1 %.not.i, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.a, %bb.g
  %storemerge = phi i64 [ %.sroa.05.0.copyload, %bb.g ], [ -9223372036854775808, %bb.a ], [ -9223372036854775808, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
end_hunk_0
begin_hunk_1_@"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7049da4487467997E":bb.a
  br i1 %.not.i.i.i, label %bb.ca, label %.loopexit153

.loopexit153:                                     ; preds = %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i"
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.lo, align 8
  br label %bb.by

bb.by:                                            ; preds = %.loopexit153, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106", %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87"
  %.val204 = phi ptr [ %.val207, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %.val205, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %.val.le, %.loopexit153 ] ; 21 uses
  %.sroa.01.0.i104 = phi i64 [ -9223372036854775808, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %.sroa.01.2.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %.sroa.01.0.copyload.i, %.loopexit153 ] ; 2 uses
  %.sroa.11.0.i103 = phi i64 [ %.sroa.11.0.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %.sroa.11.2.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %.sroa.11.0.copyload.i, %.loopexit153 ] ; 2 uses
  %.sroa.19.0.i102 = phi ptr [ %.sroa.19.0.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %.sroa.19.2.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %.sroa.19.0.copyload.i, %.loopexit153 ] ; 2 uses
  %.sroa.26.i.sroa.12.098 = phi i64 [ %.sroa.26.i.sroa.12.0.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %.sroa.26.i.sroa.12.3.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %.sroa.26.i.sroa.12.0.copyload, %.loopexit153 ] ; 2 uses
  %i.lp = phi <2 x i64> [ %i.li, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %i.lk, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %i.lm, %.loopexit153 ] ; 3 uses
  %i.lq = phi <2 x ptr> [ %i.lj, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread87" ], [ %i.ll, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread106" ], [ %i.ln, %.loopexit153 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val204) ]
  %i.lr = load i64, ptr %.val204, align 8, !range !33, !alias.scope !1159, !noalias !1160, !noundef !14
  %i.ls = icmp eq i64 %i.lr, -9223372036854775773
  br i1 %i.ls, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %.val204)
          to label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" unwind label %bb.cb, !noalias !1160

bb.ca:                                            ; preds = %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread", %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i"
  %.sroa.11.3.i85 = phi i64 [ %.sroa.11.3.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.11.0.copyload.i, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ] ; 3 uses
  %.sroa.19.3.i84 = phi ptr [ %i.bo, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.19.0.copyload.i, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.sroa.21.3.i83 = phi i64 [ %i.bl, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.21.0.copyload.i, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.sroa.22.3.i82 = phi i64 [ %.sroa.22.3.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.22.0.copyload.i, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.sroa.25.3.i81 = phi ptr [ %.sroa.25.3.i.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.25.0.copyload.i, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.sroa.26.i.sroa.12.180 = phi i64 [ 20, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.26.i.sroa.12.0.copyload, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.sroa.26.i.sroa.0.179 = phi ptr [ %.sroa.26.i.sroa.0.1.ph, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i.thread" ], [ %.sroa.26.i.sroa.0.0.copyload, %"_ZN4anki4sync5media3zip24unzip_and_validate_files28_$u7b$$u7b$closure$u7d$$u7d$17h4c615a74160696baE.exit.i" ]
  %.not.i4.i.i = icmp eq i64 %.sroa.11.3.i85, -9223372036854775808
  br i1 %.not.i4.i.i, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread", label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread": ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.sroa.13)
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.lt = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.0.i104, ptr %.val204, align 8, !noalias !1160
  %.sroa.516.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 8
  store i64 %.sroa.11.0.i103, ptr %.sroa.516.0..8.val.sroa_idx.i.i, align 8, !noalias !1160
  %.sroa.6.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 16
  store ptr %.sroa.19.0.i102, ptr %.sroa.6.0..8.val.sroa_idx.i.i, align 8, !noalias !1161
  %.sroa.5.sroa.6.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 24
  %i.lu = extractelement <2 x i64> %i.lp, i64 0
  store i64 %i.lu, ptr %.sroa.5.sroa.6.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i, align 8, !noalias !1161
  %.sroa.5.sroa.7.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 32
  %i.lv = extractelement <2 x i64> %i.lp, i64 1
  store i64 %i.lv, ptr %.sroa.5.sroa.7.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i, align 8, !noalias !1161
  %.sroa.5.sroa.8.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.i.sroa.0.i, i64 16, i1 false), !noalias !1113
  %.sroa.5.sroa.9.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 56
  %i.lw = extractelement <2 x ptr> %i.lq, i64 0
  store ptr %i.lw, ptr %.sroa.5.sroa.9.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i, align 8, !noalias !1161
  %.sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 64
  %i.lx = extractelement <2 x ptr> %i.lq, i64 1
  store ptr %i.lx, ptr %.sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i, align 8, !noalias !1113
  %.sroa.26.i.sroa.12.0..sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val204, i64 72
  store i64 %.sroa.26.i.sroa.12.098, ptr %.sroa.26.i.sroa.12.0..sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !1113
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.26.i.sroa.13, i64 32, i1 false), !noalias !1113
  br label %common.resume.i

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124": ; preds = %bb.by, %bb.bz
  store i64 %.sroa.01.0.i104, ptr %.val204, align 8, !noalias !1160
  %.sroa.516.0..8.val.sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 8
  store i64 %.sroa.11.0.i103, ptr %.sroa.516.0..8.val.sroa_idx17.i.i, align 8, !noalias !1160
  %.sroa.6.0..8.val.sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 16
  store ptr %.sroa.19.0.i102, ptr %.sroa.6.0..8.val.sroa_idx19.i.i, align 8, !noalias !1161
  %.sroa.5.sroa.6.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 24
  store <2 x i64> %i.lp, ptr %.sroa.5.sroa.6.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i, align 8, !noalias !1161
  %.sroa.5.sroa.8.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.i.sroa.0.i, i64 16, i1 false), !noalias !1113
  %.sroa.5.sroa.9.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val204, i64 56
  store <2 x ptr> %i.lq, ptr %.sroa.5.sroa.9.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i, align 8, !noalias !1113
  %.sroa.26.i.sroa.12.0..sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val204, i64 72
  store i64 %.sroa.26.i.sroa.12.098, ptr %.sroa.26.i.sroa.12.0..sroa.5.sroa.10.0..sroa.6.0..8.val.sroa_idx19.i.sroa_idx.i.sroa_idx, align 8, !noalias !1113
  %.sroa.7.0..8.val.sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %.val204, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..8.val.sroa_idx20.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.26.i.sroa.13, i64 32, i1 false), !noalias !1113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.sroa.13)
  br label %.loopexit154

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit": ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.i.sroa.0.i, i64 16, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.sroa.13)
  %.not.i = icmp eq i64 %.sroa.11.3.i85, -9223372036854775807
  br i1 %.not.i, label %bb.cd, label %.loopexit154

._crit_edge:                                      ; preds = %bb.cd, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !1163
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge, %.loopexit154
  ret void

.loopexit154:                                     ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124"
  %storemerge.i.i139 = phi i64 [ -9223372036854775808, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.11.3.i85, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.5.0138 = phi ptr [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.19.3.i84, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.733.0137 = phi i64 [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.21.3.i83, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.8.0136 = phi i64 [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.22.3.i82, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.10.0135 = phi ptr [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.25.3.i81, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.11.sroa.4.0134 = phi i64 [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.26.i.sroa.12.180, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.11.sroa.0.0133 = phi ptr [ undef, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread124" ], [ %.sroa.26.i.sroa.0.179, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit" ]
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 %storemerge.i.i139, ptr %0, align 8, !alias.scope !1164
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0138, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1164
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.733.0137, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1164
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0136, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1164
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.10.0135, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1164
  %.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.11.sroa.0.0133, ptr %.sroa.7.0..sroa_idx36, align 8, !alias.scope !1164
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.11.sroa.4.0134, ptr %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx36.sroa_idx, align 8, !alias.scope !1164
  br label %bb.cc

bb.cd:                                            ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit.thread", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha4796d18eb9adbd7E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.not = icmp eq ptr %i.bk, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h72654bafa9878200E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not34 = icmp eq ptr %.promoted, %i.e
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.4.035 = phi ptr [ %3, %.lr.ph ], [ %i.cl, %bb.af ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1179
  store ptr %2, ptr %i.c, align 8, !noalias !1179
  store ptr %.sroa.4.035, ptr %i.g, align 8, !noalias !1179
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !1180, !noalias !1179, !nonnull !14, !noundef !14 ; 6 uses
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !1180, !noalias !1179, !noundef !14 ; 8 uses
  switch i64 %i.n, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.m, align 1, !alias.scope !1181, !noalias !1182, !noundef !14 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.b
  %.pr.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !1181, !noalias !1182
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i, %bb.c
  %i.p = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.o, %bb.c ]
  switch i8 %i.p, label %bb.k [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.r = add i64 %i.n, -1                         ; 3 uses
  %i.s = icmp ult i64 %i.n, 17
  br i1 %i.s, label %.preheader.i.i.i, label %.preheader98.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.u = add i64 %i.n, -1                         ; 3 uses
  %i.v = icmp ult i64 %i.n, 17
  br i1 %i.v, label %.preheader100.i.i.i, label %.lr.ph104

.preheader100.i.i.i:                              ; preds = %bb.f
  %.not92112.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not92112.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.m
  %i.w = extractvalue { i64, i1 } %i.be, 0        ; 2 uses
  %.not93.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not93.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader102.i.i.i:                              ; preds = %bb.i
  %i.x = extractvalue { i64, i1 } %i.ai, 0        ; 2 uses
  %.not91.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not91.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.f, %.preheader102.i.i.i
  %.sroa.0.2.i.i.i103 = phi ptr [ %i.y, %.preheader102.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.27.2.i.i.i102 = phi i64 [ %i.z, %.preheader102.i.i.i ], [ %i.u, %bb.f ]
  %.sroa.070.2.i.i.i101 = phi i64 [ %i.x, %.preheader102.i.i.i ], [ 0, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i103, i64 1
  %i.z = add i64 %.sroa.27.2.i.i.i102, -1         ; 2 uses
  %i.aa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i.i.i101, i64 10) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %i.ac = load i8, ptr %.sroa.0.2.i.i.i103, align 1, !alias.scope !1181, !noalias !1182, !noundef !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph104
  %i.ag = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ag, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %.loopexit.i.i, label %.preheader102.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader100.i.i.i, %bb.j
  %.sroa.0.3115.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.t, %.preheader100.i.i.i ] ; 2 uses
  %.sroa.27.3114.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.u, %.preheader100.i.i.i ]
  %.sroa.070.4113.i.i.i = phi i64 [ %i.as, %bb.j ], [ 0, %.preheader100.i.i.i ]
  %i.ak = load i8, ptr %.sroa.0.3115.i.i.i, align 1, !alias.scope !1181, !noalias !1182, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = mul i64 %.sroa.070.4113.i.i.i, 10
  %i.ap = add nsw i64 %.sroa.27.3114.i.i.i, -1    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i.i.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = sub i64 %i.ao, %i.ar                    ; 2 uses
  %.not92.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not92.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.at = icmp ult i64 %i.n, 16
  br i1 %i.at, label %.lr.ph120.i.i.i.preheader, label %.preheader98.i.i.i

.lr.ph120.i.i.i.preheader:                        ; preds = %.preheader.i.i.i, %bb.k
  %.sroa.0.1119.i.i.i.ph = phi ptr [ %i.m, %bb.k ], [ %i.q, %.preheader.i.i.i ]
  %.sroa.27.1118.i.i.i.ph = phi i64 [ %i.n, %bb.k ], [ %i.r, %.preheader.i.i.i ]
  br label %.lr.ph120.i.i.i

.preheader98.i.i.i:                               ; preds = %bb.k, %bb.e
  %.sroa.27.0.ph.i.i.i = phi i64 [ %i.n, %bb.k ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.m, %bb.k ], [ %i.q, %bb.e ]
  %.not93.i.i.i105 = icmp eq i64 %.sroa.27.0.ph.i.i.i, 0
  br i1 %.not93.i.i.i105, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader.i.i.i:                                 ; preds = %bb.e
  %.not94116.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not94116.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i.preheader

.lr.ph109:                                        ; preds = %.preheader98.i.i.i, %bb.g
  %.sroa.0.0.i.i.i108 = phi ptr [ %i.au, %bb.g ], [ %.sroa.0.0.ph.i.i.i, %.preheader98.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i107 = phi i64 [ %i.av, %bb.g ], [ %.sroa.27.0.ph.i.i.i, %.preheader98.i.i.i ]
  %.sroa.070.0.i.i.i106 = phi i64 [ %i.w, %bb.g ], [ 0, %.preheader98.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i108, i64 1
  %i.av = add i64 %.sroa.27.0.i.i.i107, -1        ; 2 uses
  %i.aw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i.i.i106, i64 10) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 0
  %i.ay = load i8, ptr %.sroa.0.0.i.i.i108, align 1, !alias.scope !1181, !noalias !1182, !noundef !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %.lr.ph109
  %i.bc = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.bc, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit.i.i, label %bb.g

.lr.ph120.i.i.i:                                  ; preds = %.lr.ph120.i.i.i.preheader, %bb.n
  %.sroa.0.1119.i.i.i = phi ptr [ %i.bm, %bb.n ], [ %.sroa.0.1119.i.i.i.ph, %.lr.ph120.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1118.i.i.i = phi i64 [ %i.bl, %bb.n ], [ %.sroa.27.1118.i.i.i.ph, %.lr.ph120.i.i.i.preheader ]
  %.sroa.070.1117.i.i.i = phi i64 [ %i.bo, %bb.n ], [ 0, %.lr.ph120.i.i.i.preheader ]
  %i.bg = load i8, ptr %.sroa.0.1119.i.i.i, align 1, !alias.scope !1181, !noalias !1182, !noundef !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.n, label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph120.i.i.i
  %i.bk = mul i64 %.sroa.070.1117.i.i.i, 10
  %i.bl = add nsw i64 %.sroa.27.1118.i.i.i, -1    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i.i.i, i64 1
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = add i64 %i.bk, %i.bn                    ; 2 uses
  %.not94.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not94.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i

bb.o:                                             ; preds = %.loopexit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #32
          to label %bb.ac unwind label %bb.s, !noalias !1179

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph104, %.lr.ph.i.i.i, %bb.m, %bb.l, %.lr.ph109, %.lr.ph120.i.i.i, %bb.c, %bb.c, %bb.b
  %.sroa.5.0.ph.i.i = phi i8 [ 1, %bb.c ], [ 1, %bb.c ], [ 0, %bb.b ], [ 2, %bb.l ], [ 1, %.lr.ph.i.i.i ], [ 1, %.lr.ph120.i.i.i ], [ 2, %bb.m ], [ 1, %.lr.ph109 ], [ 1, %.lr.ph104 ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.bq = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %.sroa.5.0.ph.i.i)
          to label %bb.p unwind label %bb.o, !noalias !1183

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i": ; preds = %.preheader102.i.i.i, %bb.j, %bb.g, %bb.n, %.preheader98.i.i.i, %.preheader.i.i.i, %.preheader100.i.i.i
  %.sroa.161.0.i.i = phi i64 [ %i.bo, %bb.n ], [ %i.w, %bb.g ], [ %i.as, %bb.j ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader100.i.i.i ], [ 0, %.preheader98.i.i.i ], [ %i.x, %.preheader102.i.i.i ]
  %i.br = inttoptr i64 %.sroa.161.0.i.i to ptr
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", %.loopexit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.br, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ %i.bq, %.loopexit.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i1 [ false, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ true, %.loopexit.i.i ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.q, !noalias !1179

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ac unwind label %bb.r, !noalias !1179

bb.r:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1179
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.p
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.u unwind label %bb.t, !noalias !1179

bb.s:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1179
  unreachable

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1179
  store ptr %2, ptr %i.a, align 8, !noalias !1184
  store ptr %.sroa.4.035, ptr %i.j, align 8, !noalias !1184
  br i1 %.sroa.0.0.i.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.bw, align 8, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i) ]
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !1184, !align !15, !noundef !14 ; 7 uses
  %i.bx = icmp eq ptr %.val.i.i, null
  br i1 %i.bx, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.by = load i64, ptr %.val.i.i, align 8, !range !34, !alias.scope !1187, !noalias !1184, !noundef !14
  switch i64 %i.by, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" [
    i64 0, label %bb.x
    i64 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !1187, !noalias !1184, !noundef !14 ; 2 uses
  %i.ca = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !1187, !noalias !1184, !nonnull !14, !noundef !14
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i.i.i.i, i64 noundef 1) #34, !noalias !1188
  br label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"

bb.z:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !1187, !noalias !1184, !nonnull !14, !noundef !14
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" unwind label %bb.aa, !noalias !1184

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !1184
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !1184
  %i.ce = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17hcae1b1d84a47f021E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.body.i unwind label %bb.ab, !noalias !1184 ; 0 uses

"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i": ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !1184
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1184
  unreachable

.body.i:                                          ; preds = %bb.ac, %bb.aa
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %eh.lpad-body.ph.i, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.ac:                                            ; preds = %bb.t, %bb.q, %bb.o
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bs, %bb.q ], [ %i.bp, %bb.o ]
  %i.cg = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17hcae1b1d84a47f021E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.body.i unwind label %bb.ad, !noalias !1179 ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1179
  unreachable

._crit_edge:                                      ; preds = %bb.af, %bb.a, %bb.ae
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.035, %bb.ae ], [ %3, %bb.a ], [ %i.cl, %bb.af ]
  %storemerge = phi i64 [ 1, %bb.ae ], [ 0, %bb.a ], [ 0, %bb.af ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cj, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ae:                                            ; preds = %bb.v, %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1179
  br label %._crit_edge

bb.af:                                            ; preds = %bb.u
  %i.ck = ptrtoint ptr %.sroa.3.0.i.i to i64
  store i64 %i.ck, ptr %.sroa.4.035, align 8, !noalias !1184
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.4.035, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1179
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7d7b01431db284e9E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [224 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit"
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %i.l, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit" ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.h, i64 232, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1191
  store ptr %1, ptr %i.c, align 8, !noalias !1191
  store ptr %.sroa.4.013, ptr %i.g, align 8, !noalias !1191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1191
  invoke void @"_ZN4anki8notetype8schema11143_$LT$impl$u20$core..convert..From$LT$anki..notetype..schema11..CardTemplateSchema11$GT$$u20$for$u20$anki..notetype..templates..CardTemplate$GT$4from17h83a3d71302755356E"(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
          to label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit" unwind label %bb.d, !noalias !1191

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$anki..notetype..templates..CardTemplate$GT$$GT$17h18485c6eb73b56c3E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #32
          to label %bb.c unwind label %bb.e, !noalias !1191

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1191
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false), !noalias !1191
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 224 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1191
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit", %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17he2c5456f6f2b3d34E.exit" ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h82b6dfdb417a92b1E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.b
  br i1 %.not12, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.013 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 3 uses
  %.sroa.011.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24
  store i64 %.sroa.011.0.copyload, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !1194
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h8d6f2770f1a7ffa8E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i = alloca [136 x i8], align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not13 = icmp eq ptr %.promoted, %i.b
  br i1 %.not13, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.01.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.4.014 = phi ptr [ %2, %.lr.ph ], [ %i.h, %bb.b ] ; 4 uses
  %i.d = phi ptr [ %.promoted, %.lr.ph ], [ %i.e, %bb.b ] ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %.sroa.312.0.copyload = load i32, ptr %.sroa.312.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  %i.f = trunc nuw i32 %.sroa.2.0.copyload to i1
  %.sroa.5.0.i.i.i.i = select i1 %i.f, i32 %.sroa.312.0.copyload, i32 undef
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.112..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.014, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.01.i, i64 136, i1 false), !noalias !1197
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 136
  store i32 %.sroa.2.0.copyload, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !1197
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 140
  store i32 %.sroa.5.0.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 4, !noalias !1197
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 144 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h8e9c51c2e97a9270E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not34 = icmp eq ptr %.promoted, %i.e
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.4.035 = phi ptr [ %3, %.lr.ph ], [ %i.cl, %bb.af ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1212
  store ptr %2, ptr %i.c, align 8, !noalias !1212
  store ptr %.sroa.4.035, ptr %i.g, align 8, !noalias !1212
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !1213, !noalias !1212, !nonnull !14, !noundef !14 ; 6 uses
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !1213, !noalias !1212, !noundef !14 ; 8 uses
  switch i64 %i.n, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.m, align 1, !alias.scope !1214, !noalias !1215, !noundef !14 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.b
  %.pr.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !1214, !noalias !1215
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i, %bb.c
  %i.p = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.o, %bb.c ]
  switch i8 %i.p, label %bb.k [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.r = add i64 %i.n, -1                         ; 3 uses
  %i.s = icmp ult i64 %i.n, 17
  br i1 %i.s, label %.preheader.i.i.i, label %.preheader98.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.u = add i64 %i.n, -1                         ; 3 uses
  %i.v = icmp ult i64 %i.n, 17
  br i1 %i.v, label %.preheader100.i.i.i, label %.lr.ph104

.preheader100.i.i.i:                              ; preds = %bb.f
  %.not92112.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not92112.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.m
  %i.w = extractvalue { i64, i1 } %i.be, 0        ; 2 uses
  %.not93.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not93.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader102.i.i.i:                              ; preds = %bb.i
  %i.x = extractvalue { i64, i1 } %i.ai, 0        ; 2 uses
  %.not91.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not91.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.f, %.preheader102.i.i.i
  %.sroa.0.2.i.i.i103 = phi ptr [ %i.y, %.preheader102.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.27.2.i.i.i102 = phi i64 [ %i.z, %.preheader102.i.i.i ], [ %i.u, %bb.f ]
  %.sroa.070.2.i.i.i101 = phi i64 [ %i.x, %.preheader102.i.i.i ], [ 0, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i103, i64 1
  %i.z = add i64 %.sroa.27.2.i.i.i102, -1         ; 2 uses
  %i.aa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i.i.i101, i64 10) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %i.ac = load i8, ptr %.sroa.0.2.i.i.i103, align 1, !alias.scope !1214, !noalias !1215, !noundef !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph104
  %i.ag = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ag, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %.loopexit.i.i, label %.preheader102.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader100.i.i.i, %bb.j
  %.sroa.0.3115.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.t, %.preheader100.i.i.i ] ; 2 uses
  %.sroa.27.3114.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.u, %.preheader100.i.i.i ]
  %.sroa.070.4113.i.i.i = phi i64 [ %i.as, %bb.j ], [ 0, %.preheader100.i.i.i ]
  %i.ak = load i8, ptr %.sroa.0.3115.i.i.i, align 1, !alias.scope !1214, !noalias !1215, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = mul i64 %.sroa.070.4113.i.i.i, 10
  %i.ap = add nsw i64 %.sroa.27.3114.i.i.i, -1    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i.i.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = sub i64 %i.ao, %i.ar                    ; 2 uses
  %.not92.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not92.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.at = icmp ult i64 %i.n, 16
  br i1 %i.at, label %.lr.ph120.i.i.i.preheader, label %.preheader98.i.i.i

.lr.ph120.i.i.i.preheader:                        ; preds = %.preheader.i.i.i, %bb.k
  %.sroa.0.1119.i.i.i.ph = phi ptr [ %i.m, %bb.k ], [ %i.q, %.preheader.i.i.i ]
  %.sroa.27.1118.i.i.i.ph = phi i64 [ %i.n, %bb.k ], [ %i.r, %.preheader.i.i.i ]
  br label %.lr.ph120.i.i.i

.preheader98.i.i.i:                               ; preds = %bb.k, %bb.e
  %.sroa.27.0.ph.i.i.i = phi i64 [ %i.n, %bb.k ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.m, %bb.k ], [ %i.q, %bb.e ]
  %.not93.i.i.i105 = icmp eq i64 %.sroa.27.0.ph.i.i.i, 0
  br i1 %.not93.i.i.i105, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph109

.preheader.i.i.i:                                 ; preds = %bb.e
  %.not94116.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not94116.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i.preheader

.lr.ph109:                                        ; preds = %.preheader98.i.i.i, %bb.g
  %.sroa.0.0.i.i.i108 = phi ptr [ %i.au, %bb.g ], [ %.sroa.0.0.ph.i.i.i, %.preheader98.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i107 = phi i64 [ %i.av, %bb.g ], [ %.sroa.27.0.ph.i.i.i, %.preheader98.i.i.i ]
  %.sroa.070.0.i.i.i106 = phi i64 [ %i.w, %bb.g ], [ 0, %.preheader98.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i108, i64 1
  %i.av = add i64 %.sroa.27.0.i.i.i107, -1        ; 2 uses
  %i.aw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i.i.i106, i64 10) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 0
  %i.ay = load i8, ptr %.sroa.0.0.i.i.i108, align 1, !alias.scope !1214, !noalias !1215, !noundef !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %.lr.ph109
  %i.bc = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.bc, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit.i.i, label %bb.g

.lr.ph120.i.i.i:                                  ; preds = %.lr.ph120.i.i.i.preheader, %bb.n
  %.sroa.0.1119.i.i.i = phi ptr [ %i.bm, %bb.n ], [ %.sroa.0.1119.i.i.i.ph, %.lr.ph120.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1118.i.i.i = phi i64 [ %i.bl, %bb.n ], [ %.sroa.27.1118.i.i.i.ph, %.lr.ph120.i.i.i.preheader ]
  %.sroa.070.1117.i.i.i = phi i64 [ %i.bo, %bb.n ], [ 0, %.lr.ph120.i.i.i.preheader ]
  %i.bg = load i8, ptr %.sroa.0.1119.i.i.i, align 1, !alias.scope !1214, !noalias !1215, !noundef !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.n, label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph120.i.i.i
  %i.bk = mul i64 %.sroa.070.1117.i.i.i, 10
  %i.bl = add nsw i64 %.sroa.27.1118.i.i.i, -1    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i.i.i, i64 1
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = add i64 %i.bk, %i.bn                    ; 2 uses
  %.not94.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not94.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", label %.lr.ph120.i.i.i

bb.o:                                             ; preds = %.loopexit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #32
          to label %bb.ac unwind label %bb.s, !noalias !1212

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph104, %.lr.ph.i.i.i, %bb.m, %bb.l, %.lr.ph109, %.lr.ph120.i.i.i, %bb.c, %bb.c, %bb.b
  %.sroa.5.0.ph.i.i = phi i8 [ 1, %bb.c ], [ 1, %bb.c ], [ 0, %bb.b ], [ 2, %bb.l ], [ 1, %.lr.ph.i.i.i ], [ 1, %.lr.ph120.i.i.i ], [ 2, %bb.m ], [ 1, %.lr.ph109 ], [ 1, %.lr.ph104 ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.bq = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %.sroa.5.0.ph.i.i)
          to label %bb.p unwind label %bb.o, !noalias !1216

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i": ; preds = %.preheader102.i.i.i, %bb.j, %bb.g, %bb.n, %.preheader98.i.i.i, %.preheader.i.i.i, %.preheader100.i.i.i
  %.sroa.161.0.i.i = phi i64 [ %i.bo, %bb.n ], [ %i.w, %bb.g ], [ %i.as, %bb.j ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader100.i.i.i ], [ 0, %.preheader98.i.i.i ], [ %i.x, %.preheader102.i.i.i ]
  %i.br = inttoptr i64 %.sroa.161.0.i.i to ptr
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i", %.loopexit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.br, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ %i.bq, %.loopexit.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i1 [ false, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.i.i" ], [ true, %.loopexit.i.i ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.q, !noalias !1212

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ac unwind label %bb.r, !noalias !1212

bb.r:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1212
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.p
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.u unwind label %bb.t, !noalias !1212

bb.s:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1212
  unreachable

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1212
  store ptr %2, ptr %i.a, align 8, !noalias !1217
  store ptr %.sroa.4.035, ptr %i.j, align 8, !noalias !1217
  br i1 %.sroa.0.0.i.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.bw, align 8, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i) ]
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !1217, !align !15, !noundef !14 ; 7 uses
  %i.bx = icmp eq ptr %.val.i.i, null
  br i1 %i.bx, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.by = load i64, ptr %.val.i.i, align 8, !range !34, !alias.scope !1220, !noalias !1217, !noundef !14
  switch i64 %i.by, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" [
    i64 0, label %bb.x
    i64 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !1220, !noalias !1217, !noundef !14 ; 2 uses
  %i.ca = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !1220, !noalias !1217, !nonnull !14, !noundef !14
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i.i.i.i, i64 noundef 1) #34, !noalias !1221
  br label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"

bb.z:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !1220, !noalias !1217, !nonnull !14, !noundef !14
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i.i.i.i.i.i.i)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i" unwind label %bb.aa, !noalias !1217

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !1217
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !1217
  %i.ce = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17hf232505f64c5f367E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.body.i unwind label %bb.ab, !noalias !1217 ; 0 uses

"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i": ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 40, i64 noundef 8) #34, !noalias !1217
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1217
  unreachable

.body.i:                                          ; preds = %bb.ac, %bb.aa
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %eh.lpad-body.ph.i, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.ac:                                            ; preds = %bb.t, %bb.q, %bb.o
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bs, %bb.q ], [ %i.bp, %bb.o ]
  %i.cg = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17hf232505f64c5f367E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.body.i unwind label %bb.ad, !noalias !1212 ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !1212
  unreachable

._crit_edge:                                      ; preds = %bb.af, %bb.a, %bb.ae
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.035, %bb.ae ], [ %3, %bb.a ], [ %i.cl, %bb.af ]
  %storemerge = phi i64 [ 1, %bb.ae ], [ 0, %bb.a ], [ 0, %bb.af ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cj, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ae:                                            ; preds = %bb.v, %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$17h615d683fac6b5c1fE.exit.i.i.i"
  store ptr %.sroa.3.0.i.i, ptr %.val.le, align 8, !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1212
  br label %._crit_edge

bb.af:                                            ; preds = %bb.u
  %i.ck = ptrtoint ptr %.sroa.3.0.i.i to i64
  store i64 %i.ck, ptr %.sroa.4.035, align 8, !noalias !1217
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.4.035, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1212
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h92350e23db17269cE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.11.i = alloca [88 x i8], align 8         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not10.not = icmp eq ptr %.promoted, %i.d
  br i1 %.not10.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1236, !nonnull !14, !align !15, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val2.i = load ptr, ptr %1, align 8, !nonnull !14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h78db325e980bfc52E.exit"
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h78db325e980bfc52E.exit" ] ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !1236, !nonnull !14, !align !15, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1237
  call void @"_ZN4anki8notetype46_$LT$impl$u20$anki..collection..Collection$GT$12get_notetype17h4f31ee40e3886fe4E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(728) %.val.i, i64 noundef %i.j), !noalias !1237
  %i.l = load i64, ptr %i.b, align 8, !range !33, !noalias !1237, !noundef !14 ; 3 uses
  %.not.i.i.not = icmp eq i64 %i.l, -9223372036854775773
  %i.m = load ptr, ptr %i.h, align 8, !noalias !1237 ; 3 uses
  br i1 %.not.i.i.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not25.i.i = icmp eq ptr %i.m, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1237
  br i1 %.not25.i.i, label %bb.d, label %bb.g, !prof !18

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #33, !noalias !1237
  unreachable

bb.e:                                             ; preds = %bb.b
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.16.copyload.i = load ptr, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !noalias !1236 ; 2 uses
  %.sroa.11.16..sroa.721.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.16..sroa.721.0..sroa_idx.i.sroa_idx.i, i64 88, i1 false), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1237
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val310.i = load ptr, ptr %i.o, align 8, !alias.scope !1236, !nonnull !14, !noundef !14 ; 10 uses
  %i.p = load i64, ptr %.val310.i, align 8, !range !33, !alias.scope !1238, !noalias !1239, !noundef !14
  %i.q = icmp eq i64 %i.p, -9223372036854775773
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %.val310.i)
          to label %bb.k unwind label %bb.j, !noalias !1239

bb.g:                                             ; preds = %bb.c
  %.val.i.i = load ptr, ptr %.val2.i, align 8, !noalias !1239, !nonnull !14, !align !15, !noundef !14
end_hunk_1
begin_hunk_2_@"_ZN4anki13import_export4text3csv6import134_$LT$impl$u20$core..convert..From$LT$anki_proto..import_export..CsvMetadata$GT$$u20$for$u20$anki..import_export..text..ForeignData$GT$4from17h570f529988aaec07E":bb.a
          to label %.body82 unwind label %bb.aa

bb.z:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit79"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit84" unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %bb.y, %bb.ab
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.be, %bb.ab ], [ %i.bc, %bb.y ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E"(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #32
          to label %.body86 unwind label %bb.an

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit84": ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdec5128e5942d058E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit84"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebe1ad813d6a1b81E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body86 unwind label %bb.ae

bb.ad:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit84"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebe1ad813d6a1b81E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E.exit" unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

.body86:                                          ; preds = %bb.af, %bb.ac, %.body82
  %.pn52 = phi { ptr, i32 } [ %eh.lpad-body83, %.body82 ], [ %i.bk, %bb.af ], [ %i.bh, %bb.ac ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE"(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #32
          to label %.body88 unwind label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body86

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E.exit": ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !40, !alias.scope !4185, !noundef !14
  %i.bn = icmp slt i64 %i.bm, -9223372036854775805
  br i1 %i.bn, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE.exit", label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body88 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.ag
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE.exit" unwind label %bb.aj

.body88:                                          ; preds = %bb.aj, %bb.ah, %.body86
  %.pn54 = phi { ptr, i32 } [ %.pn52, %.body86 ], [ %i.br, %bb.aj ], [ %i.bo, %bb.ah ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Notetype$GT$$GT$17h5de2803ecf00fdafE"(ptr noalias noundef align 8 dereferenceable(32) %i.bq) #32
          to label %common.resume unwind label %bb.an

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body88

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE.exit": ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !24, !alias.scope !4186, !noundef !14
  %switch.i = icmp slt i64 %i.bt, -9223372036854775806
  br i1 %switch.i, label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Notetype$GT$$GT$17h5de2803ecf00fdafE.exit", label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b5f4a6a8e13b6c4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %"_ZN4core3ptr76drop_in_place$LT$anki_proto..import_export..csv_metadata..MappedNotetype$GT$17h206764c130bc8664E.exit.i.i" unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

common.resume:                                    ; preds = %.body88, %bb.ar, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.al ], [ %.pn54, %.body88 ], [ %.pn5099, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr76drop_in_place$LT$anki_proto..import_export..csv_metadata..MappedNotetype$GT$17h206764c130bc8664E.exit.i.i": ; preds = %bb.ak
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs)
  br label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Notetype$GT$$GT$17h5de2803ecf00fdafE.exit"

"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Notetype$GT$$GT$17h5de2803ecf00fdafE.exit": ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE.exit", %"_ZN4core3ptr76drop_in_place$LT$anki_proto..import_export..csv_metadata..MappedNotetype$GT$17h206764c130bc8664E.exit.i.i"
  ret void

bb.an:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.critedge, %.thread, %.body88, %.body86, %.body82, %.body73, %.body68, %.body, %bb.f
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

.thread:                                          ; preds = %bb.f, %.thread108
  %.pn50100 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread108 ], [ %i.q, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #32
          to label %bb.ao unwind label %bb.an

.critedge:                                        ; preds = %bb.v, %.body73, %bb.b, %bb.ao
  %.pn5099 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %.pn50100, %bb.ao ], [ %i.az, %bb.v ], [ %.pn48, %.body73 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #32
          to label %bb.ap unwind label %bb.an

bb.ao:                                            ; preds = %.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.by) #32
          to label %.critedge unwind label %bb.an

bb.ap:                                            ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..generic..StringList$GT$$GT$17h323386f312f9f0c0E"(ptr noalias noundef align 8 dereferenceable(24) %i.bz) #32
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Deck$GT$$GT$17h1862e17617df55daE"(ptr noalias noundef align 8 dereferenceable(24) %i.ca) #32
          to label %bb.ar unwind label %bb.an

bb.ar:                                            ; preds = %bb.aq
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$anki_proto..import_export..csv_metadata..Notetype$GT$$GT$17h5de2803ecf00fdafE"(ptr noalias noundef align 8 dereferenceable(32) %i.cb) #32
          to label %common.resume unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki13import_export4text3csv8metadata53_$LT$impl$u20$anki..import_export..text..NameOrId$GT$5parse17h6810db6e0f3019d4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !4193, !noalias !4194, !noundef !14 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !4193, !noalias !4194
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.c = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.b ]
  switch i8 %i.c, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add i64 %2, -1                           ; 3 uses
  %i.f = icmp ult i64 %2, 17
  br i1 %i.f, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = add i64 %2, -1                           ; 3 uses
  %i.i = icmp ult i64 %2, 17
  br i1 %i.i, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.h, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.j = extractvalue { i64, i1 } %i.ar, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ai, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph61

.preheader102.i:                                  ; preds = %bb.h
  %i.k = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.m, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i56 = phi ptr [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.27.2.i55 = phi i64 [ %i.m, %.preheader102.i ], [ %i.h, %bb.e ]
  %.sroa.070.2.i54 = phi i64 [ %i.k, %.preheader102.i ], [ 0, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i56, i64 1
  %i.m = add i64 %.sroa.27.2.i55, -1              ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i54, i64 10) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = load i8, ptr %.sroa.0.2.i56, align 1, !alias.scope !4193, !noalias !4194, !noundef !14
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.t = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i32 %i.r to i64
  %i.v = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.o, i64 %i.u) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ad, %bb.i ], [ %i.g, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ac, %bb.i ], [ %i.h, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader100.i ]
  %i.x = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !4193, !noalias !4194, !noundef !14
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = mul i64 %.sroa.070.4113.i, 10
  %i.ac = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = sub i64 %i.ab, %i.ae                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ac, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %2, 16
  br i1 %i.ag, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.d, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.e, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.d, %bb.d ]
  %.not93.i57 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i57, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph61

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.e, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph61:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i60 = phi ptr [ %i.ah, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i59 = phi i64 [ %i.ai, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i58 = phi i64 [ %i.j, %bb.f ], [ 0, %.preheader98.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 1
  %i.ai = add i64 %.sroa.27.0.i59, -1             ; 2 uses
  %i.aj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i58, i64 10) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 0
  %i.al = load i8, ptr %.sroa.0.0.i60, align 1, !alias.scope !4193, !noalias !4194, !noundef !14
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph61
  %i.ap = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ap, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ak, i64 %i.aq) ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.az, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ay, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.bb, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.at = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !4193, !noalias !4194, !noundef !14
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.ax = mul i64 %.sroa.070.1117.i, 10
  %i.ay = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = add i64 %i.ax, %i.ba                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ay, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph61, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4195
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !4195
  %i.bc = load i64, ptr %i.a, align 8, !range !25, !noalias !4195, !noundef !14
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !20, !noalias !4195, !noundef !14 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", !prof !18

bb.n:                                             ; preds = %.loopexit
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !4195
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bf, i64 %i.bh) #33, !noalias !4195
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %.loopexit
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !4195, !nonnull !14, !noundef !14 ; 2 uses
  %i.bj = icmp ule i64 %2, %i.bf
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !4196
  store i64 %i.bf, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.o

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.141.0 = phi i64 [ %i.bb, %bb.m ], [ %i.j, %bb.f ], [ %i.af, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.k, %.preheader102.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.141.0, ptr %i.bk, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4anki13import_export4text6import17DeckIdsByNameOrId3get17h7d7f1474fb32c1ddE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.l = load i64, ptr %1, align 8, !range !20, !noundef !14
  %.not65 = icmp ne i64 %i.l, -9223372036854775808 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val25 = load i64, ptr %i.m, align 8
  %.not.i.i = icmp eq i64 %.val25, 0
  %or.cond = select i1 %.not65, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.thread": ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit" unwind label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.thread"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

common.resume:                                    ; preds = %bb.aj, %bb.al, %bb.ao, %bb.u, %bb.aa, %bb.ac, %bb.af, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.fl, %bb.ao ], [ %i.n, %bb.b ], [ %i.p, %bb.d ], [ %lpad.phi.i.i, %bb.aa ], [ %i.ey, %bb.af ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.u ], [ %i.ew, %bb.ac ], [ %i.fj, %bb.al ], [ %lpad.phi, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit": ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.thread"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %.not65, label %bb.f, label %bb.l

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit": ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit31" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit"
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit31": ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.r = load i64, ptr %0, align 8, !range !25, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  br label %bb.ai

bb.f:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4255
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !4255
  %i.y = load i64, ptr %i.g, align 8, !range !25, !noalias !4255, !noundef !14
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !20, !noalias !4255, !noundef !14 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.z, label %bb.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", !prof !18

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !4255
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ab, i64 %i.ad) #33, !noalias !4255
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !4255, !nonnull !14, !noundef !14 ; 2 uses
  %i.af = icmp ule i64 %i.x, %i.ab
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.v, i64 %i.x, i1 false), !noalias !4256
  store i64 %i.ab, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8
  call void @"_ZN7unicase16UniCase$LT$S$GT$3new17hdbc055ce15bb1c54E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !4257, !noalias !4258, !noundef !14
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h072ba34c1b52553dE.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h04b5638c27ac8fe8E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  call void @llvm.experimental.noalias.scope.decl(metadata !4260)
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !4261, !noalias !4262, !noundef !14 ; 2 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !alias.scope !4261, !noalias !4262, !nonnull !14, !noundef !14 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bh, %bb.k ]
  %.pn.i.i = phi i64 [ %i.al, %.noexc ], [ %i.bi, %bb.k ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ap     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.ar, align 1, !noalias !4263 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.i33.i.i = phi i16 [ %i.bg, %bb.j ], [ %i.at, %bb.i ] ; 3 uses
  %i.au = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.01.0.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.ap
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [40 x i8], ptr %i.aq, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -40
  %i.bb = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hd625c996df861460E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %.lr.ph.i.i
  br i1 %i.bb, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h072ba34c1b52553dE.exit", label %bb.j, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %bb.k, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h072ba34c1b52553dE.exit.thread", !prof !18

bb.j:                                             ; preds = %.noexc32
  %i.bf = add i16 %.sroa.06.0.i33.i.i, -1
  %i.bg = and i16 %i.bf, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bi = add i64 %.sroa.01.0.i.i.i, %i.bh
  br label %bb.i

bb.l:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !14 ; 5 uses
  store i64 %i.bk, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !4264, !noalias !4265, !noundef !14
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha7801dd089d4ec1dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17hf1a08712166e6ebbE":bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17hf2562360ccc13dd0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 80
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h09ed436fc1baaeadE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @272, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Display$GT$3fmt17hcf5d823382cf4c89E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !49, !noundef !14
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @277, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @278, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @279, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @280, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @281, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @282, i64 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @283, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @284, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @285, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @287, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @288, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @289, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @290, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @291, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @292, i64 noundef 9, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @294, i64 noundef 14, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %i.k, %bb.k ], [ %i.l, %bb.l ], [ %i.m, %bb.m ], [ %i.n, %bb.n ], [ %i.o, %bb.o ], [ %i.p, %bb.p ], [ %i.q, %bb.q ], [ %i.r, %bb.r ], [ %i.s, %bb.s ], [ %i.t, %bb.t ], [ %i.u, %bb.u ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN66_$LT$anki..decks..DeckId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8f6da9137df1b89eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !6924, !noalias !6925, !noundef !14 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6924, !noalias !6925
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !6924, !noalias !6925, !noundef !14
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !6924, !noalias !6925, !noundef !14
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !6924, !noalias !6925, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !6924, !noalias !6925, !noundef !14
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph.a ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$anki..browser_table..ColumnIter$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a888352045ce75fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @295, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %0, align 8, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !14
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = icmp ugt i64 %i.f, 19
  %i.h = sub nuw nsw i64 20, %i.f
  %.sroa.0.0 = select i1 %i.g, i64 0, i64 %i.h
  store i64 %.sroa.0.0, ptr %i.a, align 8
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @296, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @267)
  %i.j = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$anki..deckconfig..DeckConfigId$u20$as$u20$core..fmt..Display$GT$3fmt17h39a0889c9191cde1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$anki..timestamp..TimestampSecs$u20$as$u20$core..fmt..Display$GT$3fmt17h24b05c3924130ce7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN6chrono6offset20LocalResult$LT$T$GT$8and_then17h3508d4978deb370cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = load i32, ptr %1, align 4, !range !51, !noundef !14 ; 2 uses
  switch i32 %i.g, label %default.unreachable50 [
    i32 0, label %bb.b
    i32 1, label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit24"
    i32 2, label %bb.d
  ]

default.unreachable50:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !6932
  call void @_ZN6chrono5naive8datetime13NaiveDateTime18checked_sub_offset17hc46fec6ca1be7cabE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i32 noundef %i.i), !noalias !6932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6932
  %i.j = load i32, ptr %i.f, align 4, !noalias !6932, !noundef !14 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit.thread", label %bb.c

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6932
  br label %bb.d

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit24": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !6933
  call void @_ZN6chrono5naive8datetime13NaiveDateTime18checked_sub_offset17hc46fec6ca1be7cabE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %i.l), !noalias !6933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6933
  %i.o = load i32, ptr %i.d, align 4, !noalias !6933, !noundef !14 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !6934
  call void @_ZN6chrono5naive8datetime13NaiveDateTime18checked_sub_offset17hc46fec6ca1be7cabE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %i.n), !noalias !6934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6934
  %i.p = load i32, ptr %i.b, align 4, !noalias !6934, !noundef !14 ; 2 uses
  %.not.i25 = icmp eq i32 %i.p, 0
  br i1 %.not.i25, label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27.thread", label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27"

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27.thread": ; preds = %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit24"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6934
  br label %bb.d

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27": ; preds = %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit24"
  %.not.i22 = icmp eq i32 %i.o, 0
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.538.0.copyload = load i64, ptr %.sroa.538.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6934
  br i1 %.not.i22, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.6.0.copyload31 = load i64, ptr %.sroa.6.0..sroa_idx30, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6932
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.j, ptr %i.q, align 4
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.copyload31, ptr %.sroa.234.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit.thread", %bb.a, %bb.e, %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27", %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27.thread"
  %storemerge.sink = phi i32 [ 2, %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27.thread" ], [ %i.g, %bb.a ], [ 1, %bb.e ], [ 2, %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27" ], [ 0, %bb.c ], [ 2, %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit.thread" ]
  store i32 %storemerge.sink, ptr %0, align 4
  ret void

bb.e:                                             ; preds = %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17hc3dc786c560bad28E.exit27"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.r, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.l, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.s, align 4
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.538.0.copyload, ptr %.sroa.211.0..sroa_idx, align 4
  %.sroa.211.sroa.2.0..sroa.211.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.n, ptr %.sroa.211.sroa.2.0..sroa.211.0..sroa_idx.sroa_idx, align 4
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN6chrono6offset20LocalResult$LT$T$GT$8and_then17h9f4013fdf834ff88E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = load i32, ptr %1, align 4, !range !51, !noundef !14 ; 2 uses
  switch i32 %i.g, label %default.unreachable50 [
    i32 0, label %bb.b
    i32 1, label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17h98c1ce98999cf001E.exit24"
    i32 2, label %bb.d
  ]

default.unreachable50:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !6941
  call void @_ZN6chrono5naive8datetime13NaiveDateTime18checked_sub_offset17hc46fec6ca1be7cabE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i32 noundef %i.i), !noalias !6941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6941
  %i.j = load i32, ptr %i.f, align 4, !noalias !6941, !noundef !14 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17h98c1ce98999cf001E.exit.thread", label %bb.c

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17h98c1ce98999cf001E.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6941
  br label %bb.d

"_ZN6chrono6offset8TimeZone19from_local_datetime28_$u7b$$u7b$closure$u7d$$u7d$17h98c1ce98999cf001E.exit24": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !6942
  call void @_ZN6chrono5naive8datetime13NaiveDateTime18checked_sub_offset17hc46fec6ca1be7cabE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %i.l), !noalias !6942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6942
  %i.o = load i32, ptr %i.d, align 4, !noalias !6942, !noundef !14 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6943
end_hunk_3
begin_hunk_4_@"_ZN71_$LT$anki..deckconfig..DeckConfig$u20$as$u20$core..default..Default$GT$7default17h7be06d72ccb53769E":bb.a

bb.s:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.q, %bb.t
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.ap, %bb.q ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.as) #32
          to label %.body23 unwind label %bb.aa

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit": ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit"
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body23 unwind label %bb.w

bb.v:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit25" unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

.body23:                                          ; preds = %bb.x, %bb.u, %.body19
  %.pn = phi { ptr, i32 } [ %eh.lpad-body20, %.body19 ], [ %i.ax, %bb.x ], [ %i.au, %bb.u ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #32
          to label %common.resume unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body23

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit25": ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit27" unwind label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit25"
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

common.resume:                                    ; preds = %bb.c, %.body23, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.y ], [ %.pn14, %bb.c ], [ %.pn, %.body23 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit27": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit25"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body23, %.body19, %.body, %bb.g, %bb.c
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.ab:                                            ; preds = %bb.j, %bb.f
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$anki..timestamp..TimestampMillis$u20$as$u20$core..fmt..Display$GT$3fmt17ha8a94aca0b470f59E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..fmt..Display$GT$3fmt17h89788123bb1a26e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !20, !noundef !14
  %.not = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit15, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @297, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h26013b67639dd543E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @297, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.r, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14
  %i.t = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit15, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.t, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit15 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN77_$LT$anki..deckconfig..DeckConfigId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h352f3088078f80c8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !6960, !noalias !6961, !noundef !14 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6960, !noalias !6961
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !6960, !noalias !6961, !noundef !14
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !6960, !noalias !6961, !noundef !14
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !6960, !noalias !6961, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !6960, !noalias !6961, !noundef !14
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph.a ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN77_$LT$anki..timestamp..TimestampSecs$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hd6e7eb2ad75669a0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !6965, !noalias !6966, !noundef !14 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6965, !noalias !6966
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !6965, !noalias !6966, !noundef !14
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !6965, !noalias !6966, !noundef !14
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !6965, !noalias !6966, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !6965, !noalias !6966, !noundef !14
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph.a ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h168434956845029cE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !14 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E.exit": ; preds = %bb.m, %"_ZN4core3ptr54drop_in_place$LT$$u5b$fsrs..dataset..FSRSItem$u5d$$GT$17h282d5f927033516cE.exit", %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.i, %.body.i
  tail call fastcc void @"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E"(ptr nonnull %0) #32
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i": ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..FSRSReview$GT$$GT$17h59df159eceb9540fE.exit.i.i"
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %"_ZN4core3ptr54drop_in_place$LT$$u5b$fsrs..dataset..FSRSItem$u5d$$GT$17h282d5f927033516cE.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph, %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i"
  %.sroa.0.0.i36 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.0.i36 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i36, 1       ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3291c9fa47456292E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..FSRSReview$GT$$GT$17h59df159eceb9540fE.exit.i.i" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c292341e76140c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..FSRSReview$GT$$GT$17h59df159eceb9540fE.exit.i.i": ; preds = %bb.f
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c292341e76140c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i" unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph38
  %i.ah = add i64 %.sroa.0.1.i37, 1               ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph38

bb.j:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$fsrs..dataset..FSRSReview$GT$$GT$17h59df159eceb9540fE.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.af, %bb.g ]
  %i.ak = icmp eq i64 %i.ae, %i.g
  br i1 %i.ak, label %.body, label %.lr.ph38

.lr.ph38:                                         ; preds = %.body.i, %bb.i
  %.sroa.0.1.i37 = phi i64 [ %i.ah, %bb.i ], [ %i.ae, %.body.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.1.i37
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E"(ptr noalias noundef align 8 dereferenceable(24) %i.al) #32
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph38
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr54drop_in_place$LT$$u5b$fsrs..dataset..FSRSItem$u5d$$GT$17h282d5f927033516cE.exit": ; preds = %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i"
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !14 ; 3 uses
  %.not.i.i14 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i14, label %"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$$u5b$fsrs..dataset..FSRSItem$u5d$$GT$17h282d5f927033516cE.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !14 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !14 ; 2 uses
  %.not3.i.i15 = icmp eq i64 %i.at, %i.aq
  br i1 %.not3.i.i15, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.au = add i64 %i.aq, %i.ao
  store i64 %i.au, ptr %i.ap, align 8
  br label %"_ZN4core3ptr170drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$fsrs..dataset..FSRSItem$C$alloc..alloc..Global$GT$$GT$17he3a2d616c2803ec3E.exit"

bb.n:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aq
  %i.ay = mul i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false)
  br label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h18939b940f58b624E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %"_ZN4core3ptr165drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$anki..card..CardId$C$alloc..alloc..Global$GT$$GT$17h84e66f297579d5f7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !14 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !14 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %"_ZN4core3ptr165drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$anki..card..CardId$C$alloc..alloc..Global$GT$$GT$17h84e66f297579d5f7E.exit"

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.s = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

"_ZN4core3ptr165drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$anki..card..CardId$C$alloc..alloc..Global$GT$$GT$17h84e66f297579d5f7E.exit": ; preds = %bb.h, %bb.f, %bb.d, %bb.b
end_hunk_4
begin_hunk_5_@"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbdc0bbcd5929dc6eE":bb.a
  br i1 %.not3.i.i19, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.z = add i64 %i.v, %i.f
  store i64 %i.z, ptr %i.u, align 8
  br label %"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8617b7539d39f31eE.exit"

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.f, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9d626b28e2d5837E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !14 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE.exit": ; preds = %bb.m, %"_ZN4core3ptr60drop_in_place$LT$$u5b$std..sync..mpmc..waker..Entry$u5d$$GT$17h0466c63e95836f7bE.exit", %bb.d, %bb.b
  ret void

.body:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i", %bb.i
  tail call fastcc void @"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE"(ptr nonnull %0) #32
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i", %bb.f
  %.sroa.0.09.i = phi i64 [ 0, %bb.f ], [ %i.ad, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.0.09.i, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7018)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !7019, !nonnull !14, !noundef !14
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !7020
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i"

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i" unwind label %bb.i

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i": ; preds = %bb.h, %bb.g
  %i.ah = icmp eq i64 %i.ad, %i.g
  br i1 %i.ah, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$std..sync..mpmc..waker..Entry$u5d$$GT$17h0466c63e95836f7bE.exit", label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g
  br i1 %i.aj, label %.body, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i"
  %.sroa.0.110.i = phi i64 [ %i.al, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i" ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i ; 2 uses
  %i.al = add i64 %.sroa.0.110.i, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7024)
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !7025, !nonnull !14, !noundef !14
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !7026
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.j, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i"

bb.j:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i" unwind label %bb.k

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit8.i": ; preds = %bb.j, %.lr.ph.i
  %i.ap = icmp eq i64 %i.al, %i.g
  br i1 %i.ap, label %.body, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr60drop_in_place$LT$$u5b$std..sync..mpmc..waker..Entry$u5d$$GT$17h0466c63e95836f7bE.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit.i"
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noundef !14 ; 3 uses
  %.not.i.i14 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i14, label %"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr60drop_in_place$LT$$u5b$std..sync..mpmc..waker..Entry$u5d$$GT$17h0466c63e95836f7bE.exit"
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !14 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !14 ; 2 uses
  %.not3.i.i15 = icmp eq i64 %i.ax, %i.au
  br i1 %.not3.i.i15, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ay = add i64 %i.au, %i.as
  store i64 %i.ay, ptr %i.at, align 8
  br label %"_ZN4core3ptr176drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..sync..mpmc..waker..Entry$C$alloc..alloc..Global$GT$$GT$17h50130e9ec0a0706aE.exit"

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.x, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au
  %i.bc = mul i64 %i.as, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ba, i64 %i.bc, i1 false)
  br label %bb.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN79_$LT$anki..timestamp..TimestampMillis$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8e7b8e74a127ee0aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !7030, !noalias !7031, !noundef !14 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !7030, !noalias !7031
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph.a

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !7030, !noalias !7031, !noundef !14
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.a
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !7030, !noalias !7031, !noundef !14
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !7030, !noalias !7031, !noundef !14
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !7030, !noalias !7031, !noundef !14
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph.a, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph.a ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h0a4e3d8d9a1e00e9E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @"_ZN67_$LT$serde_json..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h940ea755e29eab08E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @309, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !7042, !noalias !7043, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 1), !noalias !7044
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h1338da34a508df2bE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 1), !noalias !7044
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h1338da34a508df2bE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h1338da34a508df2bE.exit": ; preds = %bb.a, %bb.b
  %.sink.i.i = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  store i8 0, ptr %0, align 8, !alias.scope !7043, !noalias !7042
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink.i.i, ptr %i.b, align 1, !alias.scope !7043, !noalias !7042
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !alias.scope !7043, !noalias !7042
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$rayon..iter..once..Once$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h545b2fd91222070cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7048
  call void @"_ZN103_$LT$rayon..iter..map..MapConsumer$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$11into_folder17hff53f57eb6b533dbE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2), !noalias !7049
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17h69b7d8fa0aa92dc9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1), !noalias !7048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7048
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h99feb5ea780eeca3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !7050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7048
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$rayon..iter..once..Once$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h8cef1287e5c2a7feE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7054
  call void @"_ZN103_$LT$rayon..iter..map..MapConsumer$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$11into_folder17h2e0cfb023210d4feE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %2), !noalias !7055
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17hcf5b51d38cc7767eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1), !noalias !7054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7054
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h3d984b7012de4377E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !7056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7054
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$rayon..iter..once..Once$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17ha48c1cd14865e809E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7060
  call void @"_ZN103_$LT$rayon..iter..map..MapConsumer$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$11into_folder17h7f10e47f62ce58e1E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %2), !noalias !7061
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17h7d63adf289914960E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1), !noalias !7060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7060
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h2a3d9ca1e3862e17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !7062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7060
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$rayon..iter..once..Once$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17hed0c4acefac6489eE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7066
  call void @"_ZN103_$LT$rayon..iter..map..MapConsumer$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$11into_folder17h6d24929a6dcfd130E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2), !noalias !7067
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17hf45c381a1ab8eea5E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1), !noalias !7066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7066
  call void @"_ZN99_$LT$rayon..iter..map..MapFolder$LT$C$C$F$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h66a41b17fe2d35e0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !7068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7066
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h016bc8363a960766E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656731625c11b30E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0263312bbab5da7fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3bbd6daa9a14133E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02badba03200d00bE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %"_ZN4core3ptr108drop_in_place$LT$$u5b$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$u5d$$GT$17hd293bbba4d838488E.exit", label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h836f7972091d6e07E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

"_ZN4core3ptr98drop_in_place$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$17he5a10200bd229098E.exit.i": ; preds = %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i.i"
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %"_ZN4core3ptr108drop_in_place$LT$$u5b$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$u5d$$GT$17hd293bbba4d838488E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr98drop_in_place$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$17he5a10200bd229098E.exit.i"
  %.sroa.0.0.i16 = phi i64 [ %i.p, %"_ZN4core3ptr98drop_in_place$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$17he5a10200bd229098E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.0.i16
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3291c9fa47456292E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %"_ZN4core3ptr44drop_in_place$LT$fsrs..dataset..FSRSItem$GT$17h9040da0baa5e8d82E.exit.i.i" unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c292341e76140c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
end_hunk_5
