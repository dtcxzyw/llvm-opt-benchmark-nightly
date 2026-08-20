inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN115_$LT$meilisearch..routes..tasks..TaskFilterAnalytics$LT$Method$GT$$u20$as$u20$meilisearch..analytics..Aggregate$GT$10into_event17he159a2c16e05f373E":bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !85618
  unreachable

bb.ac:                                            ; preds = %bb.af, %bb.z, %bb.y, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.thread:                                          ; preds = %bb.b, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85618
  br label %bb.af

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85618
  %.pr = load i64, ptr %i.d, align 8, !alias.scope !85623, !noalias !85626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85618
  call void @llvm.experimental.noalias.scope.decl(metadata !85626)
  call void @llvm.experimental.noalias.scope.decl(metadata !85623)
  %i.x = icmp eq i64 %.pr, -9223372036854775803
  br i1 %i.x, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.d, i64 72, i1 false), !alias.scope !85628
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit"

bb.af:                                            ; preds = %.thread, %bb.ad
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !85629, !noalias !85623
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..result..Result$LT$serde_json..value..Value$C$serde_json..error..Error$GT$$GT$17h15c66301a39d0cd7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit" unwind label %bb.ac

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb80793796f9bda07E.exit": ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 11, i64 noundef 1) #79
  ret void

bb.ag:                                            ; preds = %bb.ac, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.ac ], [ %lpad.thr_comm.i.i, %bb.aa ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 11, i64 noundef 1) #79
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN115_$LT$meilisearch..routes..tasks..__path___local__handler_get_task_documents_file$u20$as$u20$utoipa..__dev..Tags$GT$4tags17hac39b1b818b972daE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #79 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr @110, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %i.c, align 8
  store i64 1, ptr %0, align 8, !alias.scope !85632
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8, !alias.scope !85632
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8, !alias.scope !85632
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h22815969df5c3a16E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85640)
  %i.a = load i64, ptr %2, align 8, !range !12236, !alias.scope !85638, !noalias !85642, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !85638, !noalias !85642 ; 3 uses
  %.sroa.33.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 6 uses
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 3 uses
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85666)
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.33.0.copyload.i, null
  %.sroa.091.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !85668, !noalias !85669 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.c

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b
  %.sroa.795.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.795.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %.sroa.795.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  %.sroa.8102.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8102.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %.sroa.8102.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  %.sroa.9109.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9109.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %.sroa.9109.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  %.sroa.10.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.10.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i) ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669 ; 3 uses
  %.sroa.556.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.556.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.556.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669 ; 3 uses
  %.sroa.657.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.657.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.657.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669 ; 3 uses
  %.sroa.758.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.758.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.758.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669 ; 3 uses
  %i.c = icmp eq ptr %.sroa.33.0.copyload.i, %.sroa.44.0.copyload.i
  br i1 %i.c, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = ptrtoint ptr %.sroa.44.0.copyload.i to i64
  %i.e = ptrtoint ptr %.sroa.33.0.copyload.i to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i64 %i.f, 5                         ; 4 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.g, 576460752303423486
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1", %.new
  %i.i = phi i64 [ %.sroa.7.0.copyload.i, %.new ], [ %i.v, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.758.0.copyload.i.i.i.i.i.i, %.new ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.657.0.copyload.i.i.i.i.i.i, %.new ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.556.0.copyload.i.i.i.i.i.i, %.new ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %.new ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %.new ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.w, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.l = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i to i1
  %i.m = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.l, i64 %..i.i.i.i.i.i.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ 2, %bb.e ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %.sroa.620.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.f ], [ %.sroa.725.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.i, %bb.f ], [ %.sroa.8.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.9.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"
  %i.o = add i64 %i.i, 1
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.val2.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.q, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.s = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.1 to i1
  %i.t = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.t, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.t, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.s, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.u = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1": ; preds = %bb.g, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.g ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.g ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.g ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.o, %bb.g ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.u, %bb.g ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.v = add i64 %i.i, 2                          ; 2 uses
  %i.w = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e

.unr-lcssa:                                       ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1"
  %i.x = and i64 %i.f, 32
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.d
  %.epil.init = phi i64 [ %.sroa.7.0.copyload.i, %bb.d ], [ %i.v, %.unr-lcssa ]
  %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.758.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.657.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.725.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.556.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.620.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %bb.d ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %i.w, %.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.z, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.y, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.aa = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.epil to i1
  %i.ab = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.ab, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.ab, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.aa, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ac = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil": ; preds = %.epil.preheader, %bb.h, %.unr-lcssa
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.h ], [ 2, %.epil.preheader ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ 2, %bb.h ], [ %.sroa.620.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.725.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.epil.init, %bb.h ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %i.ac, %bb.h ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %i.ad = add i64 %i.g, %.sroa.7.0.copyload.i
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", %bb.c, %._crit_edge.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.7.0.copyload.i, %bb.c ], [ %i.ad, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.758.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.9109.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.657.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.8102.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.556.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.795.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.091.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %bb.c ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.795.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.9109.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = trunc nuw i64 %i.a to i1
  br i1 %i.ae, label %bb.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85696)
  %.not39.i.i.i.i.i.i.i = icmp eq ptr %.sroa.22.0.copyload.i, null
  br i1 %.not39.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.sroa.22.0.copyload.i, i64 8
  %.val4.us.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !85696, !noalias !85699, !nonnull !12, !noundef !12 ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.22.0.copyload.i, i64 16
  %.val5.us.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !85696, !noalias !85699, !noundef !12 ; 6 uses
  %i.ah = icmp eq i64 %.val5.us.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %xtraiter14 = and i64 %.val5.us.i.i.i.i.i.i.i, 1
  %i.ai = icmp eq i64 %.val5.us.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter24 = and i64 %.val5.us.i.i.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1", %.preheader.i.i.i.i.i.i.i.preheader.new
  %i.aj = phi i64 [ %.sroa.6.0.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.aw, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ax, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 3 uses
  %niter25 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter25.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.am = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i to i1
  %i.an = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.an, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.an, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.am, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i": ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %bb.j ], [ 2, %.preheader.i.i.i.i.i.i.i ]
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ 2, %bb.j ], [ %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.j ], [ %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.j ], [ %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.j ], [ %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"
  %i.ap = add i64 %i.aj, 1
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = load i64, ptr %i.as, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.at = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.1 to i1
  %i.au = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.au, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.au, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.at, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1
  %i.av = add i64 %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1": ; preds = %bb.k, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %bb.k ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.k ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.k ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %i.ap, %bb.k ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %i.av, %bb.k ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %i.aw = add i64 %i.aj, 2                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter25.next.1 = add nuw i64 %niter25, 2       ; 2 uses
  %niter25.ncmp.1 = icmp eq i64 %niter25.next.1, %unroll_iter24
  br i1 %niter25.ncmp.1, label %.unr-lcssa13, label %.preheader.i.i.i.i.i.i.i

.unr-lcssa13:                                     ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1"
  %lcmp.mod17.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod17.not, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %.unr-lcssa13, %.preheader.i.i.i.i.i.i.i.preheader
  %.epil.init16 = phi i64 [ %.sroa.6.0.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.aw, %.unr-lcssa13 ]
  %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ] ; 2 uses
  %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.unr-lcssa13 ]
  %lcmp.mod23 = trunc i64 %.val5.us.i.i.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", label %bb.l

bb.l:                                             ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = load i64, ptr %i.az, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = load i64, ptr %i.ay, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.ba = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.epil to i1
  %i.bb = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.bb, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.bb, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.ba, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil
  %i.bc = add i64 %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil": ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %bb.l, %.unr-lcssa13
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, %bb.l ], [ 2, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ 2, %bb.l ], [ %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.sroa.8.0.copyload.i, %bb.l ], [ %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.epil.init16, %bb.l ], [ %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %i.bc, %bb.l ], [ %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.bd = add i64 %.val5.us.i.i.i.i.i.i.i, %.sroa.6.0.i.i.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", %.lr.ph.split.us.i.i.i.i.i.i.i, %bb.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %bb.i ], [ %.sroa.6.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.bd, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.6.0.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.11126.0.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.9125.0.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.7124.0.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.5123.0.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.795.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.0122.0.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.091.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  store i64 %.sroa.0122.0.i.i.i.i.i.i, ptr %1, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.5123.0.i.i.i.i.i.i, ptr %.sroa.795.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.7124.0.i.i.i.i.i.i, ptr %.sroa.8102.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.9125.0.i.i.i.i.i.i, ptr %.sroa.9109.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.11126.0.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  %.not7.i.i.i.i.i.i = icmp eq ptr %.sroa.55.0.copyload.i, null
  br i1 %.not7.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i", label %bb.m

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.be = icmp eq ptr %.sroa.55.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %i.be, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.bg = ptrtoint ptr %.sroa.55.0.copyload.i to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %.epil.preheader27, label %.new26

.new26:                                           ; preds = %bb.n
  %unroll_iter38 = and i64 %i.bi, 576460752303423486
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1", %.new26
  %i.bk = phi i64 [ %.sroa.6.1.i.i.i.i.i, %.new26 ], [ %i.bx, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i19.i.i.i.i.i.i = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %.new26 ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i20.i.i.i.i.i.i = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %.new26 ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i21.i.i.i.i.i.i = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %.new26 ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i22.i.i.i.i.i.i = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %.new26 ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i23.i.i.i.i.i.i = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %.new26 ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i24.i.i.i.i.i.i = phi i64 [ 0, %.new26 ], [ %i.by, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 3 uses
  %niter39 = phi i64 [ 0, %.new26 ], [ %niter39.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i23.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val2.i.i.i.i26.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.bn = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i to i1
  %i.bo = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i = select i1 %i.bo, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i = select i1 %i.bo, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i = select i1 %i.bn, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.9.0.i.i19.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i, %bb.p ], [ 2, %bb.o ]
  %.sink13.i.i.i.i.i33.i.i.i.i.i.i = phi i64 [ 2, %bb.p ], [ %.sroa.620.0.i.i22.i.i.i.i.i.i, %bb.o ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.p ], [ %.sroa.725.0.i.i21.i.i.i.i.i.i, %bb.o ]
  %.sink.i.i.i.i.i35.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.p ], [ %.sroa.8.0.i.i20.i.i.i.i.i.i, %bb.o ]
  %.sink.i.i.i.i.i.i36.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.p ], [ %.sroa.9.0.i.i19.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i33.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"
  %i.bq = add i64 %i.bk, 1
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %.val2.i.i.i.i26.i.i.i.i.i.i.1 = load i64, ptr %i.bt, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i.1 = load i64, ptr %i.bs, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.bu = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i.1 to i1
  %i.bv = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i.1 = select i1 %i.bv, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i.1 = select i1 %i.bv, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.1 = select i1 %i.bu, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i.1
  %i.bw = add i64 %.sink.i.i.i.i.i.i36.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1": ; preds = %bb.q, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.1, %bb.q ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.q ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i35.i.i.i.i.i.i.1 = phi i64 [ %i.bq, %bb.q ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1 = phi i64 [ %i.bw, %bb.q ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %i.bx = add i64 %i.bk, 2                        ; 2 uses
  %i.by = add nuw i64 %.sroa.06.0.i.i24.i.i.i.i.i.i, 2 ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", label %bb.o

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1"
  %i.bz = and i64 %i.bh, 32
  %lcmp.mod31.not = icmp eq i64 %i.bz, 0
  br i1 %lcmp.mod31.not, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %.epil.preheader27

.epil.preheader27:                                ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", %bb.n
  %.epil.init30 = phi i64 [ %.sroa.6.1.i.i.i.i.i, %bb.n ], [ %i.bx, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %bb.n ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.8.0.i.i20.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %bb.n ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.725.0.i.i21.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %bb.n ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.620.0.i.i22.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %bb.n ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.017.0.i.i23.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %bb.n ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.06.0.i.i24.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.n ], [ %i.by, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod37 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i23.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.epil, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.epil.preheader27
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i.epil.init ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val2.i.i.i.i26.i.i.i.i.i.i.epil = load i64, ptr %i.cb, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i.epil = load i64, ptr %i.ca, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.cc = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i.epil to i1
  %i.cd = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i.epil = select i1 %i.cd, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i.epil = select i1 %i.cd, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.epil = select i1 %i.cc, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i.epil
  %i.ce = add i64 %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", %bb.r, %.epil.preheader27, %bb.m
  %.sroa.870.0.i.i.i.i.i.i = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %bb.m ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %i.ce, %bb.r ], [ %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.767.0.i.i.i.i.i.i = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.epil, %bb.r ], [ 2, %.epil.preheader27 ]
  %.sroa.664.0.i.i.i.i.i.i = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %bb.m ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.epil.init30, %bb.r ], [ %.sroa.8.0.i.i20.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.561.0.i.i.i.i.i.i = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %bb.m ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.sroa.8.0.copyload.i, %bb.r ], [ %.sroa.725.0.i.i21.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.059.0.i.i.i.i.i.i = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %bb.m ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ 2, %bb.r ], [ %.sroa.620.0.i.i22.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  store i64 %.sroa.059.0.i.i.i.i.i.i, ptr %1, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.561.0.i.i.i.i.i.i, ptr %.sroa.795.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.664.0.i.i.i.i.i.i, ptr %.sroa.8102.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.767.0.i.i.i.i.i.i, ptr %.sroa.9109.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.870.0.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !85744, !noalias !85745
  br label %"_ZN6either8iterator96_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$either..Either$LT$L$C$R$GT$$GT$4fold17hfe543770b60896f4E.exit"

bb.s:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !85638, !noalias !85642 ; 9 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 5 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 4 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.5.0.copyload.i = load i56, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !85638, !noalias !85642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85749)
  %.sroa.07.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.610.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.715.0.copyload.i.i = load i64, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !alias.scope !85751, !noalias !85752 ; 2 uses
  %.sroa.8.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload.i2.i = load i64, ptr %.sroa.8.0..sroa_idx.i1.i, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.9.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.9.0.copyload.i3.i = load i64, ptr %.sroa.9.0..sroa_idx24.i.i, align 8, !alias.scope !85751, !noalias !85752 ; 7 uses
  %.not45.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 3
  br i1 %.not45.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h0fe81af1dcbce894E.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.s
  %i.cf = zext i56 %.sroa.5.0.copyload.i to i64
  %i.cg = shl nuw i64 %i.cf, 8
  %.sroa.837.24.extract.trunc.us.i.i = trunc i64 %.sroa.8.0.copyload.i2.i to i8
  %i.ch = or i8 %.sroa.4.0.copyload.i, %.sroa.837.24.extract.trunc.us.i.i
  %or.cond.i.i.i.i.us.i.i = icmp eq i8 %i.ch, 0
  br i1 %or.cond.i.i.i.i.us.i.i, label %bb.u, label %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i"

"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i": ; preds = %.lr.ph.split.us.i.i
  %.sroa.14.sroa.0.0.extract.trunc.i.i.us.i.i = trunc i64 %.sroa.0.0.copyload.i to i8
  %.sroa.14.sroa.6.0.extract.shift.i.i.us.i.i = and i64 %.sroa.0.0.copyload.i, -256
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i, 3
  br i1 %.not.i.i.us.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i", label %bb.t

bb.t:                                             ; preds = %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i"
  %i.ci = add i64 %.sroa.9.0.copyload.i3.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i"

bb.u:                                             ; preds = %.lr.ph.split.us.i.i
  switch i64 %.sroa.07.0.copyload.i.i, label %.split.us.i.i [
    i64 0, label %bb.w
    i64 1, label %bb.v
    i64 2, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i"
  ]

bb.v:                                             ; preds = %bb.u
  %i.cj = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.cj, label %bb.x, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i"

bb.w:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ck, label %bb.x, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i"

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i": ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i"
  %.sroa.9.sroa.5.sroa.0.0.us.i.i = phi i64 [ %i.cg, %bb.t ], [ %.sroa.14.sroa.6.0.extract.shift.i.i.us.i.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.u ]
  %.sroa.9.sroa.0.0.us.i.i = phi i8 [ %.sroa.4.0.copyload.i, %bb.t ], [ %.sroa.14.sroa.0.0.extract.trunc.i.i.us.i.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ %.sroa.4.0.copyload.i, %bb.x ], [ %.sroa.4.0.copyload.i, %bb.v ], [ %.sroa.4.0.copyload.i, %bb.w ], [ %.sroa.4.0.copyload.i, %bb.u ]
  %.sroa.7.0.us.i.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.t ], [ %.sroa.8.0.copyload.i2.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ %.sroa.2.0.copyload.i, %bb.x ], [ %.sroa.3.0.copyload.i, %bb.v ], [ %.sroa.3.0.copyload.i, %bb.w ], [ %.sroa.3.0.copyload.i, %bb.u ]
  %.sroa.5.0.us.i.i = phi i64 [ %.sroa.2.0.copyload.i, %bb.t ], [ %.sroa.715.0.copyload.i.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ %.sroa.610.0.copyload.i.i, %bb.x ], [ %.sroa.2.0.copyload.i, %bb.v ], [ %.sroa.2.0.copyload.i, %bb.w ], [ %.sroa.2.0.copyload.i, %bb.u ]
  %.sroa.06.0.us.i.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.t ], [ %.sroa.610.0.copyload.i.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ 1, %bb.x ], [ %.sroa.0.0.copyload.i, %bb.v ], [ %.sroa.0.0.copyload.i, %bb.w ], [ %.sroa.0.0.copyload.i, %bb.u ]
  %.sink.i.us.i.i = phi i64 [ %i.ci, %bb.t ], [ %.sroa.9.0.copyload.i3.i, %"_ZN86_$LT$F$u20$as$u20$itertools..adaptors..coalesce..CoalescePredicate$LT$Item$C$T$GT$$GT$13coalesce_pair17h235dce73df44438fE.exit.i.i.us.i.i" ], [ %.sroa.9.0.copyload.i3.i, %bb.x ], [ %.sroa.9.0.copyload.i3.i, %bb.v ], [ %.sroa.9.0.copyload.i3.i, %bb.w ], [ %.sroa.9.0.copyload.i3.i, %bb.u ]
  %.sroa.9.sroa.0.0.insert.ext.us.i.i = zext i8 %.sroa.9.sroa.0.0.us.i.i to i64
  %.sroa.9.sroa.0.0.insert.insert.us.i.i = or disjoint i64 %.sroa.9.sroa.5.sroa.0.0.us.i.i, %.sroa.9.sroa.0.0.insert.ext.us.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17h0fe81af1dcbce894E.exit.i

.split.us.i.i:                                    ; preds = %bb.u
  unreachable

_ZN4core4iter6traits8iterator8Iterator4fold17h0fe81af1dcbce894E.exit.i: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i", %bb.s
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sink.i.us.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i" ], [ %.sroa.9.0.copyload.i3.i, %bb.s ]
  %.sroa.8.0.lcssa.i.i = phi i64 [ %.sroa.9.sroa.0.0.insert.insert.us.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i" ], [ %.sroa.8.0.copyload.i2.i, %bb.s ]
  %.sroa.715.0.lcssa.i.i = phi i64 [ %.sroa.7.0.us.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i" ], [ %.sroa.715.0.copyload.i.i, %bb.s ]
  %.sroa.610.0.lcssa.i.i = phi i64 [ %.sroa.5.0.us.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i" ], [ %.sroa.610.0.copyload.i.i, %bb.s ]
  %.sroa.07.0.lcssa.i.i = phi i64 [ %.sroa.06.0.us.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he105e8601f4c1a85E.exit.us.i.i" ], [ %.sroa.07.0.copyload.i.i, %bb.s ]
  store i64 %.sroa.07.0.lcssa.i.i, ptr %0, align 8, !alias.scope !85754, !noalias !85755
  %.sroa.610.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.610.0.lcssa.i.i, ptr %.sroa.610.0..sroa_idx13.i.i, align 8, !alias.scope !85754, !noalias !85755
  %.sroa.715.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.715.0.lcssa.i.i, ptr %.sroa.715.0..sroa_idx18.i.i, align 8, !alias.scope !85754, !noalias !85755
  %.sroa.8.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.lcssa.i.i, ptr %.sroa.8.0..sroa_idx22.i.i, align 8, !alias.scope !85754, !noalias !85755
  %.sroa.9.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.9.0..sroa_idx27.i.i, align 8, !alias.scope !85754, !noalias !85755
  br label %"_ZN6either8iterator96_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$either..Either$LT$L$C$R$GT$$GT$4fold17hfe543770b60896f4E.exit"

"_ZN6either8iterator96_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$either..Either$LT$L$C$R$GT$$GT$4fold17hfe543770b60896f4E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i", %_ZN4core4iter6traits8iterator8Iterator4fold17h0fe81af1dcbce894E.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h82b58f71e187a36aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.631 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load ptr, ptr %1, align 8
  %.fr = freeze ptr %i.d
  %.not.i2 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.promoted47 = load ptr, ptr %i.b, align 8      ; 2 uses
  %.promoted48 = load ptr, ptr %i.c, align 8      ; 8 uses
  br i1 %.not.i2, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.promoted49 = load ptr, ptr %i.g, align 8      ; 5 uses
  %i.h = icmp eq ptr %.promoted, null
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85756)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  br i1 %i.h, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h27aa2a40d5e60995E.exit.peel", label %bb.b

bb.b:                                             ; preds = %.split.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85762)
  %i.i = icmp eq ptr %.promoted48, %.promoted47
  br i1 %i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.thread.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.i.peel

_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.i.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted48, i64 32
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !85765, !noalias !85766
  %.sroa.025.0.copyload.peel = load ptr, ptr %.promoted48, align 8, !noalias !85770 ; 2 uses
  %.sroa.627.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx.peel, i64 24, i1 false), !noalias !85770
  %.not6.i.peel = icmp eq ptr %.sroa.025.0.copyload.peel, null
  br i1 %.not6.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.thread.i.peel, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.thread.i.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.i.peel, %bb.b
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17h09f9e8a27dc936eaE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h860709b19871ba5dE.exit.thread34.peel unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h27aa2a40d5e60995E.exit.i.split.loopexit.split-lp", !noalias !85771

_ZN4core4iter8adapters7flatten17and_then_or_clear17h860709b19871ba5dE.exit.thread34.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1d66eee8cc7f4736E.exit.thread.i.peel
  store ptr null, ptr %i.a, align 8, !alias.scope !85756, !noalias !85771
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h27aa2a40d5e60995E.exit.peel"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h27aa2a40d5e60995E.exit.peel": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h860709b19871ba5dE.exit.thread34.peel, %.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85775)
end_hunk_0
begin_hunk_1_@"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$7to_kstr17h3a61a7510ac8e2f2E":bb.a
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !93002
  store ptr %i.d, ptr %i.c, align 8, !noalias !93002
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @3703, ptr %i.g, align 8, !noalias !93002
  %i.h = invoke noundef zeroext i1 @"_ZN86_$LT$liquid_core..model..array..ArrayRender$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3f0c437f8f1c8208E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !93006

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93007)
  call void @llvm.experimental.noalias.scope.decl(metadata !93010)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !93013, !noalias !93002 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !93013, !noalias !93002, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !93014
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf84ada9b36a52bbbE.exit", !prof !10

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5156, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5332, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5158) #85
          to label %.noexc.i unwind label %bb.b, !noalias !93002

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.body.i ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf84ada9b36a52bbbE.exit": ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !93015 ; 5 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !93015 ; 7 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !93015 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !93002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !93002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %.sroa.5.0.copyload, 16
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf84ada9b36a52bbbE.exit"
  %i.m = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i", label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h98fb38e780aaa0cfE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.n = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, 9) 1, i64 noundef %.sroa.5.0.copyload) #79, !noalias !93016 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h98fb38e780aaa0cfE.exit"

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8805) #85
          to label %.noexc.i.i unwind label %.body.i, !noalias !93030

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.body.i:                                          ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !93031
  br label %common.resume

bb.h:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf84ada9b36a52bbbE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !93034
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !93034
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.b, align 8, !noalias !93035
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or disjoint i64 %.sroa.04.1.insert.shift, %.sroa.5.0.copyload
  %i.q = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !93035 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h98fb38e780aaa0cfE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !93036
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h98fb38e780aaa0cfE.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h98fb38e780aaa0cfE.exit": ; preds = %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i", %bb.h, %bb.i
  %.sroa.04.0 = phi ptr [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.n, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i" ], [ %.sroa.3.0.copyload, %bb.f ]
  %.sroa.75.0 = phi i8 [ 1, %bb.h ], [ 1, %bb.i ], [ -1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i" ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.h ], [ %.7..7..7..sroa.6.1.copyload, %bb.i ], [ %.sroa.5.0.copyload, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i" ], [ %.sroa.5.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17hb97a31453644e081E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @333, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17hc2f4c648a15f7360E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1848, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17h78be9fd1333599eaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1849, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17h8dc2eb90679f9180E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1850, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17h73303f2a7ca594e9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 10 uses
  %i.e = mul i64 %i.d, 56                         ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.d, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !93041
  %i.g = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 8) #79, !noalias !93041 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85, !noalias !93054
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign eq i64 %i.d, 0
  br i1 %i.j, label %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 288230376151711742
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.r, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.m, align 1, !range !233, !alias.scope !93055, !noalias !93058, !noundef !12
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.l ; 3 uses
  store i8 0, ptr %i.n, align 8, !noalias !93070
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !93070
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !93070
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.p, align 1, !range !233, !alias.scope !93055, !noalias !93058, !noundef !12
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.o ; 3 uses
  store i8 0, ptr %i.q, align 8, !noalias !93070
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !93070
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !93070
  %i.r = add nuw i64 %i.l, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.r, %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.epil.init
  %.val21.i.i.i.i.i.i.i.i.i.epil = load i8, ptr %i.s, align 1, !range !233, !alias.scope !93055, !noalias !93058, !noundef !12
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 3 uses
  store i8 0, ptr %i.t, align 8, !noalias !93070
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !93070
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.epil, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !93070
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit: ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %_ZN4core4iter6traits8iterator8Iterator7collect17h529b0eba304cadf6E.exit.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.i.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17hdb09d23076e66e45E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93077
  %.idx = mul nuw nsw i64 %i.f, 56                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.thread.i.i.i.i", label %bb.a

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !93077
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !93077
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he4ff6a2fdfac4984E.exit

bb.a:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !93086
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #79, !noalias !93086 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %.preheader.i.i.preheader.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85, !noalias !93077
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %bb.a
  store i64 %i.f, ptr %i.b, align 8, !noalias !93077
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !93077
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93094)
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93097
  invoke void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h18705804cd257f94E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.c unwind label %.body.i.i.i.i, !noalias !93107

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !93108
  %i.p = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93097
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %_ZN4core4iter6traits8iterator8Iterator7collect17he4ff6a2fdfac4984E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !93113, !noalias !93114
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h13ed254c6324ad96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #86
          to label %bb.e unwind label %bb.d, !noalias !93077

bb.d:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !93077
  unreachable

bb.e:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.r

_ZN4core4iter6traits8iterator8Iterator7collect17he4ff6a2fdfac4984E.exit: ; preds = %bb.c, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.thread.i.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h194e2d4aa85a1588E.exit.i.i.thread.i.i.i.i" ], [ %i.m, %bb.c ]
  store i64 %i.f, ptr %i.t, align 8, !alias.scope !93113, !noalias !93114
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93077
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h7e932f9e01709788E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @316, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h8c50869c614f7ee9E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @316, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h017f71d3e6754721E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93115, !noundef !12 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !93115, !nonnull !12
  %i.f = getelementptr i8, ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @250, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h6577a15579265d96E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN96_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hf28d197d6941cea9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h7a15bae7ccd93819E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h5d0b8e193696e1eaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h8d4cba3a0ec73fc9E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h9820f1257246c567E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17ha0243ed7729c246dE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hd9adde9ed43fc821E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hb2df8a725cd9b2b0E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93118, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !93118, !nonnull !12
  %i.f = getelementptr [56 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -56
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @247, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h3f01746f9c46669cE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hd9adde9ed43fc821E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h6ad6edbec5c7769fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN11meilisearch6routes7indexes12facet_search19lexicographic_merge17hb3242eb57f1cd092E:_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gz, ptr noundef nonnull align 8 dereferenceable(64) %i.gx, i64 64, i1 false), !alias.scope !130646, !noalias !130379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gx, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !130379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN9itertools11kmerge_impl9sift_down17hb1d52e62d52c519fE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %bb.ao
  %i.hj = phi i64 [ %i.in, %bb.ao ], [ %i.gt, %.lr.ph.i.i ]
  %.sroa.06.053.i.i.i = phi i64 [ %.sroa.06.0.i.i.i, %bb.ao ], [ %.sroa.06.051.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.052.i.i.i = phi i64 [ %i.hx, %bb.ao ], [ %i.gs, %.lr.ph.i.i ] ; 3 uses
  %i.hk = icmp ult i64 %.sroa.06.053.i.i.i, %i.gp
  br i1 %i.hk, label %bb.al, label %.invoke.i

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.hl = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %i.hj ; 2 uses
  %i.hm = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %.sroa.06.053.i.i.i ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hl, i64 8
  %.val23.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !130646, !noalias !130379, !nonnull !12, !noundef !12
  %i.ho = getelementptr i8, ptr %i.hl, i64 16
  %.val24.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !130646, !noalias !130379, !noundef !12 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hm, i64 8
  %.val25.i.i.i = load ptr, ptr %i.hp, align 8, !alias.scope !130646, !noalias !130379, !nonnull !12, !noundef !12
  %i.hq = getelementptr i8, ptr %i.hm, i64 16
  %.val26.i.i.i = load i64, ptr %i.hq, align 8, !alias.scope !130646, !noalias !130379, !noundef !12 ; 2 uses
  %..i.i.i.i.i.i.i31.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val24.i.i.i, i64 %.val26.i.i.i)
  %i.hr = sub i64 %.val24.i.i.i, %.val26.i.i.i
  %i.hs = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val23.i.i.i, ptr nonnull readonly align 1 %.val25.i.i.i, i64 %..i.i.i.i.i.i.i31.i.i.i), !alias.scope !130655, !noalias !130654 ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp eq i32 %i.hs, 0
  %spec.store.select.i.i.i.i.i.i.i32.i.i.i = select i1 %i.hu, i64 %i.hr, i64 %i.ht
  %i.hv = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i32.i.i.i, 1
  %i.hw = zext i1 %i.hv to i64
  %i.hx = add nuw i64 %.sroa.06.053.i.i.i, %i.hw  ; 6 uses
  %i.hy = icmp ult i64 %i.hx, %i.gp
  br i1 %i.hy, label %bb.am, label %.invoke.i

bb.am:                                            ; preds = %bb.al
  %i.hz = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %i.hx ; 4 uses
  %i.ia = icmp ult i64 %.sroa.0.052.i.i.i, %i.gp
  br i1 %i.ia, label %bb.an, label %.invoke.i

bb.an:                                            ; preds = %bb.am
  %i.ib = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %.sroa.0.052.i.i.i ; 4 uses
  %i.ic = getelementptr i8, ptr %i.hz, i64 8
  %.val27.i.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !130646, !noalias !130379, !nonnull !12, !noundef !12
  %i.id = getelementptr i8, ptr %i.hz, i64 16
  %.val28.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !130646, !noalias !130379, !noundef !12 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ib, i64 8
  %.val29.i.i.i = load ptr, ptr %i.ie, align 8, !alias.scope !130646, !noalias !130379, !nonnull !12, !noundef !12
  %i.if = getelementptr i8, ptr %i.ib, i64 16
  %.val30.i.i.i = load i64, ptr %i.if, align 8, !alias.scope !130646, !noalias !130379, !noundef !12 ; 2 uses
  %..i.i.i.i.i.i.i33.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val28.i.i.i, i64 %.val30.i.i.i)
  %i.ig = sub i64 %.val28.i.i.i, %.val30.i.i.i
  %i.ih = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val27.i.i.i, ptr nonnull readonly align 1 %.val29.i.i.i, i64 %..i.i.i.i.i.i.i33.i.i.i), !alias.scope !130662, !noalias !130654 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp eq i32 %i.ih, 0
  %spec.store.select.i.i.i.i.i.i.i34.i.i.i = select i1 %i.ij, i64 %i.ig, i64 %i.ii
  %i.ik = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i34.i.i.i, 1
  br i1 %i.ik, label %bb.ao, label %_ZN9itertools11kmerge_impl9sift_down17hb1d52e62d52c519fE.exit.i.i

.invoke.i:                                        ; preds = %bb.ai, %bb.ah, %bb.am, %bb.al, %.lr.ph.i.i.i
  %i.il = phi i64 [ %i.hx, %bb.al ], [ %.sroa.0.052.i.i.i, %bb.am ], [ %.sroa.06.053.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i, %bb.ah ], [ %.sroa.0.0.lcssa.i.i.i, %bb.ai ]
  %i.im = phi ptr [ @11899, %bb.al ], [ @11900, %bb.am ], [ @11898, %.lr.ph.i.i.i ], [ @11896, %bb.ah ], [ @11897, %bb.ai ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.il, i64 noundef %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.im) #85
          to label %.cont.i unwind label %bb.c, !noalias !130379

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.ib, i64 64, i1 false), !noalias !130379
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ib, ptr noundef nonnull align 8 dereferenceable(64) %i.hz, i64 64, i1 false), !alias.scope !130646, !noalias !130379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hz, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !130379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.06.0.in.i.i.i = shl i64 %i.hx, 1         ; 2 uses
  %.sroa.06.0.i.i.i = or disjoint i64 %.sroa.06.0.in.i.i.i, 1 ; 2 uses
  %i.in = add i64 %.sroa.06.0.in.i.i.i, 2         ; 3 uses
  %i.io = icmp ult i64 %i.in, %i.gp
  br i1 %i.io, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_ZN9itertools11kmerge_impl9sift_down17hb1d52e62d52c519fE.exit.i.i: ; preds = %bb.an, %bb.ak, %bb.aj, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i, label %_ZN9itertools11kmerge_impl9kmerge_by17h86e19bd95d0c8217E.exit, label %.lr.ph.i.i

bb.ap:                                            ; preds = %bb.aq
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !130379
  unreachable

bb.aq:                                            ; preds = %bb.b
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr231drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch..search..FacetSearchResult$GT$$C$meilisearch..routes..indexes..facet_search..lexicographic_merge..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb5e6204f7e5bfcfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k) #86
          to label %common.resume unwind label %bb.ap, !noalias !130392

_ZN9itertools11kmerge_impl9kmerge_by17h86e19bd95d0c8217E.exit: ; preds = %_ZN9itertools11kmerge_impl9sift_down17hb1d52e62d52c519fE.exit.i.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !130669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !130379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130677)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !130678, !noalias !130682
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !130694
  invoke fastcc void @"_ZN117_$LT$itertools..adaptors..coalesce..CoalesceBy$LT$I$C$F$C$C$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h09a2a08f3092c575E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.as unwind label %bb.ar, !noalias !130695

bb.ar:                                            ; preds = %_ZN9itertools11kmerge_impl9kmerge_by17h86e19bd95d0c8217E.exit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.as:                                            ; preds = %_ZN9itertools11kmerge_impl9kmerge_by17h86e19bd95d0c8217E.exit
  %i.is = load i64, ptr %i.c, align 8, !range !186, !noalias !130694, !noundef !12 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !130694 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130696)
  %i.it = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.it, align 8, !alias.scope !130699, !noalias !130700, !nonnull !12, !noundef !12 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val12.i.i.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !130699, !noalias !130700, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130702)
  %i.iv = icmp eq i64 %.val12.i.i.i.i.i, 0
  br i1 %i.iv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 64 ; 3 uses
  %i.ix = getelementptr i8, ptr %.val.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i.i1 = load ptr, ptr %i.ix, align 8, !noalias !130705, !nonnull !12, !noundef !12
  %i.iy = getelementptr i8, ptr %.val.i.i.i.i.i, i64 56
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.iy, align 8, !noalias !130705, !nonnull !12, !noundef !12
  %i.iz = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i to i64
  %i.ja = ptrtoint ptr %.val.i.i.i.i.i.i.i.i1 to i64
  %i.jb = sub nuw i64 %i.iz, %i.ja
  %i.jc = lshr exact i64 %i.jb, 5
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 3 uses
  %i.je = icmp eq i64 %.val12.i.i.i.i.i, 1
  br i1 %i.je, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jf = add i64 %.val12.i.i.i.i.i, 288230376151711743 ; 4 uses
  %i.jg = and i64 %i.jf, 288230376151711743
  %xtraiter338 = and i64 %i.jf, 1
  %i.jh = icmp eq i64 %i.jg, 1
  br i1 %i.jh, label %.epil.preheader, label %.new337

