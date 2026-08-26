Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d9fac3f48dd14fE":bb.a
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E.exit.i": ; preds = %bb.b, %._crit_edge.i.i.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !175, !noalias !169
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !168, !noalias !169
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -24
  %.sroa.0.0.copyload1.i = load i64, ptr %i.u, align 8, !noalias !177 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload1.i, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775803, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E.exit.i"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h34a0b93b4cb770b1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.a, align 8, !noundef !26 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !178
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha853e8baef496a06E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.a, align 8, !noundef !26 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !181
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN103_$LT$meilisearch_auth..error..AuthControllerError$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h761d163c88c0125dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !184
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !184 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7ed365faafb4f64aE.exit", !prof !187

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hd6b0c83cf88cd8ceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #51
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7ed365faafb4f64aE.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @7, ptr %i.f, align 8
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0c1eeb37278d99cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !188, !nonnull !26, !align !191, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !203, !noalias !206, !noundef !26 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !203, !noalias !206, !noundef !26 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.e) ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !alias.scope !203, !noalias !206, !nonnull !26, !align !208, !noundef !26 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.k = sub nuw i64 %i.e, %.sroa.0.0.i.i.i.i.i.i
  store ptr %i.j, ptr %0, align 8, !alias.scope !203, !noalias !206
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !203, !noalias !206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !212, !noalias !213, !noundef !26 ; 3 uses
  %i.m = load i8, ptr %i.i, align 1, !alias.scope !209, !noalias !214, !noundef !26 ; 6 uses
  %i.n = shl i64 %i.l, 1                          ; 2 uses
  %i.o = add i8 %i.m, -65
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i8 %i.o, 6
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i8 %i.m, -97
  %or.cond1.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, 6
  br i1 %or.cond1.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = add nsw i8 %i.m, -55
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.r = add i8 %i.m, -48                         ; 2 uses
  %or.cond2.i.i.i.i.i.i.i.i = icmp ult i8 %i.r, 10
  br i1 %or.cond2.i.i.i.i.i.i.i.i, label %bb.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit"

