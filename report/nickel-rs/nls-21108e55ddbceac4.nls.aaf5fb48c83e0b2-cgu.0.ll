Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17hbd2690d02df7ca57E:bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !91234
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91234 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc14.i.i.i.i unwind label %bb.e, !noalias !91227

.noexc14.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !91227

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91227
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !91227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91227
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !91226, !noalias !91225
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3f79326af08c15f7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc17.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232 ; 2 uses

.noexc17.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !91235, !noalias !91227
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !91235, !noalias !91227
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !91227
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18thread-pre-split.i.i.i.i", %.noexc17.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc17.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc9cfab36263ec733E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !91226, !noalias !91225, !noundef !46
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.k, label %bb.j, !prof !51

bb.j:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232 ; 4 uses

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #75
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.t, align 8, !range !62, !noalias !91232, !noundef !46
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !91226, !noalias !91225, !noundef !46
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17hbbc007d05aabcff9E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !91232, !noundef !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !91232, !noundef !46
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h47cb75c59ab296bbE"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(48) %i.b, i64 noundef %i.ae)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232

bb.p:                                             ; preds = %bb.o
  %i.af = load i64, ptr %i.z, align 8, !noalias !91232, !noundef !46
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !91232, !noundef !46
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.p ], [ %i.y, %bb.n ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !91226, !noalias !91225, !noundef !46
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !91226, !noalias !91225
  %i.al = load i64, ptr %i.b, align 8, !range !62, !alias.scope !91236, !noalias !91227, !noundef !46
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20thread-pre-split.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3f79326af08c15f7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc19.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232 ; 2 uses

.noexc19.i.i.i.i:                                 ; preds = %bb.r
  store i64 1, ptr %i.b, align 8, !alias.scope !91236, !noalias !91227
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !91236, !noalias !91227
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20thread-pre-split.i.i.i.i": ; preds = %bb.q
  %.pr21.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !91227
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20thread-pre-split.i.i.i.i", %.noexc19.i.i.i.i
  %i.ao = phi ptr [ %.pr21.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc19.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.s

bb.s:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hb7996dbbd61742eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91232

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !62, !alias.scope !91235, !noalias !91227
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit20.i.i.i.i" ]
  br label %bb.g

bb.t:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91232
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !91237)
  call void @llvm.experimental.noalias.scope.decl(metadata !91238)
  %i.aq = load ptr, ptr %i.c, align 16, !alias.scope !91239, !noalias !91225, !noundef !46 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %.body.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !noalias !91240, !noundef !46
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8, !noalias !91240
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.v, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i"

bb.v:                                             ; preds = %bb.u
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i" unwind label %bb.w, !noalias !91225

bb.w:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91225
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hcfbc48a7f0860ce0E.exit.i.i.i": ; preds = %bb.v, %bb.u, %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc9cfab36263ec733E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h673922bd53fd9bdfE.exit18.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91227
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !91241
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !91241
  %i.aw = load <2 x i64>, ptr %i.c, align 16, !noalias !91241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91225
  store <2 x i64> %i.aw, ptr %0, align 8, !alias.scope !91224
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !91224
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ax, align 8, !alias.scope !91224
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.ay, align 8, !alias.scope !91224
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he5a8df70234f3863E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !91393 {
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
  %.sroa.71.0.copyload = load i16, ptr %.sroa.71.0..sroa_idx, align 8 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91394)
  %.fr54.i.i.i.i = freeze i64 %.sroa.0.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91397
  %i.b = trunc i64 %.fr54.i.i.i.i to i1           ; 3 uses
  %.not.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i, label %.split.i.i.i.i

.split.us.preheader.i.i.i.i:                      ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.82.0.copyload, 0
  %or.cond.i = select i1 %.not.i.us.peel.i.i.i.i, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.b, label %.split49.us.i.i.i.i

bb.b:                                             ; preds = %.split.us.preheader.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.us.peel.i.i.i.i, label %.split53.us.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91398), !noalias !91399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91400), !noalias !91399
  %i.d = load ptr, ptr %.sroa.4.0.copyload, align 8, !alias.scope !91401, !noalias !91402, !nonnull !46, !noundef !46 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !91403
  %i.e = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !91401, !noalias !91402, !noundef !46 ; 2 uses
  %2 = bitcast <16 x i1> %i.e to i16              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split53.us.i.i.i.i, label %.split49.us.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.a
  br i1 %.not.i.us.peel.i.i.i.i, label %.split53.us.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.i.i.i.i
  %i.j = icmp eq i64 %.sroa.82.0.copyload, 0
  br i1 %i.j, label %.split53.us.i.i.i.i, label %.split49.us.i.i.i.i