.new337:                                          ; preds = %bb.av
  %unroll_iter = and i64 %i.jf, 288230376151711742
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.new337
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i1 [ true, %.new337 ], [ %narrow.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.aw ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jd, %.new337 ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.aw ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.new337 ], [ %i.kc, %bb.aw ] ; 3 uses
  %niter = phi i64 [ 0, %.new337 ], [ %niter.next.1, %bb.aw ]
  %i.ji = getelementptr inbounds nuw [64 x i8], ptr %i.iw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 40
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jj, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.jk = getelementptr i8, ptr %i.ji, i64 56
  %.val16.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jk, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.jl = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i to i64
  %i.jm = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.jn = sub nuw i64 %i.jl, %i.jm
  %i.jo = lshr exact i64 %i.jn, 5
  %i.jp = add i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i, 1
  %i.jq = add i64 %i.jp, %i.jo                    ; 2 uses
  %i.jr = icmp uge i64 %i.jq, %.sroa.7.0.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i, i64 %i.jq, i64 undef ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i, i1 %i.jr, i1 false ; 2 uses
  %i.js = getelementptr inbounds nuw [64 x i8], ptr %i.iw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 104
  %.val.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.jt, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.ju = getelementptr i8, ptr %i.js, i64 120
  %.val16.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ju, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.jv = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i.1 to i64
  %i.jw = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.1 to i64
  %i.jx = sub nuw i64 %i.jv, %i.jw
  %i.jy = lshr exact i64 %i.jx, 5
  %i.jz = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ka = add i64 %i.jz, %i.jy                    ; 2 uses
  %i.kb = icmp uge i64 %i.ka, %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ka, i64 undef ; 3 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.kb, i1 false ; 2 uses
  %i.kc = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.aw

bb.ax:                                            ; preds = %bb.as
  store i64 0, ptr %0, align 8, !alias.scope !130718, !noalias !130719
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.kd, align 8, !alias.scope !130718, !noalias !130719
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ke, align 8, !alias.scope !130718, !noalias !130719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130694
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130720)
  call fastcc void @"_ZN4core3ptr166drop_in_place$LT$alloc..vec..Vec$LT$itertools..kmerge_impl..HeadTail$LT$alloc..vec..into_iter..IntoIter$LT$milli..search..facet..search..FacetValueHit$GT$$GT$$GT$$GT$17hd91622f561cd400aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.e), !noalias !130695
  %.val.i6.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !range !191, !alias.scope !130723, !noalias !130695, !noundef !12 ; 2 uses
  %switch.i.i.i.i.i = icmp sgt i64 %.val.i6.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i, label %bb.ay, label %_ZN4core4iter6traits8iterator8Iterator7collect17he43a29d7527ccb77E.exit

bb.ay:                                            ; preds = %bb.ax
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !130723, !noalias !130695, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i6.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !130724
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he43a29d7527ccb77E.exit

bb.az:                                            ; preds = %bb.bb
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = icmp eq i64 %i.is, 0
  br i1 %i.kg, label %bb.bs, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !130729
  br label %bb.bs

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.aw
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.av
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.epil.init = phi i1 [ true, %bb.av ], [ %narrow.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %i.jd, %bb.av ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.av ], [ %i.kc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod341 = trunc i64 %i.jf to i1
  tail call void @llvm.assume(i1 %lcmp.mod341)
  %i.kh = getelementptr inbounds nuw [64 x i8], ptr %i.iw, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 40
  %.val.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.ki, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.kj = getelementptr i8, ptr %i.kh, i64 56
  %.val16.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.kj, align 8, !noalias !130711, !nonnull !12, !noundef !12
  %i.kk = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i.epil to i64
  %i.kl = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.epil to i64
  %i.km = sub nuw i64 %i.kk, %i.kl
  %i.kn = lshr exact i64 %i.km, 5
  %i.ko = add i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i.epil.init, 1
  %i.kp = add i64 %i.ko, %i.kn
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i.epil.init, i64 %i.kp, i64 undef
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %.epil.preheader, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.au, %bb.at
  %.sink.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.4.i.i.i.i.i.i, %bb.at ], [ %.sroa.7.i.i.i.i.i.i, %bb.au ], [ %.sroa.7.i.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.7.i.i.i.i.i.i, %.epil.preheader ]
  %.sroa.717.0.sink.i.i.i.i.i.i.i = phi i64 [ 2, %bb.at ], [ %i.jd, %bb.au ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  store i64 %.sroa.717.0.sink.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !130702, !noalias !130734
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !130735
  %i.kq = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 17) 8) #79, !noalias !130735 ; 6 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc.i.i.i.i unwind label %bb.az, !noalias !130694

.noexc.i.i.i.i:                                   ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i.i.i.i, i64 16, i1 false), !noalias !130694
  store i64 %i.is, ptr %i.kq, align 8, !noalias !130694
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !130694
  store i64 4, ptr %i.d, align 8, !noalias !130694
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.kq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !130694
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !130694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !130695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130750
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h785c304050b7d492E.exit.i.i.i.i.i.i", %bb.bc
  %i.kv = phi ptr [ %i.mc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h785c304050b7d492E.exit.i.i.i.i.i.i" ], [ %i.kq, %bb.bc ]
  %i.kw = phi i64 [ %i.me, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h785c304050b7d492E.exit.i.i.i.i.i.i" ], [ 1, %bb.bc ] ; 5 uses
  invoke fastcc void @"_ZN117_$LT$itertools..adaptors..coalesce..CoalesceBy$LT$I$C$F$C$C$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h09a2a08f3092c575E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.bf unwind label %bb.be, !noalias !130751

"_ZN4core3ptr64drop_in_place$LT$milli..search..facet..search..FacetValueHit$GT$17h2630822be99b3c4aE.exit.i.i.i.i.i.i": ; preds = %bb.bp, %bb.bo, %bb.be
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kx, %bb.be ], [ %i.mf, %bb.bo ], [ %i.mf, %bb.bp ]
  call fastcc void @"_ZN4core3ptr423drop_in_place$LT$itertools..adaptors..coalesce..CoalesceBy$LT$itertools..kmerge_impl..KMergeBy$LT$alloc..vec..into_iter..IntoIter$LT$milli..search..facet..search..FacetValueHit$GT$$C$meilisearch..routes..indexes..facet_search..lexicographic_merge..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$meilisearch..routes..indexes..facet_search..lexicographic_merge..$u7b$$u7b$closure$u7d$$u7d$$C$itertools..adaptors..coalesce..NoCount$GT$$GT$17h5f0ba544a2bf047dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #86, !noalias !130751
  call void @"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$milli..search..facet..search..FacetValueHit$GT$$GT$17h79e311ca3990ab68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #86, !noalias !130694
  br label %common.resume

bb.be:                                            ; preds = %bb.bd
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr64drop_in_place$LT$milli..search..facet..search..FacetValueHit$GT$17h2630822be99b3c4aE.exit.i.i.i.i.i.i"

bb.bf:                                            ; preds = %bb.bd
  %i.ky = load i64, ptr %i.a, align 8, !range !186, !noalias !130752, !noundef !12 ; 4 uses
  %.not.i.i8.i.i.i.i = icmp eq i64 %i.ky, -9223372036854775808
  br i1 %.not.i.i8.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !130752 ; 3 uses
  %i.kz = icmp samesign ult i64 %i.kw, 288230376151711744
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = load i64, ptr %i.d, align 8, !range !64, !alias.scope !130753, !noalias !130754, !noundef !12
  %i.lb = icmp eq i64 %i.kw, %i.la
  br i1 %i.lb, label %bb.bj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h785c304050b7d492E.exit.i.i.i.i.i.i"

bb.bh:                                            ; preds = %bb.bf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130755)
  call fastcc void @"_ZN4core3ptr166drop_in_place$LT$alloc..vec..Vec$LT$itertools..kmerge_impl..HeadTail$LT$alloc..vec..into_iter..IntoIter$LT$milli..search..facet..search..FacetValueHit$GT$$GT$$GT$$GT$17hd91622f561cd400aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.b), !noalias !130751
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ku, align 8, !range !191, !alias.scope !130758, !noalias !130751, !noundef !12 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.bi, label %bb.br

bb.bi:                                            ; preds = %bb.bh
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.lc, align 8, !alias.scope !130758, !noalias !130751, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !130759
  br label %bb.br

bb.bj:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130764)
  %.val.i5.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !130767, !noalias !130768, !nonnull !12, !noundef !12 ; 3 uses
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !130767, !noalias !130768, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130770)
  %i.ld = icmp eq i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %i.ld, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.le = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i, i64 64
  %i.lf = getelementptr i8, ptr %.val.i5.i.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lf, align 8, !noalias !130773, !nonnull !12, !noundef !12
  %i.lg = getelementptr i8, ptr %.val.i5.i.i.i.i.i.i, i64 56
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !noalias !130773, !nonnull !12, !noundef !12
  %i.lh = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i.i to i64
  %i.li = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.lj = sub nuw i64 %i.lh, %i.li
  %i.lk = lshr exact i64 %i.lj, 5
  %i.ll = add nuw nsw i64 %i.lk, 1                ; 4 uses
  %i.lm = icmp eq i64 %.val12.i.i.i.i.i.i.i, 1
  br i1 %i.lm, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0b2cf6d1f18c5cb4E.exit.i.i.i.i.i.i.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ln = add i64 %.val12.i.i.i.i.i.i.i, 288230376151711743
  %i.lo = and i64 %i.ln, 288230376151711743
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ll, %bb.bl ], [ %i.lz, %bb.bm ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.bl ], [ %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ll, %bb.bl ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.ma, %bb.bm ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [64 x i8], ptr %i.le, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i2 = load ptr, ptr %i.lq, align 8, !noalias !130779, !nonnull !12, !noundef !12
  %i.lr = getelementptr i8, ptr %i.lp, i64 56
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lr, align 8, !noalias !130779, !nonnull !12, !noundef !12
  %i.ls = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.lt = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i2 to i64
  %i.lu = sub nuw i64 %i.ls, %i.lt
  %i.lv = lshr exact i64 %i.lu, 5
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %i.lx = add i64 %i.lw, %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ly = icmp uge i64 %i.lx, %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.lx, i64 undef ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i, i1 %i.ly, i1 false ; 2 uses
  %i.lz = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.lw) ; 2 uses
  %i.ma = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, %i.lo
  br i1 %i.mb, label %bb.bn, label %bb.bm

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0b2cf6d1f18c5cb4E.exit.i.i.i.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0b2cf6d1f18c5cb4E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bn, %bb.bk
end_hunk_2
begin_hunk_3_@"_ZN11meilisearch6routes7indexes9documents17document_addition28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4c7393e9e7d3345eE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !138338
  store ptr %i.ba, ptr %i.aw, align 8, !noalias !138361
  store i8 1, ptr %i.ef, align 8, !noalias !138361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !138361
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !noalias !138361
  store ptr %i.bx, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !138361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) @126, i64 32, i1 false), !noalias !138361
  store ptr %i.bx, ptr %.sroa.416.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138361
  br label %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h65c67760187e54daE.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.loopexit.i.i.i:                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h193aa75c182beee8E.exit.i.i.i.i.i.i.i.i.i", %bb.as, %bb.ah, %bb.ae, %bb.ab, %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h65c67760187e54daE.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.loopexit.split-lp.i.i.i:        ; preds = %bb.af
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.aw
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.loopexit.split-lp.i.i.i, %.loopexit.i.i.i.i.loopexit.i.i.i
  %lpad.phi.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i.i.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.i.i.i.i.loopexit.split-lp.i.i.i ]
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17h5e66523a763f2df0E"(ptr noalias noundef align 8 dereferenceable(72) %i.av) #86, !noalias !138365
  br label %.body.i.i.i.i.i

"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h65c67760187e54daE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h65c67760187e54daE.exit.i.i.i.i.i.i.i.backedge", %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !138366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !138369
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h81ed3a936e1f0d64E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i.i.loopexit.i.i.i, !noalias !138327

.noexc.i.i.i:                                     ; preds = %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h65c67760187e54daE.exit.i.i.i.i.i.i.i"
  %i.fx = load i8, ptr %i.at, align 8, !range !233, !noalias !138369, !noundef !12
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc.i.i.i
  %i.fz = load ptr, ptr %i.eo, align 8, !noalias !138369, !nonnull !12, !align !4496, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !138369
  br label %bb.ay

bb.aa:                                            ; preds = %.noexc.i.i.i
  %i.ga = load i8, ptr %i.em, align 1, !range !233, !noalias !138369, !noundef !12
  %i.gb = trunc nuw i8 %i.ga to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !138369
  br i1 %i.gb, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load ptr, ptr %i.aw, align 8, !alias.scope !138366, !noalias !138371, !nonnull !12, !align !4496, !noundef !12 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138372), !noalias !138375
  call void @llvm.experimental.noalias.scope.decl(metadata !138376), !noalias !138375
  call void @llvm.experimental.noalias.scope.decl(metadata !138379), !noalias !138375
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !138382, !noalias !138385, !noundef !12
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !alias.scope !138382, !noalias !138385
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 0, ptr %i.gh, align 8, !alias.scope !138389, !noalias !138385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !138390
  invoke void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.gc)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i.i.loopexit.i.i.i, !noalias !138327

.noexc13.i.i.i:                                   ; preds = %bb.ab
  %i.gi = load i64, ptr %i.as, align 8, !range !12236, !noalias !138390, !noundef !12 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 2
  %i.gk = load ptr, ptr %i.en, align 8, !noalias !138390 ; 4 uses
  br i1 %i.gj, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.noexc13.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138390 ; 20 uses
  %i.gl = trunc nuw i64 %i.gi to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ], !noalias !138375
  br i1 %i.gl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gm = load ptr, ptr %i.eb, align 8, !alias.scope !138325, !noalias !138391, !nonnull !12, !noundef !12 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !138395, !nonnull !12, !noundef !12 ; 2 uses
  %i.gp = load ptr, ptr %i.gm, align 16, !noalias !138395, !nonnull !12, !noundef !12
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %i.gs
  br i1 %i.gt, label %bb.ae, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hf300aec12298f66fE.exit.i.i.i.i.i.i.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hf300aec12298f66fE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ad
  %i.gu = sub i64 0, %.sroa.4.0.copyload.i.i.i.i.i.i.i
  %i.gv = getelementptr i8, ptr %i.go, i64 %i.gu  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ], !noalias !138375
  store ptr %i.gv, ptr %i.gn, align 16, !noalias !138395
  br label %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hab9670a75d9d95b9E.exit.i.i.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.ad
  %i.gw = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 1, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i.i.loopexit.i.i.i, !noalias !138327 ; 2 uses

.noexc14.i.i.i:                                   ; preds = %bb.ae
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %bb.af, label %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hab9670a75d9d95b9E.exit.i.i.i.i.i.i.i", !prof !10

bb.af:                                            ; preds = %.noexc14.i.i.i
  invoke void @_ZN7bumpalo3oom17h5faf5517b7c985fdE() #85
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i.i.loopexit.split-lp.i.i.i, !noalias !138327

.noexc15.i.i.i:                                   ; preds = %bb.af
  unreachable

"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hab9670a75d9d95b9E.exit.i.i.i.i.i.i.i": ; preds = %.noexc14.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hf300aec12298f66fE.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hf300aec12298f66fE.exit.i.i.i.i.i.i.i.i" ], [ %i.gw, %.noexc14.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.gk, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 false), !noalias !138396
  br label %bb.ah

bb.ag:                                            ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !138390
  br label %bb.ay

bb.ah:                                            ; preds = %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hab9670a75d9d95b9E.exit.i.i.i.i.i.i.i", %bb.ac
  %.sroa.0.0.ph.i.i.i.i = phi ptr [ %i.gk, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hab9670a75d9d95b9E.exit.i.i.i.i.i.i.i" ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !138390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !138361
  invoke fastcc void @_ZN10serde_core2de9MapAccess10next_value17h1f04111300d9aa25E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.au, ptr nonnull %i.gc)
          to label %bb.aj unwind label %.loopexit.i.i.i.i.loopexit.i.i.i, !noalias !138365

bb.ai:                                            ; preds = %bb.aa
  %.sroa.030.0.copyload31.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !138397
  %.sroa.732.0.copyload34.i.i.i.i.i.i = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !138338
  br label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he9e94fe773c68abcE.exit.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.gx = load ptr, ptr %i.au, align 8, !noalias !138361, !noundef !12 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load ptr, ptr %i.eh, align 8, !noalias !138361, !nonnull !12, !align !4496, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !138361
  br label %bb.ay

bb.al:                                            ; preds = %bb.aj
  %i.ha = load i64, ptr %i.eh, align 8, !noalias !138361, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !138361
  call void @llvm.experimental.noalias.scope.decl(metadata !138398)
  call void @llvm.experimental.noalias.scope.decl(metadata !138401)
  call void @llvm.experimental.noalias.scope.decl(metadata !138403)
  call void @llvm.experimental.noalias.scope.decl(metadata !138406)
  %i.hb = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 17
  br i1 %i.hb, label %bb.am, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.al
  %i.hc = icmp samesign ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 7
  br i1 %i.hc, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.al
  %i.hd = add i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, -17 ; 2 uses
  %i.he = lshr i64 %i.hd, 4                       ; 2 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %i.hg = icmp eq i64 %i.he, 0
  br i1 %i.hg, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %unroll_iter = and i64 %i.hf, 2305843009213693950
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new"
  %.sroa.0.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new" ], [ %i.hq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new" ], [ %i.ia, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new" ], [ %i.hr, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 5 uses
  %niter = phi i64 [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new" ], [ %niter.next.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !138408, !noalias !138417
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hi, align 1, !alias.scope !138408, !noalias !138417
  %i.hj = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hk = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.hl = zext i64 %i.hj to i128
  %i.hm = zext i64 %i.hk to i128
  %i.hn = mul nuw i128 %i.hm, %i.hl               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64                 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.hh, align 1, !alias.scope !138408, !noalias !138417
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.hs, align 1, !alias.scope !138408, !noalias !138417
  %i.ht = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hu = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.hv = zext i64 %i.ht to i128
  %i.hw = zext i64 %i.hu to i128
  %i.hx = mul nuw i128 %i.hw, %i.hv               ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = xor i128 %i.hy, %i.hx
  %i.ia = trunc i128 %i.hz to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ib = and i64 %i.hd, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ib, 0
  br i1 %lcmp.mod.not.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa" ]
  %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ia, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa" ]
  %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.0.ph.i.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hr, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa" ] ; 2 uses
  %lcmp.mod1678 = trunc i64 %i.hf to i1
  call void @llvm.assume(i1 %lcmp.mod1678)
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !138408, !noalias !138417
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.018.091.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ic, align 1, !alias.scope !138408, !noalias !138417
  %i.id = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.sroa.0.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.ie = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.if = zext i64 %i.id to i128
  %i.ig = zext i64 %i.ie to i128
  %i.ih = mul nuw i128 %i.ig, %i.if               ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = xor i128 %i.ii, %i.ih
  %i.ik = trunc i128 %i.ij to i64
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.hq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa" ], [ %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %.lcssa = phi i64 [ %i.ia, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa" ], [ %i.ik, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.il = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -16
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.im, align 1, !alias.scope !138408, !noalias !138417
  %i.in = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.06.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa
  %i.io = getelementptr i8, ptr %i.il, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.io, align 1, !alias.scope !138408, !noalias !138417
  %i.ip = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lcssa
  br label %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.iq = icmp samesign ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %i.iq, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h00e1fe7d79ac91b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ao

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.am
  %.sroa.026.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.ph.i.i.i.i, align 1, !alias.scope !138408, !noalias !138417
  %i.ir = xor i64 %.sroa.026.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.is = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i
  %i.it = getelementptr i8, ptr %i.is, i64 -8
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.it, align 1, !alias.scope !138408, !noalias !138417
  %i.iu = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i, label %bb.ap

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h00e1fe7d79ac91b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an
  %i.iv = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i
  %i.iw = getelementptr i8, ptr %i.iv, i64 -4
  %.sroa.031.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.iw, align 1, !alias.scope !138408, !noalias !138417
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.ph.i.i.i.i, align 1, !alias.scope !138408, !noalias !138417
  %i.ix = zext i32 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.iy = xor i64 %i.ix, 2611923443488327891
  %i.iz = zext i32 %.sroa.031.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ja = xor i64 %i.iz, 1376283091369227076
  br label %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jb = load i8, ptr %.sroa.0.0.ph.i.i.i.i, align 1, !alias.scope !138408, !noalias !138417, !noundef !12
  %i.jc = lshr i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !138408, !noalias !138417, !noundef !12
  %i.jf = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i
  %i.jg = getelementptr i8, ptr %i.jf, i64 -1
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !138408, !noalias !138417, !noundef !12
  %i.ji = zext i8 %i.jb to i64
  %i.jj = xor i64 %i.ji, 2611923443488327891
  %i.jk = zext i8 %i.jh to i64
  %i.jl = shl nuw nsw i64 %i.jk, 8
  %i.jm = zext i8 %i.je to i64
  %i.jn = or disjoint i64 %i.jl, %i.jm
  %i.jo = xor i64 %i.jn, 1376283091369227076
  br label %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h00e1fe7d79ac91b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ao, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iu, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ja, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h00e1fe7d79ac91b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jo, %bb.ap ], [ 1376283091369227076, %bb.ao ], [ %i.ip, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ir, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.iy, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h00e1fe7d79ac91b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jj, %bb.ap ], [ 2611923443488327891, %bb.ao ], [ %i.in, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h012ee1d2997e0755E.exit68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.jp = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i128
  %i.jq = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i128
  %i.jr = mul nuw i128 %i.jp, %i.jq               ; 2 uses
  %i.js = lshr i128 %i.jr, 64
  %i.jt = xor i128 %i.js, %i.jr
  %i.ju = trunc i128 %i.jt to i64
  %i.jv = xor i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %i.ju
  %i.jw = mul i64 %i.jv, 1452335207727870361
  %i.jx = add i64 %i.jw, 4919460506697669435      ; 2 uses
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.jx, i64 %i.jx, i64 26) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138425)
  call void @llvm.experimental.noalias.scope.decl(metadata !138428)
  %i.jz = lshr i64 %i.jy, 57
  %i.ka = trunc nuw nsw i64 %i.jz to i8           ; 5 uses
  %i.kb = load i64, ptr %i.ei, align 8, !alias.scope !138431, !noalias !138432, !noundef !12 ; 2 uses
  %i.kc = load ptr, ptr %i.eg, align 8, !alias.scope !138431, !noalias !138432, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ka, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i
  %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i ], [ %i.ku, %bb.ar ]
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jy, %_ZN9hashbrown3map9make_hash17h45b09f731d0b733aE.exit.i.i.i.i.i.i.i.i.i ], [ %i.kv, %bb.ar ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.kb ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.kd, align 1, !noalias !138435 ; 2 uses
  %i.ke = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i
  %i.kf = bitcast <16 x i1> %i.ke to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.kf, 0
  br i1 %.not.i.not33.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  %.sroa.010.0.i34.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.kt, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i" ], [ %i.kf, %bb.aq ] ; 3 uses
  %i.kg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i34.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.kh = zext nneg i16 %i.kg to i64
  %i.ki = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, %i.kh
  %i.kj = and i64 %i.ki, %i.kb
  %i.kk = sub nsw i64 0, %i.kj
  %i.kl = getelementptr inbounds [24 x i8], ptr %i.kc, i64 %i.kk ; 3 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -16
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !noalias !138438, !noundef !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i", !prof !61489

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -24
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kn, align 8, !noalias !138438, !nonnull !12, !align !12036, !noundef !12
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.0.0.ph.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i), !alias.scope !138441, !noalias !138445
  %i.ko = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ko, label %bb.av, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i", !prof !13

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i", %bb.aq
  %i.kp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kq = bitcast <16 x i1> %i.kp to i16
  %i.kr = icmp eq i16 %i.kq, 0
  br i1 %i.kr, label %bb.ar, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h53b4420b90ef1a53E.exit.i.i.i.i.i.i.i.i", !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hfc1ee15b89549343E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ks = add i16 %.sroa.010.0.i34.i.i.i.i.i.i.i.i.i.i, -1
  %i.kt = and i16 %i.ks, %.sroa.010.0.i34.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.kt, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ku = add i64 %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.kv = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, %i.ku
  br label %bb.aq

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h53b4420b90ef1a53E.exit.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.kw = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !138398, !noalias !138446, !noundef !12 ; 5 uses
  %i.kx = load i64, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !138447, !noalias !138450, !noundef !12
  %i.ky = icmp eq i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.as, label %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h53b4420b90ef1a53E.exit.i.i.i.i.i.i.i.i"
  invoke void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17ha33baa0427ac11f9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av, i64 noundef %i.kw, i64 noundef 1, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.loopexit.i.i.i, !noalias !138365

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.as
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !138447, !noalias !138450
  br label %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i"

"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h53b4420b90ef1a53E.exit.i.i.i.i.i.i.i.i"
  %i.kz = phi i64 [ %i.kw, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h53b4420b90ef1a53E.exit.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i ]
  %i.la = load ptr, ptr %i.av, align 8, !alias.scope !138447, !noalias !138450, !nonnull !12, !noundef !12
  %i.lb = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %i.kz ; 4 uses
  store ptr %.sroa.0.0.ph.i.i.i.i, ptr %i.lb, align 8, !noalias !138452
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !138453
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.gx, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !138453
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store i64 %i.ha, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !138365
  %i.lc = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !138447, !noalias !138450, !noundef !12
  %i.ld = add i64 %i.lc, 1
  store i64 %i.ld, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !138447, !noalias !138450
  call void @llvm.experimental.noalias.scope.decl(metadata !138454)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !138457, !noalias !138458, !nonnull !12, !noundef !12 ; 8 uses
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !138457, !noalias !138458, !noundef !12 ; 4 uses
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i = and i64 %.val10.i.i.i.i.i.i.i.i.i, %i.jy ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.le, align 1, !noalias !138461
  %i.lf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.lg = bitcast <16 x i1> %i.lf to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lg, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i.i.i.i.i.i, label %._crit_edge.i.i2.i.i.i.i.i.i.i.i, !prof !109052

.lr.ph.i.i5.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i5.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i5.i.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i.i, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i" ]
  %i.lh = phi i64 [ %i.li, %.lr.ph.i.i5.i.i.i.i.i.i.i.i ], [ 0, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hdc02e8f3e3369bf1E.exit.i.i.i.i.i.i.i.i" ]
  %i.li = add i64 %i.lh, 16                       ; 2 uses
  %i.lj = add i64 %i.li, %.sroa.0.010.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = and i64 %i.lj, %.val10.i.i.i.i.i.i.i.i.i ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZN11meilisearch6routes7indexes9documents28retrieve_documents_federated28_$u7b$$u7b$closure$u7d$$u7d$17h052835336956f207E":bb.a

bb.cs:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$meilisearch..search..federated..types..PreprocessedQuery$LT$meilisearch..routes..indexes..documents..BrowseQueryWithIndex$GT$$GT$17he68daf2e2d1caa54E"(ptr noalias noundef align 8 dereferenceable(608) %i.ac) #86
          to label %bb.cr unwind label %bb.br

bb.ct:                                            ; preds = %bb.cz, %bb.cv, %bb.cr, %bb.ci, %.body91.thread
  %.pn43.pn = phi { ptr, i32 } [ %.pn25.pn495, %.body91.thread ], [ %.pn39.pn, %bb.cr ], [ %i.kc, %bb.ci ], [ %i.lf, %bb.cz ], [ %i.lb, %bb.cv ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 1341
  %i.ky = load i8, ptr %i.kx, align 1, !range !233, !noundef !12
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.fz, label %.body88

bb.cu:                                            ; preds = %bb.d, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 3 uses
  invoke fastcc void @"_ZN11meilisearch19documents_retrieval32RemoteRetrieveDocuments$LT$T$GT$6finish28_$u7b$$u7b$closure$u7d$$u7d$17h0f28ce35c22d7dbbE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.x, ptr noundef nonnull align 8 %i.la, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$meilisearch..documents_retrieval..RemoteRetrieveDocuments$LT$usize$GT$..finish..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ee2ba963db9e8a0E"(ptr noundef nonnull align 8 %i.la) #86
          to label %bb.ct unwind label %bb.br

bb.cw:                                            ; preds = %bb.cu
  %i.lc = load i64, ptr %i.x, align 8, !range !191, !noundef !12 ; 3 uses
  %i.ld = icmp eq i64 %i.lc, -9223372036854775807
  br i1 %i.ld, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %common.ret

bb.cy:                                            ; preds = %bb.cw
  %.sroa.3252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3252.sroa.0.0.copyload = load i64, ptr %.sroa.3252.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3252.sroa.3.0.copyload = load ptr, ptr %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx, align 8 ; 8 uses
  %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.3252.sroa.5.0.copyload = load i64, ptr %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx, align 8 ; 8 uses
  %.sroa.3252.sroa.7.0..sroa.3252.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.3252.sroa.7.0.copyload = load i64, ptr %.sroa.3252.sroa.7.0..sroa.3252.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3252.sroa.9.0..sroa.3252.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.3252.sroa.9.0.copyload = load i64, ptr %.sroa.3252.sroa.9.0..sroa.3252.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3252.sroa.11.0..sroa.3252.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.3252.sroa.11.0.copyload = load ptr, ptr %.sroa.3252.sroa.11.0..sroa.3252.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.5253.sroa.0.0.copyload = load ptr, ptr %.sroa.5253.0..sroa_idx, align 8
  %.sroa.5253.sroa.2.0..sroa.5253.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.le = load <2 x i64>, ptr %.sroa.5253.sroa.2.0..sroa.5253.0..sroa_idx.sroa_idx, align 8
  %.sroa.5253.sroa.4.0..sroa.5253.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.5253.sroa.4.0.copyload = load i64, ptr %.sroa.5253.sroa.4.0..sroa.5253.0..sroa_idx.sroa_idx, align 8
  %.sroa.5253.sroa.5.0..sroa.5253.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5253.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5253.sroa.5.0..sroa.5253.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$meilisearch..documents_retrieval..RemoteRetrieveDocuments$LT$usize$GT$..finish..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7ee2ba963db9e8a0E"(ptr noundef nonnull align 8 %i.la)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.da:                                            ; preds = %bb.cy
  %.not.i90 = icmp eq i64 %i.lc, -9223372036854775808
  br i1 %.not.i90, label %bb.db, label %bb.fi

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.3252.sroa.0.0.copyload, ptr %i.z, align 8
  %.sroa.2343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.3252.sroa.3.0.copyload, ptr %.sroa.2343.0..sroa_idx, align 8
  %.sroa.3344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.3252.sroa.5.0.copyload, ptr %.sroa.3344.0..sroa_idx, align 8
  store i64 %.sroa.3252.sroa.7.0.copyload, ptr %i.y, align 8
  %.sroa.6346.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.3252.sroa.9.0.copyload, ptr %.sroa.6346.24..sroa_idx, align 8
  %.sroa.7347.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.3252.sroa.11.0.copyload, ptr %.sroa.7347.24..sroa_idx, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  invoke fastcc void @"_ZN134_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hf388a528d721ac94E"(ptr noalias noundef align 8 dereferenceable(24) %i.lg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.dc unwind label %bb.fh

bb.dc:                                            ; preds = %bb.db
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !143841
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3252.sroa.3.0.copyload) ]
  %i.li = icmp ult i64 %.sroa.3252.sroa.5.0.copyload, 104811045873349726
  call void @llvm.assume(i1 %i.li)
  %i.lj = getelementptr inbounds nuw [88 x i8], ptr %.sroa.3252.sroa.3.0.copyload, i64 %.sroa.3252.sroa.5.0.copyload
  store ptr %.sroa.3252.sroa.3.0.copyload, ptr %i.j, align 8, !alias.scope !143843, !noalias !143846
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.3252.sroa.0.0.copyload, ptr %i.lk, align 8, !alias.scope !143843, !noalias !143846
  %i.ll = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.3252.sroa.3.0.copyload, ptr %i.ll, align 8, !alias.scope !143843, !noalias !143846
  %i.lm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.lj, ptr %i.lm, align 8, !alias.scope !143843, !noalias !143846
  call void @llvm.experimental.noalias.scope.decl(metadata !143848)
  %.idx.i = mul nuw nsw i64 %.sroa.3252.sroa.5.0.copyload, 88
  call void @llvm.experimental.noalias.scope.decl(metadata !143851)
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 4 uses
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !143854, !noalias !143857, !noundef !12 ; 3 uses
  %i.lp = load i64, ptr %i.lh, align 8, !range !64, !alias.scope !143854, !noalias !143857, !noundef !12
  %i.lq = sub i64 %i.lp, %i.lo
  %i.lr = icmp ugt i64 %.sroa.3252.sroa.5.0.copyload, %i.lq
  br i1 %i.lr, label %bb.de, label %bb.df, !prof !10

bb.dd:                                            ; preds = %bb.de
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$usize$C$meilisearch..routes..indexes..documents..DocumentsResult$RP$$GT$$GT$17hcc51ff56904d3b03E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.j) #86
          to label %.body91.thread unwind label %bb.dh, !noalias !143859

bb.de:                                            ; preds = %bb.dc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9e458b4d76da882dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh, i64 noundef %i.lo, i64 noundef %.sroa.3252.sroa.5.0.copyload, i64 noundef 8, i64 noundef 88)
          to label %.noexc.i.i unwind label %bb.dd, !noalias !143857

.noexc.i.i:                                       ; preds = %bb.de
  %.pre.i.i.i = load i64, ptr %i.ln, align 8, !alias.scope !143860, !noalias !143857
  br label %bb.df

bb.df:                                            ; preds = %.noexc.i.i, %bb.dc
  %i.lt = phi i64 [ %i.lo, %bb.dc ], [ %.pre.i.i.i, %.noexc.i.i ] ; 3 uses
  %i.lu = icmp ult i64 %i.lt, 104811045873349726
  call void @llvm.assume(i1 %i.lu)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 1320 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !alias.scope !143860, !noalias !143857, !nonnull !12, !noundef !12
  %i.lx = getelementptr inbounds nuw [88 x i8], ptr %i.lw, i64 %i.lt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull readonly align 8 %.sroa.3252.sroa.3.0.copyload, i64 %.idx.i, i1 false), !noalias !143861
  %i.ly = add nuw nsw i64 %i.lt, %.sroa.3252.sroa.5.0.copyload ; 2 uses
  store i64 %i.ly, ptr %i.ln, align 8, !alias.scope !143860, !noalias !143857
  %i.lz = icmp eq i64 %.sroa.3252.sroa.0.0.copyload, 0
  br i1 %i.lz, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ma = mul nuw i64 %.sroa.3252.sroa.0.0.copyload, 88
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3252.sroa.3.0.copyload, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !143862
  %.val70.pr = load i64, ptr %i.ln, align 8
  br label %bb.di

bb.dh:                                            ; preds = %bb.dd
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !143867
  unreachable

