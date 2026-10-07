Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZN61_$LT$$u5b$T$u5d$$u20$as$u20$rand..seq..slice..SliceRandom$GT$15partial_shuffle17h7aba3fe04613390dE":bb.a
  %i.u = icmp eq i8 %i.q, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.v = add i8 %i.q, -1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  %i.w = icmp eq i32 %i.t, 2
  br i1 %i.w, label %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.sroa.0.06.i.i = add i32 %i.r, 2               ; 3 uses
  %i.x = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.t, i32 %.sroa.0.06.i.i) ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !15659

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.z = phi { i32, i1 } [ %i.ab, %.lr.ph.i.i ], [ %i.x, %.preheader.i.i ]
  %.sroa.0.07.i.i = phi i32 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.preheader.i.i ]
  %i.aa = extractvalue { i32, i1 } %i.z, 0        ; 2 uses
  %.sroa.0.0.i.i = add i32 %.sroa.0.07.i.i, 1     ; 3 uses
  %i.ab = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aa, i32 %.sroa.0.0.i.i) ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !15660

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.03.1.lcssa.i.i = phi i32 [ %i.t, %.preheader.i.i ], [ %i.aa, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.0.06.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %i.ad = sub i32 %.sroa.0.0.lcssa.i.i, %i.t
  %i.ae = trunc i32 %i.ad to i8
  %i.af = add i8 %i.ae, -1
  br label %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i"

"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i": ; preds = %._crit_edge.i.i, %bb.f
  %.sroa.05.0.i.i = phi i8 [ %i.af, %._crit_edge.i.i ], [ 10, %bb.f ]
  %.sroa.03.0.i.i = phi i32 [ %.sroa.03.1.lcssa.i.i, %._crit_edge.i.i ], [ 479001600, %bb.f ]
  %i.ag = call noundef i32 @_ZN4rand3rng3Rng12random_range17hc90435d748701ae1E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %.sroa.03.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570), !noalias !15661 ; 2 uses
  store i32 %i.ag, ptr %i.g, align 4, !alias.scope !15662, !noalias !15661
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i", %bb.e
  %i.ah = phi i32 [ %i.ag, %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i" ], [ %i.p, %bb.e ] ; 4 uses
  %.sroa.01.0.i = phi i8 [ %.sroa.05.0.i.i, %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index28_$u7b$$u7b$closure$u7d$$u7d$17h14dbebf0f8463962E.exit.i" ], [ %i.v, %bb.e ] ; 3 uses
  %i.ai = icmp eq i8 %.sroa.01.0.i, 0
  br i1 %i.ai, label %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index17h1a15f387fb2bce84E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i32 %i.t, 0
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = urem i32 %i.ah, %i.t
  %i.al = udiv i32 %i.ah, %i.t                    ; 2 uses
  store i32 %i.al, ptr %i.g, align 4, !alias.scope !15662
  br label %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index17h1a15f387fb2bce84E.exit"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @569) #50
  unreachable

"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index17h1a15f387fb2bce84E.exit": ; preds = %bb.g, %bb.i
  %i.am = phi i32 [ %i.al, %bb.i ], [ %i.ah, %bb.g ]
  %.sroa.0.0.in.i = phi i32 [ %i.ak, %bb.i ], [ %i.ah, %bb.g ]
  %.sroa.0.0.i = zext i32 %.sroa.0.0.in.i to i64  ; 3 uses
  store i8 %.sroa.01.0.i, ptr %i.h, align 8, !alias.scope !15662
  store i32 %i.t, ptr %i.f, align 8, !alias.scope !15662
  %i.an = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %i.an, label %bb.k, label %bb.l

.loopexit:                                        ; preds = %bb.c, %.preheader, %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.ap = sub nuw i64 %2, %i.b
  store ptr %i.ao, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.as, align 8
  ret void

bb.k:                                             ; preds = %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index17h1a15f387fb2bce84E.exit"
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.04.015 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  store i64 %.sroa.0.0.copyload.i12, ptr %i.au, align 8
  %exitcond20.not = icmp eq i64 %i.s, %2
  br i1 %exitcond20.not, label %._crit_edge, label %.lr.ph16

bb.l:                                             ; preds = %"_ZN4rand3seq18increasing_uniform26IncreasingUniform$LT$R$GT$10next_index17h1a15f387fb2bce84E.exit"
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.0.i, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @600) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb5cca97a5d64b7e6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = mul i64 %2, 24                           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !15665
  %i.e = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !15665 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #50
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i ], [ %i.e, %bb.b ]
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.g = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.g)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h79a531b6317cbca9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #51
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.i
  %.pn5 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #51
          to label %bb.h unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f4b90329167e729E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5448c5cb1ddefc89E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @607, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$std..time..SystemTimeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h09ed436fc1baaeadE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @609, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @608)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h88aaf8e1e405639aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e650b66fbb4b18aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6475642d147e9cf1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 8 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !15674
  %i.h = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !15674 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.e) #50, !noalias !15675
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !15676
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.k, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h29872b8389ba5952E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN66_$LT$anki..notes..NoteId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h7b02dc8d8ab673f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !15680, !noalias !15681, !noundef !6 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !15680, !noalias !15681
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
  %.not92112.i = icmp eq i64 %i.g, 0              ; 2 uses
  br i1 %i.h, label %.preheader100.i, label %.preheader102.i.preheader