bb.g:                                             ; preds = %bb.d
  %i.s = add nsw i8 %i.m, -87
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #50, !noalias !220
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.81.sroa.0.0.ph.i.i.i.i.i.i.i = phi i8 [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  %i.t = shl nuw i8 %.sroa.81.sroa.0.0.ph.i.i.i.i.i.i.i, 4
  %.not33.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 1
  br i1 %.not33.i.i.i.i.i.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !209, !noalias !214, !noundef !26 ; 6 uses
  %i.w = or disjoint i64 %i.n, 1
  %i.x = add i8 %i.v, -65
  %or.cond.i35.i.i.i.i.i.i.i = icmp ult i8 %i.x, 6
  br i1 %or.cond.i35.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i8 %i.v, -97
  %or.cond1.i36.i.i.i.i.i.i.i = icmp ult i8 %i.y, 6
  br i1 %or.cond1.i36.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.z = add nsw i8 %i.v, -55
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.aa = add i8 %i.v, -48                        ; 2 uses
  %or.cond2.i37.i.i.i.i.i.i.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond2.i37.i.i.i.i.i.i.i, label %bb.p, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit"

bb.n:                                             ; preds = %bb.k
  %i.ab = add nsw i8 %i.v, -87
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #50, !noalias !220
  unreachable

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit": ; preds = %bb.f, %bb.m
  %.sroa.6.0.ph.i.i.i.i.i.i = phi i8 [ %i.v, %bb.m ], [ %i.m, %bb.f ]
  %.sroa.13.0.ph.i.i.i.i.i.i = phi i64 [ %i.w, %bb.m ], [ %i.n, %bb.f ]
  store i32 0, ptr %i.b, align 8, !alias.scope !195, !noalias !221
  %.sroa.4.0..8.val.sroa_idx.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %.sroa.6.0.ph.i.i.i.i.i.i, ptr %.sroa.4.0..8.val.sroa_idx.i.i.i.i.i.i.i.a, align 4, !alias.scope !195, !noalias !221
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i24 0, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !195, !noalias !224
  %.sroa.5.sroa.4.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.13.0.ph.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !195, !noalias !224
  %i.ac = add i64 %i.l, 1
  store i64 %i.ac, ptr %i.c, align 8, !alias.scope !212, !noalias !213
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit.thread"

bb.p:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.83.sroa.0.0.ph.i.i.i.i.i.i.i = phi i8 [ %i.aa, %bb.m ], [ %i.ab, %bb.n ], [ %i.z, %bb.l ]
  %i.ad = or i8 %.sroa.83.sroa.0.0.ph.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.ae = add i64 %i.l, 1
  store i64 %i.ae, ptr %i.c, align 8, !alias.scope !212, !noalias !213
  %i.af = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.ad, 1
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit.thread"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit.thread": ; preds = %bb.a, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit", %bb.p
  %i.ag = phi { i1, i8 } [ %i.af, %bb.p ], [ { i1 false, i8 undef }, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit" ], [ { i1 false, i8 undef }, %bb.a ]
  %i.ah = phi i8 [ %i.ad, %bb.p ], [ undef, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E.exit" ], [ undef, %bb.a ]
  %i.ai = insertvalue { i1, i8 } %i.ag, i8 %i.ah, 1
  ret { i1, i8 } %i.ai
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h43f920edffadda4dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 3, 11) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfc1f4adfad914db0E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @15, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h37bddf87cc9010d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h8337412f25d33543E(i64 noundef range(i64 0, 8) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  store ptr @159, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @160, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9c538b6fcdda18d0E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @18, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h37bddf87cc9010d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hed664af27ca7ff13E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 3, 12) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfc1f4adfad914db0E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @20, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h37bddf87cc9010d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h319edde6b9ba94e8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @156, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 58, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfc1f4adfad914db0E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN60_$LT$serde_core..de..OneOf$u20$as$u20$core..fmt..Display$GT$3fmt17h038ee1569bb2850bE", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @23, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.k, align 8
  %i.l = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h37bddf87cc9010d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de9SeqAccess12next_element17h42ddb6f4a7292d49E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !230
  call fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h0542a0ab27d56229E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !225
  %i.l = load i8, ptr %i.k, align 8, !range !231, !noalias !230, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !230, !nonnull !26, !align !191, !noundef !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !225, !noalias !228
  store i32 1, ptr %0, align 8, !alias.scope !225, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !230
  br label %"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17hcc522dbd758328abE.exit"

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !231, !noalias !230, !noundef !26
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !230
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !alias.scope !225, !noalias !228
  store i32 0, ptr %0, align 8, !alias.scope !225, !noalias !228
  br label %"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17hcc522dbd758328abE.exit"

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %1, align 8, !alias.scope !228, !noalias !225, !nonnull !26, !align !191, !noundef !26 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
end_hunk_0
begin_hunk_1_@_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE:switch.lookup
    i32 -312, label %bb.d
    i32 -307, label %bb.d
    i32 -301, label %bb.d
    i32 -295, label %bb.d
    i32 -289, label %bb.d
    i32 -284, label %bb.d
    i32 -278, label %bb.d
    i32 -272, label %bb.d
    i32 -267, label %bb.d
    i32 -261, label %bb.d
    i32 -256, label %bb.d
    i32 -250, label %bb.d
    i32 -244, label %bb.d
    i32 -239, label %bb.d
    i32 -233, label %bb.d
    i32 -228, label %bb.d
    i32 -222, label %bb.d
    i32 -216, label %bb.d
    i32 -211, label %bb.d
    i32 -205, label %bb.d
    i32 -199, label %bb.d
    i32 -193, label %bb.d
    i32 -188, label %bb.d
    i32 -182, label %bb.d
    i32 -176, label %bb.d
    i32 -171, label %bb.d
    i32 -165, label %bb.d
    i32 -160, label %bb.d
    i32 -154, label %bb.d
    i32 -148, label %bb.d
    i32 -143, label %bb.d
    i32 -137, label %bb.d
    i32 -132, label %bb.d
    i32 -126, label %bb.d
    i32 -120, label %bb.d
    i32 -115, label %bb.d
    i32 -109, label %bb.d
    i32 -104, label %bb.d
    i32 -97, label %bb.d
    i32 -92, label %bb.d
    i32 -86, label %bb.d
    i32 -80, label %bb.d
    i32 -75, label %bb.d
    i32 -69, label %bb.d
    i32 -64, label %bb.d
    i32 -58, label %bb.d
    i32 -52, label %bb.d
    i32 -47, label %bb.d
    i32 -41, label %bb.d
    i32 -36, label %bb.d
    i32 -30, label %bb.d
    i32 -24, label %bb.d
    i32 -19, label %bb.d
    i32 -13, label %bb.d
    i32 -8, label %bb.d
    i32 -2, label %bb.d
    i32 4, label %bb.d
    i32 9, label %bb.d
    i32 15, label %bb.d
    i32 20, label %bb.d
    i32 26, label %bb.d
    i32 32, label %bb.d
    i32 37, label %bb.d
    i32 43, label %bb.d
    i32 48, label %bb.d
    i32 54, label %bb.d
    i32 60, label %bb.d
    i32 65, label %bb.d
    i32 71, label %bb.d
    i32 76, label %bb.d
    i32 82, label %bb.d
    i32 88, label %bb.d
    i32 93, label %bb.d
    i32 99, label %bb.d
    i32 105, label %bb.d
    i32 111, label %bb.d
    i32 116, label %bb.d
    i32 122, label %bb.d
    i32 128, label %bb.d
    i32 133, label %bb.d
    i32 139, label %bb.d
    i32 144, label %bb.d
    i32 150, label %bb.d
    i32 156, label %bb.d
    i32 161, label %bb.d
    i32 167, label %bb.d
    i32 172, label %bb.d
    i32 178, label %bb.d
    i32 184, label %bb.d
    i32 189, label %bb.d
    i32 195, label %bb.d
    i32 201, label %bb.d
    i32 207, label %bb.d
    i32 212, label %bb.d
    i32 218, label %bb.d
    i32 224, label %bb.d
    i32 229, label %bb.d
    i32 235, label %bb.d
    i32 240, label %bb.d
    i32 246, label %bb.d
    i32 252, label %bb.d
    i32 257, label %bb.d
    i32 263, label %bb.d
    i32 268, label %bb.d
    i32 274, label %bb.d
    i32 280, label %bb.d
    i32 285, label %bb.d
    i32 291, label %bb.d
    i32 296, label %bb.d
    i32 303, label %bb.d
    i32 308, label %bb.d
    i32 314, label %bb.d
    i32 320, label %bb.d
    i32 325, label %bb.d
    i32 331, label %bb.d
    i32 336, label %bb.d
    i32 342, label %bb.d
    i32 348, label %bb.d
    i32 353, label %bb.d
    i32 359, label %bb.d
    i32 364, label %bb.d
    i32 370, label %bb.d
    i32 376, label %bb.d
    i32 381, label %bb.d
    i32 387, label %bb.d
    i32 392, label %bb.d
    i32 398, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %switch.lookup, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e
  %.sroa.4.0 = phi i8 [ 1, %bb.e ], [ %i.u, %switch.lookup ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.b ], [ 53, %bb.c ], [ 52, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.aa, %bb.e ], [ %i.a, %switch.lookup ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.v, %bb.c ], [ %i.v, %bb.a ]
  %i.y = insertvalue { i32, i8 } poison, i32 %.sroa.0.0, 0
  %i.z = insertvalue { i32, i8 } %i.y, i8 %.sroa.4.0, 1
  ret { i32, i8 } %i.z

bb.e:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %i.a, 1
  br label %bb.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4time4date4Date17from_ordinal_date17h9f495018c115cbf9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 4), (16, 17)) %0, i32 noundef %1, i16 noundef %2) unnamed_addr #24 {
bb.a:
  %i.a = add i32 %1, -10000
  %or.cond = icmp ult i32 %i.a, -19999
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !282

