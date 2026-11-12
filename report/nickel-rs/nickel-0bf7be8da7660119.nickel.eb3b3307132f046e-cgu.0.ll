Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17h8f2a88358259fdc8E:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !45014

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !45014

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45014
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !45014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45014
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !45013, !noalias !45012
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = load i64, ptr %i.b, align 8, !range !63, !alias.scope !45022, !noalias !45014, !noundef !42
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h213b40091ca3e45dE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !45022, !noalias !45014
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !45022, !noalias !45014
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !45014
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !45013, !noalias !45012, !noundef !42
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !45

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hce41c3a29070b514E"(ptr noalias noundef align 8 dereferenceable(104) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb80f08a889b1b18aE.exit" unwind label %bb.v, !noalias !45012

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1b8c36156cd97d71E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #59
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !63, !noalias !45019, !noundef !42
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !45013, !noalias !45012, !noundef !42
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6b2f2563afe6883cE"(ptr noalias noundef align 8 dereferenceable(104) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !45019, !noundef !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !45019, !noundef !42
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h20b227bfa3d7f756E"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(104) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !45019, !noundef !42
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !45019, !noundef !42
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !45013, !noalias !45012, !noundef !42
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !45013, !noalias !45012
  %i.al = load i64, ptr %i.b, align 8, !range !63, !alias.scope !45023, !noalias !45014, !noundef !42
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h213b40091ca3e45dE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !45023, !noalias !45014
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !45023, !noalias !45014
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !45014
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17he6eaf355c781ad83E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45019

.backedge:                                        ; preds = %bb.t, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit17.i.i.i.i"
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45019
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45024)
  call void @llvm.experimental.noalias.scope.decl(metadata !45025)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !45026, !noalias !45012, !noundef !42 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !45027, !noundef !42
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !45027
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i" unwind label %bb.y, !noalias !45012

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45012
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb80f08a889b1b18aE.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45014
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !45028
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !45028
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !45028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45012
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !45011
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !45011
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !45011
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !45011
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h974fc2c57df8da64E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !45180 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.71.0.copyload = load <16 x i1>, ptr %.sroa.71.0..sroa_idx, align 8 ; 5 uses
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.82.0.copyload = load i64, ptr %.sroa.82.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.113.0.copyload = load i16, ptr %.sroa.113.0..sroa_idx, align 8 ; 3 uses
  %.sroa.124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.124.0.copyload = load i64, ptr %.sroa.124.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45184
  %.fr54.i.i.i.i.i = freeze i64 %.sroa.0.0.copyload
  %i.b = trunc i64 %.fr54.i.i.i.i.i to i1         ; 3 uses
  %.not.i.us.peel.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.preheader.i.i.i.i.i:                    ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.82.0.copyload, 0
  %or.cond.i = select i1 %.not.i.us.peel.i.i.i.i.i, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.b, label %.split49.us.i.i.i.i.i

bb.b:                                             ; preds = %.split.us.preheader.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i, label %.split53.us.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45185), !noalias !45183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45186), !noalias !45183
  %i.d = load ptr, ptr %.sroa.4.0.copyload, align 8, !alias.scope !45187, !noalias !45188, !nonnull !42, !noundef !42 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !45189
  %i.e = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !45187, !noalias !45188, !noundef !42 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split53.us.i.i.i.i.i, label %.split49.us.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.a
  br i1 %.not.i.us.peel.i.i.i.i.i, label %.split53.us.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.i.i.i.i.i
  %i.j = icmp eq i64 %.sroa.82.0.copyload, 0
  br i1 %i.j, label %.split53.us.i.i.i.i.i, label %.split49.us.i.i.i.i.i