bb.di:                                            ; preds = %bb.df, %bb.dg
  %.val70 = phi i64 [ %i.ly, %bb.df ], [ %.val70.pr, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !143841
  %.val69 = load ptr, ptr %i.lv, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.mc = icmp eq i64 %.val70, 0
  br i1 %i.mc, label %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.di
  %.idx.i93 = mul i64 %.val70, 88
  %i.md = add i64 %.idx.i93, -88                  ; 2 uses
  %i.me = udiv i64 %i.md, 88
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %xtraiter608 = and i64 %i.mf, 7                 ; 3 uses
  %i.mg = icmp ult i64 %i.md, 616
  br i1 %i.mg, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.mf, 576460752303423480
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.nf, %.lr.ph.i ]
  %.sroa.04.05.i = phi ptr [ %.val69, %.lr.ph.i.preheader.new ], [ %i.nc, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 80
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !143868, !noundef !12
  %i.mj = add i64 %i.mi, %.sroa.0.06.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 168
  %i.ml = load i64, ptr %i.mk, align 8, !alias.scope !143868, !noundef !12
  %i.mm = add i64 %i.ml, %i.mj
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 256
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !143868, !noundef !12
  %i.mp = add i64 %i.mo, %i.mm
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 344
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !143868, !noundef !12
  %i.ms = add i64 %i.mr, %i.mp
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 432
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !143868, !noundef !12
  %i.mv = add i64 %i.mu, %i.ms
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 520
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !143868, !noundef !12
  %i.my = add i64 %i.mx, %i.mv
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 608
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !143868, !noundef !12
  %i.nb = add i64 %i.na, %i.my
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 704 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i, i64 696
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !143868, !noundef !12
  %i.nf = add i64 %i.ne, %i.nb                    ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  br i1 %lcmp.mod609.not, label %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.nf, %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa ]
  %.sroa.04.05.i.epil.init = phi ptr [ %.val69, %.lr.ph.i.preheader ], [ %i.nc, %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa ]
  %lcmp.mod611 = icmp ne i64 %xtraiter608, 0
  call void @llvm.assume(i1 %lcmp.mod611)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %i.nj, %.lr.ph.i.epil ], [ %.sroa.0.06.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.04.05.i.epil = phi ptr [ %i.ng, %.lr.ph.i.epil ], [ %.sroa.04.05.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.epil, i64 88
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.epil, i64 80
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !143868, !noundef !12
  %i.nj = add i64 %i.ni, %.sroa.0.06.i.epil       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter608
  br i1 %epil.iter.cmp.not, label %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit, label %.lr.ph.i.epil, !llvm.loop !143871

_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit: ; preds = %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.di
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.di ], [ %i.nf, %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph.i.epil ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 1341 ; 4 uses
  store i8 0, ptr %i.nk, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.lh, i64 24, i1 false)
  invoke void @_ZN11meilisearch6routes7indexes9documents23merge_documents_results17h8ea3fff2446a3b12E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.body91.thread

bb.dk:                                            ; preds = %_ZN11meilisearch6routes7indexes9documents14merge_metadata17hde8fb83d7bcd06c7E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !143872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !143891
  store i64 -9223372036854775808, ptr %i.i, align 8, !noalias !143891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !143891
  call void @llvm.experimental.noalias.scope.decl(metadata !143892)
  call void @llvm.experimental.noalias.scope.decl(metadata !143893)
  call void @llvm.experimental.noalias.scope.decl(metadata !143894)
  %.sroa.0266.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.no = load <2 x i64>, ptr %i.nn, align 8
  store <2 x i64> %i.no, ptr %.sroa.0266.sroa.5.0..sroa_idx, align 8, !alias.scope !143895, !noalias !143899
  %.sroa.4.0..sroa_idx.i.i.i94 = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i94, align 8, !alias.scope !143895, !noalias !143900
  call void @llvm.experimental.noalias.scope.decl(metadata !143901)
  call void @llvm.experimental.noalias.scope.decl(metadata !143904)
  call void @llvm.experimental.noalias.scope.decl(metadata !143906)
  call void @llvm.experimental.noalias.scope.decl(metadata !143909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !143911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !143912
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc9eef40c371088f9E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.dm unwind label %bb.dl, !noalias !143913

bb.dl:                                            ; preds = %bb.dk
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.dm:                                            ; preds = %bb.dk
  %i.nq = load i64, ptr %i.e, align 8, !range !186, !noalias !143912, !noundef !12
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.nq, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dt, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !143914)
  %i.nr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i94, align 8, !alias.scope !143917, !noalias !143918, !nonnull !12, !align !4496, !noundef !12
  %i.ns = load i64, ptr %i.nr, align 8, !range !186, !noalias !143920, !noundef !12
  %.not.i.i.i.i.i.i.i.i.i95 = icmp eq i64 %i.ns, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i95, label %bb.do, label %bb.dv

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !143921)
  %i.nt = load i64, ptr %.sroa.5267.0..sroa_idx, align 8, !alias.scope !143924, !noalias !143925, !noundef !12
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !143927)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !alias.scope !143930, !noalias !143931, !nonnull !12, !noundef !12 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nw, align 8, !alias.scope !143930, !noalias !143931, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 152
  call void @llvm.experimental.noalias.scope.decl(metadata !143933)
  %i.nx = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nx, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h19b46ae1256f0526E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ny = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 152
  %i.nz = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 120
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nz, align 8, !noalias !143936, !nonnull !12, !noundef !12
  %i.oa = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 136
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oa, align 8, !noalias !143936, !nonnull !12, !noundef !12
  %i.ob = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.oc = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.od = sub nuw i64 %i.ob, %i.oc
  %i.oe = udiv exact i64 %i.od, 72
  %i.of = add nuw nsw i64 %i.oe, 1                ; 2 uses
  %i.og = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.og, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h19b46ae1256f0526E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, -152
  %i.oh = udiv exact i64 %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i, 152
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %bb.dr
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.dr ], [ %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.of, %bb.dr ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dr ], [ %i.os, %bb.ds ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [152 x i8], ptr %i.ny, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.oj = getelementptr i8, ptr %i.oi, i64 120
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oj, align 8, !noalias !143944, !nonnull !12, !noundef !12
  %i.ok = getelementptr i8, ptr %i.oi, i64 136
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ok, align 8, !noalias !143944, !nonnull !12, !noundef !12
  %i.ol = ptrtoint ptr %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.om = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.on = sub nuw i64 %i.ol, %i.om
  %i.oo = udiv exact i64 %i.on, 72
  %i.op = add i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.oq = add i64 %i.op, %i.oo                    ; 2 uses
  %i.or = icmp uge i64 %i.oq, %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.oq, i64 undef ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.or, i1 false
  %i.os = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ot = icmp eq i64 %i.os, %i.oh
  br i1 %i.ot, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h19b46ae1256f0526E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.ds

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h19b46ae1256f0526E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ds, %bb.dq, %bb.dp
  %.sink.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ]
  %.sroa.717.0.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.dp ], [ %i.of, %bb.dq ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ]
  store i64 %.sroa.717.0.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !143933, !noalias !143951
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dm
  store i64 0, ptr %i.h, align 8, !alias.scope !143952, !noalias !143953
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ou, align 8, !alias.scope !143952, !noalias !143953
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.ov, align 8, !alias.scope !143952, !noalias !143953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !143912
  invoke fastcc void @"_ZN4core3ptr362drop_in_place$LT$alloc..vec..Vec$LT$itertools..kmerge_impl..HeadTail$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$C$meilisearch..routes..indexes..documents..merge_documents_results..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17ha9efac6f4631d631E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
          to label %bb.eq unwind label %bb.ep, !noalias !143891

bb.du:                                            ; preds = %bb.dw
  %i.ow = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h9c60a9c1a2a8e1a9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #86
          to label %bb.eo unwind label %bb.en, !noalias !143912

bb.dv:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h19b46ae1256f0526E.exit.i.i.i.i.i.i.i.i.i.i", %bb.do, %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !143954
  %i.ox = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, 17) 8) #79, !noalias !143954 ; 4 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 288, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.du, !noalias !143912

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ox, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !143912
  store i64 4, ptr %i.f, align 8, !noalias !143912
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ox, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !143912
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !143912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !143912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !143913
  call void @llvm.experimental.noalias.scope.decl(metadata !143959)
  call void @llvm.experimental.noalias.scope.decl(metadata !143962)
  call void @llvm.experimental.noalias.scope.decl(metadata !143964)
  call void @llvm.experimental.noalias.scope.decl(metadata !143967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143969
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
end_hunk_4
begin_hunk_5_@_ZN12sharded_slab3tid12Registration8register17h8bd8c20c3a9e68c9E:bb.a
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4014) #85
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bn = tail call noundef nonnull ptr @_ZN3std6thread7current7current17h6236a40c56effd97E()
  store ptr %i.bn, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bo = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.t unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !186352)
  call void @llvm.experimental.noalias.scope.decl(metadata !186355)
  call void @llvm.experimental.noalias.scope.decl(metadata !186358)
  call void @llvm.experimental.noalias.scope.decl(metadata !186361)
  %i.bq = load ptr, ptr %i.e, align 8, !alias.scope !186364, !nonnull !12, !noundef !12
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !186364
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.s, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit.i"

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit.i" unwind label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.bt = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null               ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bo, 1
  %spec.select.i = select i1 %.not.i, ptr @4015, ptr %i.bt
  %spec.select35.i = select i1 %.not.i, i64 9, i64 %i.bu
  store ptr %spec.select.i, ptr %i.c, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select35.i, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @4006, ptr %i.b, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 32, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46693c2b870988bfE", ptr %.sroa.417.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.bx, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.421.0..sroa_idx.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.by, align 8
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46693c2b870988bfE", ptr %.sroa.425.0..sroa_idx.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @4007, ptr %i.bz, align 8
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.429.0..sroa_idx.i, align 8
  store ptr @4019, ptr %i.d, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 5, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %i.cd, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !186365)
  call void @llvm.experimental.noalias.scope.decl(metadata !186368)
  call void @llvm.experimental.noalias.scope.decl(metadata !186371)
  call void @llvm.experimental.noalias.scope.decl(metadata !186374)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !186377, !nonnull !12, !noundef !12
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !186377
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit32.i"

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit32.i"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit32.i": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre.i = load i64, ptr %i.i, align 8
  br label %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h0aa1e723df6d092bE.exit"

bb.w:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit.i": ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bp

"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h0aa1e723df6d092bE.exit": ; preds = %"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17h1440280577cda695E.exit", %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit32.i"
  %i.ci = phi i64 [ %i.ba, %"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17h1440280577cda695E.exit" ], [ %.pre.i, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3d2536e6192abe4aE.exit32.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.x:                                             ; preds = %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17hf37930779e294f57E.exit", %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h0aa1e723df6d092bE.exit"
  %.sroa.0.0 = phi i64 [ %i.ci, %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h0aa1e723df6d092bE.exit" ], [ %.sroa.3.0.i, %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17hf37930779e294f57E.exit" ] ; 2 uses
  store i64 1, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.cj, align 8
  ret i64 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hed91270fdd35bb24E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 10 uses
  %i.i = shl i64 %i.h, 6                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 288230376151711743
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf29589f24898c273E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186378
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 17) 8) #79, !noalias !186378 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf29589f24898c273E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf29589f24898c273E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf29589f24898c273E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711736
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !186391
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !186391
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !186391
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !186391
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !186391
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !186391
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !186391
  %i.y = add nuw i64 %i.q, 8                      ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !186391
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf29589f24898c273E.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.i, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !186391
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !186408

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186409)
  br label %bb.i

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.al, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i ; 5 uses
  %i.al = add nuw i64 %.sroa.0.07.i.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186415)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.an = load i8, ptr %i.am, align 8, !range !233, !alias.scope !186418, !noundef !12
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186419)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186425)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !186428 ; 2 uses
  %i.aq = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17ha72d917fcb6d1484E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !186428, !nonnull !12, !noundef !12
  %i.as = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186428
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17ha72d917fcb6d1484E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17ha72d917fcb6d1484E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !186428 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17ha72d917fcb6d1484E.exit.i.i.i.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !186428, !nonnull !12, !noundef !12
  %i.aw = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186428
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i": ; preds = %bb.h, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17ha72d917fcb6d1484E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i
  %i.ax = icmp eq i64 %i.al, %i.h
  br i1 %i.ax, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h339d3b014ca26f09E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !noundef !12
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %i.az ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store atomic i8 1, ptr %i.bb release, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bd = atomicrmw add ptr %i.bc, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ba

bb.j:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17ha4d146fc5ef3690aE"(ptr noalias noundef align 8 dereferenceable(56) %2) #86
  resume { ptr, i32 } %i.be
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hf02a5f6367cf9ea1E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 9 uses
  %i.i = mul i64 %i.h, 112                        ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 82351536043346212
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdbc4df5d6e7bd26aE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186429
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 17) 8) #79, !noalias !186429 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdbc4df5d6e7bd26aE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdbc4df5d6e7bd26aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdbc4df5d6e7bd26aE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 144115188075855864
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.thread:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdbc4df5d6e7bd26aE.exit.i.i.i.i.i.i.i.i"
  %i.o = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { ptr, i1 } %i.o, 1
  %i.q = extractvalue { ptr, i1 } %i.o, 0
  %.sroa.10.0.i.i.i.i.i.i.i.mux14 = select i1 %i.p, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.q
  br label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.r = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !186442
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !186442
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !186442
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !186442
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !186442
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.x, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !186442
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.y, i64 776
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !186442
  %i.z = add nuw i64 %i.r, 8                      ; 2 uses
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 888
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !186442
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ac = add nuw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ab
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !186442
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !186459

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ae = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.af = extractvalue { ptr, i1 } %i.ae, 1       ; 2 uses
  %i.ag = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.af, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.ag
  br i1 %i.af, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.ai, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.ai = add nuw i64 %.sroa.0.08.i.i, 1          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !233, !alias.scope !186460, !noundef !12
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hbf5ebd81f9cae422E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.am)
  br label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i"

"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.an = icmp eq i64 %i.ai, %i.h
  br i1 %i.an, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17hc3e4b96b8d4d9135E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !12
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0, i64 %i.ap ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store atomic i8 1, ptr %i.ar release, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.at = atomicrmw add ptr %i.as, i64 1 release, align 8 ; 0 uses
  ret ptr %i.aq

bb.g:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hbf5ebd81f9cae422E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.av)
  resume { ptr, i32 } %i.au
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_f6417h5f7ce823ec7bbbc6E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, double noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store double %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4024)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_i6417hb8b02051a5f4a4b2E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4025)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_u6417h185991d9ea905152E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4026)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_bool17h152674ace46a2affE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @233)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_i12817h24ba6ca2b90bc067E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN97_$LT$tracing_subscriber..fmt..format..json..JsonVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17hbb072e76073a6d7bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4027)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_i12817h73999dce8856541aE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4027)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_i12817h7c3b005cde30aae4E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN86_$LT$tracing_serde..SerdeMapVisitor$LT$S$GT$$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17he56e99808ba45ee3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4027)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_u12817h22879bb2e2327586E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4028)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_u12817hc47df92c47d4f0b1E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN97_$LT$tracing_subscriber..fmt..format..json..JsonVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17hbb072e76073a6d7bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4028)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_u12817hdd1ffc988f188ecdE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN86_$LT$tracing_serde..SerdeMapVisitor$LT$S$GT$$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17he56e99808ba45ee3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4028)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit12record_bytes17h91bcf00b12a63b8eE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @"_ZN86_$LT$tracing_serde..SerdeMapVisitor$LT$S$GT$$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17he56e99808ba45ee3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4029)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit12record_bytes17hbcfb58854521bf2dE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4029)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit12record_error17h5edba2646ae17f7eE(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @"_ZN97_$LT$tracing_subscriber..fmt..format..json..JsonVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17hbb072e76073a6d7bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4030)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_5
begin_hunk_6_@"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha3ed2bc52d5fec15E":bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hac2d216ebcbdadbdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3506, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb11d6cdcd1b5c46cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3550, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb1610e80add5ed0fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1345, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbbe683be314c98a1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3504, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbfdcf0116f90b68eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 4 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3924, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc02cf83b5b263fb5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3554, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc233046796ac74d1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3935, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc4a8134e710f3b97E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3929, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc75ed70c02f44e59E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3548, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hca1b412b0660eb58E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3925, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hce68a74364d18f48E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3540, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd70c0cad576a82daE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1359, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd9733001aefcaee6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1340, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hdab55ae06fd9a1feE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1351, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17he76979345c1ff875E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3538, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hed97199bbf6aabaaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3524, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hee51e3df470bb563E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3518, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf284fab677033145E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3536, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hfc2c6ffbce2e477eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3508, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hfd4ae39c5256f8c5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3560, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hfe0b6ba5b0196fdaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3552, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3csv11byte_record10ByteRecord8validate17h39cc0e1d17e34fdaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !align !4496, !noundef !12 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !65211

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5034) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %i.d, 0                    ; 2 uses
  br i1 %.not6, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !12
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !noundef !12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !12 ; 3 uses
  %.not7 = icmp ugt i64 %i.m, %i.o
  br i1 %.not7, label %bb.e, label %bb.f, !prof !139000

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5035) #85
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %i.p = phi i64 [ %i.j, %.thread ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %bb.d ]
  %.sroa.0.015 = phi i64 [ 0, %.thread ], [ %i.m, %bb.d ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.t, %._crit_edge.i ], [ 0, %bb.f ] ; 9 uses
  %i.t = add i64 %.sroa.01.0.i, 32                ; 2 uses
  %.not.i = icmp ugt i64 %i.t, %.sroa.0.015
  br i1 %.not.i, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.g
  %.not36.i = icmp eq i64 %.sroa.01.0.i, -32
  br i1 %.not36.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.g
  %i.u = icmp ult i64 %.sroa.01.0.i, %.sroa.0.015
  br i1 %i.u, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17

iter.check:                                       ; preds = %.preheader.i
  %i.v = shl i64 %indvar, 5
  %i.w = sub i64 %.sroa.0.015, %i.v               ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check146 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check146, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %.sroa.0.015, 31                 ; 3 uses
  %n.vec = sub nuw i64 %i.w, %i.x                 ; 3 uses
  %i.y = add i64 %.sroa.01.0.i, %n.vec
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi147 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !234022
  %wide.load148 = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !234022
  %i.ac = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.ad = icmp slt <16 x i8> %wide.load148, zeroinitializer
  %i.ae = or <16 x i1> %vec.phi, %i.ac            ; 2 uses
  %i.af = or <16 x i1> %vec.phi147, %i.ad         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !234025

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.af, %i.ae
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ah = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not157 = icmp eq i16 %i.ah, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.x, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !234026

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not157, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.ai = xor i1 %bc.merge.rdx, true
  %i.aj = and i64 %.sroa.0.015, 3                 ; 2 uses
  %n.vec149 = sub i64 %i.w, %i.aj                 ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i, %n.vec149
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi151 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr158, %vec.epilog.vector.body ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %index150
  %wide.load152 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !234022
  %i.an = icmp slt <4 x i8> %wide.load152, zeroinitializer
  %i.ao = or <4 x i1> %vec.phi151, %i.an
  %.fr158 = freeze <4 x i1> %i.ao                 ; 2 uses
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !234027

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aq = bitcast <4 x i1> %.fr158 to i4
  %.not159 = icmp eq i4 %i.aq, 0                  ; 2 uses
  %cmp.n154 = icmp eq i64 %i.aj, 0
  br i1 %cmp.n154, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.ph = phi i64 [ %.sroa.01.0.i, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.sroa.011.023.i.ph = phi i1 [ true, %iter.check ], [ %.not157, %vec.epilog.iter.check ], [ %.not159, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.sroa.01.124.i = phi i64 [ %i.au, %.lr.ph25.i ], [ %.sroa.01.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.sroa.011.023.i = phi i1 [ %i.at, %.lr.ph25.i ], [ %.sroa.011.023.i.ph, %.lr.ph25.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.124.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !234022, !noundef !12
  %.inv.i = icmp sgt i8 %i.as, -1
  %i.at = select i1 %.inv.i, i1 %.sroa.011.023.i, i1 false ; 2 uses
  %i.au = add nuw i64 %.sroa.01.124.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %.sroa.0.015
  br i1 %exitcond.not.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i, !llvm.loop !234028

._crit_edge.i:                                    ; preds = %.preheader14.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  %i.aw = load <32 x i8>, ptr %i.av, align 1, !alias.scope !234022
  %i.ax = icmp slt <32 x i8> %i.aw, zeroinitializer
  %i.ay = bitcast <32 x i1> %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.az, label %bb.g, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit: ; preds = %.lr.ph25.i, %vec.epilog.middle.block, %middle.block
  %.lcssa144 = phi i1 [ %.not159, %vec.epilog.middle.block ], [ %.not157, %middle.block ], [ %i.at, %.lr.ph25.i ]
  br i1 %.lcssa144, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread: ; preds = %.preheader14.i, %._crit_edge.i, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit
  br i1 %.not6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread
  %i.ba = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !12 ; 2 uses
  %.not5.i = icmp ugt i64 %i.bc, %i.p
  br i1 %.not5.i, label %bb.i, label %.lr.ph, !prof !139000

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bc, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5033) #85
  unreachable

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17: ; preds = %.preheader.i, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit
  store i64 0, ptr %0, align 8
  br label %bb.p

.lr.ph:                                           ; preds = %bb.h, %bb.r
  %.sroa.6.053 = phi i64 [ %i.bi, %bb.r ], [ 0, %bb.h ] ; 4 uses
  %.sroa.9.052 = phi i64 [ %i.bj, %bb.r ], [ 0, %bb.h ] ; 5 uses
  %i.bd = load i64, ptr %i.c, align 8, !noalias !234029, !noundef !12 ; 4 uses
  %i.be = load ptr, ptr %i.e, align 8, !noalias !234029, !nonnull !12, !noundef !12
  %i.bf = load i64, ptr %i.g, align 8, !noalias !234029, !noundef !12 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not.i.i, label %bb.j, label %bb.k, !prof !65211

bb.j:                                             ; preds = %.lr.ph
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bd, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5034) #85, !noalias !234029
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.bg = icmp ult i64 %.sroa.9.052, %i.bd
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.9.052
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !234029, !noundef !12 ; 5 uses
  %i.bj = add nuw i64 %.sroa.9.052, 1             ; 2 uses
  %i.bk = load i64, ptr %i.q, align 8, !noalias !234029, !noundef !12 ; 2 uses
  %i.bl = icmp ult i64 %i.bi, %.sroa.6.053
  %.not5.i.i = icmp ugt i64 %i.bi, %i.bk
  %or.cond.i.i = or i1 %i.bl, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.o, !prof !65211

bb.m:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.9.052, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10915) #85, !noalias !234029
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.6.053, i64 noundef %i.bi, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10916) #85, !noalias !234029
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.r, align 8, !noalias !234029, !nonnull !12, !noundef !12
  %i.bn = sub nuw i64 %i.bi, %.sroa.6.053
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.6.053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bn)
  %i.bp = load i64, ptr %i.a, align 8, !range !861, !noundef !12
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %._crit_edge, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17
  ret void

bb.q:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noundef !12
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.052, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bs, ptr %i.bu, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = icmp eq i64 %i.bj, %i.d
  br i1 %i.bv, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3csv6reader15Reader$LT$R$GT$16set_headers_impl17he20e583115b2c3d2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.015 = alloca [24 x i8], align 8          ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = invoke fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3485e841379a6d74E"(ptr nonnull %1)
          to label %bb.c unwind label %bb.b       ; 8 uses

.critedge:                                        ; preds = %bb.p, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn.pn

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !234035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234035
  invoke fastcc void @_ZN3csv11byte_record10ByteRecord8validate17h39cc0e1d17e34fdaE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !234039

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$csv..byte_record..ByteRecord$GT$17h940b6b03378b5a09E"(ptr nonnull align 8 %i.e) #86, !noalias !234039
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !range !861, !noalias !234035, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %i.j, align 8, !noalias !234035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234040)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234043)
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !234046 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4461994242c7e3b7E.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !234046, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !234046
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4461994242c7e3b7E.exit.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4461994242c7e3b7E.exit.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !234040 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4461994242c7e3b7E.exit.i.i.i.i"
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !234040, !nonnull !12, !noundef !12
  %i.r = shl nuw i64 %.val.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !234040
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = ptrtoint ptr %i.e to i64
  %i.t = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.s, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.022.1 = phi i64 [ 1, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.u = phi <2 x i64> [ %i.k, %bb.k ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.022.1, ptr %i.d, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store <2 x i64> %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.w = load i8, ptr %i.v, align 1, !range !308, !noundef !12
  switch i8 %i.w, label %bb.m [
    i8 1, label %bb.l
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.h, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4461994242c7e3b7E.exit.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 88, i64 noundef 8) #79
  br label %bb.j

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.x = trunc nuw i64 %.sroa.022.1 to i1
  br i1 %i.x, label %bb.n, label %bb.o

bb.m:                                             ; preds = %._crit_edge, %bb.j
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %1, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$csv..reader..Headers$GT$$GT$17h02f8f851e6cffaf1E"(ptr noalias noundef align 8 dereferenceable(32) %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015, i64 24, i1 false)
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %.sroa.516.0..sroa_idx17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

end_hunk_6
begin_hunk_7_@_ZN4core3ops8function6FnOnce9call_once17h3b92dd89ccf1754dE:bb.a

.noexc61.i:                                       ; preds = %bb.am
  unreachable

"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i55.i": ; preds = %bb.al, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i54.i
  %.sroa.10.0.i.i.i.i.i.i.i.i56.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i54.i ], [ %i.cy, %bb.al ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i56.i, ptr nonnull readonly align 1 %.sroa.8.1.i, i64 %.sroa.12.1.i, i1 false), !noalias !240953
  br label %bb.an

.body26.i:                                        ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i"

bb.an:                                            ; preds = %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i55.i", %bb.ak
  %.sroa.87.0.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i56.i, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i55.i" ], [ undef, %bb.ak ]
  %.sroa.05.067.i = phi i64 [ -9223372036854775805, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i55.i" ], [ -9223372036854775808, %bb.ak ]
  store i64 %.sroa.05.067.i, ptr %i.t, align 8, !alias.scope !240954, !noalias !240958
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.12.1.i, ptr %.sroa.66.0..sroa_idx.i, align 8, !alias.scope !240954, !noalias !240958
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.87.0.i, ptr %.sroa.87.0..sroa_idx.i, align 8, !alias.scope !240954, !noalias !240958
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.98.0..sroa_idx.i, align 8, !alias.scope !240954, !noalias !240958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !240778
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef align 8 dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.t)
          to label %bb.ao unwind label %.body26.i, !noalias !240778

bb.ao:                                            ; preds = %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.db, i64 72, i1 false), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !240778
  %i.dc = load i64, ptr %i.v, align 8, !range !994, !alias.scope !240960, !noalias !240778, !noundef !12
  %i.dd = icmp eq i64 %i.dc, -9223372036854775803
  br i1 %i.dd, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i" unwind label %bb.v, !noalias !240778

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i": ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !240778
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !240963
  %i.de = call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 17) 1) #79, !noalias !240963 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.invoke.i, label %bb.aq

.body23.i:                                        ; preds = %bb.aq
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i"

bb.aq:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.de, ptr noundef nonnull align 1 dereferenceable(5) @3630, i64 5, i1 false), !noalias !240971
  store i64 5, ptr %i.r, align 8, !noalias !240778
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.de, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !240778
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 5, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !240778
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !240778, !noundef !12
  store i64 -9223372036854775806, ptr %i.q, align 8, !alias.scope !240972, !noalias !240976
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !240972, !noalias !240976
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.di, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !240972, !noalias !240976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !240778
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef align 8 dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.q)
          to label %bb.ar unwind label %.body23.i, !noalias !240778

bb.ar:                                            ; preds = %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.dj, i64 72, i1 false), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !240778
  %i.dk = load i64, ptr %i.s, align 8, !range !994, !alias.scope !240978, !noalias !240778, !noundef !12
  %i.dl = icmp eq i64 %i.dk, -9223372036854775803
  br i1 %i.dl, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.s)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i" unwind label %bb.v, !noalias !240778

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i": ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !240778
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !240981
  %i.dm = call noundef dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 1) #79, !noalias !240981 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.invoke.i, label %bb.at

.body20.i:                                        ; preds = %bb.at
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i"

bb.at:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i"
  store i64 7312272889232580978, ptr %i.dm, align 1, !noalias !240989
  store i64 8, ptr %i.o, align 8, !noalias !240778
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.dm, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !240778
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 8, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !240778
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !240778, !noundef !12
  store i64 -9223372036854775806, ptr %i.n, align 8, !alias.scope !240990, !noalias !240994
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !240990, !noalias !240994
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.dq, ptr %.sroa.715.0..sroa_idx.i, align 8, !alias.scope !240990, !noalias !240994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !240778
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n)
          to label %bb.au unwind label %.body20.i, !noalias !240778

bb.au:                                            ; preds = %bb.at
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.dr, i64 72, i1 false), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !240778
  %i.ds = load i64, ptr %i.p, align 8, !range !994, !alias.scope !240996, !noalias !240778, !noundef !12
  %i.dt = icmp eq i64 %i.ds, -9223372036854775803
  br i1 %i.dt, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.p)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i" unwind label %bb.v, !noalias !240778

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i": ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !240778
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !240999
  %i.du = call noundef dereferenceable_or_null(9) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, 17) 1) #79, !noalias !240999 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.invoke.i, label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.du, ptr noundef nonnull align 1 dereferenceable(9) @3631, i64 9, i1 false), !noalias !241007
  store i64 9, ptr %i.l, align 8, !noalias !240778
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.du, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !240778
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 9, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !240778
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !240778, !noundef !12 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dx, 168
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !240778, !nonnull !12, !noundef !12 ; 6 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 112
  %.val.i.i85.i = load i64, ptr %i.eb, align 8, !noalias !241008, !noundef !12 ; 3 uses
  %i.ec = icmp eq i64 %i.dx, 1
  br i1 %i.ec, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gepdiff.i = add nsw i64 %.idx.i, -168
  %i.ed = udiv exact i64 %gepdiff.i, 168          ; 3 uses
  %i.ee = add nsw i64 %i.ed, -1
  %xtraiter = and i64 %i.ed, 3                    ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 3
  br i1 %i.ef, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ay
  %unroll_iter = and i64 %i.ed, 144115188075855868
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.new
  %.sroa.09.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.eo, %bb.az ] ; 5 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ %.val.i.i85.i, %.new ], [ %.sroa.0.0.i.i.i.i.i.i.i.3, %bb.az ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.az ]
  %i.eg = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %.sroa.09.0.i.i.i.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 280
  %.val.i.i.i86.i = load i64, ptr %i.eh, align 8, !noalias !240778, !noundef !12
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.07.0.i.i.i.i, i64 %.val.i.i.i86.i)
  %i.ei = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %.sroa.09.0.i.i.i.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 448
  %.val.i.i.i86.i.1 = load i64, ptr %i.ej, align 8, !noalias !240778, !noundef !12
  %.sroa.0.0.i.i.i.i.i.i.i.1 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.val.i.i.i86.i.1)
  %i.ek = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %.sroa.09.0.i.i.i.i
  %i.el = getelementptr i8, ptr %i.ek, i64 616
  %.val.i.i.i86.i.2 = load i64, ptr %i.el, align 8, !noalias !240778, !noundef !12
  %.sroa.0.0.i.i.i.i.i.i.i.2 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.1, i64 %.val.i.i.i86.i.2)
  %i.em = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %.sroa.09.0.i.i.i.i
  %i.en = getelementptr i8, ptr %i.em, i64 784
  %.val.i.i.i86.i.3 = load i64, ptr %i.en, align 8, !noalias !240778, !noundef !12
  %.sroa.0.0.i.i.i.i.i.i.i.3 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.2, i64 %.val.i.i.i86.i.3) ; 3 uses
  %i.eo = add nuw i64 %.sroa.09.0.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.az

.body17.i:                                        ; preds = %.loopexit.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i"

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.az
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.ay
  %.sroa.09.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.ay ], [ %i.eo, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i.i.i.epil.init = phi i64 [ %.val.i.i85.i, %bb.ay ], [ %.sroa.0.0.i.i.i.i.i.i.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader
  %.sroa.09.0.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.es, %bb.ba ] ; 2 uses
  %.sroa.07.0.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i.i.i.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.epil, %bb.ba ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ba ]
  %i.eq = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %.sroa.09.0.i.i.i.i.epil
  %i.er = getelementptr i8, ptr %i.eq, i64 280
  %.val.i.i.i86.i.epil = load i64, ptr %i.er, align 8, !noalias !240778, !noundef !12
  %.sroa.0.0.i.i.i.i.i.i.i.epil = call noundef i64 @llvm.umax.i64(i64 %.sroa.07.0.i.i.i.i.epil, i64 %.val.i.i.i86.i.epil) ; 2 uses
  %i.es = add nuw i64 %.sroa.09.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.ba, !llvm.loop !241011

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.ba, %bb.ax, %bb.aw
  %.sroa.3.0.i93.i = phi i64 [ undef, %bb.aw ], [ %.val.i.i85.i, %bb.ax ], [ %.sroa.0.0.i.i.i.i.i.i.i.3, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.i.epil, %bb.ba ]
  %.sink.i.i.i.i = phi i64 [ -9223372036854775808, %bb.aw ], [ -9223372036854775806, %bb.ax ], [ -9223372036854775806, %bb.ba ], [ -9223372036854775806, %.loopexit.i.loopexit.unr-lcssa ]
  store i64 %.sink.i.i.i.i, ptr %i.k, align 8, !alias.scope !241012, !noalias !241016
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !241012, !noalias !241016
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.3.0.i93.i, ptr %.sroa.720.0..sroa_idx.i, align 8, !alias.scope !241012, !noalias !241016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !240778
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef align 8 dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.k)
          to label %bb.bb unwind label %.body17.i, !noalias !240778

bb.bb:                                            ; preds = %.loopexit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.et, i64 72, i1 false), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !240778
  %i.eu = load i64, ptr %i.m, align 8, !range !994, !alias.scope !241018, !noalias !240778, !noundef !12
  %i.ev = icmp eq i64 %i.eu, -9223372036854775803
  br i1 %i.ev, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.m)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i" unwind label %bb.v, !noalias !240778

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i": ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !240778
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !241021
  %i.ew = call noundef dereferenceable_or_null(15) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 15, i64 noundef range(i64 1, 17) 1) #79, !noalias !241021 ; 5 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.invoke.i, label %bb.bd

.invoke.i:                                        ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit46.i", %bb.u
  %i.ey = phi i64 [ 9, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit80.i" ], [ 8, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit71.i" ], [ 5, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit64.i" ], [ 14, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit46.i" ], [ 15, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i" ], [ 12, %bb.u ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9505) #85
          to label %.cont.i unwind label %bb.v, !noalias !240778

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bd:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit92.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ew, ptr noundef nonnull align 1 dereferenceable(15) @3632, i64 15, i1 false), !noalias !241029
  store i64 15, ptr %i.i, align 8, !noalias !240778
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ew, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !240778
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 15, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !240778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !240778
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3633, i64 noundef 21)
          to label %_ZN3std3env3var17h2021be6ff0b29e4aE.exit.i unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit100.i", !noalias !240778

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit100.i": ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef 15, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !241030
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i"

_ZN3std3env3var17h2021be6ff0b29e4aE.exit.i:       ; preds = %bb.bd
  %i.fa = load i64, ptr %i.g, align 8, !range !861, !noalias !240778, !noundef !12
  %i.fb = trunc nuw i64 %i.fa to i1
  br i1 %i.fb, label %bb.be, label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i"

bb.be:                                            ; preds = %_ZN3std3env3var17h2021be6ff0b29e4aE.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !241035)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !186, !alias.scope !241038, !noalias !240778, !noundef !12 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %i.fd, 0
  br i1 %switch.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.sink.split.i.i", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.sink.split.i.i": ; preds = %bb.be
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i102.i = load ptr, ptr %i.fe, align 8, !alias.scope !241035, !noalias !240778, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i102.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !241041
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i"

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.sink.split.i.i", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !240778
  br label %bb.bi

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i": ; preds = %_ZN3std3env3var17h2021be6ff0b29e4aE.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.063.0.copyload.i = load i64, ptr %i.ff, align 8, !noalias !240778 ; 3 uses
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.464.0.copyload.i = load ptr, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !240778 ; 5 uses
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.565.0.copyload.i = load i64, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !240778 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !240778
  %.not.i.i.i104.i = icmp eq i64 %.sroa.063.0.copyload.i, -9223372036854775808
  br i1 %.not.i.i.i104.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.0.copyload.i) ]
  %i.fg = icmp slt i64 %.sroa.565.0.copyload.i, 0
  br i1 %i.fg, label %bb.bh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i107.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i107.i: ; preds = %bb.bf
  %i.fh = icmp eq i64 %.sroa.565.0.copyload.i, 0
  br i1 %i.fh, label %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i", label %bb.bg

bb.bg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i107.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !241042
  %i.fi = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.565.0.copyload.i, i64 noundef range(i64 1, 17) 1) #79, !noalias !241042 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.bh, label %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i"

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i113.i = phi i64 [ 1, %bb.bg ], [ 0, %bb.bf ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i113.i, i64 %.sroa.565.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9505) #85
          to label %.noexc114.i unwind label %.thread138.i, !noalias !240778

.noexc114.i:                                      ; preds = %bb.bh
  unreachable

"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i": ; preds = %bb.bg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i107.i
  %.sroa.10.0.i.i.i.i.i.i.i.i109.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i107.i ], [ %i.fi, %bb.bg ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i109.i, ptr nonnull readonly align 1 %.sroa.464.0.copyload.i, i64 %.sroa.565.0.copyload.i, i1 false), !noalias !241065
  br label %bb.bi

bb.bi:                                            ; preds = %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i", %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i", %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i"
  %.not.i.i.i104119.i = phi i1 [ false, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ true, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ true, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ] ; 3 uses
  %.sroa.731.0101117.i = phi ptr [ %.sroa.464.0.copyload.i, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ undef, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ %.sroa.464.0.copyload.i, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ] ; 4 uses
  %.sroa.028.0103112.i = phi i64 [ %.sroa.063.0.copyload.i, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ -9223372036854775808, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ -9223372036854775808, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ] ; 4 uses
  %.sroa.926.0.i = phi i64 [ %.sroa.565.0.copyload.i, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ undef, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ undef, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ] ; 2 uses
  %.sroa.825.0.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i109.i, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ undef, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ undef, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ]
  %.sroa.023.0.i = phi i64 [ -9223372036854775805, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hbad661ee4a9b4cffE.exit.i.i.i108.i" ], [ -9223372036854775808, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.thread.i" ], [ -9223372036854775808, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h54c4991a1ad046feE.exit.i" ]
  store i64 %.sroa.023.0.i, ptr %i.h, align 8, !alias.scope !241066, !noalias !241070
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.926.0.i, ptr %.sroa.624.0..sroa_idx.i, align 8, !alias.scope !241066, !noalias !241070
  %.sroa.825.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.825.0.i, ptr %.sroa.825.0..sroa_idx.i, align 8, !alias.scope !241066, !noalias !241070
  %.sroa.926.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.926.0.i, ptr %.sroa.926.0..sroa_idx.i, align 8, !alias.scope !241066, !noalias !241070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240778
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h)
          to label %bb.bj unwind label %bb.bl, !noalias !240778