bb.b:                                             ; preds = %bb.a
  store ptr @241, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.010.0 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = mul i32 %.sroa.010.0, 33555415
  %i.c = and i32 %i.b, 100695055
  %i.d = icmp samesign ult i32 %i.c, 31745        ; 2 uses
  %i.e = add i16 %2, -1
  %or.cond1 = icmp ult i16 %i.e, 365
  br i1 %or.cond1, label %bb.e, label %bb.d, !prof !270

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i16 %2, 366
  %brmerge.not = and i1 %i.f, %i.d
  br i1 %brmerge.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = shl nsw i32 %1, 10
  %i.h = select i1 %i.d, i32 512, i32 0
  %i.i = or disjoint i32 %i.h, %i.g
  %i.j = zext nneg i16 %2 to i32
  %i.k = or i32 %i.i, %i.j                        ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  store i32 %i.k, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr @266, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %.sroa.46.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sink = phi i8 [ 1, %bb.f ], [ 2, %bb.e ], [ 0, %bb.b ]
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.57.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %5 = alloca [24 x i8], align 8                  ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = load i16, ptr %1, align 8, !range !5892, !noundef !26
  switch i16 %i.d, label %default.unreachable52 [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.h
    i16 4, label %bb.i
  ]

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 4 uses
  %.not.i = icmp ugt i64 %i.f, %4
  br i1 %.not.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h01c6b8de2ac7f6fcE.exit.thread", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hab1b57d3f4ce0920E.exit.i"

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hab1b57d3f4ce0920E.exit.i": ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !26, !align !208, !noundef !26
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %3, ptr nonnull readonly align 1 %i.h, i64 %i.f), !alias.scope !7593
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.i, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h01c6b8de2ac7f6fcE.exit.thread"

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.020.0.copyload = load i48, ptr %i.j, align 2
  tail call void @_ZN4time7parsing6parsed6Parsed15parse_component17hb64ee193a727a576E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i48 %.sroa.020.0.copyload)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !26, !align !191, !noundef !26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !26 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 64, i1 false), !noalias !7607
  %.idx43 = mul nuw nsw i64 %i.n, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx43
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph39, %bb.g
  %.sroa.0.0.i2537 = phi ptr [ %3, %.lr.ph39 ], [ %i.u, %bb.g ]
  %.sroa.4.0.i36 = phi i64 [ %4, %.lr.ph39 ], [ %i.v, %bb.g ]
  %.sroa.020.0.i35 = phi ptr [ %i.l, %.lr.ph39 ], [ %i.t, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7603
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.020.0.i35, ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i2537, i64 noundef %.sroa.4.0.i36), !noalias !7608, !inline_history !7609
  %i.s = load i64, ptr %i.a, align 8, !range !269, !noalias !7603, !noundef !26 ; 2 uses
  %.not.i26 = icmp eq i64 %i.s, 3
  br i1 %.not.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.515.0.copyload.i = load ptr, ptr %i.q, align 8, !noalias !7603
  %.sroa.616.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !7603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7603
  store i64 %i.s, ptr %0, align 8, !alias.scope !7600, !noalias !7610
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.515.0.copyload.i, ptr %.sroa.218.0..sroa_idx.i, align 8, !alias.scope !7600, !noalias !7610
  %.sroa.319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.319.0..sroa_idx.i, align 8, !alias.scope !7600, !noalias !7610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7603
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i35, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !noalias !7603, !nonnull !26, !align !208, !noundef !26 ; 2 uses
  %i.v = load i64, ptr %i.r, align 8, !noalias !7603, !noundef !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7603
  %i.w = icmp eq ptr %i.t, %i.o
  br i1 %i.w, label %._crit_edge40, label %bb.e