.split49.us.i.i.i.i:                              ; preds = %bb.d, %bb.c, %.split.us.preheader.i.i.i.i
  %.sroa.5.0.i = phi ptr [ null, %bb.c ], [ %.sroa.4.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.9.1.i = phi ptr [ %i.d, %bb.c ], [ %.sroa.5.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.5.0.copyload, %bb.d ] ; 2 uses
  %.sroa.20.0.i = phi i16 [ %2, %bb.c ], [ %.sroa.71.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.71.0.copyload, %bb.d ] ; 2 uses
  %.sroa.15.0.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.6.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.6.0.copyload, %bb.d ] ; 2 uses
  %.us-phi51.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.82.0.copyload, %.split.us.preheader.i.i.i.i ], [ %.sroa.82.0.copyload, %bb.d ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.20.0.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.split49.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i, %.split49.us.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i, %.split49.us.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !91404
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0.i, %.split49.us.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.p = phi ptr [ %.sroa.9.1.i, %.split49.us.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.20.0.i, %.split49.us.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  %i.w = add i64 %.us-phi51.i.i.i.i, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"

.split53.us.i.i.i.i:                              ; preds = %bb.d, %.split.i.i.i.i, %bb.c, %bb.b
  %.sroa.5.1.i = phi ptr [ null, %bb.b ], [ %.sroa.4.0.copyload, %bb.d ], [ %.sroa.4.0.copyload, %.split.i.i.i.i ], [ null, %bb.c ]
  %.sroa.242.0.i = phi i64 [ %.sroa.82.0.copyload, %bb.b ], [ 0, %bb.d ], [ %.sroa.82.0.copyload, %.split.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.20.1.i = phi i16 [ %.sroa.71.0.copyload, %bb.b ], [ %.sroa.71.0.copyload, %bb.d ], [ %.sroa.71.0.copyload, %.split.i.i.i.i ], [ %2, %bb.c ]
  %.sroa.15.2.i = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.6.0.copyload, %.split.i.i.i.i ], [ %i.f, %bb.c ]
  %.not.i2.i.i.i.i = icmp eq ptr %.sroa.9.0.copyload, null
  %i.x = icmp eq i64 %.sroa.124.0.copyload, 0
  %or.cond18.i = select i1 %.not.i2.i.i.i.i, i1 true, i1 %i.x
  br i1 %or.cond18.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.split53.us.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i = icmp eq i16 %.sroa.113.0.copyload, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i:                        ; preds = %bb.e, %.lr.ph.i.i.i.i.i7.i.i.i.i
  %i.y = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i7.i.i.i.i ], [ %.sroa.10.0.copyload, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i7.i.i.i.i ], [ %.sroa.9.0.copyload, %bb.e ]
  %.val11.i.i.i.i.i9.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !91405
  %i.aa = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i, %bb.e
  %.sroa.32.0.i = phi ptr [ %.sroa.10.0.copyload, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i.i7.i.i.i.i ]
  %.sroa.28.0.i = phi ptr [ %.sroa.9.0.copyload, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i.i7.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i = phi i16 [ %.sroa.113.0.copyload, %bb.e ], [ %.cast.i.i.i.i.i10.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i ] ; 3 uses
  %i.ad = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i, -1
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = and i16 %i.ad, %.lcssa.i.i.i.i.i5.i.i.i.i
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sroa.28.0.i, i64 %i.ah
  %i.aj = add i64 %.sroa.124.0.copyload, -1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i
  %.sroa.5.2.i = phi ptr [ %.sroa.5.1.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.5.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 7 uses
  %.sroa.9.4.i = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.p, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.385.0.i = phi i64 [ %i.aj, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.124.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 4 uses
  %.sroa.354.0.i = phi i16 [ %i.ag, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.113.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.32.1.i = phi ptr [ %.sroa.32.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.10.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 3 uses
  %.sroa.28.1.i = phi ptr [ %.sroa.28.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.9.0.copyload, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 4 uses
  %.sroa.242.1.i = phi i64 [ %.sroa.242.0.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.w, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 7 uses
  %.sroa.20.2.i = phi i16 [ %.sroa.20.1.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.t, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 5 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.2.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %.sroa.15.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.ai, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i ], [ %i.v, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i1.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8
  %.val.i.i = load i32, ptr %.sroa.0.0.i.i.i1.i, align 4, !noalias !91406, !noundef !46
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9.4.i, null ; 3 uses
  %.not51.i.i.i.i.i.i = icmp eq ptr %.sroa.28.1.i, null ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i, i64 0, i64 %.sroa.385.0.i ; 2 uses
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.242.1.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.al = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i, i64 %i.ak
  %i.am = tail call i64 @llvm.uadd.sat.i64(i64 %i.al, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.am, i64 4) ; 3 uses
  %i.an = shl i64 %.sroa.0.0.i.i.i.i, 2           ; 3 uses
  %i.ao = icmp ugt i64 %i.am, 4611686018427387903
  %i.ap = icmp ugt i64 %i.an, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !91407
  %i.aq = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, 9) 4) #66, !noalias !91407 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75, !noalias !91397
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store i32 %.val.i.i, ptr %i.aq, align 4, !noalias !91397
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.a, align 8, !noalias !91397
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !91397
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !91397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91409)
  br i1 %i.b, label %.split.us.preheader.i.i.i47.i.i.i, label %.split.i.i.i16.i.i.i

.split.us.preheader.i.i.i47.i.i.i:                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"
  %i.as = icmp eq i64 %.sroa.242.1.i, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i, label %bb.g, label %.split49.us.i.i.i18.i.i.i

bb.g:                                             ; preds = %.split.us.preheader.i.i.i47.i.i.i
  %.not.i.i.us.peel.i.i.i49.i.i.i = icmp eq ptr %.sroa.5.2.i, null
  br i1 %.not.i.i.us.peel.i.i.i49.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91410), !noalias !91411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91412), !noalias !91411
  %i.at = load ptr, ptr %.sroa.5.2.i, align 8, !alias.scope !91413, !noalias !91414, !nonnull !46, !noundef !46 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i = load <16 x i8>, ptr %i.at, align 16, !noalias !91415
  %i.au = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i50.i.i.i, splat (i8 -1)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !91413, !noalias !91414, !noundef !46 ; 2 uses
  %3 = bitcast <16 x i1> %i.au to i16             ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split.i.i.i16.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i.i.i"
  br i1 %.not.i.i.i.i.i.i, label %.split53.us.i.i.i36.i.i.i, label %bb.i

bb.i:                                             ; preds = %.split.i.i.i16.i.i.i
  %i.az = icmp eq i64 %.sroa.242.1.i, 0
  br i1 %i.az, label %.split53.us.i.i.i36.i.i.i, label %.split49.us.i.i.i18.i.i.i

.split49.us.i.i.i18.i.i.i:                        ; preds = %bb.i, %bb.h, %.split.us.preheader.i.i.i47.i.i.i
  %.sroa.53.0.i.i.i = phi ptr [ null, %bb.h ], [ %.sroa.5.2.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.5.2.i, %bb.i ]
  %.sroa.11.1.i.i.i = phi ptr [ %i.at, %bb.h ], [ %.sroa.9.4.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.9.4.i, %bb.i ] ; 2 uses
  %.sroa.30.0.i.i.i = phi i16 [ %3, %bb.h ], [ %.sroa.20.2.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.20.2.i, %bb.i ] ; 2 uses
  %.sroa.22.0.i.i.i = phi ptr [ %i.av, %bb.h ], [ %.sroa.15.3.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.15.3.i, %bb.i ] ; 2 uses
  %.us-phi51.i.i.i20.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.sroa.242.1.i, %.split.us.preheader.i.i.i47.i.i.i ], [ %.sroa.242.1.i, %bb.i ]
  %.not13.i.i.i.i.i.i.i.i21.i.i.i = icmp eq i16 %.sroa.30.0.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i

.lr.ph.i.i.i.i.i.i.i.i30.i.i.i:                   ; preds = %.split49.us.i.i.i18.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i
  %i.ba = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ], [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i32.i.i.i = load <16 x i8>, ptr %i.ba, align 16, !noalias !91416
  %i.bc = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i32.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i33.i.i.i = bitcast <16 x i1> %i.bc to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i34.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i33.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i, %.split49.us.i.i.i18.i.i.i
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.0.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ]
  %i.bf = phi ptr [ %.sroa.11.1.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i23.i.i.i = phi i16 [ %.sroa.30.0.i.i.i, %.split49.us.i.i.i18.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i33.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i30.i.i.i ] ; 3 uses
  %i.bg = add i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, -1
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i23.i.i.i, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = and i16 %i.bg, %.lcssa.i.i.i.i.i.i.i.i23.i.i.i
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = add i64 %.us-phi51.i.i.i20.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.split53.us.i.i.i36.i.i.i:                        ; preds = %bb.i, %.split.i.i.i16.i.i.i, %bb.h, %bb.g
  %.sroa.53.1.i.i.i = phi ptr [ null, %bb.g ], [ %.sroa.5.2.i, %bb.i ], [ %.sroa.5.2.i, %.split.i.i.i16.i.i.i ], [ null, %bb.h ]
  %.sroa.365.0.i.i.i = phi i64 [ %.sroa.242.1.i, %bb.g ], [ 0, %bb.i ], [ %.sroa.242.1.i, %.split.i.i.i16.i.i.i ], [ 0, %bb.h ]
  %.sroa.30.1.i.i.i = phi i16 [ %.sroa.20.2.i, %bb.g ], [ %.sroa.20.2.i, %bb.i ], [ %.sroa.20.2.i, %.split.i.i.i16.i.i.i ], [ %3, %bb.h ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.15.3.i, %bb.g ], [ %.sroa.15.3.i, %bb.i ], [ %.sroa.15.3.i, %.split.i.i.i16.i.i.i ], [ %i.av, %bb.h ]
  %i.bn = icmp eq i64 %.sroa.385.0.i, 0
  %or.cond36.i.i.i = select i1 %.not51.i.i.i.i.i.i, i1 true, i1 %i.bn
  br i1 %or.cond36.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %.split53.us.i.i.i36.i.i.i
  %.not13.i.i.i.i.i3.i.i.i38.i.i.i = icmp eq i16 %.sroa.354.0.i, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i38.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i:                  ; preds = %bb.j, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i
  %i.bo = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %.sroa.32.1.i, %bb.j ] ; 2 uses
  %i.bp = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ], [ %.sroa.28.1.i, %bb.j ]
  %.val11.i.i.i.i.i9.i.i.i43.i.i.i = load <16 x i8>, ptr %i.bo, align 16, !noalias !91417
  %i.bq = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i43.i.i.i, splat (i8 -1)
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i44.i.i.i = bitcast <16 x i1> %i.bq to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i45.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i44.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i45.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i, %bb.j
  %.sroa.50.0.i.i.i = phi ptr [ %.sroa.32.1.i, %bb.j ], [ %i.bs, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ]
  %.sroa.43.0.i.i.i = phi ptr [ %.sroa.28.1.i, %bb.j ], [ %i.br, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i = phi i16 [ %.sroa.354.0.i, %bb.j ], [ %.cast.i.i.i.i.i10.i.i.i44.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i41.i.i.i ] ; 3 uses
  %i.bt = add i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, -1
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.lcssa.i.i.i.i.i5.i.i.i40.i.i.i
  %i.bx = sub nsw i64 0, %i.bv
  %i.by = getelementptr inbounds [8 x i8], ptr %.sroa.43.0.i.i.i, i64 %i.bx
  %i.bz = add i64 %.sroa.385.0.i, -1
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i
  %.sroa.53.4.i.i.i.ph = phi ptr [ %.sroa.53.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.53.0.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.11.6.i.i.i.ph = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bf, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.5810.2.i.i.i.ph = phi i64 [ %i.bz, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.385.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.548.2.i.i.i.ph = phi i16 [ %i.bw, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.354.0.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.50.3.i.i.i.ph = phi ptr [ %.sroa.50.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.32.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.43.3.i.i.i.ph = phi ptr [ %.sroa.43.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.28.1.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.365.3.i.i.i.ph = phi i64 [ %.sroa.365.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bm, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.30.4.i.i.i.ph = phi i16 [ %.sroa.30.1.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bj, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.sroa.22.5.i.i.i.ph = phi ptr [ %.sroa.22.2.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %.sroa.22.1.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  %.pn.i25.pn.i.i.i.ph = phi ptr [ %i.by, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i39.i.i.i ], [ %i.bl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i22.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i
  %.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.53.4.i.i.i.ph54 = phi ptr [ %.sroa.53.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.53.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.11.6.i.i.i.ph55 = phi ptr [ %.sroa.11.6.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ null, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.5810.2.i.i.i.ph56 = phi i64 [ %.sroa.5810.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dt, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 3 uses
  %.sroa.548.2.i.i.i.ph57 = phi i16 [ %.sroa.548.2.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dq, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.50.3.i.i.i.ph58 = phi ptr [ %.sroa.50.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.50.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.sroa.43.3.i.i.i.ph59 = phi ptr [ %.sroa.43.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.43.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ] ; 4 uses
  %.sroa.365.3.i.i.i.ph60 = phi i64 [ %.sroa.365.3.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.365.4.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.30.4.i.i.i.ph61 = phi i16 [ %.sroa.30.4.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.30.6.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.sroa.22.5.i.i.i.ph62 = phi ptr [ %.sroa.22.5.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.22.8.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.ph63 = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.ph64 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.pn.i25.pn.i.i.i.ph65 = phi ptr [ %.pn.i25.pn.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ds, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i ]
  %.not51.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph59, null
  %.sroa.8.0.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.5810.2.i.i.i.ph56 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.outer, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i
  %i.ca = phi ptr [ %i.ci, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.outer ]
  %.sroa.53.4.i.i.i = phi ptr [ %.sroa.53.5.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i.ph54, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.11.6.i.i.i = phi ptr [ %i.cz, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i.ph55, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.sroa.365.3.i.i.i = phi i64 [ %i.dg, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.365.3.i.i.i.ph60, %.lr.ph.i.i.i.i.i.outer ] ; 7 uses
  %.sroa.30.4.i.i.i = phi i16 [ %i.dd, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i.ph61, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %.sroa.22.5.i.i.i = phi ptr [ %.sroa.22.7.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i.ph62, %.lr.ph.i.i.i.i.i.outer ] ; 5 uses
  %i.cb = phi i64 [ %i.cj, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph63, %.lr.ph.i.i.i.i.i.outer ] ; 3 uses
  %i.cc = phi i64 [ %i.cl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.pn.i25.pn.i.i.i = phi ptr [ %i.df, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i ], [ %.pn.i25.pn.i.i.i.ph65, %.lr.ph.i.i.i.i.i.outer ]
  %.val.i27.pn.in.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i, i64 -8
  %.val.i27.pn.i.i.i = load i32, ptr %.val.i27.pn.in.i.i.i, align 4, !noalias !91418, !noundef !46
  %i.cd = icmp samesign ult i64 %i.cc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp eq i64 %i.cc, %i.cb
  br i1 %i.ce, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null
  %i.cf = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.365.3.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i)
  %i.cg = select i1 %.not.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i, i64 %i.cf
  %i.ch = tail call i64 @llvm.uadd.sat.i64(i64 %i.cg, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cb, i64 noundef %i.ch, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !91397

.noexc.i.i.i:                                     ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i"
  %.pre1.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !76, !alias.scope !91411, !noalias !91397
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !91411, !noalias !91397
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ci = phi ptr [ %.pre.i.i.i, %.noexc.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cj = phi i64 [ %.pre1.i.i.i.i.i, %.noexc.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cc
  store i32 %.val.i27.pn.i.i.i, ptr %i.ck, align 4, !noalias !91419
  %i.cl = add nuw nsw i64 %i.cc, 1                ; 3 uses
  store i64 %i.cl, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !91411, !noalias !91397
  %.not.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.11.6.i.i.i, null ; 2 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"
  %i.cm = icmp eq i64 %.sroa.365.3.i.i.i, 0
  %or.cond35.i.i.i = select i1 %.not.i.us.peel.i.i.i.i.i.i, i1 true, i1 %i.cm
  br i1 %or.cond35.i.i.i, label %bb.k, label %.split49.us.i.i.i.i.i.i

bb.k:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %.not.i.i.us.peel.i.i.i.i.i.i = icmp eq ptr %.sroa.53.4.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91420), !noalias !91411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91421), !noalias !91411
  %i.cn = load ptr, ptr %.sroa.53.4.i.i.i, align 8, !alias.scope !91422, !noalias !91423, !nonnull !46, !noundef !46 ; 3 uses
  %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i = load <16 x i8>, ptr %i.cn, align 16, !noalias !91424
  %i.co = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.53.4.i.i.i, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !91422, !noalias !91423, !noundef !46 ; 2 uses
  %4 = bitcast <16 x i1> %i.co to i16             ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i.i.i.i.i"
  br i1 %.not.i.us.peel.i.i.i.i.i.i, label %.split53.us.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i.i.i
  %i.ct = icmp eq i64 %.sroa.365.3.i.i.i, 0
  br i1 %i.ct, label %.split53.us.i.i.i.i.i.i, label %.split49.us.i.i.i.i.i.i

.split49.us.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l, %.split.us.preheader.i.i.i.i.i.i
  %.sroa.53.5.i.i.i = phi ptr [ null, %bb.l ], [ %.sroa.53.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.53.4.i.i.i, %bb.m ]
  %.sroa.11.8.i.i.i = phi ptr [ %i.cn, %bb.l ], [ %.sroa.11.6.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.11.6.i.i.i, %bb.m ] ; 2 uses
  %.sroa.30.5.i.i.i = phi i16 [ %4, %bb.l ], [ %.sroa.30.4.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.30.4.i.i.i, %bb.m ] ; 2 uses
  %.sroa.22.6.i.i.i = phi ptr [ %i.cp, %bb.l ], [ %.sroa.22.5.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.22.5.i.i.i, %bb.m ] ; 2 uses
  %.us-phi51.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.l ], [ %.sroa.365.3.i.i.i, %.split.us.preheader.i.i.i.i.i.i ], [ %.sroa.365.3.i.i.i, %bb.m ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.30.5.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split49.us.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ] ; 2 uses
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cu, align 16, !noalias !91425
  %i.cw = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -128 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.split49.us.i.i.i.i.i.i
  %.sroa.22.7.i.i.i = phi ptr [ %.sroa.22.6.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cz = phi ptr [ %.sroa.11.8.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.30.5.i.i.i, %.split49.us.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.da = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.db = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = and i16 %i.da, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.de = sub nsw i64 0, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.de
  %i.dg = add i64 %.us-phi51.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i

.split53.us.i.i.i.i.i.i:                          ; preds = %bb.m, %.split.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.53.6.i.i.i = phi ptr [ null, %bb.k ], [ %.sroa.53.4.i.i.i, %bb.m ], [ %.sroa.53.4.i.i.i, %.split.i.i.i.i.i.i ], [ null, %bb.l ]
  %.sroa.365.4.i.i.i = phi i64 [ %.sroa.365.3.i.i.i, %bb.k ], [ 0, %bb.m ], [ %.sroa.365.3.i.i.i, %.split.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.sroa.30.6.i.i.i = phi i16 [ %.sroa.30.4.i.i.i, %bb.k ], [ %.sroa.30.4.i.i.i, %bb.m ], [ %.sroa.30.4.i.i.i, %.split.i.i.i.i.i.i ], [ %4, %bb.l ]
  %.sroa.22.8.i.i.i = phi ptr [ %.sroa.22.5.i.i.i, %bb.k ], [ %.sroa.22.5.i.i.i, %bb.m ], [ %.sroa.22.5.i.i.i, %.split.i.i.i.i.i.i ], [ %i.cp, %bb.l ]
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sroa.43.3.i.i.i.ph59, null
  %i.dh = icmp eq i64 %.sroa.5810.2.i.i.i.ph56, 0
  %or.cond37.i.i.i = select i1 %.not.i2.i.i.i.i.i.i, i1 true, i1 %i.dh
  br i1 %or.cond37.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %.split53.us.i.i.i.i.i.i
  %.not13.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i16 %.sroa.548.2.i.i.i.ph57, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i.i.i.i:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i
  %i.di = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.50.3.i.i.i.ph58, %bb.n ] ; 2 uses
  %i.dj = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ], [ %.sroa.43.3.i.i.i.ph59, %bb.n ]
  %.val11.i.i.i.i.i9.i.i.i.i.i.i = load <16 x i8>, ptr %i.di, align 16, !noalias !91426
  %i.dk = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i.i.i.i, splat (i8 -1)
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -128 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i.i.i.i = bitcast <16 x i1> %i.dk to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i, %bb.n
  %.sroa.50.4.i.i.i = phi ptr [ %.sroa.50.3.i.i.i.ph58, %bb.n ], [ %i.dm, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ]
  %.sroa.43.4.i.i.i = phi ptr [ %.sroa.43.3.i.i.i.ph59, %bb.n ], [ %i.dl, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i.i.i.i = phi i16 [ %.sroa.548.2.i.i.i.ph57, %bb.n ], [ %.cast.i.i.i.i.i10.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i.i.i.i.i.i ] ; 3 uses
  %i.dn = add i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, -1
  %i.do = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i.i.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = and i16 %i.dn, %.lcssa.i.i.i.i.i5.i.i.i.i.i.i
  %i.dr = sub nsw i64 0, %i.dp
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.43.4.i.i.i, i64 %i.dr
  %i.dt = add i64 %.sroa.5810.2.i.i.i.ph56, -1
  br label %.lr.ph.i.i.i.i.i.outer

bb.o:                                             ; preds = %.split53.us.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !91427
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.du, align 8, !alias.scope !91427
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dv, align 8, !alias.scope !91427
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit"

bb.p:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i.i.i.i.i"
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !91397 ; 2 uses
  %i.dx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dx, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !91397, !nonnull !46, !noundef !46
  %i.dy = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !91397
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i": ; preds = %.split53.us.i.i.i.i.i.i, %.split53.us.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !91428
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h25b1f5c4e4d5bdb5E.exit.i.i.i": ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.dw

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h58338b1312d5a406E.exit": ; preds = %bb.o, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hf6cc05d534a38614E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91397
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he67dfd50ceb62d95E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !91460 {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [184 x i8], align 8               ; 12 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91462
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91463)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !91462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91465)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(168) %1, i64 168, i1 false), !alias.scope !91466, !noalias !91467
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 6 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !91468, !noalias !91464
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76a1eab95653f9caE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91464 ; 2 uses

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %lpad.loopexit.split-lp5, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr876drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0fb3c306af91c268E"(ptr noalias noundef align 8 dereferenceable(184) %i.b) #77
          to label %.body.i.i.i unwind label %bb.u, !noalias !91469

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h, %bb.l, %bb.a
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.f, align 8, !alias.scope !91470, !noalias !91464
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !91470, !noalias !91464
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91464
  store i64 1, ptr %i.a, align 8, !noalias !91464
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !91464
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !91464
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !91464
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !91471
  %i.k = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91471 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !91464

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !91464

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91464
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !91464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91464
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !91463, !noalias !91462
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = load i64, ptr %i.f, align 8, !range !62, !alias.scope !91472, !noalias !91464, !noundef !46
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76a1eab95653f9caE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91469 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.f, align 8, !alias.scope !91472, !noalias !91464
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !91472, !noalias !91464
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !91464
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !91463, !noalias !91462, !noundef !46
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !51

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h46a49c17f8ca66d4E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr876drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h0fb3c306af91c268E"(ptr noalias noundef align 8 dereferenceable(184) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hc3a43f3c1fc3f036E.exit" unwind label %bb.v, !noalias !91462

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91469 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #75
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91469

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !62, !noalias !91469, !noundef !46
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !91463, !noalias !91462, !noundef !46
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8be6b85a6fd9dc65E"(ptr noalias noundef align 8 dereferenceable(184) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91469

end_hunk_0