bb.bj:                                            ; preds = %bb.bi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i64 72, i1 false), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !240778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !240778
  %i.fl = load i64, ptr %i.j, align 8, !range !994, !alias.scope !241072, !noalias !240778, !noundef !12
  %i.fm = icmp eq i64 %i.fl, -9223372036854775803
  br i1 %i.fm, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit117.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit117.i" unwind label %.split.i, !noalias !240778

bb.bl:                                            ; preds = %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i104119.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i", label %bb.bm

bb.bm:                                            ; preds = %.thread138.i, %.split.i, %bb.bl
  %.pn8145.i = phi { ptr, i32 } [ %i.fr, %.thread138.i ], [ %i.fn, %bb.bl ], [ %i.fp, %.split.i ] ; 2 uses
  %.sroa.028.0103109144.i = phi i64 [ %.sroa.063.0.copyload.i, %.thread138.i ], [ %.sroa.028.0103112.i, %bb.bl ], [ %.sroa.028.0103112.i, %.split.i ] ; 2 uses
  %.sroa.731.0101114143.i = phi ptr [ %.sroa.464.0.copyload.i, %.thread138.i ], [ %.sroa.731.0101117.i, %bb.bl ], [ %.sroa.731.0101117.i, %.split.i ] ; 2 uses
  %i.fo = icmp eq i64 %.sroa.028.0103109144.i, 0
  br i1 %i.fo, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h12b208b6ab2ef5faE.exit43.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.731.0101114143.i) ]
end_hunk_7
begin_hunk_8_@"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf4d05083ee48c7e2E":bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.aq, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.f, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.aq, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %bb.h
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.t, %bb.d ], [ %i.t, %bb.f ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 1256, i64 noundef 8) #79
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h1784bcba59140addE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 362 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !12
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 362 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !12
  %i.l = zext i16 %i.k to i64                     ; 4 uses
  %i.m = add nuw nsw i64 %1, %i.l                 ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1                 ; 4 uses
  %i.p = trunc nuw i64 %i.o to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw nsw i64 %i.m to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %1
  %i.t = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !alias.scope !353416
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 4 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %1
  %i.w = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !alias.scope !353419
  %i.x = add nuw nsw i64 %i.o, 1                  ; 4 uses
  %i.y = sub nuw nsw i64 %i.g, %i.x               ; 4 uses
  %i.z = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353425)
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_ZN5alloc11collections5btree4node13move_to_slice17h4a6f9a13de310650E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353427
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h4a6f9a13de310650E.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ad = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !353427
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.x
  %i.ag = mul nuw nsw i64 %i.y, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.af, i64 %i.ag, i1 false), !alias.scope !353428
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.o
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !12
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %.val193 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val194 = load i64, ptr %i.ak, align 8, !noundef !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val193, i64 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.val194 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val193, i64 96
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.val194 ; 2 uses
  %i.ap = load i64, ptr %i.am, align 8, !noalias !353432, !noundef !12
  store i64 %i.ai, ptr %i.am, align 8, !noalias !353432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !353436
  %i.aq = getelementptr [8 x i8], ptr %i.i, i64 %1
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !12
  %.not190 = icmp eq i64 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i64, ptr %i.au, align 8, !noundef !12
  %.not191 = icmp eq i64 %i.av, 0                 ; 2 uses
  br i1 %.not190, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h4a6f9a13de310650E.exit
  br i1 %.not191, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h4a6f9a13de310650E.exit
  br i1 %.not191, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i.epil
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !353437, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %i.ay, align 8, !noalias !353442
  %i.az = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 360
  store i16 %i.az, ptr %i.ba, align 8, !noalias !353442
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit", label %bb.j, !llvm.loop !353443

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 368 ; 8 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %1
  %i.bd = add nuw nsw i64 %i.t, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !353444
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.x
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !353447
  %i.bh = add nuw nsw i64 %1, %i.l
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.m, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !353437, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %i.bm, align 8, !noalias !353442
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 360
  store i16 %i.bn, ptr %i.bo, align 8, !noalias !353442
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !353437, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %i.br, align 8, !noalias !353442
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  store i16 %i.bs, ptr %i.bt, align 8, !noalias !353442
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !353437, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %i.bw, align 8, !noalias !353442
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 360
  store i16 %i.bx, ptr %i.by, align 8, !noalias !353442
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !353437, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %i.cb, align 8, !noalias !353442
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 360
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !353442
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h7df28fbaf06ebbc1E.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h3a1418ef89ad16b5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 538 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 538 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !353451
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.s, i1 false), !alias.scope !353454
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353460)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17h8d0c0c9926d5542bE.exit188, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353462
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h8d0c0c9926d5542bE.exit188: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !353462
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ad, i64 %i.ab, i1 false), !alias.scope !353463
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val186 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val187 = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val186, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val187 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val186, i64 272
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !353467
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.aq, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h8d0c0c9926d5542bE.exit188
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h8d0c0c9926d5542bE.exit188
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bv, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod192 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ar = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.at = load ptr, ptr %i.as, align 8, !noalias !353471, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.at, align 8, !noalias !353476
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 536
  store i16 %i.au, ptr %i.av, align 8, !noalias !353476
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit", label %bb.j, !llvm.loop !353477

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 544 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !353478
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !353481
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bv, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !353471, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bi, align 8, !noalias !353476
  %i.bj = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  store i16 %i.bj, ptr %i.bk, align 8, !noalias !353476
  %i.bl = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !353471, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bn, align 8, !noalias !353476
  %i.bo = trunc nuw nsw i64 %i.bg to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 536
  store i16 %i.bo, ptr %i.bp, align 8, !noalias !353476
  %i.bq = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bl
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !353471, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bs, align 8, !noalias !353476
  %i.bt = trunc nuw nsw i64 %i.bl to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  store i16 %i.bt, ptr %i.bu, align 8, !noalias !353476
  %i.bv = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bq
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !353471, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bx, align 8, !noalias !353476
  %i.by = trunc nuw nsw i64 %i.bq to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 536
  store i16 %i.by, ptr %i.bz, align 8, !noalias !353476
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd5234f6b70c0e821E.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h9d92677a789e3c82E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 802 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 802 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 536 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !353485
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.h, i64 %i.u, i1 false), !alias.scope !353488
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353494)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17hfd3deba173e76544E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353496
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hfd3deba173e76544E.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !353496
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !353497
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  %.val186 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val187 = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val186, i64 536
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val187 ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %.val186, i64 %.val187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !353501
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.ap, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hfd3deba173e76544E.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hfd3deba173e76544E.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !353505, !nonnull !12, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 528
  store ptr %i.h, ptr %i.at, align 8, !noalias !353510
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 800
  store i16 %i.au, ptr %i.av, align 8, !noalias !353510
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit", label %bb.j, !llvm.loop !353511

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 808 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !353512
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !353515
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !353505, !nonnull !12, !noundef !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 528
  store ptr %i.h, ptr %i.bj, align 8, !noalias !353510
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 800
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !353510
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !353505, !nonnull !12, !noundef !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 528
  store ptr %i.h, ptr %i.bp, align 8, !noalias !353510
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 800
  store i16 %i.bq, ptr %i.br, align 8, !noalias !353510
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !353505, !nonnull !12, !noundef !12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 528
  store ptr %i.h, ptr %i.bv, align 8, !noalias !353510
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 800
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !353510
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !353505, !nonnull !12, !noundef !12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 528
  store ptr %i.h, ptr %i.cb, align 8, !noalias !353510
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 800
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !353510
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17ha013393a37b14e16E.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hcc37b050bb3ad77eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 538 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 538 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !353519
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.s, i1 false), !alias.scope !353522
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353528)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17h6511619def783099E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353530
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h6511619def783099E.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !353530
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ad, i64 %i.ab, i1 false), !alias.scope !353531
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val186 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val187 = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val186, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val187 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val186, i64 272
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !353535
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.aq, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h6511619def783099E.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h6511619def783099E.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bv, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ar = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.at = load ptr, ptr %i.as, align 8, !noalias !353539, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.at, align 8, !noalias !353544
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 536
  store i16 %i.au, ptr %i.av, align 8, !noalias !353544
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit", label %bb.j, !llvm.loop !353545

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 544 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !353546
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !353549
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bv, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !353539, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bi, align 8, !noalias !353544
  %i.bj = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  store i16 %i.bj, ptr %i.bk, align 8, !noalias !353544
  %i.bl = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !353539, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bn, align 8, !noalias !353544
  %i.bo = trunc nuw nsw i64 %i.bg to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 536
  store i16 %i.bo, ptr %i.bp, align 8, !noalias !353544
  %i.bq = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bl
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !353539, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bs, align 8, !noalias !353544
  %i.bt = trunc nuw nsw i64 %i.bl to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  store i16 %i.bt, ptr %i.bu, align 8, !noalias !353544
  %i.bv = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bq
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !353539, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bx, align 8, !noalias !353544
  %i.by = trunc nuw nsw i64 %i.bq to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 536
  store i16 %i.by, ptr %i.bz, align 8, !noalias !353544
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h649cba572a0a87afE.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hcf55a031a40a0d95E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 3 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !353553
  %i.t = add nuw nsw i64 %i.n, 1                  ; 3 uses
  %i.u = sub nuw nsw i64 %i.f, %i.t               ; 3 uses
  %i.v = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353559)
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %_ZN5alloc11collections5btree4node13move_to_slice17h10c3733748112a81E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353561
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h10c3733748112a81E.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.t
  %i.z = mul nuw nsw i64 %i.u, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.y, i64 %i.z, i1 false), !alias.scope !353561
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.n
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val185 = load i64, ptr %i.ab, align 8, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.ai, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h10c3733748112a81E.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h10c3733748112a81E.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bn, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aj = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.0.06.i.epil
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !353562, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.al, align 8, !noalias !353567
  %i.am = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  store i16 %i.am, ptr %i.an, align 8, !noalias !353567
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit", label %bb.j, !llvm.loop !353568

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %1
  %i.aq = shl nuw nsw i64 %i.k, 3
  %i.ar = add nuw nsw i64 %i.aq, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.ar, i1 false), !alias.scope !353569
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.t
  %i.au = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.at, i64 %i.au, i1 false), !alias.scope !353572
  %i.av = add nuw nsw i64 %1, %i.k
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.ax = icmp samesign ult i64 %i.l, 3
  br i1 %i.ax, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.aw, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bn, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.ay = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.0.06.i
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !353562, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.ba, align 8, !noalias !353567
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  store i16 %i.bb, ptr %i.bc, align 8, !noalias !353567
  %i.bd = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ay
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !353562, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bf, align 8, !noalias !353567
  %i.bg = trunc nuw nsw i64 %i.ay to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  store i16 %i.bg, ptr %i.bh, align 8, !noalias !353567
  %i.bi = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bd
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !353562, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bk, align 8, !noalias !353567
  %i.bl = trunc nuw nsw i64 %i.bd to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  store i16 %i.bl, ptr %i.bm, align 8, !noalias !353567
  %i.bn = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bi
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !353562, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bp, align 8, !noalias !353567
  %i.bq = trunc nuw nsw i64 %i.bi to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  store i16 %i.bq, ptr %i.br, align 8, !noalias !353567
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hd06a46209fe69343E.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hd0a02e36de556a15E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.r, i1 false), !alias.scope !353576
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !353579
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353585)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17hdab54189d6b2c3e6E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353587
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hdab54189d6b2c3e6E.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.v
  %i.aa = shl nuw nsw i64 %i.w, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.z, i64 %i.aa, i1 false), !alias.scope !353587
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !353588
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.n
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  %.val186 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val187 = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val186, i64 %.val187 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val186, i64 176
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %.val187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %i.ah, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !353592
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.ap, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hdab54189d6b2c3e6E.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hdab54189d6b2c3e6E.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !353596, !nonnull !12, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8, !noalias !353601
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8, !noalias !353601
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit", label %bb.j, !llvm.loop !353602

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !353603
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !353606
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !353596, !nonnull !12, !noundef !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8, !noalias !353601
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !353601
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !353596, !nonnull !12, !noundef !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8, !noalias !353601
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8, !noalias !353601
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !353596, !nonnull !12, !noundef !12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8, !noalias !353601
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !353601
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !353596, !nonnull !12, !noundef !12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8, !noalias !353601
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !353601
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hd5ca7c90db4a359cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 538 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 538 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5793, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5794) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !353610
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.s, i1 false), !alias.scope !353613
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353619)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17h9c9a53fa3d3eb589E.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5787, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5788) #85, !noalias !353621
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h9c9a53fa3d3eb589E.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !353621
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ad, i64 %i.ab, i1 false), !alias.scope !353622
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val185 = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val185 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !353626
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %.not183 = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12
  %.not184 = icmp eq i64 %i.aq, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h9c9a53fa3d3eb589E.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !10

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h9c9a53fa3d3eb589E.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit", label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5797) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bv, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ar = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.at = load ptr, ptr %i.as, align 8, !noalias !353630, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.at, align 8, !noalias !353635
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 536
  store i16 %i.au, ptr %i.av, align 8, !noalias !353635
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit", label %bb.j, !llvm.loop !353636

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 544 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !353637
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !353640
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bv, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !353630, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bi, align 8, !noalias !353635
  %i.bj = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  store i16 %i.bj, ptr %i.bk, align 8, !noalias !353635
  %i.bl = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !353630, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bn, align 8, !noalias !353635
  %i.bo = trunc nuw nsw i64 %i.bg to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 536
  store i16 %i.bo, ptr %i.bp, align 8, !noalias !353635
  %i.bq = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bl
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !353630, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bs, align 8, !noalias !353635
  %i.bt = trunc nuw nsw i64 %i.bl to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  store i16 %i.bt, ptr %i.bu, align 8, !noalias !353635
  %i.bv = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bq
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !353630, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.bx, align 8, !noalias !353635
  %i.by = trunc nuw nsw i64 %i.bq to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 536
  store i16 %i.by, ptr %i.bz, align 8, !noalias !353635
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h90f56f1112e80f2dE.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$16bulk_steal_right17h202ed20b263aaf38E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !12 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5798, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5799) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5800, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5801) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %.val182 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val183 = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val182, i64 %.val183 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val182, i64 176
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.val183 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !353644
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.h, i64 %i.ad, i1 false), !alias.scope !353648
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ab
  %i.af = mul nuw nsw i64 %i.q, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.af, i1 false), !alias.scope !353652
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.ah = shl nuw nsw i64 %i.n, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false), !alias.scope !353656
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %1
  %i.aj = mul nuw nsw i64 %i.n, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !353659
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !12
  %.not177 = icmp eq i64 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noundef !12
  %.not178 = icmp eq i64 %i.an, 0                 ; 2 uses
  br i1 %.not177, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not178, label %bb.h, label %bb.i, !prof !10

bb.g:                                             ; preds = %bb.e
  br i1 %.not178, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186", label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5802) #85
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186.loopexit.unr-lcssa": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil.preheader"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil.preheader": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader"
  %.sroa.0.06.i184.epil.init = phi i64 [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader" ], [ %i.df, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil.preheader"
  %.sroa.0.06.i184.epil = phi i64 [ %i.ao, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil" ], [ %.sroa.0.06.i184.epil.init, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil.preheader" ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil" ], [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil.preheader" ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i184.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i184.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i184.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !353662, !nonnull !12, !noundef !12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8, !noalias !353667
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i184.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8, !noalias !353667
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil", !llvm.loop !353668

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit186.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.epil", %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !353669
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !353673
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !353676, !nonnull !12, !noundef !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8, !noalias !353681
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8, !noalias !353681
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !353676, !nonnull !12, !noundef !12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8, !noalias !353681
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8, !noalias !353681
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !353676, !nonnull !12, !noundef !12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8, !noalias !353681
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8, !noalias !353681
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !353676, !nonnull !12, !noundef !12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8, !noalias !353681
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !353681
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !353676, !nonnull !12, !noundef !12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8, !noalias !353681
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !353681
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h8e7322e382af368bE.exit.preheader"

end_hunk_8
begin_hunk_9_@_ZN5milli6update3new7indexer5index17h0dd05fd62bb48864E:bb.a
bb.i:                                             ; preds = %bb.h
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hc47c01844c4e45ceE"(ptr noalias noundef align 8 dereferenceable(80) %i.ei) #86
          to label %.body124.thread unwind label %bb.j, !noalias !357710

.body124.thread:                                  ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h4cd71d46984f8845E"(ptr noalias noundef align 8 dereferenceable(24) %i.de) #86
  br label %bb.mv

bb.j:                                             ; preds = %bb.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !357710
  unreachable

"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17hca83239ebe9e459bE.exit.i": ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hc47c01844c4e45ceE"(ptr noalias noundef align 8 dereferenceable(80) %i.ek)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17hca83239ebe9e459bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !357700
  br label %bb.l

bb.k:                                             ; preds = %_ZN10rayon_core8registry8Registry9in_worker17h2066dbe9bd09719eE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(544) %i.bq, i64 544, i1 false), !noalias !357711
  %.sroa.4220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  %.sroa.4220.0.copyload222 = load i64, ptr %.sroa.4220.0..sroa_idx221, align 8, !noalias !357711 ; 2 uses
  %.sroa.6223.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.bq, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223.0..sroa_idx224, i64 72, i1 false), !noalias !357711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !357700
  %i.el = icmp eq i64 %.sroa.4220.0.copyload222, -9223372036854775808
  br i1 %i.el, label %bb.l, label %bb.m, !prof !20351

bb.l:                                             ; preds = %.thread, %bb.k
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5368, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5931) #85
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.cy, ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, i64 544, i1 false)
  %.sroa.6227.544..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6227.544..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223)
  store i64 %.sroa.4220.0.copyload222, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke void @_ZN5milli14fields_ids_map8metadata15MetadataBuilder10from_index17h46a646a6f3a5dfa5E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.o unwind label %bb.n

"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217": ; preds = %bb.mj, %bb.s, %bb.n
  %.sroa.048.2 = phi i8 [ %.sroa.048.3, %bb.n ], [ 0, %bb.s ], [ 0, %bb.mj ] ; 2 uses
  %.sroa.046.2 = phi i8 [ 1, %bb.n ], [ %.sroa.046.4, %bb.s ], [ %.sroa.046.4, %bb.mj ] ; 2 uses
  %.sroa.042.0 = phi i8 [ %.sroa.042.1, %bb.n ], [ %.sroa.042.2, %bb.s ], [ %.sroa.042.2, %bb.mj ]
  %.pn110 = phi { ptr, i32 } [ %i.en, %bb.n ], [ %.pn108, %bb.s ], [ %.pn108, %bb.mj ] ; 2 uses
  %i.em = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.em, label %bb.mt, label %.body124

bb.n:                                             ; preds = %bb.mf, %bb.q, %bb.m
  %.sroa.048.3 = phi i8 [ 0, %bb.mf ], [ 0, %bb.q ], [ 1, %bb.m ]
  %.sroa.042.1 = phi i8 [ %.sroa.036.10, %bb.mf ], [ 1, %bb.q ], [ 1, %bb.m ]
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217"

bb.o:                                             ; preds = %bb.m
  %i.eo = load i64, ptr %i.cw, align 8, !range !32074, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.eo, 97
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(312) %i.ep, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.255.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  store i64 %i.eo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.mh

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cv, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  invoke void @_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata3new17ha90ecb79b1012ce2E(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(address) dereferenceable(392) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.cv)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.eq, ptr noundef nonnull align 8 dereferenceable(392) %i.cu, i64 392, i1 false)
  store i64 0, ptr %i.cs, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store i8 0, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.es = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.s:                                             ; preds = %.split, %bb.mi, %bb.y, %bb.t
  %.sroa.046.4 = phi i8 [ %.sroa.040.1, %bb.t ], [ 1, %bb.mi ], [ 1, %bb.y ], [ 1, %.split ] ; 2 uses
  %.sroa.042.2 = phi i8 [ %.sroa.042.3, %bb.t ], [ %.sroa.042.4251, %bb.mi ], [ 1, %bb.y ], [ 0, %.split ] ; 2 uses
  %.sroa.040.0 = phi i8 [ %.sroa.040.1, %bb.t ], [ %.sroa.040.2252, %bb.mi ], [ %.sroa.040.6.ph, %bb.y ], [ %.sroa.040.8, %.split ]
  %.pn108 = phi { ptr, i32 } [ %i.eu, %bb.t ], [ %.pn106253, %bb.mi ], [ %.pn102.ph, %bb.y ], [ %.pn100, %.split ] ; 2 uses
  %i.et = trunc nuw i8 %.sroa.040.0 to i1
  br i1 %i.et, label %bb.mj, label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217"

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.me, %bb.r
  %.sroa.042.3 = phi i8 [ %.sroa.036.10, %bb.me ], [ 1, %bb.x ], [ 1, %bb.r ], [ 1, %bb.v ]
  %.sroa.040.1 = phi i8 [ %.sroa.040.19, %bb.me ], [ 1, %bb.x ], [ 1, %bb.r ], [ 1, %bb.v ] ; 2 uses
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !357712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i8 0, i64 504, i1 false), !noalias !357712
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.es, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i, label %bb.v, label %bb.w, !prof !65211

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc127 unwind label %bb.t

.noexc127:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %.idx.i = sub nuw nsw i64 512, %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i
  %i.ey = icmp eq i64 %i.es, 0
  br i1 %i.ey, label %.loopexit344, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i
  %.sroa.0.014.i = phi ptr [ %i.ez, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i ], [ %i.bp, %bb.w ] ; 2 uses
  %.sroa.7.013.i = phi i64 [ %i.fa, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i ], [ 0, %bb.w ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %i.fa = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.fb = shl nuw i64 1, %.sroa.7.013.i           ; 2 uses
  %i.fc = shl i64 96, %.sroa.7.013.i              ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.7.013.i, 57
  br i1 %exitcond.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357715
  %i.fd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357715 ; 11 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.fb, 7
  %i.ff = icmp samesign ult i64 %.sroa.7.013.i, 3
  br i1 %i.ff, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter = and i64 %i.fb, -8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.fc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc128 unwind label %bb.t

.noexc128:                                        ; preds = %bb.x
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.fn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %niter = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter.next.7, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !357728
  %i.fh = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.fh, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !357728
  %i.fi = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.fi, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !357728
  %i.fj = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.fj, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !357728
  %i.fk = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.fk, i64 472
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !357728
  %i.fl = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.fl, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !357728
  %i.fm = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.fm, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !357728
  %i.fn = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.fo = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.fo, i64 760
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !357728
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %lcmp.mod885 = icmp samesign ult i64 %.sroa.7.013.i, 3
  call void @llvm.assume(i1 %lcmp.mod885)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.fp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.fp = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.fq = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !357728
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !357745

_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.fd, ptr %.sroa.0.014.i, align 8, !noalias !357712
  %i.fr = icmp eq ptr %i.ez, %i.ex
  br i1 %i.fr, label %.loopexit344, label %.lr.ph.i

.loopexit344:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cr, ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !357712
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 504
  store i64 0, ptr %.sroa.4238.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.fs = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.z unwind label %.thread244 ; 2 uses

bb.y:                                             ; preds = %bb.lx, %bb.ah, %bb.lv, %.body.i203
  %.sroa.040.6.ph = phi i8 [ 1, %.body.i203 ], [ 1, %bb.lv ], [ 1, %bb.ah ], [ %.sroa.040.8, %bb.lx ] ; 2 uses
  %.sroa.038.4.ph = phi i8 [ %.sroa.038.15308, %.body.i203 ], [ %.sroa.038.15308, %bb.lv ], [ 1, %bb.ah ], [ %.sroa.038.6, %bb.lx ]
  %.pn102.ph = phi { ptr, i32 } [ %i.aid, %.body.i203 ], [ %i.aid, %bb.lv ], [ %i.ik, %bb.ah ], [ %.pn100, %bb.lx ] ; 2 uses
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h831a3c5a4f54f613E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #86
  %i.ft = trunc nuw i8 %.sroa.038.4.ph to i1
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h0c2020d2d89db4d8E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #86
  br i1 %i.ft, label %bb.mi, label %bb.s

.thread244:                                       ; preds = %.loopexit344, %bb.aa, %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.z:                                             ; preds = %.loopexit344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !357746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i8 0, i64 504, i1 false), !noalias !357746
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fs, i1 false) ; 2 uses
  %.not.i129 = icmp eq i64 %i.fv, 0
  br i1 %.not.i129, label %bb.aa, label %bb.ab, !prof !65211

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc140 unwind label %.thread244

.noexc140:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %.idx.i130 = sub nuw nsw i64 512, %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i130
  %i.fy = icmp eq i64 %i.fs, 0
  br i1 %i.fy, label %.loopexit343, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.ab, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i
  %.sroa.0.014.i132 = phi ptr [ %i.fz, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i ], [ %i.bo, %bb.ab ] ; 2 uses
  %.sroa.7.013.i133 = phi i64 [ %i.ga, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i ], [ 0, %bb.ab ] ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i132, i64 8 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.7.013.i133, 1
  %i.gb = shl nuw i64 1, %.sroa.7.013.i133        ; 2 uses
  %i.gc = shl i64 32, %.sroa.7.013.i133           ; 2 uses
  %exitcond.i134 = icmp eq i64 %.sroa.7.013.i133, 58
  br i1 %exitcond.i134, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135: ; preds = %.lr.ph.i131
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357749
  %i.gd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357749 ; 11 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135
  %xtraiter886 = and i64 %i.gb, 7
  %i.gf = icmp samesign ult i64 %.sroa.7.013.i133, 3
  br i1 %i.gf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter890 = and i64 %i.gb, -8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, %.lr.ph.i131
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i139 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135 ], [ 0, %.lr.ph.i131 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i139, i64 %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc141 unwind label %.thread244

.noexc141:                                        ; preds = %bb.ac
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.gn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %niter891 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter891.next.7, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137, align 8, !noalias !357762
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1 = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1, align 8, !noalias !357762
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2 = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2, align 8, !noalias !357762
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3 = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3, align 8, !noalias !357762
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4 = getelementptr inbounds nuw i8, ptr %i.gk, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4, align 8, !noalias !357762
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5 = getelementptr inbounds nuw i8, ptr %i.gl, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5, align 8, !noalias !357762
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6 = getelementptr inbounds nuw i8, ptr %i.gm, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6, align 8, !noalias !357762
  %i.gn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136, 8
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7 = getelementptr inbounds nuw i8, ptr %i.go, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7, align 8, !noalias !357762
  %niter891.next.7 = add i64 %niter891, 8         ; 2 uses
  %niter891.ncmp.7 = icmp eq i64 %niter891.next.7, %unroll_iter890
  br i1 %niter891.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %lcmp.mod889 = icmp samesign ult i64 %.sroa.7.013.i133, 3
  call void @llvm.assume(i1 %lcmp.mod889)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil = phi i64 [ %i.gp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 2 uses
  %epil.iter887 = phi i64 [ %epil.iter887.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.gp = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil, 1
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil, align 8, !noalias !357762
  %epil.iter887.next = add i64 %epil.iter887, 1   ; 2 uses
  %epil.iter887.cmp.not = icmp eq i64 %epil.iter887.next, %xtraiter886
  br i1 %epil.iter887.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !357779

_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.gd, ptr %.sroa.0.014.i132, align 8, !noalias !357746
  %i.gr = icmp eq ptr %i.fz, %i.fx
  br i1 %i.gr, label %.loopexit343, label %.lr.ph.i131

.loopexit343:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cq, ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !357746
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 504
  store i64 0, ptr %.sroa.4240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.gs = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.ad unwind label %.thread601 ; 2 uses

.split:                                           ; preds = %bb.al
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h831a3c5a4f54f613E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #86
  %i.gt = trunc nuw i8 %.sroa.038.6 to i1
  br i1 %i.gt, label %bb.mi, label %bb.s

.thread601:                                       ; preds = %bb.ag, %bb.ae, %.loopexit343
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h0c2020d2d89db4d8E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #86
  br label %bb.mi

bb.ad:                                            ; preds = %.loopexit343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !357780
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i8 0, i64 504, i1 false), !noalias !357780
  %i.gv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gs, i1 false) ; 2 uses
  %.not.i142 = icmp eq i64 %i.gv, 0
  br i1 %.not.i142, label %bb.ae, label %bb.af, !prof !65211

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc153 unwind label %.thread601

.noexc153:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %.idx.i143 = sub nuw nsw i64 512, %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i143
  %i.gy = icmp eq i64 %i.gs, 0
  br i1 %i.gy, label %.loopexit342, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.af, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i
  %.sroa.0.014.i145 = phi ptr [ %i.gz, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i ], [ %i.bn, %bb.af ] ; 2 uses
  %.sroa.7.013.i146 = phi i64 [ %i.ha, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i ], [ 0, %bb.af ] ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i145, i64 8 ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.7.013.i146, 1
  %i.hb = shl nuw i64 1, %.sroa.7.013.i146        ; 2 uses
  %i.hc = shl i64 32, %.sroa.7.013.i146           ; 2 uses
  %exitcond.i147 = icmp eq i64 %.sroa.7.013.i146, 58
  br i1 %exitcond.i147, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148: ; preds = %.lr.ph.i144
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357783
  %i.hd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.hc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357783 ; 11 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ag, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148
  %xtraiter892 = and i64 %i.hb, 7
  %i.hf = icmp samesign ult i64 %.sroa.7.013.i146, 3
  br i1 %i.hf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter896 = and i64 %i.hb, -8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148, %.lr.ph.i144
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i152 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148 ], [ 0, %.lr.ph.i144 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i152, i64 %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc154 unwind label %.thread601

.noexc154:                                        ; preds = %bb.ag
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.hn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %niter897 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter897.next.7, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i" ]
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150, align 8, !noalias !357796
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.1 = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.1, align 8, !noalias !357796
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.2 = getelementptr inbounds nuw i8, ptr %i.hi, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.2, align 8, !noalias !357796
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.3 = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.3, align 8, !noalias !357796
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.4 = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.4, align 8, !noalias !357796
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.5 = getelementptr inbounds nuw i8, ptr %i.hl, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.5, align 8, !noalias !357796
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.6 = getelementptr inbounds nuw i8, ptr %i.hm, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.6, align 8, !noalias !357796
  %i.hn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149, 8
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.7 = getelementptr inbounds nuw i8, ptr %i.ho, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.7, align 8, !noalias !357796
  %niter897.next.7 = add i64 %niter897, 8         ; 2 uses
  %niter897.ncmp.7 = icmp eq i64 %niter897.next.7, %unroll_iter896
  br i1 %niter897.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader"
  %lcmp.mod895 = icmp samesign ult i64 %.sroa.7.013.i146, 3
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149.epil = phi i64 [ %i.hp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 2 uses
  %epil.iter893 = phi i64 [ %epil.iter893.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.hp = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149.epil, 1
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i149.epil
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.epil = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.epil, align 8, !noalias !357796
  %epil.iter893.next = add i64 %epil.iter893, 1   ; 2 uses
  %epil.iter893.cmp.not = icmp eq i64 %epil.iter893.next, %xtraiter892
  br i1 %epil.iter893.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !357813

_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.hd, ptr %.sroa.0.014.i145, align 8, !noalias !357780
  %i.hr = icmp eq ptr %i.gz, %i.gx
  br i1 %i.hr, label %.loopexit342, label %.lr.ph.i144

.loopexit342:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cp, ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !357780
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 504
  store i64 0, ptr %.sroa.4242.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %2, ptr %i.co, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %5, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.cs, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cp, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.cr, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store ptr %10, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %11, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %i.db, ptr %i.hy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !12
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ic = load i32, ptr %i.ib, align 8, !noundef !12
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ie = load i64, ptr %i.id, align 8, !noundef !12
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ig = load i32, ptr %i.if, align 8, !noundef !12
  store i64 %i.ia, ptr %i.cl, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.ic, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ie, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.ig, ptr %i.ij, align 8
  invoke void @_ZN5milli6vector2db21IndexEmbeddingConfigs17embedding_configs17h868b98d977ebc6e6E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.loopexit342
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ai:                                            ; preds = %.loopexit342
  %i.il = load i64, ptr %i.cm, align 8, !range !861, !noundef !12
  %i.im = trunc nuw i64 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br i1 %i.im, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bx)
          to label %bb.ly unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_ZN5milli5index5Index18field_distribution17h99246b81cd58d2b8E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.am unwind label %.loopexit.split-lp

bb.al:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.lm
  %.sroa.040.8 = phi i8 [ %.sroa.040.10.ph, %bb.lm ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit ] ; 3 uses
  %.sroa.038.6 = phi i8 [ %.sroa.038.8.ph, %bb.lm ], [ %.sroa.038.7.ph, %.loopexit.split-lp ], [ %.sroa.038.14291, %.loopexit ] ; 2 uses
  %.sroa.034.0 = phi i8 [ %.sroa.034.2.ph, %bb.lm ], [ %.sroa.034.1.ph, %.loopexit.split-lp ], [ %.sroa.034.4292, %.loopexit ]
  %.pn100 = phi { ptr, i32 } [ %.pn98.ph, %bb.lm ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 3 uses
  %i.io = trunc nuw i8 %.sroa.034.0 to i1
  br i1 %i.io, label %bb.lx, label %.split

.loopexit:                                        ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17ha1adc9094e055864E.exit.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.ak, %bb.an, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h89982df1da2a31ddE.exit.i.i"
  %.sroa.038.7.ph = phi i8 [ 1, %bb.ak ], [ %.sroa.038.14291, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h89982df1da2a31ddE.exit.i.i" ], [ 1, %bb.an ]
  %.sroa.034.1.ph = phi i8 [ 1, %bb.ak ], [ %.sroa.034.4292, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h89982df1da2a31ddE.exit.i.i" ], [ 1, %bb.an ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.am:                                            ; preds = %bb.ak
  %i.ip = load i64, ptr %i.cj, align 8, !range !861, !noundef !12
  %i.iq = trunc nuw i64 %i.ip to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br i1 %i.iq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bv)
          to label %.thread303 unwind label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_ZN5milli5index5Index13documents_ids17h19819575a9a2e946E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.lm

bb.aq:                                            ; preds = %bb.ao
  %i.it = load i64, ptr %i.ch, align 8, !range !861, !noundef !12
  %i.iu = trunc nuw i64 %i.it to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.iv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br i1 %i.iu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bt)
          to label %.thread287 unwind label %bb.ap

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i64 0, ptr %i.cg, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store ptr %9, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  store ptr %i.dd, ptr %i.ix, align 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  store ptr %i.ck, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  store ptr %i.ci, ptr %i.iz, align 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  store ptr %i.cg, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  store ptr %i.dh, ptr %i.jb, align 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store ptr %i.dg, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  store ptr %i.co, ptr %i.jd, align 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.je, ptr noundef nonnull align 8 dereferenceable(544) %i.cy, i64 544, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cf, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.jf, ptr noundef nonnull align 8 dereferenceable(512) %i.cq, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cf, i64 712
  store ptr %i.df, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.cf, i64 720
  store ptr %i.cs, ptr %i.jh, align 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cf, i64 728
  store ptr %2, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cf, i64 736
end_hunk_9
begin_hunk_10_@_ZN5tokio7runtime4task3raw4poll17ha4ce526185ae4538E:bb.a
  %.sroa.010.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.bd = alloca [56 x i8], align 8               ; 12 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 14 uses
  %i.bh = alloca [496 x i8], align 8              ; 7 uses
  %.sroa.75.i.i.i.i.i.i.i.i.i.i = alloca [344 x i8], align 8 ; 6 uses
  %i.bi = alloca [496 x i8], align 8              ; 19 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [48 x i8], align 8               ; 7 uses
  %i.bm = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.13.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 13 uses
  %.sroa.14.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 12 uses
  %i.bn = alloca [40 x i8], align 8               ; 6 uses
  %i.bo = alloca [8 x i8], align 8                ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [112 x i8], align 8              ; 6 uses
  %i.br = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.8.sroa.6.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.bs = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bs, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.hs
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h691d75d8917fef2aE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h80d7cf83066b2f23E.exit.i"
  ]

default.unreachable:                              ; preds = %bb.ht, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !367335
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367344)
  %i.bv = load i32, ptr %i.bu, align 8, !range !330, !noalias !367347, !noundef !12
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %bb.gn, !prof !17

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !367347
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !20218, !noalias !367347, !noundef !12
  %i.bz = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.by)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gx, !noalias !367348

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.bz, ptr %i.bo, align 8, !noalias !367347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !367354
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !367352, !noalias !367355 ; 2 uses
  store i64 -9223372036854775808, ptr %i.ca, align 8, !alias.scope !367352, !noalias !367355
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !noalias !367354
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !367355
  %i.cb = invoke { i1, i8 } @_ZN5tokio4task4coop4stop17hd60a20175441dfa4E()
          to label %bb.f unwind label %bb.gl, !noalias !367354 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @323, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #85
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.go, !noalias !367347

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !367354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false), !noalias !367354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !367354
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9410.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !367354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !367359
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !367356, !noalias !367361, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !367356, !noalias !367361, !noundef !12 ; 9 uses
  invoke void @_ZN11meilisearch19documents_retrieval13preprocessing38group_foreign_filters_by_foreign_index17hd028c01b08f82dc6E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.i unwind label %bb.h, !noalias !367359