.preheader102.i.preheader:                        ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.preheader100.i:                                  ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader102.i.preheader, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %.preheader102.i.preheader ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %.preheader102.i.preheader ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %.preheader102.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !15680, !noalias !15681, !noundef !6
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
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
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !15680, !noalias !15681, !noundef !6
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

end_hunk_0
begin_hunk_1_@"_ZN75_$LT$anki..search..parser..PropertyKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he2bdc37d96a49d1fE":bb.a
bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !noundef !6
  %i.am = icmp eq i32 %i.aj, %i.al
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !6
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.p, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.k:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load float, ptr %i.as, align 8, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load float, ptr %i.au, align 8, !noundef !6
  %i.aw = fcmp oeq float %i.at, %i.av
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.l:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load float, ptr %i.ax, align 8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load float, ptr %i.az, align 8, !noundef !6
  %i.bb = fcmp oeq float %i.ay, %i.ba
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.m:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load float, ptr %i.be, align 8, !noundef !6
  %i.bg = fcmp oeq float %i.bd, %i.bf
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.n:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load float, ptr %i.bh, align 8, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load float, ptr %i.bj, align 8, !noundef !6
  %i.bl = fcmp oeq float %i.bi, %i.bk
  br i1 %i.bl, label %bb.s, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.o:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11 = load i64, ptr %i.bm, align 8, !noundef !6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.bn, align 8, !noundef !6
  %.not.i.i = icmp eq i64 %.val11, %.val13
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit": ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.bo, align 8, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.bp, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val10, ptr nonnull readonly align 1 %.val12, i64 %.val11), !alias.scope !16941
  %i.bq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bq, label %bb.u, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.p:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i8, ptr %i.br, align 4, !range !26, !noundef !6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = load i8, ptr %i.bu, align 4, !range !26, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bx = icmp eq i8 %i.bs, %i.bv
  br i1 %i.bx, label %bb.q, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.q:                                             ; preds = %bb.p
  %i.by = icmp eq i8 %i.bs, 0
  br i1 %i.by, label %bb.r, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %i.bt, align 1, !noundef !6
  %i.ca = load i8, ptr %i.bw, align 1, !noundef !6
  %i.cb = icmp eq i8 %i.bz, %i.ca
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.s:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.cc, align 8, !noundef !6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9 = load i64, ptr %i.cd, align 8, !noundef !6
  %.not.i.i14 = icmp eq i64 %.val7, %.val9
  br i1 %.not.i.i14, label %bb.t, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load ptr, ptr %i.ce, align 8, !nonnull !6, !noundef !6
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.cf, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i16 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val6, ptr nonnull readonly align 1 %.val8, i64 %.val7), !alias.scope !16942
  %i.cg = icmp eq i32 %bcmp.i.i16, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.u:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit"
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load i64, ptr %i.ch, align 8, !noundef !6 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.ci, align 8, !noundef !6
  %.not.i.i18 = icmp eq i64 %.val3, %.val5
  br i1 %.not.i.i18, label %bb.v, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.cj, align 8, !nonnull !6, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ck, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i20 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val4, i64 %.val3), !alias.scope !16943
  %i.cl = icmp eq i32 %bcmp.i.i20, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN75_$LT$serde_urlencoded..de..Part$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h56a19bb74e046847E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN88_$LT$serde_path_to_error..de..CaptureKey$LT$X$GT$$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h5e078db98fae3166E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  tail call void @"_ZN88_$LT$serde_path_to_error..de..CaptureKey$LT$X$GT$$u20$as$u20$serde_core..de..Visitor$GT$18visit_borrowed_str17h709dccbe6e1920b5E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN75_$LT$serde_urlencoded..de..Part$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hd4a6e81ec4d8f4b2E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.c = call { ptr, i64 } @"_ZN19serde_path_to_error2de94_$LT$impl$u20$serde_core..de..Visitor$u20$for$u20$serde_path_to_error..wrap..Wrap$LT$X$GT$$GT$12visit_string17hab8494ddf3faed57E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !15, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = tail call { ptr, i64 } @"_ZN19serde_path_to_error2de94_$LT$impl$u20$serde_core..de..Visitor$u20$for$u20$serde_path_to_error..wrap..Wrap$LT$X$GT$$GT$18visit_borrowed_str17h6940bdae8fb03c35E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN75_$LT$serde_urlencoded..de..Part$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he6c0091bd2e752e3E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN19serde_path_to_error2de94_$LT$impl$u20$serde_core..de..Visitor$u20$for$u20$serde_path_to_error..wrap..Wrap$LT$X$GT$$GT$12visit_string17h51924ba0847c4035E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noundef nonnull align 8 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  tail call void @"_ZN19serde_path_to_error2de94_$LT$impl$u20$serde_core..de..Visitor$u20$for$u20$serde_path_to_error..wrap..Wrap$LT$X$GT$$GT$18visit_borrowed_str17h53e9a59290592fe0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noundef nonnull align 8 %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..fmt..Display$GT$3fmt17h42006abe26028724E"(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !6, !noalias !16947, !nonnull !6
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @626, i64 noundef 53), !noalias !16947, !inline_history !16946
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..borrow..Borrow$LT$B$GT$$GT$6borrow17h0ce3dc8410ee0b9aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  %.val1.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.pn = load i64, ptr %.val1.pn.in, align 8, !noundef !6
  %.val.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pn = load ptr, ptr %.val.pn.in, align 8, !nonnull !6, !noundef !6
  %.pn = insertvalue { ptr, i64 } poison, ptr %.val.pn, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.val1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$T$GT$$u20$as$u20$core..convert..AsRef$LT$T$GT$$GT$6as_ref17h9f375a730ecac982E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  %.val1.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.pn = load i64, ptr %.val1.pn.in, align 8, !noundef !6
  %.val.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pn = load ptr, ptr %.val.pn.in, align 8, !nonnull !6, !noundef !6
  %.pn = insertvalue { ptr, i64 } poison, ptr %.val.pn, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.val1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$T$GT$$u20$as$u20$core..convert..AsRef$LT$T$GT$$GT$6as_ref17ha7094adf27387570E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @"_ZN5alloc5slice98_$LT$impl$u20$core..borrow..Borrow$LT$$u5b$T$u5d$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A$GT$$GT$6borrow17hb0112587cc7313e8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { ptr, i64 } [ %i.b, %bb.b ], [ %i.h, %bb.c ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00344047adb5896cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0231888d3aa9d6f2E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0396242a75dbd247E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04e0b1e22577caf4E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0713e048e9b5ad25E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h099f6b06120892e6E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a1b99ee226e1f56E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9ba652a2489d1d1fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_1