._crit_edge40:                                    ; preds = %bb.g, %bb.d
  %.sroa.4.0.i.lcssa = phi i64 [ %4, %bb.d ], [ %i.v, %bb.g ]
  %.sroa.0.0.i25.lcssa = phi ptr [ %3, %bb.d ], [ %i.u, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i25.lcssa, ptr %i.x, align 8, !alias.scope !7600, !noalias !7610
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.lcssa, ptr %i.y, align 8, !alias.scope !7600, !noalias !7610
  store i64 3, ptr %0, align 8, !alias.scope !7600, !noalias !7610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7603
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !26, !align !191, !noundef !26
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !inline_history !7611
  %i.ab = load i64, ptr %i.c, align 8, !range !269, !noundef !26
  %.not23 = icmp eq i64 %i.ab, 3
  br i1 %.not23, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !26, !align !191, !noundef !26 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !26 ; 2 uses
  %.idx = mul nuw nsw i64 %i.af, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.r, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.m

bb.j:                                             ; preds = %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hab1b57d3f4ce0920E.exit.i"
  %i.ai = sub nuw i64 %4, %i.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.al, align 8
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h01c6b8de2ac7f6fcE.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h01c6b8de2ac7f6fcE.exit.thread": ; preds = %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hab1b57d3f4ce0920E.exit.i", %bb.b, %bb.j
  %storemerge = phi i64 [ 3, %bb.j ], [ 0, %bb.b ], [ 0, %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hab1b57d3f4ce0920E.exit.i" ]
  store i64 %storemerge, ptr %0, align 8
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit: ; preds = %._crit_edge40, %bb.f, %bb.k, %bb.l, %bb.s, %bb.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h01c6b8de2ac7f6fcE.exit.thread", %bb.c
  ret void

bb.k:                                             ; preds = %bb.h
  store i64 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.m:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.017.034 = phi ptr [ %i.ad, %.lr.ph ], [ %i.am, %bb.q ] ; 2 uses
  %.sroa.01.033 = phi i64 [ 3, %.lr.ph ], [ %.sroa.01.1, %bb.q ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.017.034, i64 24 ; 2 uses
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.034, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !inline_history !7611
  %i.an = load i64, ptr %5, align 8, !range !269, !noundef !26 ; 2 uses
  %.not = icmp eq i64 %i.an, 3
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not21 = icmp eq i64 %.sroa.01.033, 3
  br i1 %.not21, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.01.1 = phi i64 [ %i.an, %bb.p ], [ %.sroa.01.033, %bb.n ] ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.ag
  br i1 %i.ao, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.q
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.aq, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.sroa.01.0.lcssa.sink = phi i64 [ 3, %bb.r ], [ %.sroa.01.1, %._crit_edge ]
  store i64 %.sroa.01.0.lcssa.sink, ptr %0, align 8
  br label %_ZN4time7parsing6parsed6Parsed11parse_items17ha74a2829a317973bE.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @275, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7612)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7612, !noundef !26 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !27, !alias.scope !7615, !noundef !26
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i", !prof !28

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !7612
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i": ; preds = %bb.e, %bb.d
  %i.j = phi i64 [ %i.b, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !7612, !nonnull !26, !noundef !26
  %i.m = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i"
  %i.o = icmp samesign ult i32 %1, 2048
  %i.p = trunc i32 %1 to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128                ; 3 uses
  %i.s = lshr i32 %1, 6
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 2 uses
  %i.w = lshr i32 %1, 12
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = lshr i32 %1, 18
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -16
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i"
  %i.ad = trunc nuw nsw i32 %1 to i8
  store i8 %i.ad, ptr %i.n, align 1, !noalias !7612
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = or disjoint i8 %i.t, -64
  store i8 %i.ae, ptr %i.n, align 1, !noalias !7612
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.r, ptr %i.af, align 1, !noalias !7612
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %1, 65536
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = or disjoint i8 %i.x, -32
  store i8 %i.ah, ptr %i.n, align 1, !noalias !7612
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.v, ptr %i.ai, align 1, !noalias !7612
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.r, ptr %i.aj, align 1, !noalias !7612
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.ac, ptr %i.n, align 1, !noalias !7612
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.z, ptr %i.ak, align 1, !noalias !7612
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.v, ptr %i.al, align 1, !noalias !7612
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.r, ptr %i.am, align 1, !noalias !7612
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.an = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !7612
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd717793223240653E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7624)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7627, !noalias !7630, !noundef !26 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !27, !alias.scope !7627, !noalias !7630, !noundef !26
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !7630
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !7632, !noalias !7630
  br label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit

_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7632, !noalias !7630, !nonnull !26, !noundef !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !7632
  %i.k = add i64 %i.f, %2
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !7632, !noalias !7630
  ret i1 false
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17he34d0a4f52a6b454E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !1784, !noundef !26 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #49
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !26, !noundef !26
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #49
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #49
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17heb05182918d3105bE":bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8455, !noalias !8456
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h9fc1317c7d6ea272E.exit"

bb.gc:                                            ; preds = %bb.ft
  store i64 %.sroa.032.0.i.i, ptr %0, align 8, !alias.scope !8455, !noalias !8456
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.734.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !8455, !noalias !8456
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !8455, !noalias !8456
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h9fc1317c7d6ea272E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h9fc1317c7d6ea272E.exit": ; preds = %.loopexit.i.i, %bb.fo, %.thread53.i.i, %bb.gc
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$meilisearch_auth..store..KeyIdActionCodec$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h92f08245712203e7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 16
  br i1 %.not.i, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @358, ptr %i.c, align 8
  store i8 58, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 1, !noundef !26 ; 2 uses
  %i.f = tail call noundef i8 @_ZN17meilisearch_types4keys6Action9from_repr17h0e1a847c957b0ec1E(i8 noundef %i.e) ; 2 uses
  %.not37 = icmp eq i8 %i.f, 58
  br i1 %.not37, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @358, ptr %i.h, align 8
  store i8 58, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.i = add i64 %2, -17                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %..sroa.531.0.copyload = select i1 %i.j, ptr null, ptr %i.k
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i8 %i.f, ptr %0, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %..sroa.531.0.copyload, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.615.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49
  %i.l = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #49 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !187

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #50
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.h
  store i8 %i.e, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @360, ptr %i.o, align 8
  store i8 58, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define void @"_ZN86_$LT$meilisearch_auth..store..KeyIdActionCodec$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17h83ec92e6e399d510E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %i.c, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !26, !align !208, !noundef !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8709)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 16, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8712)
  %.val.i = load i64, ptr %i.a, align 8, !range !27, !alias.scope !8712, !noundef !26 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !8712, !nonnull !26, !noundef !26
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !8712
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit"

bb.d:                                             ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.c, align 8, !alias.scope !8715 ; 3 uses
  %i.g = icmp sgt i64 %.pre.i.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !8715, !nonnull !26, !noundef !26 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !8715
  %i.j = add nuw i64 %.pre.i.i, 16                ; 4 uses
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !8715
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !26, !align !208, !noundef !26
  %i.m = load i8, ptr %i.l, align 1, !range !3759, !noundef !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8719)
  %i.n = load i64, ptr %i.a, align 8, !range !27, !alias.scope !8722, !noundef !26
  %i.o = icmp eq i64 %i.n, %i.j
  br i1 %i.o, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %bb.e
  %.pre.i.i2 = load i64, ptr %i.c, align 8, !alias.scope !8725
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !8725
  br label %bb.f

bb.f:                                             ; preds = %.noexc3, %bb.d
  %i.p = phi ptr [ %i.h, %bb.d ], [ %.pre, %.noexc3 ] ; 2 uses
  %i.q = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i2, %.noexc3 ] ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 %i.m, ptr %i.s, align 1, !noalias !8725
  %i.t = add nuw i64 %i.q, 1                      ; 4 uses
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !8725
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !align !208, !noundef !26 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8729)
  %i.y = load i64, ptr %i.a, align 8, !range !27, !alias.scope !8732, !noundef !26
  %i.z = sub i64 %i.y, %i.t
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E.exit7", !prof !28

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.t, i64 noundef %i.x, i64 noundef 1, i64 noundef 1)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %bb.h
  %.pre.i.i5 = load i64, ptr %i.c, align 8, !alias.scope !8735
  %.pre8 = load ptr, ptr %i.b, align 8, !alias.scope !8735
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E.exit7"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E.exit7": ; preds = %bb.g, %.noexc6
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %.pre8, %.noexc6 ]
  %i.ac = phi i64 [ %i.t, %bb.g ], [ %.pre.i.i5, %.noexc6 ] ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.v, i64 %i.x, i1 false), !noalias !8735
  %i.af = add i64 %i.ac, %i.x
  store i64 %i.af, ptr %i.c, align 8, !alias.scope !8735
  br label %bb.i

bb.i:                                             ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E.exit7", %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8434b47c471ef2dbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.11.sroa.0 = alloca [24 x i8], align 8    ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = mul i64 %2, 72                           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %2, 128102389400760775
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !1056

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.thread", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.g = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.thread

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !8736
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #49, !noalias !8736 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #50
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit": ; preds = %bb.b
  store i64 %2, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %.sroa.014.059 = phi ptr [ %1, %.lr.ph ], [ %i.u, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit" ] ; 14 uses
  %.sroa.7.057 = phi i64 [ 0, %.lr.ph ], [ %i.v, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit" ] ; 3 uses
  %.sroa.10.056 = phi i64 [ %2, %.lr.ph ], [ %i.r, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit" ]
  %i.q = phi <2 x i64> [ undef, %.lr.ph ], [ %i.al, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit" ] ; 3 uses
  %i.r = add nsw i64 %.sroa.10.056, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.014.059, %i.n
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit", %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.thread", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.thread" ], [ %i.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit" ], [ %i.m, %bb.d ], [ %i.m, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit" ]
  store i64 %2, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit:                                        ; preds = %bb.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 72
  %i.v = add nuw nsw i64 %.sroa.7.057, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !8741)
  call void @llvm.experimental.noalias.scope.decl(metadata !8744)
  %i.w = load i64, ptr %.sroa.014.059, align 8, !range !4993, !alias.scope !8744, !noalias !8741, !noundef !26 ; 4 uses
  %i.x = xor i64 %i.w, -9223372036854775808
  %i.y = icmp slt i64 %i.w, 0
  %i.z = select i1 %i.y, i64 %i.x, i64 5
  switch i64 %i.z, label %bb.f [
    i64 0, label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx21, i64 24, i1 false)
  %.sroa.11.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx24, i64 24, i1 false)
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 56
  %i.aa = load <2 x i64>, ptr %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx24.sroa_idx, align 8, !alias.scope !8746
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.h:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx20, i64 24, i1 false)
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx23, i64 24, i1 false)
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 56
  %i.ab = load <2 x i64>, ptr %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx23.sroa_idx, align 8, !alias.scope !8746
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8746
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282)
          to label %.noexc unwind label %.loopexit, !inline_history !998