bb.g:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.pn209.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.h ], [ %.pn207.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$meilisearch..documents_retrieval..preprocessing..local_process_foreign_filters..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbc47a25dbc638dcaE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm) #86
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.eb, !noalias !367361

bb.h:                                             ; preds = %bb.f
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !367359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !367359
  store i64 0, ptr %i.bj, align 8, !noalias !367359
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8, !noalias !367359
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.ci, align 8, !noalias !367359
  %i.cj = icmp ult i64 %i.cf, 18014398509481984
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = mul nuw nsw i64 %i.cf, 24               ; 2 uses
  %i.cl = icmp eq i64 %i.cf, 0
  br i1 %i.cl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31c7f29e11c9265E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !367362
  %i.cm = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ck, i64 noundef range(i64 1, 17) 8) #79, !noalias !367362 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h744b9c8f5be9740aE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2010) #85
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.l, !noalias !367370

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.k
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h744b9c8f5be9740aE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h744b9c8f5be9740aE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.co = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.cp = add nsw i64 %i.cf, -2
  %xtraiter = and i64 %i.co, 3                    ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 3
  br i1 %i.cq, label %.preheader.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.co, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.cm, %.preheader.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod813 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod813)
  br label %.preheader.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.cr, %.preheader.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !367371
  %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !367371
  %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 16
  store i64 0, ptr %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !367371
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !367375

._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h744b9c8f5be9740aE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.lcssa20.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h744b9c8f5be9740aE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cv, %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cr, %.preheader.i.i.i.i.i.i.i.i.i.epil ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa20.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !367376
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31c7f29e11c9265E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.preheader.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cv, %.preheader.i.i.i.i.i.i.i.i.i ] ; 13 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i ]
  store i64 0, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !367371
  %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !367371
  %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 0, ptr %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !367371
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 0, ptr %i.cs, align 8, !noalias !367371
  %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !367371
  %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 0, ptr %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !367371
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  store i64 0, ptr %i.ct, align 8, !noalias !367371
  %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !367371
  %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  store i64 0, ptr %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !367371
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  store i64 0, ptr %i.cu, align 8, !noalias !367371
  %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !367371
  %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 88
  store i64 0, ptr %.sroa.533.0..sroa.0.09.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !367371
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$filter_parser..LightToken$GT$$GT$17h9f595c5ed21001a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bj) #86, !noalias !367377
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit.i.i.i.i.i.i.i.i.i.i", %bb.l
  %.pn207.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn205.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.cw, %bb.l ]
  call fastcc void @"_ZN4core3ptr141drop_in_place$LT$std..collections..hash..map..HashMap$LT$meilisearch_types..index_uid..ForeignIndexUid$C$alloc..vec..Vec$LT$usize$GT$$GT$$GT$17hb915e0162f40ee4fE"(ptr noalias noundef align 8 dereferenceable(48) %i.bl) #86, !noalias !367361
  br label %bb.g

"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h8434620c6d2b6631E.exit.i.i.i.i.i.i.i.i.i", %.loopexit.split-lp747.i.i.i.i.i.i.i.i.i.i, %.loopexit746.i.i.i.i.i.i.i.i.i.i
  %.pn205.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn203.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h8434620c6d2b6631E.exit.i.i.i.i.i.i.i.i.i" ], [ %.pn203.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %lpad.loopexit748.i.i.i.i.i.i.i.i.i.i, %.loopexit746.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp749.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp747.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$filter_parser..LightToken$GT$$GT$$GT$17hdd9e4af7aa4bebe9E"(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #86, !noalias !367361
  br label %.body.i.i.i.i.i.i.i.i.i.i

.loopexit746.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cq, %.loopexit745.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit748.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit.i.i.i.i.i.i.i.i.i.i"

.loopexit.split-lp747.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.gi, %bb.p
  %lpad.loopexit.split-lp749.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31c7f29e11c9265E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.5346.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %._crit_edge.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.i ]
  store i64 %i.cf, ptr %i.bk, align 8, !noalias !367378
  %.sroa.5346.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %.sroa.5346.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.5346.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !367378
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store i64 %i.cf, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !367378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !367359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367379)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !367379, !noalias !367382, !noundef !12 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %._crit_edge992.i.i.i.i.i.i.i.i.i.i, label %.lr.ph991.i.i.i.i.i.i.i.i.i.i

.lr.ph991.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31c7f29e11c9265E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.da = load ptr, ptr %i.bl, align 8, !alias.scope !367379, !noalias !367382, !nonnull !12, !noundef !12 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.da, align 16, !noalias !367384
  %i.db = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dc = bitcast <16 x i1> %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.4110.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.5111.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.5114.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 50
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 50
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.5344.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6347.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5344.0..sroa_idx345.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %.sroa.6347.0..sroa_idx348.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 4 uses
  %i.dp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %.sroa.4131.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %.sroa.5132.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.4.0..sroa_idx3845.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx47.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  %.sroa.2379.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.3380.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.3380.sroa.2.0..sroa.3380.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.sroa.3380.sroa.3.0..sroa.3380.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.3380.sroa.4.0..sroa.3380.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.sroa.4381.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %.sroa.566.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.667.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.768.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0..sroa_idx.i236.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.7413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.19.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.20.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.20426.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %.sroa.22429.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %.sroa.24433.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.ec = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.4393.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7394.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.12.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.14.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.16.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.sroa.18.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.sroa.19.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %.sroa.20.8..sroa.0167.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0167.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.sroa.5507.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6508.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.7509.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.8510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.9511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.10512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.11513.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %.sroa.13515.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %.sroa.15517.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 148
  %.sroa.16518.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.sroa.17519.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %.sroa.18520.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %.sroa.4531.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.5532.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 6 uses
  %i.ej = insertelement <2 x ptr> poison, ptr %i.bi, i64 0
  %i.ek = insertelement <2 x ptr> %i.ej, ptr %i.bg, i64 1
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i", %.lr.ph991.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0989.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph991.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.7.0988.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph991.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.9333.0987.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.dc, %.lr.ph991.i.i.i.i.i.i.i.i.i.i ], [ %i.et, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.11335.0986.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph991.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.9333.0987.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i, label %.loopexit745.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i
  %i.el = phi ptr [ %i.ep, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0988.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.em = phi ptr [ %i.eo, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0989.i.i.i.i.i.i.i.i.i.i, %bb.m ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.el, align 16, !noalias !367387
  %i.en = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -768 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.en to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i, label %.loopexit745.i.i.i.i.i.i.i.i.i.i

.loopexit745.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i, %bb.m
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0988.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.ep, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0989.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.eo, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.9333.0987.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i214.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eq = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.er = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.es = zext nneg i16 %i.er to i64
  %i.et = and i16 %i.eq, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = sub nsw i64 0, %i.es
  %i.ev = getelementptr inbounds [48 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, i64 %i.eu ; 6 uses
  %i.ew = add i64 %.sroa.11335.0986.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !367359
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !367359
  %i.ex = load ptr, ptr %i.de, align 8, !alias.scope !367356, !noalias !367361, !nonnull !12, !noundef !12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 -40
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !367361, !nonnull !12, !noundef !12
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !367361, !noundef !12
  invoke void @_ZN15index_scheduler14IndexScheduler10user_index17h66c0c818f8fc5ec5E(ptr noalias noundef nonnull sret([496 x i8]) align 8 captures(address) dereferenceable(496) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ey, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fa, i64 noundef %i.fc)
          to label %bb.o unwind label %.loopexit746.i.i.i.i.i.i.i.i.i.i, !noalias !367361

._crit_edge992.i.i.i.i.i.i.i.i.i.i:               ; preds = %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit249.i.i.i.i.i.i.i.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc31c7f29e11c9265E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !367392
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h60691b804b756099E.exit318.i.i.i.i.i.i.i.i.i.i", %._crit_edge992.i.i.i.i.i.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZN6flate22gz9read_into17h2bb84b9ded563a70E:bb.a
  br i1 %.not4.i.i.i, label %bb.d, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.thread.i.i

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.thread.i.i: ; preds = %bb.c
  %i.s = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382894
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382894
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.i.i

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.i.i: ; preds = %bb.d, %bb.b
  %i.t = phi i64 [ %i.f, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = phi i64 [ %i.d, %bb.b ], [ 0, %bb.d ]    ; 3 uses
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.u ; 2 uses
  %i.x = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.x, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !382881, !noalias !382886
  %i.z = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h190ab4ac9c2ac827E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.y, ptr noalias noundef nonnull align 1 %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  br label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit"

bb.f:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.i.i, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.thread.i.i
  %.sroa.69.012.i.i = phi i64 [ %i.s, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.thread.i.i ], [ %i.v, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.i.i ]
  %i.aa = inttoptr i64 %.sroa.69.012.i.i to ptr
  %i.ab = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aa, 1
  br label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit"

bb.g:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17ha69dab7f84c2b89cE.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !382896)
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.v, i64 range(i64 0, -9223372036854775808) %1) ; 4 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h554464b6e3326aeeE.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.w, align 1, !noalias !382899, !noundef !12
  store i8 %i.ad, ptr %0, align 1, !alias.scope !382901, !noalias !382902
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h554464b6e3326aeeE.exit.i.i.i": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull readonly align 1 %i.w, i64 %.sroa.0.0.i.i.i.i, i1 false), !alias.scope !382903, !noalias !382907
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h554464b6e3326aeeE.exit.i.i.i", %bb.h
  %i.ae = inttoptr i64 %.sroa.0.0.i.i.i.i to ptr
  %i.af = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ae, 1
  %i.ag = add i64 %.sroa.0.0.i.i.i.i, %i.u
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.ag)
  store i64 %.sroa.0.0.i.i.i, ptr %i.c, align 8, !alias.scope !382881, !noalias !382886
  br label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit"

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit": ; preds = %bb.e, %bb.f, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i"
  %.merged.i.i = phi { i64, ptr } [ %i.z, %bb.e ], [ %i.ab, %bb.f ], [ %i.af, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i" ] ; 2 uses
  %i.ah = extractvalue { i64, ptr } %.merged.i.i, 0 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %.merged.i.i, 1 ; 5 uses
  store i64 %i.ah, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = trunc nuw i64 %i.ah to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit"
  %i.al = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr %i.ai)
  %i.am = icmp eq i8 %i.al, 35
  br i1 %i.am, label %bb.k, label %bb.l

bb.j:                                             ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17h636da8ebe001d61bE.exit"
  %i.an = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select5 = zext i1 %i.an to i64
  %i.ao = select i1 %i.an, ptr inttoptr (i64 158913789955 to ptr), ptr %i.ai
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h592a9ed7be4bab7eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.5.2 = phi ptr [ null, %bb.k ], [ %i.ao, %bb.j ], [ %i.ai, %bb.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.k ], [ %spec.select5, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ap = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.aq = insertvalue { i64, ptr } %i.ap, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6intmap19IntMap$LT$K$C$V$GT$14increase_cache17hc8dc80ae1642c133E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i = alloca [144 x i8], align 8       ; 8 uses
  %.sroa.5.sroa.5 = alloca [144 x i8], align 8    ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !12
  %i.d = add i32 %i.c, 1                          ; 3 uses
  store i32 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread", label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a, %bb.c
  %.sroa.016.0.i = phi i64 [ %.sroa.016.1.i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %.sroa.09.0.i = phi i64 [ %i.j, %bb.c ], [ 2, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.i, %bb.c ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = and i32 %.sroa.0.0.i, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader22.i
  %i.g = mul i64 %.sroa.09.0.i, %.sroa.016.0.i    ; 5 uses
  %i.h = icmp eq i32 %.sroa.0.0.i, 1
  br i1 %i.h, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader22.i
  %.sroa.016.1.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.016.0.i, %.preheader22.i ]
  %i.i = lshr i32 %.sroa.0.0.i, 1
  %i.j = mul i64 %.sroa.09.0.i, %.sroa.09.0.i
  br label %.preheader22.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 -1, ptr %i.k, align 8
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit": ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = add i64 %i.g, -1
  store i64 %i.m, ptr %i.l, align 8
  %i.n = mul i64 %i.g, 24                         ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !32969

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread", %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit"
  %i.o = phi i64 [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.n, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ] ; 3 uses
  %i.p = phi ptr [ %i.k, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.l, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  %.sroa.0.068 = phi i64 [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.g, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ] ; 8 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec8cc9b9c004365E.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !382909
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 17) 8) #79, !noalias !382909 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec8cc9b9c004365E.exit.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.d, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit"
  %i.t = phi i64 [ %i.o, %bb.d ], [ %i.n, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85, !noalias !382922
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec8cc9b9c004365E.exit.i.i.i.i.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.068, %bb.d ] ; 2 uses
  %i.u = icmp samesign ule i64 %.sroa.0.068, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.068, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec8cc9b9c004365E.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %.sroa.0.068, 3             ; 3 uses
  %i.v = icmp samesign ult i64 %.sroa.0.068, 4
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.0.068, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !382923
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !382923
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !382923
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !382923
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !382923
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !382923
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 0, ptr %i.ab, align 8, !noalias !382923
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !382923
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !382923
  %i.ac = add nuw i64 %i.w, 4                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 0, ptr %i.ae, align 8, !noalias !382923
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !382923
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !382923
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit.loopexit.unr-lcssa ]
  %lcmp.mod264 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod264)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.af = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ag = add nuw i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.af ; 3 uses
  store i64 0, ptr %i.ah, align 8, !noalias !382923
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !382923
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !382923
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !382940

_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0ec8cc9b9c004365E.exit.i.i.i.i.i.i"
  %i.ai = ptrtoint ptr %.sroa.10.0.i.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !382941, !noalias !382944
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %0, align 8, !alias.scope !382941, !noalias !382944
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.aj, align 8, !alias.scope !382946, !noalias !382948
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !382946, !noalias !382948
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !382950, !noalias !382952 ; 2 uses
  store i64 %.sroa.0.068, ptr %i.ak, align 8, !alias.scope !382950, !noalias !382952
  %.sroa.0.0.copyload.i.i.i.1.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.1.i.i ; 2 uses
  %i.al = inttoptr i64 %.sroa.0.0.copyload.i.i.i.1.i.i.fr to ptr ; 5 uses
  %i.am = icmp ult i64 %.sroa.0.0.copyload.i.i.i.2.i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.0.0.copyload.i.i.i.2.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8
  %.sroa.012.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.al, ptr %.sroa.012.sroa.2.0..sroa_idx, align 8
  %.sroa.012.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.012.sroa.3.0..sroa_idx, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.an, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.not.i3.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i.fr, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit
  %i.ar = phi i64 [ %i.bf, %bb.p ], [ %.sroa.0.068, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ]
  %.lcssa128144 = phi ptr [ %.lcssa128143, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 2 uses
  %.sroa.024.0.copyload25.i124.lcssa141 = phi i64 [ %.sroa.024.0.copyload25.i124.lcssa140, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 2 uses
  %.lcssa122139 = phi ptr [ %.lcssa122138, %bb.p ], [ %i.al, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 2 uses
  %.lcssa120136 = phi ptr [ %.lcssa120135, %bb.p ], [ null, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 2 uses
  %.lcssa132 = phi ptr [ %.lcssa133, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 6 uses
  %.promoted63.i65 = phi ptr [ %.promoted63.i62, %bb.p ], [ %i.al, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 2 uses
  %.promoted59.i45 = phi ptr [ %.promoted59.i42, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 3 uses
  %.promoted61.i40 = phi i64 [ %.promoted61.i37, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 4 uses
  %i.as = phi ptr [ %i.bg, %bb.p ], [ null, %_ZN4core4iter6traits8iterator8Iterator7collect17h2c6b4db5399c544eE.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382954)
  br i1 %.not.i3.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382957)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.us.i = icmp eq ptr %i.as, null
  br i1 %.not.i.us.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.thread.split.us.i", label %bb.g

bb.g:                                             ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382963)
  %i.at = icmp eq ptr %.lcssa132, %.promoted59.i45
  br i1 %i.at, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.us.i, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i

_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa132, i64 160 ; 2 uses
  store ptr %i.au, ptr %i.ap, align 8, !alias.scope !382966, !noalias !382967
  %.sroa.0.0.copyload8.i.us.i = load i64, ptr %.lcssa132, align 8, !noalias !382972
  %.sroa.5.0..sroa_idx9.i.us.i = getelementptr inbounds nuw i8, ptr %.lcssa132, i64 8
  %.sroa.5.0.copyload10.i.us.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.us.i, align 8, !noalias !382972 ; 2 uses
  %.sroa.7.0..sroa_idx11.i.us.i = getelementptr inbounds nuw i8, ptr %.lcssa132, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx11.i.us.i, i64 144, i1 false), !noalias !382972
  %.not6.i.us.i = icmp eq i64 %.sroa.5.0.copyload10.i.us.i, 7
  br i1 %.not6.i.us.i, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.us.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread"

_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.us.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i, %bb.g
  %i.av = icmp eq i64 %.promoted61.i40, 0
  br i1 %i.av, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread46.us.i, label %bb.h

bb.h:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.us.i
  %i.aw = mul nuw i64 %.promoted61.i40, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !382973
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread46.us.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread46.us.i: ; preds = %bb.h, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.us.i
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !382976, !noalias !382977
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.thread.split.us.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.thread.split.us.i": ; preds = %.split.us.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread46.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.thread.i"

.split.i:                                         ; preds = %bb.f, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i"
  %i.ax = phi ptr [ %i.bq, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.lcssa128144, %bb.f ] ; 3 uses
  %.sroa.024.0.copyload25.i124 = phi i64 [ %.sroa.024.0.copyload25.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.sroa.024.0.copyload25.i124.lcssa141, %bb.f ] ; 3 uses
  %i.ay = phi ptr [ %i.bo, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.lcssa122139, %bb.f ] ; 3 uses
  %i.az = phi ptr [ %.sroa.826.sroa.0.0.copyload.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.lcssa120136, %bb.f ] ; 3 uses
  %.sroa.826.sroa.0.0.copyload.i118 = phi ptr [ %.sroa.826.sroa.0.0.copyload.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.lcssa132, %bb.f ] ; 7 uses
  %.promoted63.i64 = phi ptr [ %i.bo, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.promoted63.i65, %bb.f ] ; 6 uses
  %.promoted59.i44 = phi ptr [ %i.bq, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.promoted59.i45, %bb.f ] ; 2 uses
  %.promoted61.i39 = phi i64 [ %.sroa.024.0.copyload25.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %.promoted61.i40, %bb.f ] ; 3 uses
  %i.ba = phi ptr [ %.sroa.826.sroa.0.0.copyload.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h4c7bd95283762c60E.exit.i" ], [ %i.as, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382957)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382963)
  %i.bb = icmp eq ptr %.sroa.826.sroa.0.0.copyload.i118, %.promoted59.i44
  br i1 %i.bb, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.i

_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.i: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.826.sroa.0.0.copyload.i118, i64 160 ; 3 uses
  %.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.826.sroa.0.0.copyload.i118, align 8, !noalias !382972
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.826.sroa.0.0.copyload.i118, i64 8
  %.sroa.5.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !382972 ; 2 uses
  %.sroa.7.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.826.sroa.0.0.copyload.i118, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx11.i.i, i64 144, i1 false), !noalias !382972
  %.not6.i.i = icmp eq i64 %.sroa.5.0.copyload10.i.i, 7
  br i1 %.not6.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit"

_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.i, %bb.i
  %.sroa.826.sroa.0.0.copyload.i116 = phi ptr [ %i.bc, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.i ], [ %.sroa.826.sroa.0.0.copyload.i118, %bb.i ] ; 2 uses
  %i.bd = icmp eq i64 %.promoted61.i39, 0
  br i1 %i.bd, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i
  %i.be = mul nuw i64 %.promoted61.i39, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !382973
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread.i

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.i
  store ptr %i.bc, ptr %i.ap, align 8
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.ay, ptr %.sroa.012.sroa.2.0..sroa_idx, align 8
  store i64 %.sroa.024.0.copyload25.i124, ptr %i.aq, align 8
  store ptr %i.ax, ptr %i.ao, align 8
  %.pre = load i64, ptr %i.ak, align 8
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit", %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i
  %i.bf = phi i64 [ %i.ar, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.pre, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ] ; 3 uses
  %.lcssa128143 = phi ptr [ %.lcssa128144, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %i.ax, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.sroa.024.0.copyload25.i124.lcssa140 = phi i64 [ %.sroa.024.0.copyload25.i124.lcssa141, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.sroa.024.0.copyload25.i124, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.lcssa122138 = phi ptr [ %.lcssa122139, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %i.ay, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.lcssa120135 = phi ptr [ %.lcssa120136, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %i.az, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.lcssa133 = phi ptr [ %i.au, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %i.bc, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.promoted63.i62 = phi ptr [ %.promoted63.i65, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.promoted63.i64, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.promoted59.i42 = phi ptr [ %.promoted59.i45, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.promoted59.i44, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.promoted61.i37 = phi i64 [ %.promoted61.i40, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.promoted61.i39, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %i.bg = phi ptr [ %i.as, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %i.ba, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  %.us-phi.i = phi i64 [ %.sroa.0.0.copyload8.i.us.i, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.sroa.0.0.copyload8.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ] ; 3 uses
  %.us-phi58.i = phi i64 [ %.sroa.5.0.copyload10.i.us.i, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.i.us.i ], [ %.sroa.5.0.copyload10.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h35d00e976f88bfedE.exit.thread.loopexit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.sroa.5, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.046.sroa.0.0.extract.trunc = trunc i64 %.us-phi.i to i32
  %.sroa.046.sroa.6.0.extract.shift = lshr i64 %.us-phi.i, 32
  %.sroa.046.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.046.sroa.6.0.extract.shift to i32
  %i.bh = load i64, ptr %i.p, align 8, !noundef !12
  %i.bi = mul i64 %.us-phi.i, 4294967291
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = and i64 %i.bh, %i.bj                    ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.bf
  br i1 %i.bl, label %bb.l, label %bb.n

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i, %bb.j, %.split.i
  %i.bm = phi ptr [ %i.az, %.split.i ], [ null, %bb.j ], [ null, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i ]
  %.sroa.826.sroa.0.0.copyload.i117 = phi ptr [ %.sroa.826.sroa.0.0.copyload.i118, %.split.i ], [ %.sroa.826.sroa.0.0.copyload.i116, %bb.j ], [ %.sroa.826.sroa.0.0.copyload.i116, %_ZN4core3ops8function6FnOnce9call_once17hd006a1af33c478a1E.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bn = icmp eq ptr %.promoted63.i64, %i.an
  br i1 %i.bn, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.thread.i.loopexit", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1fb037bcdb574f3cE.exit.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2caec6b041bceb14E.exit.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.promoted63.i64, i64 24 ; 3 uses
  %.sroa.024.0.copyload25.i = load i64, ptr %.promoted63.i64, align 8, !noalias !382978 ; 3 uses
  %.not1.i = icmp eq i64 %.sroa.024.0.copyload25.i, -9223372036854775808
end_hunk_11
begin_hunk_12_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17h0af6d2704a4d3026E":bb.a
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h5061a4390f520aa7E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aq)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h59845221ab30d12eE.exit.i.i" unwind label %.loopexit59.i, !noalias !427504

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h59845221ab30d12eE.exit.i.i": ; preds = %bb.cn, %bb.cm, %.thread.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !427514
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h8d2474c7d8e9ea1cE.exit.i"

bb.co:                                            ; preds = %bb.m
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #85
          to label %bb.cr unwind label %.body.thread.i, !noalias !427504

.loopexit59.i:                                    ; preds = %bb.cn, %bb.cm, %bb.p
  %lpad.loopexit61.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body.thread.i:                                   ; preds = %bb.co
  %lpad.loopexit.split-lp62.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427828)
  call void @llvm.experimental.noalias.scope.decl(metadata !427831), !noalias !427504
  %i.ml = icmp eq i64 %i.cb, 3
  br i1 %i.ml, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !427834), !noalias !427504
  call void @llvm.experimental.noalias.scope.decl(metadata !427837), !noalias !427504
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !427840, !nonnull !12, !noundef !12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.mp = load i64, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !427841, !noalias !427504, !noundef !12
  invoke void %i.mn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef %.sroa.554.0.copyload, i64 noundef %i.mp)
          to label %.body14 unwind label %bb.cs, !inline_history !427842

bb.cq:                                            ; preds = %.body.thread.i
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h5061a4390f520aa7E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %.body14 unwind label %bb.cs

bb.cr:                                            ; preds = %bb.co
  unreachable

"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h8d2474c7d8e9ea1cE.exit.i": ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h59845221ab30d12eE.exit.i.i", %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !427505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !427505
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !427498, !noalias !427501, !nonnull !12, !noundef !12
  %.val44.i = load ptr, ptr %i.al, align 8, !alias.scope !427498, !noalias !427501, !nonnull !12, !align !4496, !noundef !12
  %i.mq = getelementptr inbounds nuw i8, ptr %.val44.i, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !invariant.load !12, !noalias !427843, !nonnull !12
  invoke void %i.mr(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc12 unwind label %.loopexit, !inline_history !427510

.noexc12:                                         ; preds = %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h8d2474c7d8e9ea1cE.exit.i"
  %i.ms = load i64, ptr %i.t, align 8, !noalias !427505 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 6
  br i1 %i.mt, label %.thread, label %bb.k

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !427504
  unreachable

bb.ct:                                            ; preds = %bb.l
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @331, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #85
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ct
  unreachable

.loopexit:                                        ; preds = %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h8d2474c7d8e9ea1cE.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.loopexit.split-lp:                               ; preds = %bb.j, %bb.ct
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body14

bb.cu:                                            ; preds = %bb.l
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.943.8.copyload = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !427844, !noalias !427845
  %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.1144.8.copyload = load ptr, ptr %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !427844, !noalias !427845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, ptr noundef nonnull align 8 dereferenceable(104) %i.au, i64 104, i1 false), !alias.scope !427844, !noalias !427845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !427505
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  %i.mv = icmp eq i64 %.sroa.019.0.copyload.i, 5
  br i1 %i.mv, label %bb.cv, label %bb.cw

common.ret:                                       ; preds = %bb.do, %bb.cv
  %storemerge577 = phi i64 [ 0, %bb.do ], [ 1, %bb.cv ]
  %storemerge = phi i8 [ 1, %bb.do ], [ 3, %bb.cv ]
  store i64 %storemerge577, ptr %0, align 8
  store i8 %storemerge, ptr %i.v, align 8
  ret void

bb.cv:                                            ; preds = %.thread, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  br label %common.ret

bb.cw:                                            ; preds = %.thread60, %bb.cu
  %.sroa.042.066 = phi i64 [ 4, %.thread60 ], [ %.sroa.019.0.copyload.i, %bb.cu ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %.sroa.4.0.copyload, %.thread60 ], [ %.sroa.943.8.copyload, %bb.cu ] ; 3 uses
  %.sroa.1144.064 = phi ptr [ %.sroa.554.0.copyload, %.thread60 ], [ %.sroa.1144.8.copyload, %bb.cu ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h4cd0ffcece01633eE"(ptr noalias noundef align 8 dereferenceable(144) %i.aj)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17ha91c2ecae9bb81abE.exit.i", %bb.cw
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.cy:                                            ; preds = %bb.cw
  %i.mx = icmp eq i64 %.sroa.042.066, 4
  br i1 %i.mx, label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit.thread", label %bb.cz

"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit.thread": ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.943.065) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1144.064) ]
  br label %bb.dj

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !427846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !427846
  store i64 %.sroa.042.066, ptr %i.c, align 8, !noalias !427850
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.943.065, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !427850
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.1144.064, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !427850
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, i64 104, i1 false), !noalias !427850
  call void @llvm.experimental.noalias.scope.decl(metadata !427851)
  call void @llvm.experimental.noalias.scope.decl(metadata !427854)
  %i.my = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !427857, !noalias !427860, !noundef !12 ; 4 uses
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i = load i64, ptr %i.my, align 8, !alias.scope !427857, !noalias !427860 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.val2.i.i.i.i = load i64, ptr %i.nc, align 8, !alias.scope !427857, !noalias !427860 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %.val2.i.i.i.i, %.val.i.i.i.i
  %i.nd = select i1 %.not.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = sub nuw i64 %.val2.i.i.i.i, %i.nd ; 5 uses
  %i.ne = sub i64 %.val.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.ne, %i.na   ; 2 uses
  %i.nf = add i64 %.sroa.0.0.i.i.i.i.i, %i.na
  %i.ng = sub nuw i64 %i.na, %i.ne
  %i.nh = shl nuw nsw i64 %i.ng, 5
  %.sroa.5.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %.val.i.i.i.i, i64 %i.nf ; 2 uses
  %.sroa.11.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %i.nh, i64 0 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.nj = load ptr, ptr %i.ni, align 8, !alias.scope !427857, !noalias !427860, !nonnull !12, !noundef !12 ; 6 uses
  %.idx1.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 5
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.idx1.i.i.i ; 5 uses
  %i.nl = icmp samesign eq i64 %.sroa.0.0.i.i.i.i.i, %.sroa.5.0.i.i.i.i
  br i1 %i.nl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i", label %bb.dc

bb.db:                                            ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i"
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17h58f2d12961ee4ab7E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #86
          to label %.body19 unwind label %bb.di, !noalias !427864

bb.dc:                                            ; preds = %bb.da
  %i.nn = sub nuw nsw i64 %.sroa.5.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %xtraiter = and i64 %i.nn, 3                    ; 3 uses
  %i.no = icmp ult i64 %i.nn, 4
  br i1 %i.no, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.dc
  %unroll_iter = and i64 %i.nn, -4
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.new
  %.sroa.09.0.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.ob, %bb.dd ] ; 5 uses
  %.sroa.07.0.i.i.i.i.i16 = phi i64 [ 0, %.new ], [ %i.oa, %bb.dd ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.dd ]
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i.i.i.i.i
  %i.nq = getelementptr i8, ptr %i.np, i64 16
  %.val.i.i.i.i.i17 = load i64, ptr %i.nq, align 8, !noalias !427865, !noundef !12
  %i.nr = add i64 %.val.i.i.i.i.i17, %.sroa.07.0.i.i.i.i.i16
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i.i.i.i.i
  %i.nt = getelementptr i8, ptr %i.ns, i64 48
  %.val.i.i.i.i.i17.1 = load i64, ptr %i.nt, align 8, !noalias !427865, !noundef !12
  %i.nu = add i64 %.val.i.i.i.i.i17.1, %i.nr
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i.i.i.i.i
  %i.nw = getelementptr i8, ptr %i.nv, i64 80
  %.val.i.i.i.i.i17.2 = load i64, ptr %i.nw, align 8, !noalias !427865, !noundef !12
  %i.nx = add i64 %.val.i.i.i.i.i17.2, %i.nu
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i.i.i.i.i
  %i.nz = getelementptr i8, ptr %i.ny, i64 112
  %.val.i.i.i.i.i17.3 = load i64, ptr %i.nz, align 8, !noalias !427865, !noundef !12
  %i.oa = add i64 %.val.i.i.i.i.i17.3, %i.nx      ; 3 uses
  %i.ob = add nuw i64 %.sroa.09.0.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa", label %bb.dd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa": ; preds = %bb.dd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa", %bb.dc
  %.sroa.09.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.dc ], [ %i.ob, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i.i16.epil.init = phi i64 [ 0, %bb.dc ], [ %i.oa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod936 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod936)
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.epil.preheader
  %.sroa.09.0.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.of, %bb.de ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i16.epil = phi i64 [ %.sroa.07.0.i.i.i.i.i16.epil.init, %.epil.preheader ], [ %i.oe, %bb.de ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.de ]
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i.i.i.i.i.epil
  %i.od = getelementptr i8, ptr %i.oc, i64 16
  %.val.i.i.i.i.i17.epil = load i64, ptr %i.od, align 8, !noalias !427865, !noundef !12
  %i.oe = add i64 %.val.i.i.i.i.i17.epil, %.sroa.07.0.i.i.i.i.i16.epil ; 2 uses
  %i.of = add nuw i64 %.sroa.09.0.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i", label %bb.de, !llvm.loop !427868

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa", %bb.de, %bb.da
  %.sroa.04.0.i.i.i.i.i18 = phi i64 [ 0, %bb.da ], [ %i.oa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.loopexit.unr-lcssa" ], [ %i.oe, %bb.de ] ; 3 uses
  %i.og = icmp samesign eq i64 %.sroa.11.0.i.i.i.i, 0
  br i1 %i.og, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i", label %bb.df

bb.df:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i"
  %i.oh = lshr exact i64 %.sroa.11.0.i.i.i.i, 5   ; 2 uses
  %xtraiter939 = and i64 %i.oh, 3                 ; 3 uses
  %i.oi = icmp samesign ult i64 %.sroa.11.0.i.i.i.i, 128
  br i1 %i.oi, label %.epil.preheader938, label %.new937

.new937:                                          ; preds = %bb.df
  %unroll_iter944 = and i64 %i.oh, 288230376151711740
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.new937
  %.sroa.09.0.i1.i.i.i.i = phi i64 [ 0, %.new937 ], [ %i.ov, %bb.dg ] ; 5 uses
  %.sroa.07.0.i2.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %.new937 ], [ %i.ou, %bb.dg ]
  %niter945 = phi i64 [ 0, %.new937 ], [ %niter945.next.3, %bb.dg ]
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %.sroa.09.0.i1.i.i.i.i
  %i.ok = getelementptr i8, ptr %i.oj, i64 16
  %.val.i3.i.i.i.i = load i64, ptr %i.ok, align 8, !noalias !427865, !noundef !12
  %i.ol = add i64 %.val.i3.i.i.i.i, %.sroa.07.0.i2.i.i.i.i
  %i.om = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %.sroa.09.0.i1.i.i.i.i
  %i.on = getelementptr i8, ptr %i.om, i64 48
  %.val.i3.i.i.i.i.1 = load i64, ptr %i.on, align 8, !noalias !427865, !noundef !12
  %i.oo = add i64 %.val.i3.i.i.i.i.1, %i.ol
  %i.op = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %.sroa.09.0.i1.i.i.i.i
  %i.oq = getelementptr i8, ptr %i.op, i64 80
  %.val.i3.i.i.i.i.2 = load i64, ptr %i.oq, align 8, !noalias !427865, !noundef !12
  %i.or = add i64 %.val.i3.i.i.i.i.2, %i.oo
  %i.os = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %.sroa.09.0.i1.i.i.i.i
  %i.ot = getelementptr i8, ptr %i.os, i64 112
  %.val.i3.i.i.i.i.3 = load i64, ptr %i.ot, align 8, !noalias !427865, !noundef !12
  %i.ou = add i64 %.val.i3.i.i.i.i.3, %i.or       ; 3 uses
  %i.ov = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i, 4 ; 2 uses
  %niter945.next.3 = add i64 %niter945, 4         ; 2 uses
  %niter945.ncmp.3 = icmp eq i64 %niter945.next.3, %unroll_iter944
  br i1 %niter945.ncmp.3, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa", label %bb.dg

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa": ; preds = %bb.dg
  %lcmp.mod941.not = icmp eq i64 %xtraiter939, 0
  br i1 %lcmp.mod941.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i", label %.epil.preheader938

.epil.preheader938:                               ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa", %bb.df
  %.sroa.09.0.i1.i.i.i.i.epil.init = phi i64 [ 0, %bb.df ], [ %i.ov, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i2.i.i.i.i.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %bb.df ], [ %i.ou, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod943 = icmp ne i64 %xtraiter939, 0
  call void @llvm.assume(i1 %lcmp.mod943)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.epil.preheader938
  %.sroa.09.0.i1.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i1.i.i.i.i.epil.init, %.epil.preheader938 ], [ %i.oz, %bb.dh ] ; 2 uses
  %.sroa.07.0.i2.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i2.i.i.i.i.epil.init, %.epil.preheader938 ], [ %i.oy, %bb.dh ]
  %epil.iter940 = phi i64 [ 0, %.epil.preheader938 ], [ %epil.iter940.next, %bb.dh ]
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %.sroa.09.0.i1.i.i.i.i.epil
  %i.ox = getelementptr i8, ptr %i.ow, i64 16
  %.val.i3.i.i.i.i.epil = load i64, ptr %i.ox, align 8, !noalias !427865, !noundef !12
  %i.oy = add i64 %.val.i3.i.i.i.i.epil, %.sroa.07.0.i2.i.i.i.i.epil ; 2 uses
  %i.oz = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.epil, 1
  %epil.iter940.next = add i64 %epil.iter940, 1   ; 2 uses
  %epil.iter940.cmp.not = icmp eq i64 %epil.iter940.next, %xtraiter939
  br i1 %epil.iter940.cmp.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i", label %bb.dh, !llvm.loop !427869

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i": ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa", %bb.dh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i", %bb.cz
  %.sroa.04.0.i4.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i" ], [ 0, %bb.cz ], [ %i.ou, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i.loopexit.unr-lcssa" ], [ %i.oy, %bb.dh ]
  invoke fastcc void @"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hb0ab4942add37c2fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(32) %i.my, i64 noundef %.sroa.04.0.i4.i.i.i.i)
          to label %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17ha91c2ecae9bb81abE.exit.i" unwind label %bb.db, !noalias !427846

bb.di:                                            ; preds = %bb.db
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !427870
  unreachable

"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17ha91c2ecae9bb81abE.exit.i": ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17h58f2d12961ee4ab7E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" unwind label %bb.cx

"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit": ; preds = %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17ha91c2ecae9bb81abE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !427846
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !noalias !427871 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !427871 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !427871 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !427871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !427846
  %i.pb = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.pb, label %bb.dj, label %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6efb9469bbc20235E.exit"

bb.dj:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit.thread", %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit"
  %.sroa.10.072 = phi ptr [ %.sroa.943.065, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit.thread" ], [ %.sroa.10.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  %.sroa.12.071 = phi ptr [ %.sroa.1144.064, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit.thread" ], [ %.sroa.12.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !427872
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 5, ptr %i.pc, align 8, !noalias !427882
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %.sroa.10.072, ptr %i.pd, align 8, !noalias !427872
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %.sroa.12.071, ptr %i.pe, align 8, !noalias !427872
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !427872
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !427883
  %i.pf = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !427883 ; 3 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.dk, label %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i, !prof !334

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #85
          to label %.noexc7.i.i.i.i unwind label %bb.dl, !noalias !427886

.noexc7.i.i.i.i:                                  ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dk
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17ha178a5c8cdc63b23E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #86
          to label %.body19 unwind label %bb.dm, !noalias !427886

bb.dm:                                            ; preds = %bb.dl
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !427886
  unreachable

_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i: ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.pf, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !427886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !427872
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6efb9469bbc20235E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6efb9469bbc20235E.exit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit"
  %.sroa.652.0 = phi i64 [ undef, %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i ], [ %.sroa.14.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  %.sroa.551.0 = phi ptr [ undef, %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i ], [ %.sroa.12.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  %.sroa.350.0 = phi ptr [ %i.pf, %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i ], [ %.sroa.10.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  %.sroa.049.0 = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17h321d1d33c2a6ca3eE.exit.i ], [ %.sroa.0.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17haa6e2bab3a37901eE.exit" ]
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.pj, align 8, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427887)
  call void @llvm.experimental.noalias.scope.decl(metadata !427890)
  call void @llvm.experimental.noalias.scope.decl(metadata !427893)
  %.val.i.i.i.i24 = load i64, ptr %.val, align 8, !alias.scope !427896 ; 2 uses
  %i.pk = icmp eq i64 %.val.i.i.i.i24, 0
  br i1 %i.pk, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6efb9469bbc20235E.exit"
  %i.pl = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.pl, align 8, !alias.scope !427896, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !427896
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6efb9469bbc20235E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #79
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.049.0, ptr %i.pm, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.350.0, ptr %.sroa.350.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.551.0, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.652.0, ptr %.sroa.652.0..sroa_idx, align 8
  br label %common.ret

.body14:                                          ; preds = %.loopexit, %.loopexit.split-lp, %.body17.i.i, %bb.cj, %bb.ck, %.loopexit59.i, %bb.cp, %bb.cq, %bb.s
  %.pn3 = phi { ptr, i32 } [ %lpad.loopexit61.i, %.loopexit59.i ], [ %.pn.i.i, %bb.cj ], [ %i.ck, %bb.s ], [ %lpad.loopexit.split-lp62.i, %bb.cp ], [ %lpad.loopexit.split-lp62.i, %bb.cq ], [ %.pn.i.i, %bb.ck ], [ %.pn.i.i, %.body17.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h4cd0ffcece01633eE"(ptr noalias noundef align 8 dereferenceable(144) %i.aj) #86
          to label %.body19 unwind label %bb.dp

bb.dp:                                            ; preds = %.body14
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

infloop:                                          ; preds = %.outer754, %infloop
  br label %infloop

infloop1126:                                      ; preds = %.outer, %infloop1126
  br label %infloop1126
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN7reqwest5error5Error3new17h9c47c57ebc9a0ee0E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427897
  store ptr %1, ptr %i.a, align 8, !noalias !427902
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #79 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.g, !prof !334

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #85
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h324f7696ecfa9a0eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #86
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

.body:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427905)
  %i.h = load i16, ptr %i.b, align 8, !range !117110, !alias.scope !427905, !noundef !12
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427908)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !427911, !noundef !12 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427918)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !427921, !nonnull !12, !noundef !12
end_hunk_12
begin_hunk_13_@"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hf4ae0d4c4891a7a3E":bb.a
bb.h:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #87
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9300) #85
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.t, %bb.p ]
  invoke void @"_ZN74_$LT$rayon_core..unwind..AbortIfPanic$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fb6852f8b0dc85dE"(ptr noalias noundef nonnull align 1 %i.a)
          to label %"_ZN4core3ptr53drop_in_place$LT$rayon_core..unwind..AbortIfPanic$GT$17he73af82623524a07E.exit" unwind label %bb.s

bb.k:                                             ; preds = %bb.q, %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hdc92f99fc9b2960bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !459889
  %.sroa.0.0.copyload46 = load i64, ptr %i.c, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.15.0..sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.15, i64 296, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body
  %i.r = extractvalue { ptr, ptr } %i.o, 0
  %i.s = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.7.0 = phi ptr [ %.sroa.14.0.copyload, %bb.m ], [ %i.s, %bb.n ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.copyload, %bb.m ], [ %i.r, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload46, %bb.m ], [ 100, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$milli..error..Error$GT$$GT$$GT$17h5e9b9fd79722bbd9E"(ptr noalias noundef align 8 dereferenceable(320) %0)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8, i64 296, i1 false)
  br label %bb.j

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.u, align 8, !noundef !12
  invoke fastcc void @"_ZN81_$LT$rayon_core..latch..LatchRef$LT$L$GT$$u20$as$u20$rayon_core..latch..Latch$GT$3set17h389f1fa479e715b6E"(ptr %.val)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  ret void

bb.s:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

"_ZN4core3ptr53drop_in_place$LT$rayon_core..unwind..AbortIfPanic$GT$17he73af82623524a07E.exit": ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$time..error..conversion_range..ConversionRange$u20$as$u20$core..fmt..Debug$GT$3fmt17h892f41039d16a2beE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9301, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$tokio..sync..mpsc..error..SendError$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h519da6acb42ef1b4E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !12, !noalias !459896, !nonnull !12
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9305, i64 noundef 14), !noalias !459896, !inline_history !386274
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hb0ab4942add37c2fE"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 17 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !459899, !noundef !12 ; 19 uses
  %.not.i = icmp eq i64 %i.s, 0                   ; 5 uses
  %.sink467.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink467.sroa.gep699 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.thread", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.thread": ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !459902, !noalias !459905
  br label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit"

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !459899, !noundef !12 ; 4 uses
  %i.v = load i64, ptr %1, align 8, !range !64, !alias.scope !459899, !noundef !12 ; 7 uses
  %.not6.i = icmp ult i64 %i.u, %i.v
  %i.w = select i1 %.not6.i, i64 0, i64 %i.v
  %.sroa.01.0.i = sub nuw i64 %i.u, %i.w          ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !459899, !nonnull !12, !noundef !12 ; 11 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.01.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val7 = load i64, ptr %i.aa, align 8, !noundef !12 ; 2 uses
  %i.ab = icmp eq i64 %.val7, %2
  br i1 %i.ab, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit", label %bb.i

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit": ; preds = %bb.i
  %i.ac = sub i64 %i.v, %.sroa.01.0.i             ; 2 uses
  %.not11.i.i = icmp ult i64 %i.ac, %i.s          ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i, %i.s
  %i.ae = sub nuw i64 %i.s, %i.ac
  %i.af = shl nuw nsw i64 %i.ae, 5
  %.sroa.5.0.i = select i1 %.not11.i.i, i64 %i.v, i64 %i.ad ; 2 uses
  %.sroa.11.0.i = select i1 %.not11.i.i, i64 %i.af, i64 0 ; 3 uses
  %.idx252 = shl nuw nsw i64 %.sroa.01.0.i, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx252 ; 5 uses
  %i.ah = icmp samesign eq i64 %.sroa.01.0.i, %.sroa.5.0.i
  br i1 %i.ah, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit"
  %i.ai = sub nuw nsw i64 %.sroa.5.0.i, %.sroa.01.0.i ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 4
  br i1 %i.aj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.ai, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.09.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %bb.d ] ; 5 uses
  %.sroa.07.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.09.0.i.i
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %.val.i.i = load i64, ptr %i.al, align 8, !noalias !459907, !noundef !12
  %i.am = add i64 %.val.i.i, %.sroa.07.0.i.i
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.09.0.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %.val.i.i.1 = load i64, ptr %i.ao, align 8, !noalias !459907, !noundef !12
  %i.ap = add i64 %.val.i.i.1, %i.am
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.09.0.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  %.val.i.i.2 = load i64, ptr %i.ar, align 8, !noalias !459907, !noundef !12
  %i.as = add i64 %.val.i.i.2, %i.ap
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.09.0.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 112
  %.val.i.i.3 = load i64, ptr %i.au, align 8, !noalias !459907, !noundef !12
  %i.av = add i64 %.val.i.i.3, %i.as              ; 3 uses
  %i.aw = add nuw i64 %.sroa.09.0.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa", label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa": ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa", %bb.c
  %.sroa.09.0.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.aw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.av, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod617 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod617)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.sroa.09.0.i.i.epil = phi i64 [ %.sroa.09.0.i.i.epil.init, %.epil.preheader ], [ %i.ba, %bb.e ] ; 2 uses
  %.sroa.07.0.i.i.epil = phi i64 [ %.sroa.07.0.i.i.epil.init, %.epil.preheader ], [ %i.az, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.09.0.i.i.epil
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val.i.i.epil = load i64, ptr %i.ay, align 8, !noalias !459907, !noundef !12
  %i.az = add i64 %.val.i.i.epil, %.sroa.07.0.i.i.epil ; 2 uses
  %i.ba = add nuw i64 %.sroa.09.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i", label %bb.e, !llvm.loop !459910

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa", %bb.e, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit"
  %.sroa.04.0.i.i = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit" ], [ %i.av, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.loopexit.unr-lcssa" ], [ %i.az, %bb.e ] ; 3 uses
  %i.bb = icmp samesign eq i64 %.sroa.11.0.i, 0
  br i1 %i.bb, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i"
  %i.bc = lshr exact i64 %.sroa.11.0.i, 5         ; 2 uses
  %xtraiter620 = and i64 %i.bc, 3                 ; 3 uses
  %i.bd = icmp samesign ult i64 %.sroa.11.0.i, 128
  br i1 %i.bd, label %.epil.preheader619, label %.new618

.new618:                                          ; preds = %bb.f
  %unroll_iter625 = and i64 %i.bc, 288230376151711740
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new618
  %.sroa.09.0.i1.i = phi i64 [ 0, %.new618 ], [ %i.bq, %bb.g ] ; 5 uses
  %.sroa.07.0.i2.i = phi i64 [ %.sroa.04.0.i.i, %.new618 ], [ %i.bp, %bb.g ]
  %niter626 = phi i64 [ 0, %.new618 ], [ %niter626.next.3, %bb.g ]
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.0.i1.i
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %.val.i3.i = load i64, ptr %i.bf, align 8, !noalias !459907, !noundef !12
  %i.bg = add i64 %.val.i3.i, %.sroa.07.0.i2.i
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.0.i1.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %.val.i3.i.1 = load i64, ptr %i.bi, align 8, !noalias !459907, !noundef !12
  %i.bj = add i64 %.val.i3.i.1, %i.bg
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.0.i1.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 80
  %.val.i3.i.2 = load i64, ptr %i.bl, align 8, !noalias !459907, !noundef !12
  %i.bm = add i64 %.val.i3.i.2, %i.bj
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.0.i1.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 112
  %.val.i3.i.3 = load i64, ptr %i.bo, align 8, !noalias !459907, !noundef !12
  %i.bp = add i64 %.val.i3.i.3, %i.bm             ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.09.0.i1.i, 4     ; 2 uses
  %niter626.next.3 = add i64 %niter626, 4         ; 2 uses
  %niter626.ncmp.3 = icmp eq i64 %niter626.next.3, %unroll_iter625
  br i1 %niter626.ncmp.3, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa", label %bb.g

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa": ; preds = %bb.g
  %lcmp.mod622.not = icmp eq i64 %xtraiter620, 0
  br i1 %lcmp.mod622.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit", label %.epil.preheader619

.epil.preheader619:                               ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa", %bb.f
  %.sroa.09.0.i1.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.bq, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa" ]
  %.sroa.07.0.i2.i.epil.init = phi i64 [ %.sroa.04.0.i.i, %bb.f ], [ %i.bp, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod624 = icmp ne i64 %xtraiter620, 0
  tail call void @llvm.assume(i1 %lcmp.mod624)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader619
  %.sroa.09.0.i1.i.epil = phi i64 [ %.sroa.09.0.i1.i.epil.init, %.epil.preheader619 ], [ %i.bu, %bb.h ] ; 2 uses
  %.sroa.07.0.i2.i.epil = phi i64 [ %.sroa.07.0.i2.i.epil.init, %.epil.preheader619 ], [ %i.bt, %bb.h ]
  %epil.iter621 = phi i64 [ 0, %.epil.preheader619 ], [ %epil.iter621.next, %bb.h ]
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.0.i1.i.epil
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val.i3.i.epil = load i64, ptr %i.bs, align 8, !noalias !459907, !noundef !12
  %i.bt = add i64 %.val.i3.i.epil, %.sroa.07.0.i2.i.epil ; 2 uses
  %i.bu = add nuw nsw i64 %.sroa.09.0.i1.i.epil, 1
  %epil.iter621.next = add i64 %epil.iter621, 1   ; 2 uses
  %epil.iter621.cmp.not = icmp eq i64 %epil.iter621.next, %xtraiter620
  br i1 %epil.iter621.cmp.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit", label %bb.h, !llvm.loop !459911

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit": ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa", %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.thread", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i"
  %i.bv = phi ptr [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i" ], [ %.pre, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.thread" ], [ %i.y, %bb.h ], [ %i.y, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa" ] ; 38 uses
  %.sroa.04.0.i4.i = phi i64 [ %.sroa.04.0.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i" ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.thread" ], [ %i.bp, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit.loopexit.unr-lcssa" ], [ %i.bt, %bb.h ] ; 2 uses
  %.not5 = icmp ugt i64 %2, %.sroa.04.0.i4.i
  br i1 %.not5, label %bb.o, label %bb.p, !prof !10

bb.i:                                             ; preds = %bb.b
  %i.bw = icmp ugt i64 %.val7, %2
  br i1 %i.bw, label %bb.j, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit"

bb.j:                                             ; preds = %bb.i
  tail call void @"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h1e59678997cd820cE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.by, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit", %bb.j
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !459912)
  call void @llvm.experimental.noalias.scope.decl(metadata !459915)
  %i.by = load ptr, ptr %i.q, align 8, !alias.scope !459918, !nonnull !12, !align !4496, !noundef !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !459918, !nonnull !12, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !459918, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !459918, !noundef !12
  invoke void %i.ca(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h940cc7bd13afdd17E.exit" unwind label %bb.n, !inline_history !90432

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h1e59678997cd820cE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !459919)
  %i.cg = add i64 %i.u, 1                         ; 2 uses
  %.not.i9 = icmp ult i64 %i.cg, %i.v
  %i.ch = select i1 %.not.i9, i64 0, i64 %i.v
  %.sroa.0.0.i10 = sub nuw i64 %i.cg, %i.ch
  store i64 %.sroa.0.0.i10, ptr %i.t, align 8, !alias.scope !459919, !noalias !459922
  %i.ci = add i64 %i.s, -1                        ; 2 uses
  store i64 %i.ci, ptr %i.r, align 8, !alias.scope !459919, !noalias !459922
  %i.cj = icmp ult i64 %i.ci, %i.v
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 32, i1 false), !noalias !459919
  %.pr = load ptr, ptr %i.p, align 8, !alias.scope !459924 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459924)
  %i.cl = icmp eq ptr %.pr, null
  br i1 %i.cl, label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !459927)
  call void @llvm.experimental.noalias.scope.decl(metadata !459930)
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !459933, !nonnull !12, !noundef !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !459933, !noundef !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !459933, !noundef !12
  invoke void %i.cn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit" unwind label %bb.l, !inline_history !266992

"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.k

bb.n:                                             ; preds = %.body.thread, %bb.l
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h940cc7bd13afdd17E.exit": ; preds = %.body.thread, %bb.bv, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body244, %.body.thread ], [ %i.qo, %bb.bv ], [ %i.bx, %bb.l ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit"
  tail call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8371, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9307) #85
  unreachable

bb.p:                                             ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h89a299ca88e197d3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cu = icmp slt i64 %2, 0
  br i1 %i.cu, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.p
  %i.cv = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %i.cv, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7768632db3ae7accE.exit", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !459934
  %i.cw = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #79, !noalias !459934 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7768632db3ae7accE.exit"

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1366) #85
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7768632db3ae7accE.exit": ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.cw, %bb.q ]
  %i.cy = lshr i64 %2, 10
  %i.cz = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.cy, i1 false)
  %i.da = sub nuw nsw i64 64, %i.cz
  %.sroa.0.0.i.i11 = tail call noundef i64 @llvm.umin.i64(i64 %i.da, i64 7)
  %i.db = shl nuw nsw i64 %.sroa.0.0.i.i11, 2
  %i.dc = getelementptr i8, ptr null, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  store ptr %.sroa.10.0.i, ptr %i.o, align 8, !alias.scope !459939, !noalias !459942
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 11 uses
  store i64 0, ptr %i.de, align 8, !alias.scope !459939, !noalias !459942
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store i64 %2, ptr %i.df, align 8, !alias.scope !459939, !noalias !459942
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.dd, ptr %i.dg, align 8, !alias.scope !459939, !noalias !459942
  %i.dh = icmp eq i64 %.sroa.04.0.i4.i, %2
  br i1 %i.dh, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7768632db3ae7accE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459944), !noalias !459947
  br i1 %.not.i, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i110"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i110": ; preds = %bb.s
  %.val.i.i.i.i.i111 = load i64, ptr %1, align 8, !alias.scope !459950, !noalias !459953 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i.i.i112 = load i64, ptr %i.di, align 8, !alias.scope !459950, !noalias !459953 ; 2 uses
  %.not.i.i.i.i.i.i113 = icmp ult i64 %.val2.i.i.i.i.i112, %.val.i.i.i.i.i111
  %i.dj = select i1 %.not.i.i.i.i.i.i113, i64 0, i64 %.val.i.i.i.i.i111
  %.sroa.0.0.i.i.i.i.i.i114 = sub nuw i64 %.val2.i.i.i.i.i112, %i.dj ; 5 uses
  %i.dk = sub i64 %.val.i.i.i.i.i111, %.sroa.0.0.i.i.i.i.i.i114 ; 2 uses
  %.not11.i.i.i.i.i.i115 = icmp ult i64 %i.dk, %i.s ; 2 uses
  %i.dl = add i64 %.sroa.0.0.i.i.i.i.i.i114, %i.s
  %i.dm = sub nuw i64 %i.s, %i.dk
  %i.dn = shl nuw nsw i64 %i.dm, 5
  %.sroa.5.0.i.i.i.i.i116 = select i1 %.not11.i.i.i.i.i.i115, i64 %.val.i.i.i.i.i111, i64 %i.dl ; 2 uses
  %.sroa.11.0.i.i.i.i.i117 = select i1 %.not11.i.i.i.i.i.i115, i64 %i.dn, i64 0 ; 3 uses
  %.idx1.i.i.i.i118 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i114, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx1.i.i.i.i118 ; 5 uses
  %i.dp = icmp samesign eq i64 %.sroa.0.0.i.i.i.i.i.i114, %.sroa.5.0.i.i.i.i.i116
  br i1 %i.dp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122", label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i110"
  %i.dq = sub nuw nsw i64 %.sroa.5.0.i.i.i.i.i116, %.sroa.0.0.i.i.i.i.i.i114 ; 3 uses
  %xtraiter629 = and i64 %i.dq, 3                 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 4
  br i1 %i.dr, label %.epil.preheader628, label %.new627