.split49.us.i.i.i.i.i:                            ; preds = %bb.d, %bb.c, %.split.us.preheader.i.i.i.i.i
  %.sroa.17.0.i = phi <16 x i1> [ %i.e, %bb.c ], [ %.sroa.71.0.copyload, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.71.0.copyload, %bb.d ]
  %.sroa.12.0.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.6.0.copyload, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.6.0.copyload, %bb.d ] ; 2 uses
  %.val.i.i.i.i31.i.i = phi ptr [ null, %bb.c ], [ %.sroa.4.0.copyload, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.4.0.copyload, %bb.d ]
  %.us-phi50.i.i.i.i.i = phi ptr [ %i.d, %bb.c ], [ %.sroa.5.0.copyload, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.5.0.copyload, %bb.d ] ; 2 uses
  %.us-phi51.i.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.82.0.copyload, %.split.us.preheader.i.i.i.i.i ], [ %.sroa.82.0.copyload, %bb.d ]
  %2 = bitcast <16 x i1> %.sroa.17.0.i to i16     ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %2, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.split49.us.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0.i, %.split49.us.i.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi50.i.i.i.i.i, %.split49.us.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !45190
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i
  %.sroa.12.1.i = phi ptr [ %.sroa.12.0.i, %.split49.us.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.p = phi ptr [ %.us-phi50.i.i.i.i.i, %.split49.us.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %2, %.split49.us.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %3 = bitcast i16 %i.t to <16 x i1>
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  %i.w = add i64 %.us-phi51.i.i.i.i.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i"

.split53.us.i.i.i.i.i:                            ; preds = %bb.d, %.split.i.i.i.i.i, %bb.c, %bb.b
  %.sroa.17.1.i = phi <16 x i1> [ %.sroa.71.0.copyload, %bb.b ], [ %.sroa.71.0.copyload, %bb.d ], [ %.sroa.71.0.copyload, %.split.i.i.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.12.2.i = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.6.0.copyload, %.split.i.i.i.i.i ], [ %i.f, %bb.c ]
  %.val.i.i.i.i30.i.i = phi ptr [ null, %bb.b ], [ %.sroa.4.0.copyload, %bb.d ], [ %.sroa.4.0.copyload, %.split.i.i.i.i.i ], [ null, %bb.c ]
  %.val.i.i.i.i.i26.i.i = phi i64 [ %.sroa.82.0.copyload, %bb.b ], [ 0, %bb.d ], [ %.sroa.82.0.copyload, %.split.i.i.i.i.i ], [ 0, %bb.c ]
  %.not.i2.i.i.i.i.i = icmp eq ptr %.sroa.9.0.copyload, null
  %i.x = icmp eq i64 %.sroa.124.0.copyload, 0
  %or.cond5.i = select i1 %.not.i2.i.i.i.i.i, i1 true, i1 %i.x
  br i1 %or.cond5.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.split53.us.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i = icmp eq i16 %.sroa.113.0.copyload, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i:                      ; preds = %bb.e, %.lr.ph.i.i.i.i.i7.i.i.i.i.i
  %i.y = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i7.i.i.i.i.i ], [ %.sroa.10.0.copyload, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i7.i.i.i.i.i ], [ %.sroa.9.0.copyload, %bb.e ]
  %.val11.i.i.i.i.i9.i.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !45191
  %i.aa = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i, %bb.e
  %.sroa.27.0.i = phi ptr [ %.sroa.10.0.copyload, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i.i7.i.i.i.i.i ]
  %i.ad = phi ptr [ %.sroa.9.0.copyload, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i.i7.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i = phi i16 [ %.sroa.113.0.copyload, %bb.e ], [ %.cast.i.i.i.i.i10.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i ] ; 3 uses
  %i.ae = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i, -1
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = and i16 %i.ae, %.lcssa.i.i.i.i.i5.i.i.i.i.i
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = add i64 %.sroa.124.0.copyload, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i
  %.sroa.302.0.i = phi i16 [ %i.ah, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.sroa.113.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.27.1.i = phi ptr [ %.sroa.27.0.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.sroa.10.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.17.2.i = phi <16 x i1> [ %.sroa.17.1.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %3, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.sroa.12.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 5 uses
  %.val.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i30.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.val.i.i.i.i31.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 7 uses
  %.val.i57.i.i.i.i.i.i = phi i64 [ %i.ak, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.sroa.124.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 4 uses
  %i.al = phi ptr [ %i.ad, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %.sroa.9.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i26.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %i.w, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 7 uses
  %i.am = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %i.p, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.aj, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i ], [ %i.v, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8
  %.val.i2.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !noalias !45192, !noundef !42
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null     ; 3 uses
  %.not51.i.i.i.i.i.i = icmp eq ptr %i.al, null   ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i, i64 0, i64 %.val.i57.i.i.i.i.i.i ; 2 uses
  %i.an = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.ao = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i, i64 %i.an
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 4) ; 3 uses
  %i.aq = shl i64 %.sroa.0.0.i.i.i.i, 2           ; 3 uses
  %i.ar = icmp ugt i64 %i.ap, 4611686018427387903
  %i.as = icmp ugt i64 %i.aq, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !57

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !45193
  %i.at = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aq, i64 noundef range(i64 1, 9) 4) #53, !noalias !45193 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @758) #59, !noalias !45184
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store i32 %.val.i2.i.i, ptr %i.at, align 4, !noalias !45184
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.a, align 8, !noalias !45184
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !45184
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !45184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45195)
  br i1 %i.b, label %.split.us.preheader.i.i.i47.i.i.i, label %.split.i.i.i16.i.i.i

.split.us.preheader.i.i.i47.i.i.i:                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"
  %i.av = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.av
  br i1 %or.cond.i.i.i, label %bb.g, label %.split49.us.i.i.i18.i.i.i

bb.g:                                             ; preds = %.split.us.preheader.i.i.i47.i.i.i
  %.not.i.i.us.peel.i.i.i49.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i49.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45196), !noalias !45197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45198), !noalias !45197
  %i.aw = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !45199, !noalias !45200, !nonnull !42, !noundef !42 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !45201
  %i.ax = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i, splat (i8 -1) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !45199, !noalias !45200, !noundef !42 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split.i.i.i16.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"
  br i1 %.not.i.i.i.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.i

bb.i:                                             ; preds = %.split.i.i.i16.i.i.i
  %i.bc = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split49.us.i.i.i18.i.i.i:                        ; preds = %bb.i, %bb.h, %.split.us.preheader.i.i.i47.i.i.i
  %.sroa.53.0.i.i.i = phi ptr [ null, %bb.h ], [ %.val.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.i ]
  %.sroa.11.1.i.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.am, %.split.us.preheader.i.i.i47.i.i.i ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.30.0.i.i.i = phi <16 x i1> [ %i.ax, %bb.h ], [ %.sroa.17.2.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.17.2.i, %bb.i ]
  %.sroa.22.0.i.i.i = phi ptr [ %i.ay, %bb.h ], [ %.sroa.12.3.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.12.3.i, %bb.i ] ; 2 uses
  %.us-phi51.i.i.i20.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %.val.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.i ]
  %4 = bitcast <16 x i1> %.sroa.30.0.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i21.i.i.i = icmp eq i16 %4, 0
  br i1 %.not13.i.i.i.i.i.i.i.i21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i

.lr.ph.i.i.i.i.i.i.i.i30.i.i.i:                   ; preds = %.split49.us.i.i.i18.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i32.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !45202
  %i.bf = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i32.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i33.i.i.i = bitcast <16 x i1> %i.bf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i34.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i33.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, %.split49.us.i.i.i18.i.i.i
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ]
  %i.bi = phi ptr [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i23.i.i.i = phi i16 [ %4, %.split49.us.i.i.i18.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i33.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 3 uses
  %i.bj = add i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, -1
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = and i16 %i.bj, %.lcssa.i.i.i.i.i.i.i.i23.i.i.i
  %5 = bitcast i16 %i.bm to <16 x i1>
  %i.bn = sub nsw i64 0, %i.bl
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = add i64 %.us-phi51.i.i.i20.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.split53.us.i.i.i36.i.i.i:                        ; preds = %bb.i, %.split.i.i.i16.i.i.i, %bb.h, %bb.g
  %.sroa.53.1.i.i.i = phi ptr [ null, %bb.g ], [ %.val.i.i.i.i.i.i, %bb.i ], [ %.val.i.i.i.i.i.i, %.split.i.i.i16.i.i.i ], [ null, %bb.h ]
  %.sroa.365.0.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i, %bb.g ], [ 0, %bb.i ], [ %.val.i.i.i.i.i.i.i, %.split.i.i.i16.i.i.i ], [ 0, %bb.h ]
  %.sroa.30.1.i.i.i = phi <16 x i1> [ %.sroa.17.2.i, %bb.g ], [ %.sroa.17.2.i, %bb.i ], [ %.sroa.17.2.i, %.split.i.i.i16.i.i.i ], [ %i.ax, %bb.h ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.12.3.i, %bb.g ], [ %.sroa.12.3.i, %bb.i ], [ %.sroa.12.3.i, %.split.i.i.i16.i.i.i ], [ %i.ay, %bb.h ]
  %i.bq = icmp eq i64 %.val.i57.i.i.i.i.i.i, 0
  %or.cond36.i.i.i = select i1 %.not51.i.i.i.i.i.i, i1 true, i1 %i.bq
  br i1 %or.cond36.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h653c159e96096c47E.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %.split53.us.i.i.i36.i.i.i
  %.not13.i.i.i.i.i3.i.i.i38.i.i.i = icmp eq i16 %.sroa.302.0.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i38.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i:                  ; preds = %bb.j, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i
  %i.br = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %.sroa.27.1.i, %bb.j ] ; 2 uses
  %i.bs = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %i.al, %bb.j ]
  %.val11.i.i.i.i.i9.i.i.i43.i.i.i = load <16 x i8>, ptr %i.br, align 16, !noalias !45203
  %i.bt = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i43.i.i.i, splat (i8 -1)
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -128 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i44.i.i.i = bitcast <16 x i1> %i.bt to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i45.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i44.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i45.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, %bb.j
  %.sroa.50.0.i.i.i = phi ptr [ %.sroa.27.1.i, %bb.j ], [ %i.bv, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ]
  %.sroa.43.0.i.i.i = phi ptr [ %i.al, %bb.j ], [ %i.bu, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i = phi i16 [ %.sroa.302.0.i, %bb.j ], [ %.cast.i.i.i.i.i10.i.i.i44.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 3 uses
  %i.bw = add i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [8 x i8], ptr %.sroa.43.0.i.i.i, i64 %i.ca
  %i.cc = add i64 %.val.i57.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i
  %.sroa.53.4.i.i.i.ph = phi ptr [ %.sroa.53.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %.sroa.53.0.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.11.6.i.i.i.ph = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %i.bi, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.5810.2.i.i.i.ph = phi i64 [ %i.cc, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %.val.i57.i.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.548.2.i.i.i.ph = phi i16 [ %i.bz, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %.sroa.302.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.50.3.i.i.i.ph = phi ptr [ %.sroa.50.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %.sroa.27.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.43.3.i.i.i.ph = phi ptr [ %.sroa.43.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %i.al, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.365.3.i.i.i.ph = phi i64 [ %.sroa.365.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %i.bp, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.30.4.i.i.i.ph = phi <16 x i1> [ %.sroa.30.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %5, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.sroa.22.5.i.i.i.ph = phi ptr [ %.sroa.22.2.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %.sroa.22.1.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  %.pn.i25.pn.i.i.i.ph = phi ptr [ %i.cb, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i39.i.i.i ], [ %i.bo, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i22.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i
  %.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.sroa.53.4.i.i.i.ph57 = phi ptr [ %.sroa.53.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.53.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.sroa.11.6.i.i.i.ph58 = phi ptr [ %.sroa.11.6.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.sroa.5810.2.i.i.i.ph59 = phi i64 [ %.sroa.5810.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dw, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ] ; 3 uses
  %.sroa.548.2.i.i.i.ph60 = phi i16 [ %.sroa.548.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dt, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.50.3.i.i.i.ph61 = phi ptr [ %.sroa.50.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.50.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.43.3.i.i.i.ph62 = phi ptr [ %.sroa.43.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.43.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ] ; 4 uses
  %.sroa.365.3.i.i.i.ph63 = phi i64 [ %.sroa.365.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.365.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.sroa.30.4.i.i.i.ph67 = phi <16 x i1> [ %.sroa.30.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.30.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.sroa.22.5.i.i.i.ph65 = phi ptr [ %.sroa.22.5.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.22.8.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.ph66 = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.ph67 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.co, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.pn.i25.pn.i.i.i.ph68 = phi ptr [ %.pn.i25.pn.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dv, %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i ]
  %.not51.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph62, null
  %.sroa.8.0.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.5810.2.i.i.i.ph59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.outer, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.cl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.outer ]
  %.sroa.53.4.i.i.i = phi ptr [ %.sroa.53.5.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.ph57, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.11.6.i.i.i = phi ptr [ %i.dc, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.ph58, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.sroa.365.3.i.i.i = phi i64 [ %i.dj, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.sroa.365.3.i.i.i.ph63, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.30.4.i.i.i = phi <16 x i1> [ %7, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.ph67, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %.sroa.22.5.i.i.i = phi ptr [ %.sroa.22.7.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.ph65, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %i.ce = phi i64 [ %i.cm, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.ph66, %.lr.ph.i.i.i.i.i.outer ] ; 3 uses
  %i.cf = phi i64 [ %i.co, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.ph67, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.pn.i25.pn.i.i.i = phi ptr [ %i.di, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i ], [ %.pn.i25.pn.i.i.i.ph68, %.lr.ph.i.i.i.i.i.outer ]
  %.val.i27.pn.in.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i, i64 -8
  %.val.i27.pn.i.i.i = load i32, ptr %.val.i27.pn.in.i.i.i, align 4, !noalias !45204, !noundef !42
  %i.cg = icmp samesign ult i64 %i.cf, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %i.cf, %i.ce
  br i1 %i.ch, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4db6992fd53d2243E.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null
  %i.ci = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.365.3.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i)
  %i.cj = select i1 %.not.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i, i64 %i.ci
  %i.ck = tail call i64 @llvm.uadd.sat.i64(i64 %i.cj, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ce, i64 noundef range(i64 1, 0) %i.ck, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !45184

.noexc.i.i.i:                                     ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i.i.i"
  %.pre1.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !50, !alias.scope !45197, !noalias !45184
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !45197, !noalias !45184
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4db6992fd53d2243E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4db6992fd53d2243E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cl = phi ptr [ %.pre.i.i.i, %.noexc.i.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cm = phi i64 [ %.pre1.i.i.i.i.i, %.noexc.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cf
  store i32 %.val.i27.pn.i.i.i, ptr %i.cn, align 4, !noalias !45205
  %i.co = add nuw nsw i64 %i.cf, 1                ; 3 uses
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !45197, !noalias !45184
  %.not.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4db6992fd53d2243E.exit.i.i.i.i.i"
  %i.cp = icmp eq i64 %.sroa.365.3.i.i.i, 0
  %or.cond35.i.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i, i1 true, i1 %i.cp
  br i1 %or.cond35.i.i.i, label %bb.k, label %.split49.us.i.i.i.i.i.i

bb.k:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.53.4.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45206), !noalias !45197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45207), !noalias !45197
  %i.cq = load ptr, ptr %.sroa.53.4.i.i.i, align 8, !alias.scope !45208, !noalias !45209, !nonnull !42, !noundef !42 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i = load <16 x i8>, ptr %i.cq, align 16, !noalias !45210
  %i.cr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.53.4.i.i.i, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !45208, !noalias !45209, !noundef !42 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4db6992fd53d2243E.exit.i.i.i.i.i"
  br i1 %.not.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i.i.i
  %i.cw = icmp eq i64 %.sroa.365.3.i.i.i, 0
  br i1 %i.cw, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l, %.split.us.preheader.i.i.i.i.i.i
  %.sroa.53.5.i.i.i = phi ptr [ null, %bb.l ], [ %.sroa.53.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i, %bb.m ]
  %.sroa.11.8.i.i.i = phi ptr [ %i.cq, %bb.l ], [ %.sroa.11.6.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i, %bb.m ] ; 2 uses
  %.sroa.30.5.i.i.i = phi <16 x i1> [ %i.cr, %bb.l ], [ %.sroa.30.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i, %bb.m ]
  %.sroa.22.6.i.i.i = phi ptr [ %i.cs, %bb.l ], [ %.sroa.22.5.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i, %bb.m ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.l ], [ %.sroa.365.3.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.365.3.i.i.i, %bb.m ]
  %6 = bitcast <16 x i1> %.sroa.30.5.i.i.i to i16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %6, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split49.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ] ; 2 uses
  %i.cy = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cx, align 16, !noalias !45211
  %i.cz = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -128 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2101e3d4ccd7cfaeE.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i
  %.sroa.22.7.i.i.i = phi ptr [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dc = phi ptr [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %6, %.split49.us.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dd = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = and i16 %i.dd, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %7 = bitcast i16 %i.dg to <16 x i1>
  %i.dh = sub nsw i64 0, %i.df
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dh
  %i.dj = add i64 %.us-phi51.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i

.split53.us.i.i.i.i.i.i:                          ; preds = %bb.m, %.split.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.53.6.i.i.i = phi ptr [ null, %bb.k ], [ %.sroa.53.4.i.i.i, %bb.m ], [ %.sroa.53.4.i.i.i, %.split.i.i.i.i.i.i ], [ null, %bb.l ]
  %.sroa.365.4.i.i.i = phi i64 [ %.sroa.365.3.i.i.i, %bb.k ], [ 0, %bb.m ], [ %.sroa.365.3.i.i.i, %.split.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.sroa.30.6.i.i.i = phi <16 x i1> [ %.sroa.30.4.i.i.i, %bb.k ], [ %.sroa.30.4.i.i.i, %bb.m ], [ %.sroa.30.4.i.i.i, %.split.i.i.i.i.i.i ], [ %i.cr, %bb.l ]
  %.sroa.22.8.i.i.i = phi ptr [ %.sroa.22.5.i.i.i, %bb.k ], [ %.sroa.22.5.i.i.i, %bb.m ], [ %.sroa.22.5.i.i.i, %.split.i.i.i.i.i.i ], [ %i.cs, %bb.l ]
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph62, null
  %i.dk = icmp eq i64 %.sroa.5810.2.i.i.i.ph59, 0
  %or.cond37.i.i.i = select i1 %.not.i2.i.i.i.i.i.i, i1 true, i1 %i.dk
  br i1 %or.cond37.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h653c159e96096c47E.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %.split53.us.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i16 %.sroa.548.2.i.i.i.ph60, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i
  %i.dl = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.50.3.i.i.i.ph61, %bb.n ] ; 2 uses
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.43.3.i.i.i.ph62, %bb.n ]
  %.val11.i.i.i.i.i9.i.i.i.i.i.i = load <16 x i8>, ptr %i.dl, align 16, !noalias !45212
  %i.dn = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i.i.i, splat (i8 -1)
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -128 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i = bitcast <16 x i1> %i.dn to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h65a9482b9a98eecbE.exit.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, %bb.n
  %.sroa.50.4.i.i.i = phi ptr [ %.sroa.50.3.i.i.i.ph61, %bb.n ], [ %i.dp, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ]
  %.sroa.43.4.i.i.i = phi ptr [ %.sroa.43.3.i.i.i.ph62, %bb.n ], [ %i.do, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i = phi i16 [ %.sroa.548.2.i.i.i.ph60, %bb.n ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 3 uses
  %i.dq = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, -1
  %i.dr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = and i16 %i.dq, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i
  %i.du = sub nsw i64 0, %i.ds
  %i.dv = getelementptr inbounds [8 x i8], ptr %.sroa.43.4.i.i.i, i64 %i.du
  %i.dw = add i64 %.sroa.5810.2.i.i.i.ph59, -1
  br label %.lr.ph.i.i.i.i.i.outer

bb.o:                                             ; preds = %.split53.us.i.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !45213
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dx, align 8, !alias.scope !45213
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dy, align 8, !alias.scope !45213
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h8306ad4d046cb3e4E.exit"

bb.p:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h82aefb9237fac3ddE.exit.i.i.i.i.i"
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !45184 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ea, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h667d730a03ab7b47E.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !45184, !nonnull !42, !noundef !42
  %i.eb = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !45184
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h667d730a03ab7b47E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h653c159e96096c47E.exit.i.i.i": ; preds = %.split53.us.i.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !45214
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h8306ad4d046cb3e4E.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h667d730a03ab7b47E.exit.i.i.i": ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.dz

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h8306ad4d046cb3e4E.exit": ; preds = %bb.o, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h653c159e96096c47E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45184
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17ha24e7240833de178E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !45233 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45237
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 64
  %.val.i.i.i.i = load i32, ptr %i.d, align 4, !noalias !45238, !noundef !42
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 72
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 3)
  %.sroa.0.0.i10.i.i.i = add nuw nsw i64 %i.i, 1  ; 3 uses
  %i.j = shl nuw nsw i64 %.sroa.0.0.i10.i.i.i, 2  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !45239
  %i.k = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 4) #53, !noalias !45239 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @758) #59, !noalias !45237
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store i32 %.val.i.i.i.i, ptr %i.k, align 4, !noalias !45237
  store i64 %.sroa.0.0.i10.i.i.i, ptr %i.a, align 8, !noalias !45237
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !45237
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !45237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45241)
  %i.m = icmp eq ptr %i.c, %2
  br i1 %i.m, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf986e99c6cbe381bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i", %bb.c
  %i.n = phi ptr [ %i.y, %bb.c ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ]
  %i.o = phi i64 [ %i.z, %bb.c ], [ %.sroa.0.0.i10.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 3 uses
  %i.p = phi i64 [ %i.ab, %bb.c ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 4 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.c, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 72 ; 3 uses
  %i.r = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 64
  %.val.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !noalias !45242, !noundef !42
  %i.s = icmp samesign ult i64 %i.p, 2305843009213693952
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, %i.o
  br i1 %i.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h548fbd001f541010E.exit.i.i.i.i.i", label %bb.c

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h548fbd001f541010E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub nuw i64 %i.e, %i.u
  %i.w = udiv exact i64 %i.v, 72
  %i.x = add nuw nsw i64 %i.w, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o, i64 noundef %i.x, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !45237

.noexc.i.i.i:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h548fbd001f541010E.exit.i.i.i.i.i"
  %.pre9.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !50, !alias.scope !45243, !noalias !45237
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !45243, !noalias !45237
  br label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i
  %i.y = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %i.z = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.pre9.i.i.i.i.i, %.noexc.i.i.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.p
  store i32 %.val.i.i.i.i.i.i, ptr %i.aa, align 4, !noalias !45244
  %i.ab = add nuw nsw i64 %i.p, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !45243, !noalias !45237
  %i.ac = icmp eq ptr %i.q, %2
  br i1 %i.ac, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf986e99c6cbe381bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !45237
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ad, align 8, !alias.scope !45237
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8, !alias.scope !45237
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h49d87df4b6dfafccE.exit"

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h548fbd001f541010E.exit.i.i.i.i.i"
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !45237 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ag, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c3da1557a0c166cE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !45237, !nonnull !42, !noundef !42
  %i.ah = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !45237
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c3da1557a0c166cE.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf986e99c6cbe381bE.exit.i.i.i": ; preds = %bb.c, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h49d87df4b6dfafccE.exit"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c3da1557a0c166cE.exit.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.af

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h49d87df4b6dfafccE.exit": ; preds = %bb.d, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf986e99c6cbe381bE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45237
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17ha5a82abf474bb137E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !45276 {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45278
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45279)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !45278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45281)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !45282, !noalias !45283
  store i64 0, ptr %i.b, align 8, !alias.scope !45284, !noalias !45280
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2d868e174d2f79a5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45280 ; 3 uses

end_hunk_0
begin_hunk_1_@"_ZN6nickel7doctest9run_tests28_$u7b$$u7b$closure$u7d$$u7d$17h25e8f36445d50b08E":bb.a
  %i.qz = add i64 %.fr572, -1                     ; 2 uses
  %.first_iter.i = icmp ult i64 %i.qz, %i.ok
  %exitcond.not.i35.i1384.not = icmp ult i64 %.fr572, %i.ok
  %invariant.op1888 = sub i64 1, %.fr572
  %.not53.i.us1387 = icmp eq i64 %.fr572, 0       ; 2 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ec, %.lr.ph.i34.i
  %i.ra = phi i64 [ %.promoted.i31.i, %.lr.ph.i34.i ], [ %i.rk, %bb.ec ] ; 6 uses
  %i.rb = phi i64 [ %i.qu, %.lr.ph.i34.i ], [ %i.rl, %bb.ec ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !alias.scope !58601, !noundef !42
  %i.re = and i8 %i.rd, 63
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = shl nuw i64 1, %i.rf
  %i.rh = and i64 %i.rg, %i.qw
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %bb.eb, label %.preheader120.i.preheader

.preheader120.i.preheader:                        ; preds = %bb.ea
  br i1 %exitcond.not.i35.i1384.not, label %.lr.ph1386, label %.preheader.i.preheader

bb.eb:                                            ; preds = %bb.ea
  %i.rj = add i64 %i.ra, %i.ok
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eg, %.split477.us, %bb.eb
  %i.rk = phi i64 [ %i.sd, %bb.eg ], [ %i.rv, %.split477.us ], [ %i.rj, %bb.eb ] ; 2 uses
  %i.rl = add i64 %i.rk, %i.ol                    ; 2 uses
  %i.rm = icmp ult i64 %i.rl, %i.oi
  br i1 %i.rm, label %bb.ea, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i"

.preheader120.i:                                  ; preds = %bb.ee
  %i.rn = add nuw i64 %.sroa.02.0.i.i1385, 1      ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %i.rn, %umax50.i.i
  br i1 %exitcond.not.i35.i, label %.preheader.i.preheader, label %.lr.ph1386

.preheader.i.preheader:                           ; preds = %.preheader120.i, %.preheader120.i.preheader
  br i1 %.first_iter.i, label %.preheader.i.us.preheader, label %.preheader.i.preheader.split

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not53.i.us1387, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i", label %.lr.ph1389

.preheader.i.us:                                  ; preds = %bb.ed
  %.not53.i.us = icmp eq i64 %i.ro, 0
  br i1 %.not53.i.us, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i", label %.lr.ph1389

.lr.ph1389:                                       ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.57.0.i.i.us1388 = phi i64 [ %i.ro, %.preheader.i.us ], [ %.fr572, %.preheader.i.us.preheader ]
  %i.ro = add i64 %.sroa.57.0.i.i.us1388, -1      ; 4 uses
  %i.rp = add i64 %i.ro, %i.ra                    ; 3 uses
  %i.rq = icmp ult i64 %i.rp, %i.oi
  br i1 %i.rq, label %bb.ed, label %.invoke1401

bb.ed:                                            ; preds = %.lr.ph1389
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ro
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !58602, !noundef !42
  %i.rt = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.rp
  %i.ru = load i8, ptr %i.rt, align 1, !alias.scope !58601, !noundef !42
  %.not.i36.i.us = icmp eq i8 %i.rs, %i.ru
  br i1 %.not.i36.i.us, label %.preheader.i.us, label %.split477.us

.split477.us:                                     ; preds = %bb.ed
  %i.rv = add i64 %i.ra, %i.qy
  br label %bb.ec

.preheader.i.preheader.split:                     ; preds = %.preheader.i.preheader
  br i1 %.not53.i.us1387, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i", label %.invoke1401

.lr.ph1386:                                       ; preds = %.preheader120.i.preheader, %.preheader120.i
  %.sroa.02.0.i.i1385 = phi i64 [ %i.rn, %.preheader120.i ], [ %.fr572, %.preheader120.i.preheader ] ; 4 uses
  %i.rw = add i64 %.sroa.02.0.i.i1385, %i.ra      ; 2 uses
  %i.rx = icmp ult i64 %i.rw, %i.oi
  br i1 %i.rx, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph1386
  %i.ry = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.sroa.02.0.i.i1385
  %i.rz = load i8, ptr %i.ry, align 1, !alias.scope !58602, !noundef !42
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.rw
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !58601, !noundef !42
  %.not22.i.i = icmp eq i8 %i.rz, %i.sb
  br i1 %.not22.i.i, label %.preheader120.i, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph1386
  %i.sc = add i64 %i.ra, %.fr572
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.oi, i64 %i.sc)
  br label %.invoke1401

bb.eg:                                            ; preds = %bb.ee
  %.reass259.i.reass.reass = add i64 %i.ra, %invariant.op1888
  %i.sd = add i64 %.reass259.i.reass.reass, %.sroa.02.0.i.i1385
  br label %bb.ec

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i": ; preds = %.sink.split.i.i, %.preheader57.i.preheader, %bb.ec, %.preheader.i.us.preheader, %.preheader57.i, %.preheader.i.us, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit16.i.i.i.i", %bb.dn, %.preheader.i.preheader.split, %bb.db, %bb.dz, %bb.do, %bb.dm, %bb.de, %.preheader.i25.i
  %.sroa.0.0.i93 = phi i8 [ 0, %bb.do ], [ %.promoted26.i.i, %bb.db ], [ 0, %.preheader.i25.i ], [ 1, %bb.dm ], [ 1, %.preheader.i.us.preheader ], [ 1, %bb.de ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit12.i.i.i.i" ], [ 0, %bb.dz ], [ 1, %.preheader.i.us ], [ 1, %.preheader57.i ], [ 1, %.preheader.i.preheader.split ], [ 1, %bb.dn ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit16.i.i.i.i" ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc82460efa17fbc7E.exit14.i.i.i.i" ], [ 0, %bb.ec ], [ 0, %.sink.split.i.i ], [ 1, %.preheader57.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58588
  br label %bb.ex

bb.eh:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !58603)
  call void @llvm.experimental.noalias.scope.decl(metadata !58604)
  %i.se = load i8, ptr %i.lm, align 1, !alias.scope !58605, !noundef !42 ; 3 uses
  %i.sf = add nsw i64 %i.lo, -1                   ; 2 uses
  %i.sg = icmp eq i64 %i.lo, 2
  br i1 %i.sg, label %.thread.i.i, label %.lr.ph1377

.lr.ph1377:                                       ; preds = %bb.eh
  %i.sh = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.lo, i64 4)
  br label %bb.ej

bb.ei:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hd53fd1560ccb66fcE.exit.i.i.i"
  %i.si = icmp ult i64 %i.sh, %i.sk
  br i1 %i.si, label %bb.ej, label %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i

bb.ej:                                            ; preds = %.lr.ph1377, %bb.ei
  %i.sj = phi i64 [ %i.lo, %.lr.ph1377 ], [ %i.sk, %bb.ei ]
  %i.sk = add nsw i64 %i.sj, -1                   ; 6 uses
  %i.sl = icmp ult i64 %i.sk, %i.lo
  br i1 %i.sl, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hd53fd1560ccb66fcE.exit.i.i.i", label %.invoke1401

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hd53fd1560ccb66fcE.exit.i.i.i": ; preds = %bb.ej
  %i.sm = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.sk
  %i.sn = load i8, ptr %i.sm, align 1, !alias.scope !58605, !noalias !58606, !noundef !42 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.sn, %i.se
  br i1 %.not.i.not.i.i.i, label %bb.ei, label %bb.ek

bb.ek:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hd53fd1560ccb66fcE.exit.i.i.i"
  %i.so = add nuw nsw i64 %i.lo, 15
  %i.sp = icmp ult i64 %.sroa.6.sroa.7.043.i, %i.so
  br i1 %i.sp, label %.lr.ph.split.us.i.i.i, label %bb.el

.thread.i.i:                                      ; preds = %bb.eh
  %i.sq = icmp ult i64 %.sroa.6.sroa.7.043.i, 17
  br i1 %i.sq, label %.lr.ph.split.us.i.i.i, label %.thread106.i.i

.thread106.i.i:                                   ; preds = %.thread.i.i
  %i.sr = insertelement <1 x i8> poison, i8 %i.se, i64 0
  %i.ss = shufflevector <1 x i8> %i.sr, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %.pre.i.i = load <1 x i8>, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !58605
  br label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.st = insertelement <1 x i8> poison, i8 %i.sn, i64 0
  %i.su = insertelement <1 x i8> poison, i8 %i.se, i64 0
  %i.sv = shufflevector <1 x i8> %i.su, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.em

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.ek
  %bcmp.i.i.us23.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.6.sroa.6.044.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.lm, i64 range(i64 2, 33) %i.lo), !alias.scope !58607, !noalias !58608
  %i.sw = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.sw, label %.thread168, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h222d86cd38654a42E.exit.backedge.us.i.i.i"

.split.us.i.i.i:                                  ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h222d86cd38654a42E.exit.backedge.us.i.i.i"
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn.i.i96, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.sx, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.lm, i64 range(i64 2, 33) %i.lo), !alias.scope !58607, !noalias !58608
  %i.sy = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.sy, label %.thread168, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h222d86cd38654a42E.exit.backedge.us.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h222d86cd38654a42E.exit.backedge.us.i.i.i": ; preds = %.lr.ph.split.us.i.i.i, %.split.us.i.i.i
  %.pn.i.i96 = phi ptr [ %i.sx, %.split.us.i.i.i ], [ %.sroa.6.sroa.6.044.i, %.lr.ph.split.us.i.i.i ]
  %.in.i.i = phi i64 [ %i.sz, %.split.us.i.i.i ], [ %.sroa.6.sroa.7.043.i, %.lr.ph.split.us.i.i.i ]
  %i.sz = add i64 %.in.i.i, -1                    ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %i.lo, %i.sz
  br i1 %.not28.i.i.i, label %.thread171, label %.split.us.i.i.i

bb.em:                                            ; preds = %bb.el, %.thread106.i.i
  %i.ta = phi <1 x i8> [ %.pre.i.i, %.thread106.i.i ], [ %i.st, %bb.el ]
  %i.tb = phi <16 x i8> [ %i.ss, %.thread106.i.i ], [ %i.sv, %bb.el ] ; 6 uses
  %storemerge105108.i.i = phi i64 [ 1, %.thread106.i.i ], [ %i.sk, %bb.el ] ; 6 uses
  %i.tc = shufflevector <1 x i8> %i.ta, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58607
  store ptr %.sroa.6.sroa.6.044.i, ptr %i.e, align 8, !noalias !58607
  store i64 %.sroa.6.sroa.7.043.i, ptr %i.cy, align 8, !noalias !58607
  store ptr %i.td, ptr %i.cz, align 8, !noalias !58607
  store i64 %i.sf, ptr %i.da, align 8, !noalias !58607
  %i.te = add nuw nsw i64 %i.lo, 63               ; 2 uses
  %.not.i28.i = icmp ult i64 %i.te, %.sroa.6.sroa.7.043.i
  br i1 %.not.i28.i, label %.lr.ph.i30.i, label %.preheader.i29.i

.preheader.i29.i:                                 ; preds = %bb.eq, %bb.em
  %.sroa.015.0.lcssa.i.i = phi i8 [ 0, %bb.em ], [ %.sroa.015.2.3.i.i, %bb.eq ] ; 2 uses
  %.sroa.07.0.lcssa.i.i = phi i64 [ 0, %bb.em ], [ %i.ut, %bb.eq ] ; 2 uses
  %i.tf = add nuw nsw i64 %i.lo, 15               ; 2 uses
  %i.tg = add i64 %.sroa.07.0.lcssa.i.i, %i.tf
  %i.th = icmp uge i64 %i.tg, %.sroa.6.sroa.7.043.i
  %i.ti = trunc nuw i8 %.sroa.015.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3118.i.i = select i1 %i.th, i1 true, i1 %i.ti
  br i1 %or.cond3118.i.i, label %._crit_edge.i.i94, label %.lr.ph120.i.i

.lr.ph.i30.i:                                     ; preds = %bb.em, %bb.eq
  %.sroa.07.0116.i.i = phi i64 [ %i.ut, %bb.eq ], [ 0, %bb.em ] ; 6 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.6.044.i, i64 %.sroa.07.0116.i.i ; 5 uses
  %.val3.i.i.i95 = load <16 x i8>, ptr %i.tj, align 1, !alias.scope !58609, !noalias !58610
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %storemerge105108.i.i
  %.val.i.i.i = load <16 x i8>, ptr %i.tk, align 1, !alias.scope !58609, !noalias !58610
  %i.tl = icmp eq <16 x i8> %.val3.i.i.i95, %i.tb
  %i.tm = icmp eq <16 x i8> %.val.i.i.i, %i.tc
  %narrow.i.i.i = select <16 x i1> %i.tl, <16 x i1> %i.tm, <16 x i1> zeroinitializer
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 2 uses
  %.val3.i.1.i.i = load <16 x i8>, ptr %i.tn, align 1, !alias.scope !58609, !noalias !58610
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %storemerge105108.i.i
  %.val.i.1.i.i = load <16 x i8>, ptr %i.to, align 1, !alias.scope !58609, !noalias !58610
  %i.tp = icmp eq <16 x i8> %.val3.i.1.i.i, %i.tb
  %i.tq = icmp eq <16 x i8> %.val.i.1.i.i, %i.tc
  %narrow.i.1.i.i = select <16 x i1> %i.tp, <16 x i1> %i.tq, <16 x i1> zeroinitializer
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 32 ; 2 uses
  %.val3.i.2.i.i = load <16 x i8>, ptr %i.tr, align 1, !alias.scope !58609, !noalias !58610
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %storemerge105108.i.i
  %.val.i.2.i.i = load <16 x i8>, ptr %i.ts, align 1, !alias.scope !58609, !noalias !58610
  %i.tt = icmp eq <16 x i8> %.val3.i.2.i.i, %i.tb
  %i.tu = icmp eq <16 x i8> %.val.i.2.i.i, %i.tc
  %narrow.i.2.i.i = select <16 x i1> %i.tt, <16 x i1> %i.tu, <16 x i1> zeroinitializer
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tj, i64 48 ; 2 uses
  %.val3.i.3.i.i = load <16 x i8>, ptr %i.tv, align 1, !alias.scope !58609, !noalias !58610
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %storemerge105108.i.i
  %.val.i.3.i.i = load <16 x i8>, ptr %i.tw, align 1, !alias.scope !58609, !noalias !58610
  %i.tx = icmp eq <16 x i8> %.val3.i.3.i.i, %i.tb
  %i.ty = icmp eq <16 x i8> %.val.i.3.i.i, %i.tc
  %narrow.i.3.i.i = select <16 x i1> %i.tx, <16 x i1> %i.ty, <16 x i1> zeroinitializer
  %i.tz = bitcast <16 x i1> %narrow.i.i.i to i16  ; 2 uses
  %i.ua = icmp eq i16 %i.tz, 0
  br i1 %i.ua, label %.preheader109.1.i.i, label %bb.er

.preheader109.1.i.i:                              ; preds = %bb.er, %.lr.ph.i30.i
  %.sroa.015.2.i.i = phi i8 [ 0, %.lr.ph.i30.i ], [ %i.uy, %bb.er ] ; 3 uses
  %2 = bitcast <16 x i1> %narrow.i.1.i.i to i16   ; 2 uses
  %i.ub = icmp eq i16 %2, 0
  br i1 %i.ub, label %.preheader109.2.i.i, label %bb.en

bb.en:                                            ; preds = %.preheader109.1.i.i
  %i.uc = or disjoint i64 %.sroa.07.0116.i.i, 16
  %i.ud = trunc nuw i8 %.sroa.015.2.i.i to i1
  %i.ue = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.uc, i16 noundef %2, i1 noundef zeroext %i.ud)
  %i.uf = zext i1 %i.ue to i8
  %i.ug = or i8 %.sroa.015.2.i.i, %i.uf
  br label %.preheader109.2.i.i

.preheader109.2.i.i:                              ; preds = %bb.en, %.preheader109.1.i.i
  %.sroa.015.2.1.i.i = phi i8 [ %.sroa.015.2.i.i, %.preheader109.1.i.i ], [ %i.ug, %bb.en ] ; 3 uses
  %3 = bitcast <16 x i1> %narrow.i.2.i.i to i16   ; 2 uses
  %i.uh = icmp eq i16 %3, 0
  br i1 %i.uh, label %.preheader109.3.i.i, label %bb.eo

bb.eo:                                            ; preds = %.preheader109.2.i.i
  %i.ui = or disjoint i64 %.sroa.07.0116.i.i, 32
  %i.uj = trunc nuw i8 %.sroa.015.2.1.i.i to i1
  %i.uk = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.ui, i16 noundef %3, i1 noundef zeroext %i.uj)
  %i.ul = zext i1 %i.uk to i8
  %i.um = or i8 %.sroa.015.2.1.i.i, %i.ul
  br label %.preheader109.3.i.i

.preheader109.3.i.i:                              ; preds = %bb.eo, %.preheader109.2.i.i
  %.sroa.015.2.2.i.i = phi i8 [ %.sroa.015.2.1.i.i, %.preheader109.2.i.i ], [ %i.um, %bb.eo ] ; 3 uses
  %4 = bitcast <16 x i1> %narrow.i.3.i.i to i16   ; 2 uses
  %i.un = icmp eq i16 %4, 0
  br i1 %i.un, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.preheader109.3.i.i
  %i.uo = or disjoint i64 %.sroa.07.0116.i.i, 48
  %i.up = trunc nuw i8 %.sroa.015.2.2.i.i to i1
  %i.uq = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.uo, i16 noundef %4, i1 noundef zeroext %i.up)
  %i.ur = zext i1 %i.uq to i8
  %i.us = or i8 %.sroa.015.2.2.i.i, %i.ur
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.preheader109.3.i.i
  %.sroa.015.2.3.i.i = phi i8 [ %.sroa.015.2.2.i.i, %.preheader109.3.i.i ], [ %i.us, %bb.ep ] ; 2 uses
  %i.ut = add i64 %.sroa.07.0116.i.i, 64          ; 3 uses
  %i.uu = add i64 %i.ut, %i.te
  %i.uv = icmp uge i64 %i.uu, %.sroa.6.sroa.7.043.i
  %i.uw = trunc nuw i8 %.sroa.015.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.uv, i1 true, i1 %i.uw
  br i1 %or.cond.i.i, label %.preheader.i29.i, label %.lr.ph.i30.i

bb.er:                                            ; preds = %.lr.ph.i30.i
  %i.ux = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.07.0116.i.i, i16 noundef %i.tz, i1 noundef zeroext false)
  %i.uy = zext i1 %i.ux to i8
  br label %.preheader109.1.i.i

._crit_edge.i.i94:                                ; preds = %bb.es, %.preheader.i29.i
  %.sroa.015.3.lcssa.i.i = phi i8 [ %.sroa.015.0.lcssa.i.i, %.preheader.i29.i ], [ %.sroa.015.4.i.i, %bb.es ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ti, %.preheader.i29.i ], [ %i.vq, %bb.es ]
  %i.uz = sub nuw i64 %.sroa.6.sroa.7.043.i, %i.sf
  %i.va = add i64 %i.uz, -16                      ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.6.044.i, i64 %i.va ; 2 uses
  %.val3.i65.i.i = load <16 x i8>, ptr %i.vb, align 1, !alias.scope !58609, !noalias !58611
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %storemerge105108.i.i
  %.val.i66.i.i = load <16 x i8>, ptr %i.vc, align 1, !alias.scope !58609, !noalias !58611
  %i.vd = icmp eq <16 x i8> %.val3.i65.i.i, %i.tb
  %i.ve = icmp eq <16 x i8> %.val.i66.i.i, %i.tc
  %narrow.i67.i.i = select <16 x i1> %i.vd, <16 x i1> %i.ve, <16 x i1> zeroinitializer
  %i.vf = bitcast <16 x i1> %narrow.i67.i.i to i16 ; 2 uses
  %i.vg = icmp eq i16 %i.vf, 0
  br i1 %i.vg, label %bb.eu, label %bb.ev

.lr.ph120.i.i:                                    ; preds = %.preheader.i29.i, %bb.es
  %.sroa.07.1119.i.i = phi i64 [ %i.vn, %bb.es ], [ %.sroa.07.0.lcssa.i.i, %.preheader.i29.i ] ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.6.044.i, i64 %.sroa.07.1119.i.i ; 2 uses
  %.val3.i68.i.i = load <16 x i8>, ptr %i.vh, align 1, !alias.scope !58609, !noalias !58612
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %storemerge105108.i.i
  %.val.i69.i.i = load <16 x i8>, ptr %i.vi, align 1, !alias.scope !58609, !noalias !58612
  %i.vj = icmp eq <16 x i8> %.val3.i68.i.i, %i.tb
  %i.vk = icmp eq <16 x i8> %.val.i69.i.i, %i.tc
  %narrow.i70.i.i = select <16 x i1> %i.vj, <16 x i1> %i.vk, <16 x i1> zeroinitializer
  %i.vl = bitcast <16 x i1> %narrow.i70.i.i to i16 ; 2 uses
  %i.vm = icmp eq i16 %i.vl, 0
  br i1 %i.vm, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.et, %.lr.ph120.i.i
  %.sroa.015.4.i.i = phi i8 [ 0, %.lr.ph120.i.i ], [ %i.vs, %bb.et ] ; 2 uses
  %i.vn = add i64 %.sroa.07.1119.i.i, 16          ; 2 uses
  %i.vo = add i64 %i.vn, %i.tf
  %i.vp = icmp uge i64 %i.vo, %.sroa.6.sroa.7.043.i
  %i.vq = trunc nuw i8 %.sroa.015.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.vp, %i.vq
  br i1 %or.cond3.i.i, label %._crit_edge.i.i94, label %.lr.ph120.i.i

bb.et:                                            ; preds = %.lr.ph120.i.i
  %i.vr = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.07.1119.i.i, i16 noundef %i.vl, i1 noundef zeroext false)
  %i.vs = zext i1 %i.vr to i8
  br label %bb.es

bb.eu:                                            ; preds = %bb.ev, %._crit_edge.i.i94
  %.sroa.015.5.i.i = phi i8 [ %.sroa.015.3.lcssa.i.i, %._crit_edge.i.i94 ], [ %i.vv, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !58607
  br label %bb.ex

bb.ev:                                            ; preds = %._crit_edge.i.i94
  %i.vt = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h70b51c031c2c8d6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.va, i16 noundef %i.vf, i1 noundef zeroext %.lcssa.i.i)
  %i.vu = zext i1 %i.vt to i8
  %i.vv = or i8 %.sroa.015.3.lcssa.i.i, %i.vu
  br label %bb.eu

bb.ew:                                            ; preds = %bb.cu
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly align 1 %i.lm, ptr nonnull readonly align 1 %.sroa.6.sroa.6.044.i, i64 %.sroa.6.sroa.7.043.i), !alias.scope !58588
  %i.vw = icmp eq i32 %bcmp.i, 0
  %i.vx = zext i1 %i.vw to i8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.eu, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i", %.noexc98
  %.sroa.011.0.i = phi i8 [ %i.vx, %bb.ew ], [ %i.ly, %.noexc98 ], [ %.sroa.015.5.i.i, %bb.eu ], [ %.sroa.0.0.i93, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit.i" ]
  %i.vy = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.vy, label %.thread168, label %.thread171

.thread171:                                       ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h222d86cd38654a42E.exit.backedge.us.i.i.i", %bb.cy, %bb.cu, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" unwind label %bb.ey

bb.ey:                                            ; preds = %.thread171
  %i.vz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wa = icmp eq i64 %.sroa.6.sroa.0.045.i, 0
  br i1 %i.wa, label %.body, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.044.i, i64 noundef %.sroa.6.sroa.0.045.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58613
  br label %.body

bb.fa:                                            ; preds = %bb.co, %bb.fn, %bb.fg, %bb.z
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.thread168:                                       ; preds = %.split.us.i.i.i, %.lr.ph.i.i97, %.lr.ph.split.us.i.i.i, %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit90", %bb.ex
  %i.wc = icmp eq i64 %.sroa.6.sroa.0.045.i, 0
  br i1 %i.wc, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.thread161", label %bb.fb

bb.fb:                                            ; preds = %.thread168
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.044.i, i64 noundef %.sroa.6.sroa.0.045.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58614
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.thread161"

.loopexit.split-lp191.loopexit.split-lp:          ; preds = %_ZN4core3str7pattern13simd_contains17h3065bc5ce275ac4fE.exit.i, %bb.cx, %bb.cr, %.loopexit.i, %.invoke1401
  %lpad.loopexit.split-lp1417 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wd = icmp eq i64 %.sroa.6.sroa.0.045.i, 0
  br i1 %i.wd, label %.body, label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp191.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.6.044.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.044.i, i64 noundef %.sroa.6.sroa.0.045.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58615
  br label %.body

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.thread156": ; preds = %bb.aq, %bb.ap, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"
  %.sroa.010.1155 = phi i64 [ -9223372036854775808, %bb.ap ], [ %.sroa.6.sroa.0.045.i, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" ], [ -9223372036854775807, %bb.aq ]
  %.sroa.9.sroa.0.1154 = phi ptr [ %.sroa.3.0.i.i, %bb.ap ], [ %.sroa.6.sroa.6.044.i, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" ], [ %.sroa.3.0.i.i, %bb.aq ]
  %.sroa.9.sroa.6.sroa.0.0153 = phi i64 [ undef, %bb.ap ], [ %.sroa.6.sroa.7.043.i, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" ], [ undef, %bb.aq ]
  store i64 %.sroa.010.1155, ptr %i.af, align 8
  store ptr %.sroa.9.sroa.0.1154, ptr %.sroa.9.0..sroa_idx16, align 8
  store i64 %.sroa.9.sroa.6.sroa.0.0153, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx16.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.6.sroa.4.0..sroa.9.sroa.6.0..sroa.9.0..sroa_idx16.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.6.sroa.4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr @972, ptr %i.ah, align 8
  store i64 1, ptr %i.df, align 8
  store ptr null, ptr %i.dg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8
  store i64 0, ptr %i.di, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.fd unwind label %bb.fn

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.thread161": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i", %bb.ar, %.thread168, %bb.fb, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @975, ptr %i.ae, align 8
  store i64 1, ptr %i.db, align 8
  store ptr null, ptr %i.dc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  store i64 0, ptr %i.de, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp

bb.fd:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.thread156"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.val60 = load ptr, ptr %i.bi, align 8, !nonnull !42, !noundef !42
  %.val61 = load i64, ptr %i.bh, align 8, !noundef !42 ; 5 uses
  %i.we = mul i64 %.val61, 20                     ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val61, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.ff, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !57

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.fd
  %i.wf = icmp eq i64 %i.we, 0
  br i1 %i.wf, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !58616
  %i.wg = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.we, i64 noundef range(i64 1, 9) 4) #53, !noalias !58616 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.fe ], [ 0, %bb.fd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.we, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc117 unwind label %bb.fg

.noexc117:                                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.ff
  %i.wi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$nickel..doctest..ErrorKind$GT$17headf5eb9c3e30ab7E"(ptr noalias noundef align 8 dereferenceable(48) %i.af) #61
          to label %.body unwind label %bb.fa

bb.fh:                                            ; preds = %bb.fe, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.wg, %bb.fe ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val61, %bb.fe ] ; 2 uses
  %i.wj = icmp samesign ule i64 %.val61, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.wj)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val60, i64 %i.we, i1 false), !noalias !58617
  %i.wk = load i64, ptr %i.ga, align 8, !noundef !42
  store i64 %.sroa.4.0.i.i.i, ptr %i.ag, align 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.val61, ptr %.sroa.5137.0..sroa_idx, align 8
  store i64 %i.wk, ptr %i.dl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !58618)
  %i.wl = load i64, ptr %i.dn, align 8, !alias.scope !58618, !noundef !42 ; 3 uses
  %i.wm = load i64, ptr %i.dk, align 8, !range !50, !alias.scope !58618, !noundef !42
  %i.wn = icmp eq i64 %i.wl, %i.wm
  br i1 %i.wn, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h854d37a9a2d51065E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.fl unwind label %bb.fj, !noalias !58619

bb.fj:                                            ; preds = %bb.fi
  %i.wo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$nickel..doctest..Error$GT$17h776b9fdd95915f6eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.ag) #61
          to label %.body unwind label %bb.fk, !noalias !58618

bb.fk:                                            ; preds = %bb.fj
  %i.wp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !58620
end_hunk_1