.noexc:                                           ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8746
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8746
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !8747, !noalias !8750, !nonnull !26, !noundef !26
  %i.ag = load i64, ptr %i.ad, align 8, !alias.scope !8747, !noalias !8750, !noundef !26
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8434b47c471ef2dbE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ag)
          to label %.noexc12 unwind label %.loopexit, !inline_history !998

.noexc12:                                         ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8746
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.k:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !8752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @70, i64 32, i1 false), !noalias !8755
  store i64 0, ptr %i.a, align 8, !noalias !8755
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8755
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8755
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he05d9a1732a54618E"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.014.059)
          to label %.noexc13 unwind label %bb.l, !noalias !8760, !inline_history !8761

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h78d2e17fe867e085E"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #51
          to label %bb.o unwind label %bb.m, !noalias !8760, !inline_history !8761

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !8760, !inline_history !8761
  unreachable

.noexc13:                                         ; preds = %bb.k
  %.sroa.042.0.copyload = load i64, ptr %i.a, align 8, !noalias !8762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.544.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8755
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.059, i64 56
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !8752, !noalias !8763
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %.noexc13, %.noexc12, %.noexc, %bb.h, %bb.g, %bb.e
  %.sroa.015.0 = phi i64 [ %.sroa.042.0.copyload, %.noexc13 ], [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ -9223372036854775805, %.noexc ], [ -9223372036854775804, %.noexc12 ], [ -9223372036854775808, %bb.e ]
  %i.al = phi <2 x i64> [ %i.ak, %.noexc13 ], [ %i.aa, %bb.g ], [ %i.ab, %bb.h ], [ %i.q, %.noexc ], [ %i.q, %.noexc12 ], [ %i.q, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.7.057 ; 4 uses
  store i64 %.sroa.015.0, ptr %i.am, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, i64 24, i1 false)
  %.sroa.530.sroa.4.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store <2 x i64> %i.al, ptr %.sroa.530.sroa.4.0..sroa.530.0..sroa_idx.sroa_idx, align 8
  %i.an = icmp eq i64 %i.r, 0
  br i1 %i.an, label %.thread, label %bb.d

bb.n:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

bb.o:                                             ; preds = %.loopexit, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.057, ptr %i.m, align 8, !alias.scope !8764
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h71f446569c0fd2ebE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #51
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 24 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 23 uses
  %i.g = alloca [64 x i8], align 16               ; 37 uses
  %i.h = alloca [32 x i8], align 16               ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.9.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.0121.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [4 x i8], align 4                ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [1 x i8], align 1                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [1 x i8], align 1                ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [1 x i8], align 1                ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 15 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [64 x i8], align 8               ; 32 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !8767
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  store ptr %1, ptr %i.bt, align 8, !noalias !8771
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !8771
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 26 uses
  store i64 0, ptr %i.br, align 8, !noalias !8767
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8767
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8767
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 57 ; 7 uses
  store i8 -128, ptr %i.bu, align 1, !noalias !8767
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 3 uses
  store i8 0, ptr %i.bv, align 8, !noalias !8767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8778)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.bw = phi i64 [ %i.bz, %bb.b ], [ 0, %bb.a ]  ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !8781, !noundef !26
  switch i8 %i.by, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i" [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 110, label %bb.jb
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bz = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8788, !noalias !8791
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bz, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.promoted.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.bw, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8801)
  %i.ca = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %2
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i", %bb.c
  %i.cb = phi i64 [ %i.ce, %bb.c ], [ %.promoted.i.i.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i" ] ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !8804, !noundef !26 ; 2 uses
  switch i8 %i.cd, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ex
    i8 123, label %bb.im
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8812, !noalias !8815
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.b, %bb.c, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !8816
  store i64 5, ptr %i.bq, align 8, !noalias !8816
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bq)
          to label %.noexc.i unwind label %bb.jj, !noalias !8767

.noexc.i:                                         ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !8816
  br label %.noexc19.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cg = add i8 %i.cd, -48
  %or.cond4.i.i.i.i.i.i = icmp ult i8 %i.cg, 10
  br i1 %or.cond4.i.i.i.i.i.i, label %bb.iu, label %bb.it, !prof !270

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ch = add i64 %i.cb, 1                        ; 4 uses
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8817, !noalias !8820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8824)
  %exitcond.not.i66.not.i.i.i.i.i.i = icmp ult i64 %i.ch, %2
  br i1 %exitcond.not.i66.not.i.i.i.i.i.i, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !8827, !noundef !26
  %i.ck = add i64 %i.cb, 2                        ; 3 uses
  store i64 %i.ck, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8830, !noalias !8831
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cj, 117
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.k, !prof !527