.new627:                                          ; preds = %bb.t
  %unroll_iter634 = and i64 %i.dq, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.new627
  %.sroa.09.0.i.i.i.i.i.i119 = phi i64 [ 0, %.new627 ], [ %i.ee, %bb.u ] ; 5 uses
  %.sroa.07.0.i.i.i.i.i.i120 = phi i64 [ 0, %.new627 ], [ %i.ed, %bb.u ]
  %niter635 = phi i64 [ 0, %.new627 ], [ %niter635.next.3, %bb.u ]
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.09.0.i.i.i.i.i.i119
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %.val.i.i.i.i.i.i121 = load i64, ptr %i.dt, align 8, !noalias !459955, !noundef !12
  %i.du = add i64 %.val.i.i.i.i.i.i121, %.sroa.07.0.i.i.i.i.i.i120
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.09.0.i.i.i.i.i.i119
  %i.dw = getelementptr i8, ptr %i.dv, i64 48
  %.val.i.i.i.i.i.i121.1 = load i64, ptr %i.dw, align 8, !noalias !459955, !noundef !12
  %i.dx = add i64 %.val.i.i.i.i.i.i121.1, %i.du
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.09.0.i.i.i.i.i.i119
  %i.dz = getelementptr i8, ptr %i.dy, i64 80
  %.val.i.i.i.i.i.i121.2 = load i64, ptr %i.dz, align 8, !noalias !459955, !noundef !12
  %i.ea = add i64 %.val.i.i.i.i.i.i121.2, %i.dx
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.09.0.i.i.i.i.i.i119
  %i.ec = getelementptr i8, ptr %i.eb, i64 112
  %.val.i.i.i.i.i.i121.3 = load i64, ptr %i.ec, align 8, !noalias !459955, !noundef !12
  %i.ed = add i64 %.val.i.i.i.i.i.i121.3, %i.ea   ; 3 uses
  %i.ee = add nuw i64 %.sroa.09.0.i.i.i.i.i.i119, 4 ; 2 uses
  %niter635.next.3 = add i64 %niter635, 4         ; 2 uses
  %niter635.ncmp.3 = icmp eq i64 %niter635.next.3, %unroll_iter634
  br i1 %niter635.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa", label %bb.u

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa": ; preds = %bb.u
  %lcmp.mod631.not = icmp eq i64 %xtraiter629, 0
  br i1 %lcmp.mod631.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122", label %.epil.preheader628

.epil.preheader628:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa", %bb.t
  %.sroa.09.0.i.i.i.i.i.i119.epil.init = phi i64 [ 0, %bb.t ], [ %i.ee, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i.i.i120.epil.init = phi i64 [ 0, %bb.t ], [ %i.ed, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa" ]
  %lcmp.mod633 = icmp ne i64 %xtraiter629, 0
  tail call void @llvm.assume(i1 %lcmp.mod633)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader628
  %.sroa.09.0.i.i.i.i.i.i119.epil = phi i64 [ %.sroa.09.0.i.i.i.i.i.i119.epil.init, %.epil.preheader628 ], [ %i.ei, %bb.v ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i120.epil = phi i64 [ %.sroa.07.0.i.i.i.i.i.i120.epil.init, %.epil.preheader628 ], [ %i.eh, %bb.v ]
  %epil.iter630 = phi i64 [ 0, %.epil.preheader628 ], [ %epil.iter630.next, %bb.v ]
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.09.0.i.i.i.i.i.i119.epil
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %.val.i.i.i.i.i.i121.epil = load i64, ptr %i.eg, align 8, !noalias !459955, !noundef !12
  %i.eh = add i64 %.val.i.i.i.i.i.i121.epil, %.sroa.07.0.i.i.i.i.i.i120.epil ; 2 uses
  %i.ei = add nuw i64 %.sroa.09.0.i.i.i.i.i.i119.epil, 1
  %epil.iter630.next = add i64 %epil.iter630, 1   ; 2 uses
  %epil.iter630.cmp.not = icmp eq i64 %epil.iter630.next, %xtraiter629
  br i1 %epil.iter630.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122", label %bb.v, !llvm.loop !459958

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa", %bb.v, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i110"
  %.sroa.04.0.i.i.i.i.i.i123 = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i110" ], [ %i.ed, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122.loopexit.unr-lcssa" ], [ %i.eh, %bb.v ] ; 3 uses
  %i.ej = icmp samesign eq i64 %.sroa.11.0.i.i.i.i.i117, 0
  br i1 %i.ej, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129, label %bb.w

bb.w:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122"
  %i.ek = lshr exact i64 %.sroa.11.0.i.i.i.i.i117, 5 ; 2 uses
  %xtraiter638 = and i64 %i.ek, 3                 ; 3 uses
  %i.el = icmp samesign ult i64 %.sroa.11.0.i.i.i.i.i117, 128
  br i1 %i.el, label %.epil.preheader637, label %.new636

.new636:                                          ; preds = %bb.w
  %unroll_iter643 = and i64 %i.ek, 288230376151711740
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.new636
  %.sroa.09.0.i1.i.i.i.i.i124 = phi i64 [ 0, %.new636 ], [ %i.ey, %bb.x ] ; 5 uses
  %.sroa.07.0.i2.i.i.i.i.i125 = phi i64 [ %.sroa.04.0.i.i.i.i.i.i123, %.new636 ], [ %i.ex, %bb.x ]
  %niter644 = phi i64 [ 0, %.new636 ], [ %niter644.next.3, %bb.x ]
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i124
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %.val.i3.i.i.i.i.i126 = load i64, ptr %i.en, align 8, !noalias !459955, !noundef !12
  %i.eo = add i64 %.val.i3.i.i.i.i.i126, %.sroa.07.0.i2.i.i.i.i.i125
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i124
  %i.eq = getelementptr i8, ptr %i.ep, i64 48
  %.val.i3.i.i.i.i.i126.1 = load i64, ptr %i.eq, align 8, !noalias !459955, !noundef !12
  %i.er = add i64 %.val.i3.i.i.i.i.i126.1, %i.eo
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i124
  %i.et = getelementptr i8, ptr %i.es, i64 80
  %.val.i3.i.i.i.i.i126.2 = load i64, ptr %i.et, align 8, !noalias !459955, !noundef !12
  %i.eu = add i64 %.val.i3.i.i.i.i.i126.2, %i.er
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i124
  %i.ew = getelementptr i8, ptr %i.ev, i64 112
  %.val.i3.i.i.i.i.i126.3 = load i64, ptr %i.ew, align 8, !noalias !459955, !noundef !12
  %i.ex = add i64 %.val.i3.i.i.i.i.i126.3, %i.eu  ; 3 uses
  %i.ey = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.i124, 4 ; 2 uses
  %niter644.next.3 = add i64 %niter644, 4         ; 2 uses
  %niter644.ncmp.3 = icmp eq i64 %niter644.next.3, %unroll_iter643
  br i1 %niter644.ncmp.3, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa, label %bb.x

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod640.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod640.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129, label %.epil.preheader637

.epil.preheader637:                               ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa, %bb.w
  %.sroa.09.0.i1.i.i.i.i.i124.epil.init = phi i64 [ 0, %bb.w ], [ %i.ey, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa ]
  %.sroa.07.0.i2.i.i.i.i.i125.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i.i.i123, %bb.w ], [ %i.ex, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa ]
  %lcmp.mod642 = icmp ne i64 %xtraiter638, 0
  tail call void @llvm.assume(i1 %lcmp.mod642)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader637
  %.sroa.09.0.i1.i.i.i.i.i124.epil = phi i64 [ %.sroa.09.0.i1.i.i.i.i.i124.epil.init, %.epil.preheader637 ], [ %i.fc, %bb.y ] ; 2 uses
  %.sroa.07.0.i2.i.i.i.i.i125.epil = phi i64 [ %.sroa.07.0.i2.i.i.i.i.i125.epil.init, %.epil.preheader637 ], [ %i.fb, %bb.y ]
  %epil.iter639 = phi i64 [ 0, %.epil.preheader637 ], [ %epil.iter639.next, %bb.y ]
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i124.epil
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  %.val.i3.i.i.i.i.i126.epil = load i64, ptr %i.fa, align 8, !noalias !459955, !noundef !12
  %i.fb = add i64 %.val.i3.i.i.i.i.i126.epil, %.sroa.07.0.i2.i.i.i.i.i125.epil ; 2 uses
  %i.fc = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.i124.epil, 1
  %epil.iter639.next = add i64 %epil.iter639, 1   ; 2 uses
  %epil.iter639.cmp.not = icmp eq i64 %epil.iter639.next, %xtraiter638
  br i1 %epil.iter639.cmp.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129, label %bb.y, !llvm.loop !459959

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129: ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa, %bb.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122"
  %.sroa.04.0.i4.i.i.i.i.i127 = phi i64 [ %.sroa.04.0.i.i.i.i.i.i123, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i122" ], [ %i.ex, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129.loopexit.unr-lcssa ], [ %i.fb, %bb.y ]
  %.sroa.0.0.i.i.i128 = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.sroa.04.0.i4.i.i.i.i.i127)
  %.not = icmp eq i64 %.sroa.0.0.i.i.i128, 0
  br i1 %.not, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph": ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit129
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i.i.i.pre = load i64, ptr %1, align 8, !alias.scope !459960, !noalias !459965 ; 9 uses
  %.val2.i.i.i.i.i.pre = load i64, ptr %i.fd, align 8, !alias.scope !459960, !noalias !459965 ; 2 uses
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph", %.noexc19
  %i.fh = phi i64 [ %i.s, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph" ], [ %i.ir, %.noexc19 ] ; 5 uses
  %.promoted25.i.i.i = phi i64 [ %.val2.i.i.i.i.i.pre, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph" ], [ %.promoted25.i.i.i361, %.noexc19 ] ; 2 uses
  %i.fi = phi i64 [ %.val2.i.i.i.i.i.pre, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph" ], [ %i.is, %.noexc19 ] ; 3 uses
  %.sroa.11.0309 = phi i64 [ %2, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i.lr.ph" ], [ %i.it, %.noexc19 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459967)
  %.not.i.i.i.i.i.i = icmp ult i64 %i.fi, %.val.i.i.i.i.i.pre
  %i.fj = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.pre
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.fi, %i.fj ; 6 uses
  %i.fk = sub i64 %.val.i.i.i.i.i.pre, %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.fk, %i.fh ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.fh
  %i.fm = sub nuw i64 %i.fh, %i.fk
  %i.fn = shl nuw nsw i64 %i.fm, 5
  %.sroa.5.0.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.pre, i64 %i.fl ; 2 uses
  %.sroa.11.0.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i64 %i.fn, i64 0 ; 3 uses
  %.idx1.i.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i, 5
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx1.i.i.i.i ; 5 uses
  %i.fp = icmp samesign eq i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i
  br i1 %i.fp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i"
  %i.fq = sub nuw nsw i64 %.sroa.5.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i ; 3 uses
  %xtraiter647 = and i64 %i.fq, 3                 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 4
  br i1 %i.fr, label %.epil.preheader646, label %.new645

.new645:                                          ; preds = %bb.z
  %unroll_iter652 = and i64 %i.fq, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new645
  %.sroa.09.0.i.i.i.i.i.i = phi i64 [ 0, %.new645 ], [ %i.ge, %bb.aa ] ; 5 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i64 [ 0, %.new645 ], [ %i.gd, %bb.aa ]
  %niter653 = phi i64 [ 0, %.new645 ], [ %niter653.next.3, %bb.aa ]
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.ft, align 8, !noalias !459968, !noundef !12
  %i.fu = add i64 %.val.i.i.i.i.i.i, %.sroa.07.0.i.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 48
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.fw, align 8, !noalias !459968, !noundef !12
  %i.fx = add i64 %.val.i.i.i.i.i.i.1, %i.fu
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 80
  %.val.i.i.i.i.i.i.2 = load i64, ptr %i.fz, align 8, !noalias !459968, !noundef !12
  %i.ga = add i64 %.val.i.i.i.i.i.i.2, %i.fx
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.gc = getelementptr i8, ptr %i.gb, i64 112
  %.val.i.i.i.i.i.i.3 = load i64, ptr %i.gc, align 8, !noalias !459968, !noundef !12
  %i.gd = add i64 %.val.i.i.i.i.i.i.3, %i.ga      ; 3 uses
  %i.ge = add nuw i64 %.sroa.09.0.i.i.i.i.i.i, 4  ; 2 uses
  %niter653.next.3 = add i64 %niter653, 4         ; 2 uses
  %niter653.ncmp.3 = icmp eq i64 %niter653.next.3, %unroll_iter652
  br i1 %niter653.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %bb.aa
  %lcmp.mod649.not = icmp eq i64 %xtraiter647, 0
  br i1 %lcmp.mod649.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i", label %.epil.preheader646

.epil.preheader646:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa", %bb.z
  %.sroa.09.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.z ], [ %i.ge, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.z ], [ %i.gd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod651 = icmp ne i64 %xtraiter647, 0
  call void @llvm.assume(i1 %lcmp.mod651)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader646
  %.sroa.09.0.i.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.i.i.epil.init, %.epil.preheader646 ], [ %i.gi, %bb.ab ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i.i.i.i.i.i.epil.init, %.epil.preheader646 ], [ %i.gh, %bb.ab ]
  %epil.iter648 = phi i64 [ 0, %.epil.preheader646 ], [ %epil.iter648.next, %bb.ab ]
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i.epil
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.gg, align 8, !noalias !459968, !noundef !12
  %i.gh = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.07.0.i.i.i.i.i.i.epil ; 2 uses
  %i.gi = add nuw i64 %.sroa.09.0.i.i.i.i.i.i.epil, 1
  %epil.iter648.next = add i64 %epil.iter648, 1   ; 2 uses
  %epil.iter648.cmp.not = icmp eq i64 %epil.iter648.next, %xtraiter647
  br i1 %epil.iter648.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i", label %bb.ab, !llvm.loop !459971

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa", %bb.ab, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i" ], [ %i.gd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i.loopexit.unr-lcssa" ], [ %i.gh, %bb.ab ] ; 3 uses
  %i.gj = icmp samesign eq i64 %.sroa.11.0.i.i.i.i.i, 0
  br i1 %i.gj, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit, label %bb.ac

bb.ac:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i"
  %i.gk = lshr exact i64 %.sroa.11.0.i.i.i.i.i, 5 ; 2 uses
  %xtraiter656 = and i64 %i.gk, 3                 ; 3 uses
  %i.gl = icmp samesign ult i64 %.sroa.11.0.i.i.i.i.i, 128
  br i1 %i.gl, label %.epil.preheader655, label %.new654

.new654:                                          ; preds = %bb.ac
  %unroll_iter661 = and i64 %i.gk, 288230376151711740
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new654
  %.sroa.09.0.i1.i.i.i.i.i = phi i64 [ 0, %.new654 ], [ %i.gy, %bb.ad ] ; 5 uses
  %.sroa.07.0.i2.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %.new654 ], [ %i.gx, %bb.ad ]
  %niter662 = phi i64 [ 0, %.new654 ], [ %niter662.next.3, %bb.ad ]
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  %.val.i3.i.i.i.i.i = load i64, ptr %i.gn, align 8, !noalias !459968, !noundef !12
  %i.go = add i64 %.val.i3.i.i.i.i.i, %.sroa.07.0.i2.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 48
  %.val.i3.i.i.i.i.i.1 = load i64, ptr %i.gq, align 8, !noalias !459968, !noundef !12
  %i.gr = add i64 %.val.i3.i.i.i.i.i.1, %i.go
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 80
  %.val.i3.i.i.i.i.i.2 = load i64, ptr %i.gt, align 8, !noalias !459968, !noundef !12
  %i.gu = add i64 %.val.i3.i.i.i.i.i.2, %i.gr
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 112
  %.val.i3.i.i.i.i.i.3 = load i64, ptr %i.gw, align 8, !noalias !459968, !noundef !12
  %i.gx = add i64 %.val.i3.i.i.i.i.i.3, %i.gu     ; 3 uses
  %i.gy = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.i, 4 ; 2 uses
  %niter662.next.3 = add i64 %niter662, 4         ; 2 uses
  %niter662.ncmp.3 = icmp eq i64 %niter662.next.3, %unroll_iter661
  br i1 %niter662.ncmp.3, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa, label %bb.ad

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod658.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit, label %.epil.preheader655

.epil.preheader655:                               ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa, %bb.ac
  %.sroa.09.0.i1.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.ac ], [ %i.gy, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa ]
  %.sroa.07.0.i2.i.i.i.i.i.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %bb.ac ], [ %i.gx, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa ]
  %lcmp.mod660 = icmp ne i64 %xtraiter656, 0
  call void @llvm.assume(i1 %lcmp.mod660)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader655
  %.sroa.09.0.i1.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i1.i.i.i.i.i.epil.init, %.epil.preheader655 ], [ %i.hc, %bb.ae ] ; 2 uses
  %.sroa.07.0.i2.i.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i2.i.i.i.i.i.epil.init, %.epil.preheader655 ], [ %i.hb, %bb.ae ]
  %epil.iter657 = phi i64 [ 0, %.epil.preheader655 ], [ %epil.iter657.next, %bb.ae ]
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.i.i.epil
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %.val.i3.i.i.i.i.i.epil = load i64, ptr %i.ha, align 8, !noalias !459968, !noundef !12
  %i.hb = add i64 %.val.i3.i.i.i.i.i.epil, %.sroa.07.0.i2.i.i.i.i.i.epil ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.i.epil, 1
  %epil.iter657.next = add i64 %epil.iter657, 1   ; 2 uses
  %epil.iter657.cmp.not = icmp eq i64 %epil.iter657.next, %xtraiter656
  br i1 %epil.iter657.cmp.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit, label %bb.ae, !llvm.loop !459972

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit: ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa, %bb.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i"
  %.sroa.04.0.i4.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.i.i" ], [ %i.gx, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit.loopexit.unr-lcssa ], [ %i.hb, %bb.ae ]
  %.sroa.0.0.i.i.i57 = call noundef i64 @llvm.umin.i64(i64 %.sroa.11.0309, i64 %.sroa.04.0.i4.i.i.i.i.i)
  %.not253 = icmp eq i64 %.sroa.0.0.i.i.i57, 0
  br i1 %.not253, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h0141490e4135fd40E.exit"