end_hunk_2
begin_hunk_3_@llvm.bswap.v4i32
!21 = !{!22, !23, !24, !4}
!22 = distinct !{!22, !11, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!23 = distinct !{!23, !8, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!24 = distinct !{!24, !25, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!25 = distinct !{!25, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!26 = !{}
!27 = !{i64 0, i64 -9223372036854775808}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!16, !13, !10, !7}
!30 = !{!16, !13, !10, !7, !4}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN10serde_json3ser27format_escaped_str_contents17ha15d22b089a5fb92E: argument 0"}
!33 = distinct !{!33, !"_ZN10serde_json3ser27format_escaped_str_contents17ha15d22b089a5fb92E"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 0"}
!36 = distinct !{!36, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 0"}
!39 = distinct !{!39, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E: argument 0"}
!42 = distinct !{!42, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE: argument 0"}
!45 = distinct !{!45, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE"}
!46 = !{!47, !44, !41, !38, !35}
!47 = distinct !{!47, !48, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E: argument 0"}
!48 = distinct !{!48, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E"}
!49 = !{!50, !51, !52, !54, !32, !4}
!50 = distinct !{!50, !39, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!51 = distinct !{!51, !36, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!52 = distinct !{!52, !53, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!53 = distinct !{!53, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!54 = distinct !{!54, !55, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h28629a838e84840fE: argument 0"}
!55 = distinct !{!55, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h28629a838e84840fE"}
!56 = !{!44, !41, !38, !35}
!57 = !{!32, !4}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 0"}
!60 = distinct !{!60, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 0"}
!63 = distinct !{!63, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E: argument 0"}
!66 = distinct !{!66, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE: argument 0"}
!69 = distinct !{!69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE"}
!70 = !{!71, !68, !65, !62, !59}
!71 = distinct !{!71, !72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E: argument 0"}
!72 = distinct !{!72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E"}
!73 = !{!74, !75, !76, !78, !32, !4}
!74 = distinct !{!74, !63, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!75 = distinct !{!75, !60, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!76 = distinct !{!76, !77, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!77 = distinct !{!77, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!78 = distinct !{!78, !79, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h28629a838e84840fE: argument 0"}
!79 = distinct !{!79, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h28629a838e84840fE"}
!80 = !{!68, !65, !62, !59}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 0"}
!83 = distinct !{!83, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 0"}
!86 = distinct !{!86, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E: argument 0"}
!89 = distinct !{!89, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE: argument 0"}
!92 = distinct !{!92, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE"}
!93 = !{!94, !91, !88, !85, !82}
!94 = distinct !{!94, !95, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E: argument 0"}
!95 = distinct !{!95, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E"}
!96 = !{!97, !98, !99, !32, !4}
!97 = distinct !{!97, !86, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!98 = distinct !{!98, !83, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!99 = distinct !{!99, !100, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!100 = distinct !{!100, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!101 = !{!91, !88, !85, !82}
!102 = !{!91, !88, !85, !82, !32, !4}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 0"}
!105 = distinct !{!105, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 0"}
!108 = distinct !{!108, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E: argument 0"}
!111 = distinct !{!111, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE: argument 0"}
!114 = distinct !{!114, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE"}
!115 = !{!116, !113, !110, !107, !104}
!116 = distinct !{!116, !117, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E: argument 0"}
!117 = distinct !{!117, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E"}
!118 = !{!119, !120, !121, !32, !4}
!119 = distinct !{!119, !108, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!120 = distinct !{!120, !105, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!121 = distinct !{!121, !122, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!122 = distinct !{!122, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!123 = !{!113, !110, !107, !104}
!124 = !{!113, !110, !107, !104, !32, !4}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 0"}
!127 = distinct !{!127, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 0"}
!130 = distinct !{!130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E: argument 0"}
!133 = distinct !{!133, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h97e58f81dcab03f3E"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE: argument 0"}
!136 = distinct !{!136, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h92549257aeee1eadE"}
!137 = !{!138, !135, !132, !129, !126}
!138 = distinct !{!138, !139, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E: argument 0"}
!139 = distinct !{!139, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E"}
!140 = !{!141, !142, !143, !4}
!141 = distinct !{!141, !130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h246b2036a65e1eafE: argument 1"}
!142 = distinct !{!142, !127, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E: argument 1"}
!143 = distinct !{!143, !144, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE: argument 0"}
!144 = distinct !{!144, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE"}
!145 = !{!135, !132, !129, !126}
!146 = !{!135, !132, !129, !126, !4}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec1008c52733d792E: argument 1"}
!149 = distinct !{!149, !"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec1008c52733d792E"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h888f3bbf25289771E: argument 1"}
!152 = distinct !{!152, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h888f3bbf25289771E"}
!153 = !{!151, !148}
!154 = !{!155, !156}
!155 = distinct !{!155, !152, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h888f3bbf25289771E: argument 0"}
!156 = distinct !{!156, !149, !"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec1008c52733d792E: argument 0"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hbce3859d47148fddE: argument 0"}
!159 = distinct !{!159, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hbce3859d47148fddE"}
!160 = !{!158, !151, !148}
!161 = !{!158, !155, !151, !156, !148}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf714c040d0b5438dE: argument 1"}
!164 = distinct !{!164, !"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf714c040d0b5438dE"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E: argument 1"}
!167 = distinct !{!167, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E"}
!168 = !{!166, !163}
!169 = !{!170, !171}
!170 = distinct !{!170, !167, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h948f462323a482f4E: argument 0"}
!171 = distinct !{!171, !164, !"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf714c040d0b5438dE: argument 0"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h83a68c409d8f94c6E: argument 0"}
!174 = distinct !{!174, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h83a68c409d8f94c6E"}
!175 = !{!173, !166, !163}
!176 = !{!173, !170, !166, !171, !163}
!177 = !{!166, !171, !163}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6a3a5783ba77223aE: argument 0"}
!180 = distinct !{!180, !"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6a3a5783ba77223aE"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h654df179104d62dbE: argument 0"}
!183 = distinct !{!183, !"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h654df179104d62dbE"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7ed365faafb4f64aE: argument 0"}
!186 = distinct !{!186, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7ed365faafb4f64aE"}
!187 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E: argument 0"}
!190 = distinct !{!190, !"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1a86152ee3ee5178E"}
!191 = !{i64 8}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9702a45bf1f5b7e4E: argument 0"}
!194 = distinct !{!194, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9702a45bf1f5b7e4E"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9702a45bf1f5b7e4E: argument 1"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h41525cc709c50111E: argument 0"}
!199 = distinct !{!199, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h41525cc709c50111E"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h297f96f1f655b354E: argument 0"}
!202 = distinct !{!202, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h297f96f1f655b354E"}
!203 = !{!204, !201, !198, !193, !189}
!204 = distinct !{!204, !205, !"_ZN93_$LT$core..slice..iter..Chunks$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h259c0581d717630fE: argument 0"}
!205 = distinct !{!205, !"_ZN93_$LT$core..slice..iter..Chunks$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h259c0581d717630fE"}
!206 = !{!207, !196}
!207 = distinct !{!207, !199, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h41525cc709c50111E: argument 1"}
!208 = !{i64 1}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17ha0827c577b3e6a08E: argument 0"}
!211 = distinct !{!211, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17ha0827c577b3e6a08E"}
!212 = !{!198, !193, !189}
!213 = !{!210, !201, !207, !196}
!214 = !{!215, !217, !218, !201, !198, !207, !193, !196, !189}
!215 = distinct !{!215, !216, !"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex28_$u7b$$u7b$closure$u7d$$u7d$17hd3709e51b3c666b4E: argument 0"}
!216 = distinct !{!216, !"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex28_$u7b$$u7b$closure$u7d$$u7d$17hd3709e51b3c666b4E"}
!217 = distinct !{!217, !216, !"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex28_$u7b$$u7b$closure$u7d$$u7d$17hd3709e51b3c666b4E: argument 1"}
!218 = distinct !{!218, !219, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9a516a7ff601136bE: argument 0"}
!219 = distinct !{!219, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9a516a7ff601136bE"}
!220 = !{!215, !217, !218, !210, !201, !198, !207, !193, !196, !189}
!221 = !{!222, !218, !210, !201, !198, !207, !193, !189}
!222 = distinct !{!222, !223, !"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e03074891df0102E: argument 0"}
!223 = distinct !{!223, !"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e03074891df0102E"}
!224 = !{!218, !210, !201, !198, !207, !193, !189}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17hcc522dbd758328abE: argument 0"}
!227 = distinct !{!227, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17hcc522dbd758328abE"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17hcc522dbd758328abE: argument 1"}
!230 = !{!226, !229}
!231 = !{i8 0, i8 2}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbc17bb60b627af31E: argument 1"}
!234 = distinct !{!234, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbc17bb60b627af31E"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3398698b2ea90d41E: argument 1"}
!237 = distinct !{!237, !"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3398698b2ea90d41E"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_u3217h824ff716d387fe75E: argument 1"}
!240 = distinct !{!240, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_u3217h824ff716d387fe75E"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17he3943a57f068fe47E: argument 1"}
!243 = distinct !{!243, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17he3943a57f068fe47E"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E: argument 1"}
!246 = distinct !{!246, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E"}
!247 = !{!248, !245, !242, !239, !236, !233}
!248 = distinct !{!248, !249, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E: argument 1"}
!249 = distinct !{!249, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E"}
!250 = !{!251, !252, !253, !254, !255, !256, !226, !229}
!251 = distinct !{!251, !249, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E: argument 0"}
!252 = distinct !{!252, !246, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E: argument 0"}
!253 = distinct !{!253, !243, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17he3943a57f068fe47E: argument 0"}
!254 = distinct !{!254, !240, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_u3217h824ff716d387fe75E: argument 0"}
!255 = distinct !{!255, !237, !"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3398698b2ea90d41E: argument 0"}
!256 = distinct !{!256, !234, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbc17bb60b627af31E: argument 0"}
!257 = !{!245, !242, !239, !236, !233}
!258 = !{!252, !253, !254, !255, !256, !226, !229}
!259 = !{!248}
!260 = !{!251, !248, !252, !245, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!261 = !{!262, !245, !242, !239, !236, !233}
!262 = distinct !{!262, !263, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE: argument 0"}
!263 = distinct !{!263, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE"}
!264 = !{!253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!265 = !{!253, !254, !255, !256, !226, !229}
!266 = !{!267, !242, !239, !236, !233}
!267 = distinct !{!267, !268, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE: argument 0"}
!268 = distinct !{!268, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE"}
!269 = !{i64 0, i64 4}
!270 = !{!"branch_weights", i32 4000000, i32 4001}
!271 = !{!272, !274, !276, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!272 = distinct !{!272, !273, !"_ZN10serde_core2de7Visitor9visit_f6417hfbb077a40e096501E: argument 0"}
!273 = distinct !{!273, !"_ZN10serde_core2de7Visitor9visit_f6417hfbb077a40e096501E"}
!274 = distinct !{!274, !275, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE: argument 0"}
!275 = distinct !{!275, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE"}
!276 = distinct !{!276, !275, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE: argument 1"}
!277 = !{!272, !274, !276, !253, !254, !255, !256, !226, !229}
!278 = !{!279, !274, !276, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!279 = distinct !{!279, !280, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h920b37907175389aE: argument 0"}
!280 = distinct !{!280, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h920b37907175389aE"}
!281 = !{!279, !274, !276, !253, !254, !255, !256, !226, !229}
!282 = !{!"branch_weights", i32 4001, i32 4000000}
!283 = !{!284, !274, !276, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!284 = distinct !{!284, !285, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h318ed9920f0492f8E: argument 0"}
!285 = distinct !{!285, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h318ed9920f0492f8E"}
!286 = !{!284, !274, !276, !253, !254, !255, !256, !226, !229}
!287 = !{!288, !290, !292, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!288 = distinct !{!288, !289, !"_ZN10serde_core2de7Visitor9visit_f6417hfbb077a40e096501E: argument 0"}
!289 = distinct !{!289, !"_ZN10serde_core2de7Visitor9visit_f6417hfbb077a40e096501E"}
!290 = distinct !{!290, !291, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE: argument 0"}
!291 = distinct !{!291, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE"}
!292 = distinct !{!292, !291, !"_ZN10serde_json2de12ParserNumber5visit17h89ce70c066550d5dE: argument 1"}
!293 = !{!288, !290, !292, !253, !254, !255, !256, !226, !229}
!294 = !{!295, !290, !292, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!295 = distinct !{!295, !296, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h920b37907175389aE: argument 0"}
!296 = distinct !{!296, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h920b37907175389aE"}
!297 = !{!295, !290, !292, !253, !254, !255, !256, !226, !229}
!298 = !{!299, !290, !292, !253, !242, !254, !239, !255, !236, !256, !233, !226, !229}
!299 = distinct !{!299, !300, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h318ed9920f0492f8E: argument 0"}
!300 = distinct !{!300, !"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h318ed9920f0492f8E"}
!301 = !{!299, !290, !292, !253, !254, !255, !256, !226, !229}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h61afbb903378fc44E: argument 0"}
!304 = distinct !{!304, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h61afbb903378fc44E"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h61afbb903378fc44E: argument 1"}
!307 = !{!303, !306}
!308 = !{!309, !311, !312, !314, !303, !306}
!309 = distinct !{!309, !310, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h095f3e0513f2357dE: argument 0"}
!310 = distinct !{!310, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h095f3e0513f2357dE"}
!311 = distinct !{!311, !310, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h095f3e0513f2357dE: argument 1"}
!312 = distinct !{!312, !313, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha055d4799fdf91f9E: argument 0"}
!313 = distinct !{!313, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha055d4799fdf91f9E"}
!314 = distinct !{!314, !313, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha055d4799fdf91f9E: argument 1"}
!315 = !{!309, !312, !303, !306}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h3a24869ee14d30ccE: argument 0"}
!318 = distinct !{!318, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h3a24869ee14d30ccE"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h3a24869ee14d30ccE: argument 1"}
!321 = !{!317, !320}
!322 = !{!323, !325, !326, !328, !317, !320}
!323 = distinct !{!323, !324, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfeda30ab722060f8E: argument 0"}
!324 = distinct !{!324, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfeda30ab722060f8E"}
!325 = distinct !{!325, !324, !"_ZN258_$LT$$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfeda30ab722060f8E: argument 1"}
!326 = distinct !{!326, !327, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9eb55d6bc0b528b8E: argument 0"}
!327 = distinct !{!327, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9eb55d6bc0b528b8E"}
!328 = distinct !{!328, !327, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9eb55d6bc0b528b8E: argument 1"}
!329 = !{!323, !326, !317, !320}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17he24747d7364219f9E: argument 0"}
!332 = distinct !{!332, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17he24747d7364219f9E"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17he24747d7364219f9E: argument 1"}
!335 = !{!331, !334}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h90aa6b9691db1867E: argument 1"}
!338 = distinct !{!338, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h90aa6b9691db1867E"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h167af68c206fe849E: argument 1"}
!341 = distinct !{!341, !"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h167af68c206fe849E"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817h14e6e16d4710b1a1E: argument 1"}
!344 = distinct !{!344, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817h14e6e16d4710b1a1E"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h904f3f5ae3586732E: argument 1"}
!347 = distinct !{!347, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h904f3f5ae3586732E"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E: argument 1"}
!350 = distinct !{!350, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E"}
!351 = !{!352, !349, !346, !343, !340, !337}
!352 = distinct !{!352, !353, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E: argument 1"}
!353 = distinct !{!353, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E"}
!354 = !{!355, !356, !357, !358, !359, !360, !331, !334}
!355 = distinct !{!355, !353, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h803bb79e51bc0f79E: argument 0"}
!356 = distinct !{!356, !350, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E: argument 0"}
!357 = distinct !{!357, !347, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h904f3f5ae3586732E: argument 0"}
!358 = distinct !{!358, !344, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817h14e6e16d4710b1a1E: argument 0"}
!359 = distinct !{!359, !341, !"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$11deserialize17h167af68c206fe849E: argument 0"}
!360 = distinct !{!360, !338, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h90aa6b9691db1867E: argument 0"}
!361 = !{!349, !346, !343, !340, !337}
!362 = !{!356, !357, !358, !359, !360, !331, !334}
!363 = !{!352}
!364 = !{!355, !352, !356, !349, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!365 = !{!366, !349, !346, !343, !340, !337}
!366 = distinct !{!366, !367, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE: argument 0"}
!367 = distinct !{!367, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE"}
!368 = !{!357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!369 = !{!357, !358, !359, !360, !331, !334}
!370 = !{!371, !346, !343, !340, !337}
!371 = distinct !{!371, !372, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE: argument 0"}
!372 = distinct !{!372, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17hc4c245e68ffc06dcE"}
!373 = !{!374, !376, !378, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!374 = distinct !{!374, !375, !"_ZN10serde_core2de7Visitor9visit_f6417h2763570b5b00a782E: argument 0"}
!375 = distinct !{!375, !"_ZN10serde_core2de7Visitor9visit_f6417h2763570b5b00a782E"}
!376 = distinct !{!376, !377, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E: argument 0"}
!377 = distinct !{!377, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E"}
!378 = distinct !{!378, !377, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E: argument 1"}
!379 = !{!374, !376, !378, !357, !358, !359, !360, !331, !334}
!380 = !{!381, !376, !378, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!381 = distinct !{!381, !382, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h6a380857c42b10b6E: argument 0"}
!382 = distinct !{!382, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h6a380857c42b10b6E"}
!383 = !{!381, !376, !378, !357, !358, !359, !360, !331, !334}
!384 = !{!385, !376, !378, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!385 = distinct !{!385, !386, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h54d52e073b6221b2E: argument 0"}
!386 = distinct !{!386, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h54d52e073b6221b2E"}
!387 = !{!385, !376, !378, !357, !358, !359, !360, !331, !334}
!388 = !{!389, !391, !393, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!389 = distinct !{!389, !390, !"_ZN10serde_core2de7Visitor9visit_f6417h2763570b5b00a782E: argument 0"}
!390 = distinct !{!390, !"_ZN10serde_core2de7Visitor9visit_f6417h2763570b5b00a782E"}
!391 = distinct !{!391, !392, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E: argument 0"}
!392 = distinct !{!392, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E"}
!393 = distinct !{!393, !392, !"_ZN10serde_json2de12ParserNumber5visit17hecfcba5a8002e400E: argument 1"}
!394 = !{!389, !391, !393, !357, !358, !359, !360, !331, !334}
!395 = !{!396, !391, !393, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!396 = distinct !{!396, !397, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h6a380857c42b10b6E: argument 0"}
!397 = distinct !{!397, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h6a380857c42b10b6E"}
!398 = !{!396, !391, !393, !357, !358, !359, !360, !331, !334}
!399 = !{!400, !391, !393, !357, !346, !358, !343, !359, !340, !360, !337, !331, !334}
!400 = distinct !{!400, !401, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h54d52e073b6221b2E: argument 0"}
!401 = distinct !{!401, !"_ZN157_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u8$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_i6417h54d52e073b6221b2E"}
!402 = !{!400, !391, !393, !357, !358, !359, !360, !331, !334}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h1f1c3549ff017b06E: argument 0"}
!405 = distinct !{!405, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h1f1c3549ff017b06E"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed17h1f1c3549ff017b06E: argument 1"}
!408 = !{!404, !407}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h558611e8fc495045E: argument 1"}
!411 = distinct !{!411, !"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h558611e8fc495045E"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i8$GT$11deserialize17hdae899324e2702efE: argument 1"}
!414 = distinct !{!414, !"_ZN10serde_core2de5impls60_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i8$GT$11deserialize17hdae899324e2702efE"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_i817h56d061c3c4172cc3E: argument 1"}
!417 = distinct !{!417, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_i817h56d061c3c4172cc3E"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hc85ea1f1c1f1ffa6E: argument 1"}
!420 = distinct !{!420, !"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hc85ea1f1c1f1ffa6E"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E: argument 1"}
!423 = distinct !{!423, !"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E"}
!424 = !{!425, !422, !419, !416, !413, !410}
end_hunk_3