"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h0141490e4135fd40E.exit": ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h025c4b5a87f01529E.exit
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val.i.i.i56 = load ptr, ptr %i.he, align 8, !noalias !459973, !nonnull !12, !noundef !12
  %i.hf = getelementptr i8, ptr %i.hd, i64 16
  %.val4.i.i.i = load i64, ptr %i.hf, align 8, !noalias !459973, !noundef !12
  %i.hg = call i64 @llvm.umin.i64(i64 %.sroa.11.0309, i64 %.val4.i.i.i) ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459976)
  %i.hh = load i64, ptr %i.de, align 8, !alias.scope !459976, !noalias !459979, !noundef !12 ; 2 uses
  %i.hi = load i64, ptr %i.df, align 8, !alias.scope !459976, !noalias !459979, !noundef !12
  %i.hj = sub i64 %i.hi, %i.hh
  %.not.i50 = icmp ugt i64 %i.hg, %i.hj
  br i1 %.not.i50, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h0141490e4135fd40E.exit"
  %i.hk = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.hg, i1 noundef zeroext true)
          to label %.noexc51 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc51:                                         ; preds = %bb.af
  %.pre.i = load i64, ptr %i.de, align 8, !alias.scope !459976, !noalias !459979
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc51, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h0141490e4135fd40E.exit"
  %i.hl = phi i64 [ %i.hh, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h0141490e4135fd40E.exit" ], [ %.pre.i, %.noexc51 ]
  %i.hm = load ptr, ptr %i.o, align 8, !alias.scope !459976, !noalias !459979, !nonnull !12, !noundef !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hn, ptr nonnull readonly align 1 %.val.i.i.i56, i64 %i.hg, i1 false)
  %i.ho = load i64, ptr %i.df, align 8, !alias.scope !459976, !noalias !459979, !noundef !12
  %i.hp = load i64, ptr %i.de, align 8, !alias.scope !459976, !noalias !459979, !noundef !12 ; 2 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  %i.hr = icmp ugt i64 %i.hg, %i.hq
  br i1 %i.hr, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !459981
  store i64 %i.hg, ptr %i.c, align 8, !noalias !459981
  br label %.invoke

.invoke:                                          ; preds = %bb.bq, %bb.ah
  %.sink467.sroa.phi = phi ptr [ %.sink467.sroa.gep, %bb.bq ], [ %.sink467.sroa.gep699, %bb.ah ]
  %.sink467 = phi ptr [ %i.a, %bb.bq ], [ %i.c, %bb.ah ]
  %.lcssa424.sink = phi i64 [ %i.pb, %bb.bq ], [ %i.hq, %bb.ah ]
  store i64 %.lcssa424.sink, ptr %.sink467.sroa.phi, align 8, !noalias !12
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink467) #85
          to label %.cont unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.hs = add i64 %i.hp, %i.hg
  store i64 %i.hs, ptr %i.de, align 8, !alias.scope !459976, !noalias !459979
  call void @llvm.experimental.noalias.scope.decl(metadata !459982)
  %.not23.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not23.i.i.i, label %.noexc19, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i.i.i, label %.invoke465, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ai, %.lr.ph.i.i.i
  %.sroa.0.024.i.i.i532 = phi i64 [ %i.ib, %.lr.ph.i.i.i ], [ %i.hg, %bb.ai ] ; 4 uses
  %.promoted25.i.i.i360531 = phi i64 [ %.sroa.0.0.i9.i.i.i, %.lr.ph.i.i.i ], [ %.promoted25.i.i.i, %bb.ai ] ; 6 uses
  %i.ht = phi i64 [ %i.ie, %.lr.ph.i.i.i ], [ %i.fh, %bb.ai ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.promoted25.i.i.i360531, %.val.i.i.i.i.i.pre
  %i.hu = select i1 %.not6.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.pre
  %.sroa.01.0.i.i.i.i = sub nuw i64 %.promoted25.i.i.i360531, %i.hu
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.01.0.i.i.i.i ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16     ; 3 uses
  %.val.i.i.i = load i64, ptr %i.hw, align 8, !noalias !459985, !noundef !12 ; 4 uses
  %i.hx = icmp ugt i64 %.val.i.i.i, %.sroa.0.024.i.i.i532
  br i1 %i.hx, label %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit.i.i.i"

.invoke465:                                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i, %bb.br
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9308, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9309) #85
          to label %.cont466 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont466:                                         ; preds = %.invoke465
  unreachable

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.preheader
  store i64 0, ptr %i.hw, align 8, !alias.scope !459988, !noalias !459985
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !459988, !noalias !459985, !noundef !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.val.i.i.i
  store ptr %i.ia, ptr %i.hy, align 8, !alias.scope !459988, !noalias !459985
  %i.ib = sub nuw i64 %.sroa.0.024.i.i.i532, %.val.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !459985
  call void @llvm.experimental.noalias.scope.decl(metadata !459991)
  %i.ic = add i64 %.promoted25.i.i.i360531, 1     ; 2 uses
  %.not.i8.i.i.i = icmp ult i64 %i.ic, %.val.i.i.i.i.i.pre
  %i.id = select i1 %.not.i8.i.i.i, i64 0, i64 %.val.i.i.i.i.i.pre
  %.sroa.0.0.i9.i.i.i = sub nuw i64 %i.ic, %i.id  ; 4 uses
  store i64 %.sroa.0.0.i9.i.i.i, ptr %i.fd, align 8, !alias.scope !459994, !noalias !459995
  %i.ie = add i64 %i.ht, -1                       ; 5 uses
  store i64 %i.ie, ptr %i.r, align 8, !alias.scope !459994, !noalias !459995
  %i.if = icmp ult i64 %i.ie, %.val.i.i.i.i.i.pre
  call void @llvm.assume(i1 %i.if)
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.promoted25.i.i.i360531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ig, i64 32, i1 false), !noalias !459997
  call void @llvm.experimental.noalias.scope.decl(metadata !459998)
  %i.ih = load ptr, ptr %i.d, align 8, !alias.scope !459998, !noalias !459985, !noundef !12 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !460001)
  call void @llvm.experimental.noalias.scope.decl(metadata !460004)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !460007, !nonnull !12, !noundef !12
  %i.il = load ptr, ptr %i.ff, align 8, !alias.scope !460008, !noalias !459985, !noundef !12
  %i.im = load i64, ptr %i.fg, align 8, !alias.scope !460008, !noalias !459985, !noundef !12
  invoke void %i.ik(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.il, i64 noundef %i.im)
          to label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i" unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !460009

"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i": ; preds = %bb.aj, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5460cf7e4a757eacE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !459985
  %.not.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i, label %.noexc19, label %.lr.ph.i.i.i

"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i": ; preds = %.lr.ph.i.i.i.preheader
  %i.in = sub nuw i64 %.val.i.i.i, %.sroa.0.024.i.i.i532
  store i64 %i.in, ptr %i.hw, align 8, !alias.scope !460010, !noalias !459985
  %i.io = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !460010, !noalias !459985, !noundef !12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.0.024.i.i.i532
  store ptr %i.iq, ptr %i.io, align 8, !alias.scope !460010, !noalias !459985
  br label %.noexc19

.noexc19:                                         ; preds = %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i", %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i", %bb.ai
  %i.ir = phi i64 [ %i.fh, %bb.ai ], [ %i.ht, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %i.ie, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i" ] ; 2 uses
  %.promoted25.i.i.i361 = phi i64 [ %.promoted25.i.i.i, %bb.ai ], [ %.promoted25.i.i.i360531, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %.sroa.0.0.i9.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i" ]
  %i.is = phi i64 [ %i.fi, %bb.ai ], [ %.promoted25.i.i.i360531, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %.sroa.0.0.i9.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17hc35ef08600bdcb66E.exit.i.i.i" ]
  %i.it = sub i64 %.sroa.11.0309, %i.hg
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i.i.i"

bb.ak:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7768632db3ae7accE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460013), !noalias !460016
  %.val.i.i.i185 = load i64, ptr %1, align 8, !alias.scope !460019, !noalias !460022 ; 23 uses
  br i1 %.not.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i186 = load i64, ptr %i.iv, align 8, !alias.scope !460019, !noalias !460022 ; 2 uses
  %.not.i.i.i.i187 = icmp ult i64 %.val2.i.i.i186, %.val.i.i.i185
  %i.iw = select i1 %.not.i.i.i.i187, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i188 = sub nuw i64 %.val2.i.i.i186, %i.iw ; 4 uses
  %i.ix = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i188 ; 2 uses
  %.not11.i.i.i.i189 = icmp ult i64 %i.ix, %i.s
  br i1 %.not11.i.i.i.i189, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iy = sub nuw i64 %i.s, %i.ix
  %i.iz = shl nuw nsw i64 %i.iy, 5
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190"

bb.an:                                            ; preds = %bb.al
  %i.ja = add i64 %.sroa.0.0.i.i.i.i188, %i.s
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190": ; preds = %bb.an, %bb.am, %bb.ak
  %.sroa.0.0.i.i.i191 = phi i64 [ %.sroa.0.0.i.i.i.i188, %bb.an ], [ %.sroa.0.0.i.i.i.i188, %bb.am ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.5.0.i.i.i192 = phi i64 [ %i.ja, %bb.an ], [ %.val.i.i.i185, %bb.am ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.11.0.i.i.i193 = phi i64 [ 0, %bb.an ], [ %i.iz, %bb.am ], [ 0, %bb.ak ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.5.0.i.i.i192
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.11.0.i.i.i193
  %.not11.not.not.i.not.i.i.i194533 = icmp samesign eq i64 %.sroa.0.0.i.i.i191, %.sroa.5.0.i.i.i192
  br i1 %.not11.not.not.i.not.i.i.i194533, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190"
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i191
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %i.je = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 2 uses
  %.not11.not.not.i.not.i.i.i194 = icmp eq ptr %i.je, %i.jb
  br i1 %.not11.not.not.i.not.i.i.i194, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198.preheader, label %bb.ap

_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198.preheader: ; preds = %bb.ao, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i190"
  %.not11.not.not.i4.not.not.i.not.i.not.i199534 = icmp samesign eq i64 %.sroa.11.0.i.i.i193, 0
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i199534, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %.lr.ph535

bb.ap:                                            ; preds = %.lr.ph, %bb.ao
  %i.jf = phi ptr [ %i.jd, %.lr.ph ], [ %i.je, %bb.ao ] ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %.val.i.i.i.i195 = load i64, ptr %i.jg, align 8, !noalias !460024, !noundef !12
  %.not.i.i2.i.i196 = icmp eq i64 %.val.i.i.i.i195, 0
  br i1 %.not.i.i2.i.i196, label %bb.ao, label %.loopexit259

_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198: ; preds = %.lr.ph535
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %.not11.not.not.i4.not.not.i.not.i.not.i199 = icmp eq ptr %i.jh, %i.jc
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i199, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %.lr.ph535

.lr.ph535:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198.preheader, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198
  %i.ji = phi ptr [ %i.jh, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198 ], [ %i.bv, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198.preheader ] ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %.val.i5.i.i.i200 = load i64, ptr %i.jj, align 8, !noalias !460029, !noundef !12
  %.not.i6.i.i.i201 = icmp eq i64 %.val.i5.i.i.i200, 0
  br i1 %.not.i6.i.i.i201, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i198, label %.loopexit259

.loopexit259:                                     ; preds = %bb.ap, %.lr.ph535
  br i1 %i.cv, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %.loopexit259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !460032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460034), !noalias !460016
  br i1 %.not.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i166"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i166": ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i168 = load i64, ptr %i.jk, align 8, !alias.scope !460037, !noalias !460040 ; 2 uses
  %.not.i.i.i.i169 = icmp ult i64 %.val2.i.i.i168, %.val.i.i.i185
  %i.jl = select i1 %.not.i.i.i.i169, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i170 = sub nuw i64 %.val2.i.i.i168, %i.jl ; 5 uses
  %i.jm = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i170 ; 2 uses
  %.not11.i.i.i.i171 = icmp ult i64 %i.jm, %i.s   ; 2 uses
  %i.jn = add i64 %.sroa.0.0.i.i.i.i170, %i.s
  %i.jo = sub nuw i64 %i.s, %i.jm
  %i.jp = shl nuw nsw i64 %i.jo, 5
  %.sroa.5.0.i.i.i172 = select i1 %.not11.i.i.i.i171, i64 %.val.i.i.i185, i64 %i.jn ; 2 uses
  %.sroa.11.0.i.i.i173 = select i1 %.not11.i.i.i.i171, i64 %i.jp, i64 0 ; 3 uses
  %.idx1.i.i174 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i170, 5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx1.i.i174 ; 5 uses
  %i.jr = icmp samesign eq i64 %.sroa.0.0.i.i.i.i170, %.sroa.5.0.i.i.i172
  br i1 %i.jr, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178", label %bb.ar

bb.ar:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i166"
  %i.js = sub nuw nsw i64 %.sroa.5.0.i.i.i172, %.sroa.0.0.i.i.i.i170 ; 3 uses
  %xtraiter683 = and i64 %i.js, 3                 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 4
  br i1 %i.jt, label %.epil.preheader682, label %.new681

.new681:                                          ; preds = %bb.ar
  %unroll_iter688 = and i64 %i.js, -4
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.new681
  %.sroa.09.0.i.i.i.i175 = phi i64 [ 0, %.new681 ], [ %i.kg, %bb.as ] ; 5 uses
  %.sroa.07.0.i.i.i.i176 = phi i64 [ 0, %.new681 ], [ %i.kf, %bb.as ]
  %niter689 = phi i64 [ 0, %.new681 ], [ %niter689.next.3, %bb.as ]
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i175
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %.val.i.i.i.i177 = load i64, ptr %i.jv, align 8, !noalias !460042, !noundef !12
  %i.jw = add i64 %.val.i.i.i.i177, %.sroa.07.0.i.i.i.i176
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i175
  %i.jy = getelementptr i8, ptr %i.jx, i64 48
  %.val.i.i.i.i177.1 = load i64, ptr %i.jy, align 8, !noalias !460042, !noundef !12
  %i.jz = add i64 %.val.i.i.i.i177.1, %i.jw
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i175
  %i.kb = getelementptr i8, ptr %i.ka, i64 80
  %.val.i.i.i.i177.2 = load i64, ptr %i.kb, align 8, !noalias !460042, !noundef !12
  %i.kc = add i64 %.val.i.i.i.i177.2, %i.jz
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i175
  %i.ke = getelementptr i8, ptr %i.kd, i64 112
  %.val.i.i.i.i177.3 = load i64, ptr %i.ke, align 8, !noalias !460042, !noundef !12
  %i.kf = add i64 %.val.i.i.i.i177.3, %i.kc       ; 3 uses
  %i.kg = add nuw i64 %.sroa.09.0.i.i.i.i175, 4   ; 2 uses
  %niter689.next.3 = add i64 %niter689, 4         ; 2 uses
  %niter689.ncmp.3 = icmp eq i64 %niter689.next.3, %unroll_iter688
  br i1 %niter689.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa", label %bb.as

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa": ; preds = %bb.as
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod685.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178", label %.epil.preheader682

.epil.preheader682:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa", %bb.ar
  %.sroa.09.0.i.i.i.i175.epil.init = phi i64 [ 0, %bb.ar ], [ %i.kg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i176.epil.init = phi i64 [ 0, %bb.ar ], [ %i.kf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa" ]
  %lcmp.mod687 = icmp ne i64 %xtraiter683, 0
  tail call void @llvm.assume(i1 %lcmp.mod687)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader682
  %.sroa.09.0.i.i.i.i175.epil = phi i64 [ %.sroa.09.0.i.i.i.i175.epil.init, %.epil.preheader682 ], [ %i.kk, %bb.at ] ; 2 uses
  %.sroa.07.0.i.i.i.i176.epil = phi i64 [ %.sroa.07.0.i.i.i.i176.epil.init, %.epil.preheader682 ], [ %i.kj, %bb.at ]
  %epil.iter684 = phi i64 [ 0, %.epil.preheader682 ], [ %epil.iter684.next, %bb.at ]
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i175.epil
  %i.ki = getelementptr i8, ptr %i.kh, i64 16
  %.val.i.i.i.i177.epil = load i64, ptr %i.ki, align 8, !noalias !460042, !noundef !12
  %i.kj = add i64 %.val.i.i.i.i177.epil, %.sroa.07.0.i.i.i.i176.epil ; 2 uses
  %i.kk = add nuw i64 %.sroa.09.0.i.i.i.i175.epil, 1
  %epil.iter684.next = add i64 %epil.iter684, 1   ; 2 uses
  %epil.iter684.cmp.not = icmp eq i64 %epil.iter684.next, %xtraiter683
  br i1 %epil.iter684.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178", label %bb.at, !llvm.loop !460045

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa", %bb.at, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i166"
  %.sroa.04.0.i.i.i.i179 = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i166" ], [ %i.kf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178.loopexit.unr-lcssa" ], [ %i.kj, %bb.at ] ; 3 uses
  %i.kl = icmp samesign eq i64 %.sroa.11.0.i.i.i173, 0
  br i1 %i.kl, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184", label %bb.au

bb.au:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178"
  %i.km = lshr exact i64 %.sroa.11.0.i.i.i173, 5  ; 2 uses
  %xtraiter692 = and i64 %i.km, 3                 ; 3 uses
  %i.kn = icmp samesign ult i64 %.sroa.11.0.i.i.i173, 128
  br i1 %i.kn, label %.epil.preheader691, label %.new690

.new690:                                          ; preds = %bb.au
  %unroll_iter697 = and i64 %i.km, 288230376151711740
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.new690
  %.sroa.09.0.i1.i.i.i180 = phi i64 [ 0, %.new690 ], [ %i.la, %bb.av ] ; 5 uses
  %.sroa.07.0.i2.i.i.i181 = phi i64 [ %.sroa.04.0.i.i.i.i179, %.new690 ], [ %i.kz, %bb.av ]
  %niter698 = phi i64 [ 0, %.new690 ], [ %niter698.next.3, %bb.av ]
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i180
  %i.kp = getelementptr i8, ptr %i.ko, i64 16
  %.val.i3.i.i.i182 = load i64, ptr %i.kp, align 8, !noalias !460042, !noundef !12
  %i.kq = add i64 %.val.i3.i.i.i182, %.sroa.07.0.i2.i.i.i181
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i180
  %i.ks = getelementptr i8, ptr %i.kr, i64 48
  %.val.i3.i.i.i182.1 = load i64, ptr %i.ks, align 8, !noalias !460042, !noundef !12
  %i.kt = add i64 %.val.i3.i.i.i182.1, %i.kq
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i180
  %i.kv = getelementptr i8, ptr %i.ku, i64 80
  %.val.i3.i.i.i182.2 = load i64, ptr %i.kv, align 8, !noalias !460042, !noundef !12
  %i.kw = add i64 %.val.i3.i.i.i182.2, %i.kt
  %i.kx = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i180
  %i.ky = getelementptr i8, ptr %i.kx, i64 112
  %.val.i3.i.i.i182.3 = load i64, ptr %i.ky, align 8, !noalias !460042, !noundef !12
  %i.kz = add i64 %.val.i3.i.i.i182.3, %i.kw      ; 3 uses
  %i.la = add nuw nsw i64 %.sroa.09.0.i1.i.i.i180, 4 ; 2 uses
  %niter698.next.3 = add i64 %niter698, 4         ; 2 uses
  %niter698.ncmp.3 = icmp eq i64 %niter698.next.3, %unroll_iter697
  br i1 %niter698.ncmp.3, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa", label %bb.av

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa": ; preds = %bb.av
  %lcmp.mod694.not = icmp eq i64 %xtraiter692, 0
  br i1 %lcmp.mod694.not, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184", label %.epil.preheader691

.epil.preheader691:                               ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa", %bb.au
  %.sroa.09.0.i1.i.i.i180.epil.init = phi i64 [ 0, %bb.au ], [ %i.la, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa" ]
  %.sroa.07.0.i2.i.i.i181.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i179, %bb.au ], [ %i.kz, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa" ]
  %lcmp.mod696 = icmp ne i64 %xtraiter692, 0
  tail call void @llvm.assume(i1 %lcmp.mod696)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader691
  %.sroa.09.0.i1.i.i.i180.epil = phi i64 [ %.sroa.09.0.i1.i.i.i180.epil.init, %.epil.preheader691 ], [ %i.le, %bb.aw ] ; 2 uses
  %.sroa.07.0.i2.i.i.i181.epil = phi i64 [ %.sroa.07.0.i2.i.i.i181.epil.init, %.epil.preheader691 ], [ %i.ld, %bb.aw ]
  %epil.iter693 = phi i64 [ 0, %.epil.preheader691 ], [ %epil.iter693.next, %bb.aw ]
  %i.lb = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i180.epil
  %i.lc = getelementptr i8, ptr %i.lb, i64 16
  %.val.i3.i.i.i182.epil = load i64, ptr %i.lc, align 8, !noalias !460042, !noundef !12
  %i.ld = add i64 %.val.i3.i.i.i182.epil, %.sroa.07.0.i2.i.i.i181.epil ; 2 uses
  %i.le = add nuw nsw i64 %.sroa.09.0.i1.i.i.i180.epil, 1
  %epil.iter693.next = add i64 %epil.iter693, 1   ; 2 uses
  %epil.iter693.cmp.not = icmp eq i64 %epil.iter693.next, %xtraiter692
  br i1 %epil.iter693.cmp.not, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184", label %bb.aw, !llvm.loop !460046

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184": ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa", %bb.aw, %bb.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178"
  %.sroa.04.0.i4.i.i.i183 = phi i64 [ %.sroa.04.0.i.i.i.i179, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i178" ], [ 0, %bb.aq ], [ %i.kz, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184.loopexit.unr-lcssa" ], [ %i.ld, %bb.aw ]
  invoke fastcc void @"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hb0ab4942add37c2fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef %.sroa.04.0.i4.i.i.i183)
          to label %.noexc28 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !460047

.noexc28:                                         ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit184"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !460032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !460032
  invoke void @_ZN5bytes5bytes5Bytes12try_into_mut17h6ffaca193e478725E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc29 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !460048

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !460032
  %i.lf = load i64, ptr %i.l, align 8, !range !861, !noundef !12
  %i.lg = trunc nuw i64 %i.lf to i1
  br i1 %i.lg, label %bb.be, label %bb.bf

bb.ax:                                            ; preds = %.loopexit259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460049), !noalias !460016
  br i1 %.not.i, label %.noexc31, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i156"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i156": ; preds = %bb.ax
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i158 = load i64, ptr %i.lh, align 8, !alias.scope !460052, !noalias !460055 ; 2 uses
  %.not.i.i.i.i159 = icmp ult i64 %.val2.i.i.i158, %.val.i.i.i185
  %i.li = select i1 %.not.i.i.i.i159, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i160 = sub nuw i64 %.val2.i.i.i158, %i.li ; 5 uses
  %i.lj = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i160 ; 2 uses
  %.not11.i.i.i.i161 = icmp ult i64 %i.lj, %i.s   ; 2 uses
  %i.lk = add i64 %.sroa.0.0.i.i.i.i160, %i.s
  %i.ll = sub nuw i64 %i.s, %i.lj
  %i.lm = shl nuw nsw i64 %i.ll, 5
  %.sroa.5.0.i.i.i162 = select i1 %.not11.i.i.i.i161, i64 %.val.i.i.i185, i64 %i.lk ; 2 uses
  %.sroa.11.0.i.i.i163 = select i1 %.not11.i.i.i.i161, i64 %i.lm, i64 0 ; 3 uses
  %.idx1.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i160, 5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx1.i.i ; 5 uses
  %i.lo = icmp samesign eq i64 %.sroa.0.0.i.i.i.i160, %.sroa.5.0.i.i.i162
  br i1 %i.lo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i156"
  %i.lp = sub nuw nsw i64 %.sroa.5.0.i.i.i162, %.sroa.0.0.i.i.i.i160 ; 3 uses
  %xtraiter665 = and i64 %i.lp, 3                 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 4
  br i1 %i.lq, label %.epil.preheader664, label %.new663

.new663:                                          ; preds = %bb.ay
  %unroll_iter670 = and i64 %i.lp, -4
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.new663
  %.sroa.09.0.i.i.i.i = phi i64 [ 0, %.new663 ], [ %i.md, %bb.az ] ; 5 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ 0, %.new663 ], [ %i.mc, %bb.az ]
  %niter671 = phi i64 [ 0, %.new663 ], [ %niter671.next.3, %bb.az ]
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %.sroa.09.0.i.i.i.i
  %i.ls = getelementptr i8, ptr %i.lr, i64 16
  %.val.i.i.i.i164 = load i64, ptr %i.ls, align 8, !noalias !460057, !noundef !12
  %i.lt = add i64 %.val.i.i.i.i164, %.sroa.07.0.i.i.i.i
  %i.lu = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %.sroa.09.0.i.i.i.i
  %i.lv = getelementptr i8, ptr %i.lu, i64 48
  %.val.i.i.i.i164.1 = load i64, ptr %i.lv, align 8, !noalias !460057, !noundef !12
  %i.lw = add i64 %.val.i.i.i.i164.1, %i.lt
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %.sroa.09.0.i.i.i.i
  %i.ly = getelementptr i8, ptr %i.lx, i64 80
  %.val.i.i.i.i164.2 = load i64, ptr %i.ly, align 8, !noalias !460057, !noundef !12
  %i.lz = add i64 %.val.i.i.i.i164.2, %i.lw
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %.sroa.09.0.i.i.i.i
  %i.mb = getelementptr i8, ptr %i.ma, i64 112
  %.val.i.i.i.i164.3 = load i64, ptr %i.mb, align 8, !noalias !460057, !noundef !12
  %i.mc = add i64 %.val.i.i.i.i164.3, %i.lz       ; 3 uses
  %i.md = add nuw i64 %.sroa.09.0.i.i.i.i, 4      ; 2 uses
  %niter671.next.3 = add i64 %niter671, 4         ; 2 uses
  %niter671.ncmp.3 = icmp eq i64 %niter671.next.3, %unroll_iter670
  br i1 %niter671.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa", label %bb.az

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa": ; preds = %bb.az
  %lcmp.mod667.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod667.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i", label %.epil.preheader664

.epil.preheader664:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa", %bb.ay
  %.sroa.09.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.ay ], [ %i.md, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.ay ], [ %i.mc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod669 = icmp ne i64 %xtraiter665, 0
  tail call void @llvm.assume(i1 %lcmp.mod669)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader664
  %.sroa.09.0.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.epil.init, %.epil.preheader664 ], [ %i.mh, %bb.ba ] ; 2 uses
  %.sroa.07.0.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i.i.i.i.epil.init, %.epil.preheader664 ], [ %i.mg, %bb.ba ]
  %epil.iter666 = phi i64 [ 0, %.epil.preheader664 ], [ %epil.iter666.next, %bb.ba ]
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %.sroa.09.0.i.i.i.i.epil
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  %.val.i.i.i.i164.epil = load i64, ptr %i.mf, align 8, !noalias !460057, !noundef !12
  %i.mg = add i64 %.val.i.i.i.i164.epil, %.sroa.07.0.i.i.i.i.epil ; 2 uses
  %i.mh = add nuw i64 %.sroa.09.0.i.i.i.i.epil, 1
  %epil.iter666.next = add i64 %epil.iter666, 1   ; 2 uses
  %epil.iter666.cmp.not = icmp eq i64 %epil.iter666.next, %xtraiter665
  br i1 %epil.iter666.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i", label %bb.ba, !llvm.loop !460060

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa", %bb.ba, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i156"
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h2ae796168885b5c7E.exit.i.i156" ], [ %i.mc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i.loopexit.unr-lcssa" ], [ %i.mg, %bb.ba ] ; 3 uses
  %i.mi = icmp samesign eq i64 %.sroa.11.0.i.i.i163, 0
  br i1 %i.mi, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit", label %bb.bb

bb.bb:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i"
  %i.mj = lshr exact i64 %.sroa.11.0.i.i.i163, 5  ; 2 uses
  %xtraiter674 = and i64 %i.mj, 3                 ; 3 uses
  %i.mk = icmp samesign ult i64 %.sroa.11.0.i.i.i163, 128
  br i1 %i.mk, label %.epil.preheader673, label %.new672

.new672:                                          ; preds = %bb.bb
  %unroll_iter679 = and i64 %i.mj, 288230376151711740
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.new672
  %.sroa.09.0.i1.i.i.i = phi i64 [ 0, %.new672 ], [ %i.mx, %bb.bc ] ; 5 uses
  %.sroa.07.0.i2.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %.new672 ], [ %i.mw, %bb.bc ]
  %niter680 = phi i64 [ 0, %.new672 ], [ %niter680.next.3, %bb.bc ]
  %i.ml = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  %.val.i3.i.i.i = load i64, ptr %i.mm, align 8, !noalias !460057, !noundef !12
  %i.mn = add i64 %.val.i3.i.i.i, %.sroa.07.0.i2.i.i.i
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 48
  %.val.i3.i.i.i.1 = load i64, ptr %i.mp, align 8, !noalias !460057, !noundef !12
  %i.mq = add i64 %.val.i3.i.i.i.1, %i.mn
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i
  %i.ms = getelementptr i8, ptr %i.mr, i64 80
  %.val.i3.i.i.i.2 = load i64, ptr %i.ms, align 8, !noalias !460057, !noundef !12
  %i.mt = add i64 %.val.i3.i.i.i.2, %i.mq
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i
  %i.mv = getelementptr i8, ptr %i.mu, i64 112
  %.val.i3.i.i.i.3 = load i64, ptr %i.mv, align 8, !noalias !460057, !noundef !12
  %i.mw = add i64 %.val.i3.i.i.i.3, %i.mt         ; 3 uses
  %i.mx = add nuw nsw i64 %.sroa.09.0.i1.i.i.i, 4 ; 2 uses
  %niter680.next.3 = add i64 %niter680, 4         ; 2 uses
  %niter680.ncmp.3 = icmp eq i64 %niter680.next.3, %unroll_iter679
  br i1 %niter680.ncmp.3, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa", label %bb.bc

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa": ; preds = %bb.bc
  %lcmp.mod676.not = icmp eq i64 %xtraiter674, 0
  br i1 %lcmp.mod676.not, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit", label %.epil.preheader673

.epil.preheader673:                               ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa", %bb.bb
  %.sroa.09.0.i1.i.i.i.epil.init = phi i64 [ 0, %bb.bb ], [ %i.mx, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa" ]
  %.sroa.07.0.i2.i.i.i.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i, %bb.bb ], [ %i.mw, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod678 = icmp ne i64 %xtraiter674, 0
  tail call void @llvm.assume(i1 %lcmp.mod678)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader673
  %.sroa.09.0.i1.i.i.i.epil = phi i64 [ %.sroa.09.0.i1.i.i.i.epil.init, %.epil.preheader673 ], [ %i.nb, %bb.bd ] ; 2 uses
  %.sroa.07.0.i2.i.i.i.epil = phi i64 [ %.sroa.07.0.i2.i.i.i.epil.init, %.epil.preheader673 ], [ %i.na, %bb.bd ]
  %epil.iter675 = phi i64 [ 0, %.epil.preheader673 ], [ %epil.iter675.next, %bb.bd ]
  %i.my = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i1.i.i.i.epil
  %i.mz = getelementptr i8, ptr %i.my, i64 16
  %.val.i3.i.i.i.epil = load i64, ptr %i.mz, align 8, !noalias !460057, !noundef !12
  %i.na = add i64 %.val.i3.i.i.i.epil, %.sroa.07.0.i2.i.i.i.epil ; 2 uses
  %i.nb = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.epil, 1
  %epil.iter675.next = add i64 %epil.iter675, 1   ; 2 uses
  %epil.iter675.cmp.not = icmp eq i64 %epil.iter675.next, %xtraiter674
  br i1 %epil.iter675.cmp.not, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit", label %bb.bd, !llvm.loop !460061

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit": ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa", %bb.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i"
  %.sroa.04.0.i4.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfee89a5a191f5c1dE.exit.i.i.i" ], [ %i.mw, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit.loopexit.unr-lcssa" ], [ %i.na, %bb.bd ] ; 2 uses
  %.not.i22 = icmp ugt i64 %.sroa.04.0.i4.i.i.i, %2
  br i1 %.not.i22, label %bb.bl, label %.noexc31

bb.be:                                            ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !460032
  %i.nc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.nc, i64 32, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !noalias !460032, !noundef !12 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !460032, !noundef !12 ; 3 uses
  invoke fastcc void @_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ne, i64 noundef %i.ng)
          to label %bb.bj unwind label %bb.bi, !inline_history !460048

bb.bf:                                            ; preds = %.noexc29
  %i.nh = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h65458295d86cd432E.exit155" unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i64 32, i1 false)
  br label %.body.thread

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h65458295d86cd432E.exit155": ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i64 32, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc30, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h65458295d86cd432E.exit155"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !460032
  br label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit"

bb.bi:                                            ; preds = %bb.be
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !460062)
  call void @llvm.experimental.noalias.scope.decl(metadata !460065)
  %i.nk = load ptr, ptr %i.k, align 8, !alias.scope !460068, !nonnull !12, !align !4496, !noundef !12
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !460068, !nonnull !12, !noundef !12
  %i.nn = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void %i.nm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef nonnull %i.ne, i64 noundef %i.ng)
          to label %.body.thread unwind label %bb.bk, !inline_history !460069

bb.bj:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !460070)
  call void @llvm.experimental.noalias.scope.decl(metadata !460073)
  %i.no = load ptr, ptr %i.k, align 8, !alias.scope !460076, !nonnull !12, !align !4496, !noundef !12
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nq = load ptr, ptr %i.np, align 8, !noalias !460076, !nonnull !12, !noundef !12
  %i.nr = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void %i.nq(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nr, ptr noundef nonnull %i.ne, i64 noundef %i.ng)
          to label %.noexc30 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !460069

.noexc30:                                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !460032
  br label %bb.bh

bb.bk:                                            ; preds = %bb.bi
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !inline_history !460048
  unreachable

bb.bl:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit"
  %i.nt = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %.sroa.04.0.i4.i.i.i, i1 noundef zeroext true)
          to label %.noexc31 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !460048 ; 0 uses

.noexc31:                                         ; preds = %bb.ax, %bb.bl, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hc49c1d138b1493e6E.exit"
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted = load i64, ptr %i.nu, align 8
  br label %.noexc33.outer

.noexc33.outer:                                   ; preds = %.noexc33.outer.backedge, %.noexc31
  %.promoted25.i.i788 = phi i64 [ %.promoted, %.noexc31 ], [ %.promoted25.i.i786, %.noexc33.outer.backedge ] ; 5 uses
  %.ph = phi i64 [ %i.s, %.noexc31 ], [ %.ph.be, %.noexc33.outer.backedge ] ; 6 uses
  %i.ny = icmp eq i64 %.ph, 0                     ; 4 uses
  %.not.i.i.i.i146 = icmp ult i64 %.promoted25.i.i788, %.val.i.i.i185
  %i.nz = select i1 %.not.i.i.i.i146, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i = sub nuw i64 %.promoted25.i.i788, %i.nz ; 3 uses
  %i.oa = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.oa, %.ph      ; 2 uses
  %i.ob = add i64 %.sroa.0.0.i.i.i.i, %.ph
  %i.oc = sub nuw i64 %.ph, %i.oa
  %i.od = shl nuw nsw i64 %i.oc, 5
  %.not6.i.i.i141 = icmp ult i64 %.promoted25.i.i788, %.val.i.i.i185
  %i.oe = select i1 %.not6.i.i.i141, i64 0, i64 %.val.i.i.i185
  %.sroa.01.0.i.i.i142 = sub nuw i64 %.promoted25.i.i788, %i.oe
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.01.0.i.i.i142 ; 2 uses
  %i.og = getelementptr i8, ptr %i.of, i64 8
  %i.oh = getelementptr i8, ptr %i.of, i64 16
  br label %.noexc33

.noexc33:                                         ; preds = %.noexc33.outer, %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !460077)
  %.val.i.i.i185. = select i1 %.not11.i.i.i.i, i64 %.val.i.i.i185, i64 %i.ob
  %. = select i1 %.not11.i.i.i.i, i64 %i.od, i64 0
  %.sroa.0.0.i.i.i147 = select i1 %i.ny, i64 0, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %.sroa.5.0.i.i.i148 = select i1 %i.ny, i64 0, i64 %.val.i.i.i185. ; 2 uses
  %.sroa.11.0.i.i.i = select i1 %i.ny, i64 0, i64 %. ; 2 uses
  %i.oi = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.5.0.i.i.i148
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.11.0.i.i.i
  %.not11.not.not.i.not.i.i.i536 = icmp samesign eq i64 %.sroa.0.0.i.i.i147, %.sroa.5.0.i.i.i148
  br i1 %.not11.not.not.i.not.i.i.i536, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i.preheader, label %.lr.ph537

.lr.ph537:                                        ; preds = %.noexc33
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i147
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %i.ol = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 2 uses
  %.not11.not.not.i.not.i.i.i = icmp eq ptr %i.ol, %i.oi
  br i1 %.not11.not.not.i.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i.preheader, label %bb.bn

_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i.preheader: ; preds = %bb.bm, %.noexc33
  %.not11.not.not.i4.not.not.i.not.i.not.i538 = icmp samesign eq i64 %.sroa.11.0.i.i.i, 0
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i538, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %.lr.ph539

bb.bn:                                            ; preds = %.lr.ph537, %bb.bm
  %i.om = phi ptr [ %i.ok, %.lr.ph537 ], [ %i.ol, %bb.bm ] ; 2 uses
  %i.on = getelementptr i8, ptr %i.om, i64 16
  %.val.i.i.i.i149 = load i64, ptr %i.on, align 8, !noalias !460080, !noundef !12
  %.not.i.i2.i.i = icmp eq i64 %.val.i.i.i.i149, 0
  br i1 %.not.i.i2.i.i, label %bb.bm, label %.loopexit

_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i: ; preds = %.lr.ph539
  %i.oo = getelementptr inbounds nuw i8, ptr %i.op, i64 32 ; 2 uses
  %.not11.not.not.i4.not.not.i.not.i.not.i = icmp eq ptr %i.oo, %i.oj
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hcfd08d23f44ca957E.exit", label %.lr.ph539

.lr.ph539:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i.preheader, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i
  %i.op = phi ptr [ %i.oo, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i ], [ %i.bv, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i.preheader ] ; 2 uses
  %i.oq = getelementptr i8, ptr %i.op, i64 16
  %.val.i5.i.i.i = load i64, ptr %i.oq, align 8, !noalias !460085, !noundef !12
  %.not.i6.i.i.i = icmp eq i64 %.val.i5.i.i.i, 0
  br i1 %.not.i6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h19458d1748086c09E.exit.i.i.i, label %.loopexit

.loopexit:                                        ; preds = %bb.bn, %.lr.ph539
  call void @llvm.experimental.noalias.scope.decl(metadata !460088)
  br i1 %i.ny, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread", label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread": ; preds = %.loopexit
  %i.or = load i64, ptr %i.de, align 8, !alias.scope !460091, !noalias !460094, !noundef !12
  br label %bb.bp

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit": ; preds = %.loopexit
  %.val.i.i143 = load ptr, ptr %i.og, align 8, !noalias !460088, !nonnull !12, !noundef !12 ; 2 uses
  %.val4.i.i = load i64, ptr %i.oh, align 8, !noalias !460088, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460096)
  %i.os = load i64, ptr %i.de, align 8, !alias.scope !460096, !noalias !460098, !noundef !12 ; 2 uses
  %i.ot = load i64, ptr %i.df, align 8, !alias.scope !460096, !noalias !460098, !noundef !12
  %i.ou = sub i64 %i.ot, %i.os
  %.not.i135 = icmp ugt i64 %.val4.i.i, %i.ou
  br i1 %.not.i135, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit"
  %i.ov = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %.val4.i.i, i1 noundef zeroext true)
          to label %.noexc137 unwind label %.body.thread249.loopexit.split-lp.loopexit ; 0 uses

.noexc137:                                        ; preds = %bb.bo
  %.pre.i136 = load i64, ptr %i.de, align 8, !alias.scope !460096, !noalias !460098
  br label %bb.bp

bb.bp:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread", %.noexc137, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit"
  %.sroa.0.0.i.i144241 = phi ptr [ %.val.i.i143, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit" ], [ %.val.i.i143, %.noexc137 ], [ inttoptr (i64 1 to ptr), %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread" ]
  %.sroa.5.0.i.i240 = phi i64 [ %.val4.i.i, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit" ], [ %.val4.i.i, %.noexc137 ], [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread" ] ; 6 uses
  %i.ow = phi i64 [ %i.os, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit" ], [ %.pre.i136, %.noexc137 ], [ %i.or, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h05898643f6edc5fcE.exit.thread" ]
end_hunk_13
begin_hunk_14_@"_ZN9actix_web7handler15handler_service28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h9e985bfdc6436563E":bb.a
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 1263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ask, i64 24, i1 false), !noalias !653580
  %i.asq = getelementptr inbounds nuw i8, ptr %1, i64 1262 ; 2 uses
  store <4 x i8> splat (i8 1), ptr %i.asq, align 2, !noalias !653580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !653580
  %i.asr = load i64, ptr %i.asn, align 8, !range !186, !noalias !653580, !noundef !12 ; 6 uses
  %.not25.i = icmp eq i64 %i.asr, -9223372036854775808
  br i1 %.not25.i, label %bb.tk, label %bb.tm

bb.tk:                                            ; preds = %bb.tj
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 1261
  store i8 1, ptr %i.ass, align 1, !noalias !653580
  store i64 -9223372036854775803, ptr %i.p, align 8, !noalias !653580
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i": ; preds = %bb.tr, %bb.tq, %bb.tp, %bb.tk
  store i8 0, ptr %i.asm, align 1, !noalias !653580
  %.sroa.0215.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !653580 ; 4 uses
  %i.ast = icmp sgt i64 %.sroa.0215.0.copyload.i, -1 ; 2 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6159.8.copyload = load ptr, ptr %.sroa.6217.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.8160.8..sroa.6217.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.8160.8.copyload = load i64, ptr %.sroa.8160.8..sroa.6217.0..sroa_idx.i.sroa_idx, align 8 ; 2 uses
  %.sroa.6159.0 = select i1 %i.ast, ptr %.sroa.6159.8.copyload, ptr undef ; 3 uses
  %.sroa.8160.0 = select i1 %i.ast, i64 %.sroa.8160.8.copyload, i64 undef ; 2 uses
  %.sink.i = call i64 @llvm.umin.i64(i64 %.sroa.0215.0.copyload.i, i64 -9223372036854775808) ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %1, i64 1261
  store i8 0, ptr %i.asu, align 1, !noalias !653580
  %.sroa.0161.0.copyload = load i64, ptr %i.p, align 8, !noalias !653580 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !653580
  store i8 0, ptr %i.asp, align 1, !noalias !653580
  %.sroa.0219.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !653580 ; 5 uses
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5220.0.copyload.i = load ptr, ptr %.sroa.5220.0..sroa_idx.i, align 8, !noalias !653580 ; 6 uses
  %.sroa.6221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6221.0.copyload.i = load i64, ptr %.sroa.6221.0..sroa_idx.i, align 8, !noalias !653580 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653631)
  %.not.i104.i = icmp eq i64 %.sroa.0219.0.copyload.i, -9223372036854775808 ; 2 uses
  br i1 %.not.i104.i, label %bb.tz, label %bb.ts

bb.tl:                                            ; preds = %bb.to
  %i.asv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !653580
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit126.i"

bb.tm:                                            ; preds = %bb.tj
  %i.asw = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %i.asw, align 8, !noalias !653580
  %.sroa.7206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  %.sroa.7206.0.copyload.i = load ptr, ptr %.sroa.7206.0..sroa_idx.i, align 8, !noalias !653580, !nonnull !12, !noundef !12 ; 5 uses
  %.sroa.10209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.sroa.10209.0.copyload.i = load i64, ptr %.sroa.10209.0..sroa_idx.i, align 8, !noalias !653580 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !653580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !653634
  store ptr %.sroa.7206.0.copyload.i, ptr %i.g, align 8, !noalias !653634
  %.sroa.4.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.10209.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i101.i, align 8, !noalias !653634
  %.sroa.5.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.asx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i102.i, i8 0, i64 16, i1 false), !noalias !653634
  store ptr %.sroa.7206.0.copyload.i, ptr %i.asx, align 8, !noalias !653634
  %i.asy = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.10209.0.copyload.i, ptr %i.asy, align 8, !noalias !653634
  invoke fastcc void @_ZN10serde_json2de10from_trait17h9a1bbf2ea7ee0f2cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.tn unwind label %bb.ve, !noalias !653584, !inline_history !207460

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !653634
  %i.asz = load i64, ptr %i.o, align 8, !range !994, !noalias !653580, !noundef !12
  %i.ata = icmp eq i64 %i.asz, -9223372036854775803
  br i1 %i.ata, label %bb.to, label %bb.tq

bb.to:                                            ; preds = %bb.tn
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 1261
  store i8 1, ptr %i.atb, align 1, !noalias !653580
  store i64 -9223372036854775805, ptr %i.p, align 8, !noalias !653580
  %.sroa.4.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.asr, ptr %.sroa.4.0..sroa_idx.i76, align 8, !noalias !653580
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.7206.0.copyload.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !653580
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.10209.0.copyload.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !653580
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..result..Result$LT$serde_json..value..Value$C$serde_json..error..Error$GT$$GT$17h15c66301a39d0cd7E"(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.tp unwind label %bb.tl, !noalias !653584

bb.tp:                                            ; preds = %bb.to
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !653580
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i"

bb.tq:                                            ; preds = %bb.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !653580
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 1261
  store i8 1, ptr %i.atc, align 1, !noalias !653580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !653580
  %i.atd = icmp eq i64 %i.asr, 0
  br i1 %i.atd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i", label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7206.0.copyload.i, i64 noundef %i.asr, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653638
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i"

bb.ts:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5220.0.copyload.i) ]
  %i.ate = icmp ult i64 %.sroa.6221.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ate)
  %.idx.i.i.i = mul nuw i64 %.sroa.6221.0.copyload.i, 24
  %i.atf = mul i64 %.sroa.6221.0.copyload.i, 72   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.6221.0.copyload.i, 128102389400760775
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.tu, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ts
  %i.atg = icmp eq i64 %i.atf, 0
  br i1 %i.atg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.tt

bb.tt:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !653643
  %i.ath = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.atf, i64 noundef range(i64 1, 17) 8) #79, !noalias !653643 ; 2 uses
  %i.ati = icmp eq ptr %i.ath, null
  br i1 %i.ati, label %bb.tu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i"

bb.tu:                                            ; preds = %bb.tt, %bb.ts
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.tt ], [ 0, %bb.ts ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.atf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1533) #85
          to label %.noexc.i.i.i.i.i.i.i.i75 unwind label %bb.tw, !noalias !653667

.noexc.i.i.i.i.i.i.i.i75:                         ; preds = %bb.tu
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.tt, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %i.atj = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ath, %bb.tt ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6221.0.copyload.i, %bb.tt ] ; 2 uses
  %i.atk = icmp samesign ule i64 %.sroa.6221.0.copyload.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.atk)
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6221.0.copyload.i, 0
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.atl = add nsw i64 %.idx.i.i.i, -24           ; 2 uses
  %i.atm = udiv i64 %i.atl, 24                    ; 2 uses
  %i.atn = add nuw nsw i64 %i.atm, 1              ; 2 uses
  %i.ato = icmp ult i64 %i.atl, 24
  br i1 %i.ato, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.atn, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.atp = and i64 %i.atm, 1
  %lcmp.mod.not.not = icmp eq i64 %i.atp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aub, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa" ] ; 2 uses
  %.epil.init3080 = phi ptr [ %.sroa.5220.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aty, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod3082 = trunc i64 %i.atn to i1
  call void @llvm.assume(i1 %lcmp.mod3082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.epil.init3080, i64 24, i1 false), !noalias !653668
  %i.atq = getelementptr inbounds nuw [72 x i8], ptr %i.atj, i64 %.epil.init ; 2 uses
  store i64 -9223372036854775805, ptr %i.atq, align 8, !noalias !653684
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !653692
  %i.atr = add nuw nsw i64 %.epil.init, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i"
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9523daea4a3f4181E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.aub, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %i.atr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ats = icmp eq i64 %.sroa.0219.0.copyload.i, 0
  br i1 %i.ats, label %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf59da36dc0b490a0E.exit.i.i", label %bb.tv

bb.tv:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.att = mul nuw i64 %.sroa.0219.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5220.0.copyload.i, i64 noundef %i.att, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !653693
  br label %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf59da36dc0b490a0E.exit.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.atu = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aub, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.atv = phi ptr [ %.sroa.5220.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aty, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.atv, i64 24, i1 false), !noalias !653668
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 24
  %i.atx = getelementptr inbounds nuw [72 x i8], ptr %i.atj, i64 %i.atu ; 2 uses
  store i64 -9223372036854775805, ptr %i.atx, align 8, !noalias !653684
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.atx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !653692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.atw, i64 24, i1 false), !noalias !653668
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atv, i64 48 ; 2 uses
  %i.atz = getelementptr inbounds nuw [72 x i8], ptr %i.atj, i64 %i.atu ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 72
  store i64 -9223372036854775805, ptr %i.aua, align 8, !noalias !653684
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.atz, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !653692
  %i.aub = add nuw nsw i64 %i.atu, 2              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.tw:                                            ; preds = %bb.tu
  %i.auc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653698), !noalias !653701
  %i.aud = icmp eq i64 %.sroa.6221.0.copyload.i, 0
  br i1 %i.aud, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.tw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.tw ] ; 2 uses
  %i.aue = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5220.0.copyload.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.auf = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653702), !noalias !653701
  call void @llvm.experimental.noalias.scope.decl(metadata !653705), !noalias !653701
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aue, align 8, !alias.scope !653708, !noalias !653709 ; 2 uses
  %i.aug = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aug, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.tx

bb.tx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.auh, align 8, !alias.scope !653708, !noalias !653709, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653716
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.tx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aui = icmp eq i64 %i.auf, %.sroa.6221.0.copyload.i
  br i1 %i.aui, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.tw
  %i.auj = icmp eq i64 %.sroa.0219.0.copyload.i, 0
  br i1 %i.auj, label %.body.i71, label %bb.ty

bb.ty:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.auk = mul nuw i64 %.sroa.0219.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5220.0.copyload.i, i64 noundef %i.auk, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !653709
  br label %.body.i71

"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf59da36dc0b490a0E.exit.i.i": ; preds = %bb.tv, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hbb76ef1c9ad4aed6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !653631, !noalias !653717
  %.sroa.4.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.atj, ptr %.sroa.4.0..sroa_idx.i105.i, align 8, !alias.scope !653631, !noalias !653717
  %.sroa.5.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !alias.scope !653631, !noalias !653717
  br label %"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i"

bb.tz:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i"
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !653631, !noalias !653717
  br label %"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i"

"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i": ; preds = %bb.tz, %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf59da36dc0b490a0E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6224.i)
  store i8 0, ptr %i.asq, align 2, !noalias !653580
  %.not.i107.i = icmp eq i64 %.sroa.5195.0.copyload.i, -9223372036854775808
  br i1 %.not.i107.i, label %bb.ug, label %bb.ua

bb.ua:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6196.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !653718
  invoke void @_ZN11meilisearch6routes7indexes6search25fix_sort_query_parameters17he6097a0ab726f03cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6196.0.copyload.i, i64 noundef %.sroa.7197.0.copyload.i)
          to label %bb.ud unwind label %bb.ub, !noalias !653722

bb.ub:                                            ; preds = %bb.ua
  %i.aul = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aum = icmp eq i64 %.sroa.5195.0.copyload.i, 0
  br i1 %i.aum, label %.body112.i, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6196.0.copyload.i, i64 noundef %.sroa.5195.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653725
  br label %.body112.i

bb.ud:                                            ; preds = %bb.ua
  %i.aun = icmp eq i64 %.sroa.5195.0.copyload.i, 0
  br i1 %i.aun, label %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd82d9d56235b4bf8E.exit.i.i", label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6196.0.copyload.i, i64 noundef %.sroa.5195.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653731
  br label %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd82d9d56235b4bf8E.exit.i.i"

"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd82d9d56235b4bf8E.exit.i.i": ; preds = %bb.ue, %bb.ud
  %.sroa.0222.0.copyload223.i = load i64, ptr %i.e, align 8, !noalias !653736
  %.sroa.6224.0..sroa_idx225.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6224.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6224.0..sroa_idx225.i, i64 16, i1 false), !noalias !653736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !653718
  br label %bb.ug

.body112.i:                                       ; preds = %bb.uc, %bb.ub
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6224.i)
  br i1 %.not.i104.i, label %.body.i71, label %bb.uf

bb.uf:                                            ; preds = %.body112.i
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hd288e318e63926c0E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.m)
          to label %.body.i71 unwind label %bb.uz, !noalias !653584

bb.ug:                                            ; preds = %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd82d9d56235b4bf8E.exit.i.i", %"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i"
  %.sroa.0222.0.i = phi i64 [ %.sroa.0222.0.copyload223.i, %"_ZN11meilisearch6routes7indexes9documents13get_documents28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd82d9d56235b4bf8E.exit.i.i" ], [ -9223372036854775808, %"_ZN4core6option15Option$LT$T$GT$3map17hcde8b9655084acd8E.exit.i" ]
  %i.auo = getelementptr inbounds nuw i8, ptr %1, i64 1260 ; 2 uses
  store i8 1, ptr %i.auo, align 4, !noalias !653580
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  store <2 x i64> %i.asl, ptr %i.auq, align 8, !noalias !653580
  store i64 %.sink.i, ptr %i.aup, align 8, !noalias !653580
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr %.sroa.6159.0, ptr %.sroa.6159.0..sroa_idx, align 8, !noalias !653580
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 992
  store i64 %.sroa.8160.0, ptr %.sroa.8160.0..sroa_idx, align 8, !noalias !653580
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  store i8 %.sroa.11201.0.copyload.i, ptr %i.aur, align 8, !noalias !653580
  %i.aus = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aus, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !653580
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aut, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !653580
  %i.auu = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  store i64 %.sroa.0222.0.i, ptr %i.auu, align 8, !noalias !653580
  %.sroa.6224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6224.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6224.i, i64 16, i1 false), !noalias !653580
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 1137
  store i8 %.sroa.12202.0.copyload.i, ptr %i.auv, align 1, !noalias !653580
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6224.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !653580
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 928
  %.val85.i = load ptr, ptr %i.auw, align 8, !noalias !653580, !nonnull !12, !noundef !12
  %i.aux = getelementptr inbounds nuw i8, ptr %.val85.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !653580
  %.val87.i = load i64, ptr %i.aut, align 8, !range !994, !noalias !653580, !noundef !12 ; 2 uses
  %i.auy = icmp ne i64 %.val87.i, -9223372036854775803
  %.not.i115.i = icmp eq i64 %.val87.i, -9223372036854775803
  br i1 %.not.i115.i, label %bb.uq, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !653737
  store i64 0, ptr %i.d, align 8, !noalias !653737
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !653737
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !653737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !653737
  %i.auz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.auz, align 8, !noalias !653737
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !653737
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !653737
  store ptr %i.d, ptr %i.c, align 8, !noalias !653737
  %i.ava = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @3703, ptr %i.ava, align 8, !noalias !653737
  %i.avb = invoke noundef zeroext i1 @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..fmt..Display$GT$3fmt17hb55cd4cfc4868ac5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.aut, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.uk unwind label %bb.ui, !noalias !653745

bb.ui:                                            ; preds = %bb.ul, %bb.uh
  %i.avc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653746)
  call void @llvm.experimental.noalias.scope.decl(metadata !653749)
  %.val.i.i.i.i.i.i72 = load i64, ptr %i.d, align 8, !alias.scope !653752, !noalias !653737 ; 2 uses
  %i.avd = icmp eq i64 %.val.i.i.i.i.i.i72, 0
  br i1 %i.avd, label %.body117.i, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !653752, !noalias !653737, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653753
  br label %.body117.i

bb.uk:                                            ; preds = %bb.uh
  br i1 %i.avb, label %bb.ul, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h9b6fc9bae65a9869E.exit.i.i.i", !prof !10

bb.ul:                                            ; preds = %bb.uk
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5156, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5332, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5158) #85
          to label %.noexc.i.i.i.i74 unwind label %bb.ui, !noalias !653745

.noexc.i.i.i.i74:                                 ; preds = %bb.ul
  unreachable

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h9b6fc9bae65a9869E.exit.i.i.i": ; preds = %bb.uk
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !653754 ; 4 uses
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !653754, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !653754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !653737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !653737
  %i.ave = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1809, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i)
          to label %bb.uo unwind label %bb.um, !noalias !653584 ; 2 uses

bb.um:                                            ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h9b6fc9bae65a9869E.exit.i.i.i"
  %i.avf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avg = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.avg, label %.body117.i, label %bb.un

bb.un:                                            ; preds = %bb.um
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653755
  br label %.body117.i

bb.uo:                                            ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h9b6fc9bae65a9869E.exit.i.i.i"
  %i.avh = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.avh, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !653760
end_hunk_14
begin_hunk_15_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he43500507157f357E":bb.a
  %i.bk = xor i128 %i.bg, %i.bj
  %i.bl = mul nuw i128 %i.bk, %i.bi               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688619)
  %i.bp = lshr i64 %i.bo, 57
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !688622, !noalias !688623, !noundef !12 ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !alias.scope !688622, !noalias !688623, !nonnull !12, !noundef !12 ; 4 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_ZN4core4hash11BuildHasher8hash_one17h597041b76d0fc26aE.exit
  %.sroa.9.0.i.i = phi i64 [ 0, %_ZN4core4hash11BuildHasher8hash_one17h597041b76d0fc26aE.exit ], [ %i.di, %bb.m ]
  %.pn.i = phi i64 [ %i.bo, %_ZN4core4hash11BuildHasher8hash_one17h597041b76d0fc26aE.exit ], [ %i.dj, %bb.m ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.bs         ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.bv, align 1, !noalias !688625 ; 2 uses
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %.sroa.0.15.vec.insert.i.i
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 3 uses
  %.not.i.not33.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.by = load ptr, ptr %1, align 8, !noalias !688628, !noundef !12
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i"
  %.sroa.06.0.i34.us.i = phi i16 [ %i.cp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i" ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.i, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add i64 %.sroa.01.0.i.i, %i.ca
  %i.cc = and i64 %i.cb, %i.bs
  %i.cd = sub nsw i64 0, %i.cc                    ; 2 uses
  %i.ce = getelementptr inbounds [200 x i8], ptr %i.bt, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -200
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !688628, !noundef !12
  %.not44.i = icmp eq ptr %i.cg, null
  br i1 %.not44.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i", label %bb.l, !prof !77100

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.ch = load i64, ptr %i.bu, align 8, !noalias !688628, !noundef !12 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -184
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !688628, !noundef !12
  %.not.i.i.i.i.i.i.i.us.i = icmp eq i64 %i.ch, %i.cj
  br i1 %.not.i.i.i.i.i.i.i.us.i, label %.split.us.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i", !prof !61489

.split.us.i:                                      ; preds = %bb.l
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 -192
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !688628, !noundef !12
  %i.cm = load ptr, ptr %i.l, align 8, !noalias !688628, !noundef !12
  %bcmp.i.i.i.i.i.i.i.us.i = tail call i32 @bcmp(ptr %i.cm, ptr %i.cl, i64 %i.ch), !noalias !688628
  %i.cn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.us.i, 0
  br i1 %i.cn, label %_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit.thread.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i", !prof !13

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i": ; preds = %.split.us.i, %bb.l, %.lr.ph.split.us.i
  %i.co = add i16 %.sroa.06.0.i34.us.i, -1
  %i.cp = and i16 %i.co, %.sroa.06.0.i34.us.i     ; 2 uses
  %.not.i.not.us.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i"
  %.sroa.06.0.i34.i = phi i16 [ %i.dh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i" ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.01.0.i.i, %i.cr
  %i.ct = and i64 %i.cs, %i.bs
  %i.cu = sub nsw i64 0, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds [200 x i8], ptr %i.bt, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -200
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !688628, !noundef !12
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i", !prof !61489

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.i": ; preds = %.lr.ph.split.i
  %i.cz = load i8, ptr %i.l, align 8, !range !338807, !noalias !688628, !noundef !12
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 -192
  %i.db = load i8, ptr %i.da, align 8, !range !338807, !noalias !688628, !noundef !12
  %i.dc = icmp eq i8 %i.cz, %i.db
  br i1 %i.dc, label %_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit.thread.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i", !prof !13

._crit_edge.i:                                    ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.us.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i", %bb.k
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.de = bitcast <16 x i1> %i.dd to i16
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.m, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h67c8c82951187f7fE.exit", !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.i", %.lr.ph.split.i
  %i.dg = add i16 %.sroa.06.0.i34.i, -1
  %i.dh = and i16 %i.dg, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.di = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.dj = add i64 %.sroa.01.0.i.i, %i.di
  br label %bb.k

_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit.thread.i: ; preds = %.split.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.i"
  %.pre-phi = phi i64 [ %i.cu, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8317ebfdc1983170E.exit.i" ], [ %i.cd, %.split.us.i ]
  %i.dk = getelementptr inbounds [200 x i8], ptr %i.bt, i64 %.pre-phi
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h67c8c82951187f7fE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h67c8c82951187f7fE.exit": ; preds = %._crit_edge.i, %_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit.thread.i
  %i.dl = phi ptr [ %i.dk, %_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE.exit.thread.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.dl, null
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -200
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.dm
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h67c8c82951187f7fE.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h67c8c82951187f7fE.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 121) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !12
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !12
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h51296aea166ccb38E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #86
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !688631
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !109052

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !688631
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !109053

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !12
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !10

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !12
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !12
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17hf657cd213b4b62eaE(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aj
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #61 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !688634
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !109052

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.d = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add i64 %i.e, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.f, %.8.val              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.g, align 1, !noalias !688634
  %i.h = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !109053

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.i, %.lr.ph ]
  %i.j = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = add i64 %.sroa.0.0.lcssa, %i.k
  %i.m = and i64 %i.l, %.8.val                    ; 2 uses
end_hunk_15
begin_hunk_16_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h867c77e498f62734E":bb.a
  %i.s = icmp samesign ult i64 %.sroa.0.0.i8, 4
  %i.t = and i64 %.sroa.0.0.i8, 8
  %..i.i = add nuw nsw i64 %i.t, 8
  %.sroa.03.0.i.i = select i1 %i.s, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %.sroa.0.0.i8, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x                        ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %or.cond7.i.i = icmp samesign ugt i64 %i.y, 2305843009213693949
  br i1 %or.cond7.i.i, label %bb.h, label %bb.g, !prof !689140

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.ab = add nuw i64 %i.aa, 8
  %i.ac = and i64 %i.ab, -16                      ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i, !prof !167

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !689141
  %i.ah = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !689141 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext %2), !noalias !689141
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.ak = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext %2, i64 noundef 16, i64 noundef %i.ae), !noalias !689141
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext %2), !noalias !689146
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit: ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 3 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.09.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ad, i1 false), !noalias !689146
  store ptr %i.c, ptr %i.b, align 8, !noalias !689138
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !689138
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !689138
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !689138
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.an, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !689138
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !689138
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !689138
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !689147, !noalias !689148, !noundef !12
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.l

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sroa.12.030 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.032 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !689138
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i

bb.k:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #86
  br label %common.resume

bb.l:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !689147, !noalias !689148, !nonnull !12, !noundef !12
  br label %.noexc3

.noexc3:                                          ; preds = %.noexc3, %bb.l
  %.sroa.016.0 = phi ptr [ %i.au, %bb.l ], [ %i.av, %.noexc3 ] ; 2 uses
  %.sroa.13.0.in.in = load <16 x i8>, ptr %.sroa.016.0, align 16
  %.sroa.13.0.in = icmp sgt <16 x i8> %.sroa.13.0.in.in, splat (i8 -1)
  %.sroa.13.0 = bitcast <16 x i1> %.sroa.13.0.in to i16
  %.not.i2 = icmp eq i16 %.sroa.13.0, 0
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 16
  br i1 %.not.i2, label %.noexc3, label %bb.n

bb.m:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit
  %i.aw = ptrtoint ptr %i.aq to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !689149, !noalias !689152
  store i64 %i.aw, ptr %0, align 8, !alias.scope !689149, !noalias !689152
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !689154, !noalias !689156 ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !alias.scope !689154, !noalias !689156
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.09.0.i.i, ptr %i.ax, align 8, !alias.scope !689158, !noalias !689160
  %i.ay = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ay, label %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i: ; preds = %bb.m
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i to ptr
  %i.ba = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3 ; 2 uses
  %i.bb = add i64 %i.ba, 8
  %i.bc = add i64 %i.ba, 23                       ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %i.bb
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = and i64 %i.bc, -16                      ; 3 uses
  %i.bf = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bg = add i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = icmp uge i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bh)
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nsw i64 0, %i.be
  %i.bk = getelementptr inbounds i8, ptr %i.az, i64 %i.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bk, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !689162
  br label %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit"

"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit": ; preds = %bb.m, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !689138
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i

bb.n:                                             ; preds = %.noexc3
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10814) #85
          to label %.noexc9 unwind label %bb.k

.noexc9:                                          ; preds = %bb.n
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.ch, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689167)
  %.val11.i = load ptr, ptr %0, align 8, !alias.scope !689167 ; 8 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bl = lshr i64 %i.k, 4
  %i.bm = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.bm, 0
  %i.bn = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.bl, %i.bn ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.bo = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.03.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.bp, align 16, !noalias !689167
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.bq = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.br = or <2 x i64> %i.bq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.br, ptr %i.bp, align 16, !noalias !689167
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.bs = icmp ult i64 %i.k, 16
  br i1 %i.bs, label %._crit_edge.thread.i.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i, !prof !20351

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.03.07.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bw, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.bt, align 16, !noalias !689167
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.bu = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.bv = or <2 x i64> %i.bu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bv, ptr %i.bt, align 16, !noalias !689167
  %i.bw = add i64 %.sroa.03.07.i.i, 32            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.by, align 16, !noalias !689167
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.bz = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ca = or <2 x i64> %i.bz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ca, ptr %i.by, align 16, !noalias !689167
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.o
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.sink10.i.i = phi i64 [ 16, %._crit_edge.thread.i.i ], [ %i.k, %._crit_edge.i.i ]
  %.sink9.i.i = phi i64 [ %i.k, %._crit_edge.thread.i.i ], [ 16, %._crit_edge.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sink10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %.val11.i, i64 %.sink9.i.i, i1 false), !noalias !689167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689167
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.cc, align 8, !noalias !689167
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.cd, align 8, !noalias !689167
  store ptr %0, ptr %i.a, align 8, !noalias !689167
  %exitcond.not.i42 = icmp eq i64 %i.k, 0
  br i1 %exitcond.not.i42, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.ce = add i64 %.sroa.05.0.i43, 1
  %exitcond.not.i = icmp eq i64 %.sroa.05.0.i43, %i.i
  br i1 %exitcond.not.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i, %bb.q
  %.sroa.05.0.i43 = phi i64 [ %i.ce, %bb.q ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.05.0.i43
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !12
  %.not.i13 = icmp eq i8 %i.cg, -128
  br i1 %.not.i13, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.lr.ph
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10814) #85
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h042ba0274a4cf2b5E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #86
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit: ; preds = %bb.q, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = sub i64 %.sroa.03.0.i, %i.e
  store i64 %i.ck, ptr %i.cj, align 8, !alias.scope !689167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689167
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit", %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit
  %.sroa.4.0.i = phi i64 [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit ], [ %.sroa.12.030, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread ], [ undef, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit" ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit ], [ %.sroa.7.032, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h578314bdf157a4cbE.exit.thread ], [ -9223372036854775807, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8eee42e55a584046E.exit" ]
  %i.cl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cm = insertvalue { i64, i64 } %i.cl, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc7164fa97dd95909E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc7164fa97dd95909E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i
  %.merged.i = phi { i64, i64 } [ %i.o, %bb.c ], [ %i.cm, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hffac9031908a4f09E.exit.i ]
  ret { i64, i64 } %.merged.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha27decf08d0a48b7E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !689170)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !689170, !noalias !689173, !noundef !12 ; 5 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !689170, !noalias !689173, !noundef !12 ; 6 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !689176
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17heed25339d0312c87E.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !689177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689180
  call fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd3deb34826ade4b4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i64 noundef range(i64 16, 121) 16, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.a, align 8, !noalias !689180, !noundef !12 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !689180 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !689180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689180
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hee88ebff1ed7f830E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !689183, !noalias !689184, !nonnull !12, !noundef !12 ; 5 uses
  %i.y = icmp eq i64 %i.e, 0
  br i1 %i.y, label %._crit_edge28, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val417 = load <16 x i8>, ptr %i.x, align 16
  %i.z = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.sroa.0.027 = phi ptr [ %.sroa.0.1.lcssa, %bb.h ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.026 = phi i64 [ %.sroa.5.1.lcssa, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.025 = phi i64 [ %i.az, %bb.h ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.024 = phi i16 [ %i.ax, %bb.h ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  %.not.i219 = icmp eq i16 %.sroa.13.024, 0
  br i1 %.not.i219, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.121 = phi ptr [ %i.ab, %.noexc3 ], [ %.sroa.0.027, %.preheader ] ; 2 uses
  %.sroa.5.120 = phi i64 [ %i.ae, %.noexc3 ], [ %.sroa.5.026, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.121) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.121, i64 16 ; 3 uses
  %.val18 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val18, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.120, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ad, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge28:                                    ; preds = %bb.h, %bb.e
  %i.af = sub i64 %i.v, %i.e
  store i64 %i.w, ptr %0, align 8, !alias.scope !689185, !noalias !689188
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !689190, !noalias !689192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !alias.scope !689194, !noalias !689196
  %i.ah = icmp eq i64 %i.i, 0
  br i1 %i.ah, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hee88ebff1ed7f830E.exit.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge28
  %i.ai = shl i64 %i.i, 4                         ; 2 uses
  %i.aj = add i64 %i.ai, 16
  %i.ak = add i64 %i.ai, 31                       ; 2 uses
  %i.al = icmp uge i64 %i.ak, %i.aj
  call void @llvm.assume(i1 %i.al), !noalias !689198
  %i.am = and i64 %i.ak, -16                      ; 3 uses
  %i.an = add i64 %i.i, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  call void @llvm.assume(i1 %i.ap), !noalias !689198
  call void @llvm.assume(i1 %i.aq), !noalias !689198
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hee88ebff1ed7f830E.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.as = sub nsw i64 0, %i.am
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !689199
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hee88ebff1ed7f830E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.024, %.preheader ], [ %i.ad, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.026, %.preheader ], [ %i.ae, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.027, %.preheader ], [ %i.ab, %.noexc3 ]
  %i.au = add i16 %.sroa.13.1.lcssa, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.sroa.13.1.lcssa
  %i.ay = add i64 %.sroa.5.1.lcssa, %i.aw         ; 2 uses
  %i.az = add i64 %.sroa.9.025, -1                ; 2 uses
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %.val.i = load i64, ptr %i.bc, align 8, !alias.scope !689204, !noalias !689207, !noundef !12 ; 2 uses
  %.sroa.0.04.i.i = and i64 %.val.i, %i.t         ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !689212
  %i.be = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
end_hunk_16
