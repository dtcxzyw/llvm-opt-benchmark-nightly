Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e265d680ede8ba0E:bb.a
    i64 0, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit"
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5392
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.sroa.2.0.copyload)
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %i.d = add i64 %.sroa.01.012, -1                ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %.loopexit, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.d, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.e:                                             ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6d436ba4a9917E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit", %._crit_edge
  %.sroa.0.0 = phi i64 [ %.sroa.01.0.lcssa, %._crit_edge ], [ 0, %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h3db659ff2c64408bE.exit" ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_ZN4core4iter6traits8iterator8Iterator8try_fold17hae85cf8768e6d9e0E(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(48) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !17, !noundef !4 ; 2 uses
  %.not11 = icmp eq i64 %i.b, -9223372036854775807
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.c = phi i64 [ %i.b, %.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.01.012 = phi i64 [ %1, %.lr.ph ], [ %i.d, %bb.e ]
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  switch i64 %i.c, label %bb.c [
    i64 -9223372036854775808, label %bb.d
    i64 0, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit"
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5395
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %.sroa.2.0.copyload)
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit": ; preds = %bb.b, %bb.c, %bb.d
  %i.d = add i64 %.sroa.01.012, -1                ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %.loopexit, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.d, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.e:                                             ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(48) %0)
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit", %._crit_edge
  %.sroa.0.0 = phi i64 [ %.sroa.01.0.lcssa, %._crit_edge ], [ 0, %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h187f7839657e0829E.exit" ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h196a23ec4551ff60E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @121, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h901b3d19f74be189E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h9b00109edf34da1aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h8108b75782508749E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h4da8fb94746bbf4fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i32 %.0.val, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(10) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 9) 1) #42, !noalias !5412 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(11) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 9) 1) #42, !noalias !5413 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc14, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

.noexc14:                                         ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 10, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %bb.d
  %i.h = phi ptr [ %i.f, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ %i.d, %bb.d ]
  %i.i = phi i64 [ 11, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 10, %bb.d ]
  %i.j = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0 = tail call i32 @llvm.abs.i32(i32 %.0.val, i1 false)
  %i.k = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h90579d648c67d9beE"(i32 noundef %.sroa.011.0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 10)
          to label %bb.f unwind label %bb.i       ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.c
  store i64 11, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5414)
  store i8 45, ptr %i.f, align 1, !noalias !5414
  store i64 1, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !5414
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { ptr, i64 } %i.k, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  call void @llvm.experimental.noalias.scope.decl(metadata !5416)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = sub nuw nsw i64 %i.i, %i.j
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j, i64 noundef %i.l, i64 noundef 1, i64 noundef 1)
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !5417
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5417
  br label %bb.h

bb.h:                                             ; preds = %.noexc17, %bb.f
  %i.p = phi ptr [ %i.h, %bb.f ], [ %.pre, %.noexc17 ]
  %i.q = phi i64 [ %i.j, %bb.f ], [ %.pre.i.i, %.noexc17 ] ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.r, i64 %i.l, i1 false), !noalias !5417
  %i.u = add i64 %i.q, %i.l
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !5417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !5418)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !5418 ; 2 uses
  %i.v = icmp eq i64 %.val.i, 0
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !5418, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5418
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @125, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$10read_exact17hcd3fa14f0b895e78E"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.sroa.0.049.i = phi ptr [ %.sroa.0.123.i, %bb.g ], [ %1, %bb.a ] ; 3 uses
  %.sroa.6.048.i = phi i64 [ %.sroa.6.121.i, %bb.g ], [ %2, %bb.a ] ; 6 uses
  %i.d = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h190ab4ac9c2ac827E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias noundef nonnull align 1 %.sroa.0.049.i, i64 noundef %.sroa.6.048.i) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 7 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.f
    i64 0, label %.split43.i
    i64 1, label %.split42.i
  ], !prof !19

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %.sroa.6.048.i, %i.g
  br i1 %i.k, label %.noexc.i, label %bb.e, !prof !8

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 0) %.sroa.6.048.i, i64 noundef range(i64 1, 0) %.sroa.6.048.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #43
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = sub nuw i64 %.sroa.6.048.i, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.049.i, i64 %i.g
  br label %bb.g

.split.i:                                         ; preds = %bb.b
  %.mask44.i = and i64 %i.g, -4294967296
  %i.n = icmp eq i64 %.mask44.i, 17179869184
  br i1 %i.n, label %.thread.i, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit

.split43.i:                                       ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !20, !noundef !4
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread.i, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread

.split42.i:                                       ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !20, !noundef !4
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread.i, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.u = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.u)
  %.mask.i = and i64 %i.g, -4294967296
  %i.v = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.v, label %.thread.i, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit

.thread.i:                                        ; preds = %bb.f, %.split42.i, %.split43.i, %.split.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %i.f)
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.e
  %.sroa.0.123.i = phi ptr [ %.sroa.0.049.i, %.thread.i ], [ %i.m, %bb.e ]
  %.sroa.6.121.i = phi i64 [ %.sroa.6.048.i, %.thread.i ], [ %i.l, %bb.e ] ; 2 uses
  %i.w = icmp eq i64 %.sroa.6.121.i, 0
  br i1 %i.w, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread22, label %.lr.ph.i

_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit: ; preds = %.split.i, %bb.f
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread22, label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread

_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread: ; preds = %.split43.i, %.split42.i, %bb.c, %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit
  %.sroa.07.0.i20 = phi ptr [ %i.f, %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit ], [ @104, %bb.c ], [ %i.f, %.split42.i ], [ %i.f, %.split43.i ] ; 3 uses
  %i.x = tail call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %.sroa.07.0.i20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load i64, ptr %i.z, align 8, !noundef !4 ; 7 uses
  %i.aa = icmp slt i64 %.val7, 0
  br i1 %i.aa, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !6

_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread22: ; preds = %bb.g, %bb.a, %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit, %bb.i
  %.sroa.0.0 = phi ptr [ %i.af, %bb.i ], [ null, %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit ], [ null, %bb.a ], [ null, %bb.g ]
  ret ptr %.sroa.0.0

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread
  %i.ab = icmp eq i64 %.val7, 0
  br i1 %i.ab, label %bb.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5428
  %i.ac = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7, i64 noundef range(i64 1, 9) 1) #42, !noalias !5428 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ac, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val6, i64 %.val7, i1 false), !noalias !5429
  store i64 %.val7, ptr %i.a, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val7, ptr %.sroa.517.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.07.0.i20, ptr %i.ae, align 8
  %i.af = call noundef nonnull ptr @_ZN3std2io5error5Error3new17h365738bce7e2a18cE(i8 noundef %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3std2io18default_read_exact17h8f5f5aa819e64bddE.exit.thread22

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.sroa.07.0.i20) #44
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$11read_to_end17ha6c38e3bf203a018E"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11read_to_end17h86d320751dc14a00E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 5 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.g = tail call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc772a05cca59be17E":bb.a
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6c473b8e2f98485E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5679
  %i.k = load i64, ptr %i.b, align 8, !range !18, !noalias !5679, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !5679, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !5679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5679
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #43
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !5679, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5679
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !5679
  store i64 %i.e, ptr %0, align 8, !alias.scope !5679
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc9c497d59fc2b72eE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5685)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 88
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 52405522936674862
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5685
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !5685, !nonnull !4, !noundef !4
  %i.i = mul nuw nsw i64 %i.c, 88
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !5686, !noalias !5685
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5686, !noalias !5685
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !5686, !noalias !5685
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6c473b8e2f98485E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5685
  %i.k = load i64, ptr %i.b, align 8, !range !18, !noalias !5685, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !5685, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5685
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #43
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !5685, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5685
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !5685
  store i64 %i.e, ptr %0, align 8, !alias.scope !5685
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !5691, !noundef !4 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %.sroa.012.0.i = select i1 %i.g, i64 8, i64 4
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.012.0.i) ; 3 uses
  %i.h = add nsw i64 %3, -1
  %i.i = add nuw nsw i64 %i.h, %4
  %i.j = sub nsw i64 0, %3
  %i.k = and i64 %i.i, %i.j
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 %.sroa.0.0.i32.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = sub nuw i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !6
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5691
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.q, align 8, !alias.scope !5691, !nonnull !4, !noundef !4
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !5692, !noalias !5691
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5692, !noalias !5691
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !5692, !noalias !5691
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6c473b8e2f98485E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !5691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5691
  %i.u = load i64, ptr %i.b, align 8, !range !18, !noalias !5691, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !10, !noalias !5691, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5691
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #43
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !5691, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5691
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !5691
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !5691
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN60_$LT$procfs..process..FDInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17h0e56cd40d21bf31aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f01de31cdacca9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u16$GT$3fmt17h67f4e3110ad583bbE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %0, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN67_$LT$procfs_core..process..FDTarget$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc95d50e6c68b389E", ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5695
  store ptr @141, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN61_$LT$procfs_core..KernelConfig$u20$as$u20$procfs..Current$GT$7current17h21927df81fe02cb7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 4                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [176 x i8], align 8               ; 6 uses
  %i.x = alloca [56 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [390 x i8], align 1               ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [72 x i8], align 8               ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [390 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5888
  call void @_ZN3std3sys2fs8metadata17h10d72764d6b6a0fdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 15), !noalias !5888
  %i.ah = load i64, ptr %i.w, align 8, !range !28, !noalias !5888, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.b, label %_ZN3std2fs8metadata17hf29ef68614595db4E.exit

_ZN3std2fs8metadata17hf29ef68614595db4E.exit:     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5888
  br label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17he9df765f8e8ee7c4E.exit"

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !5888, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5888
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.ak)
  br label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17he9df765f8e8ee7c4E.exit"

"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17he9df765f8e8ee7c4E.exit": ; preds = %_ZN3std2fs8metadata17hf29ef68614595db4E.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.al = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},~{memory}"(ptr nonnull inttoptr (i64 63 to ptr), ptr nonnull %i.z) #42 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(390) %i.ag, ptr noundef nonnull align 1 dereferenceable(390) %i.z, i64 390, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 130 ; 2 uses
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #42
  %i.ao = add i64 %i.an, 1
  call void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @144, ptr %i.ad, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he5b2b0e9409c8b8eE", ptr %.sroa.412.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.ap, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h49d8bb36d37d0549E", ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5889
  store ptr @146, ptr %i.v, align 8, !noalias !5890
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5890
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx56, align 8, !noalias !5890
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5890
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5890
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17he9df765f8e8ee7c4E.exit"
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val29 = load i64, ptr %i.ae, align 8, !range !10, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val29, 0
  br i1 %switch, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val30 = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30, i64 noundef %.val29, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5891
  br label %common.resume

bb.e:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17he9df765f8e8ee7c4E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val27 = load i64, ptr %i.ae, align 8, !range !10, !noundef !4 ; 2 uses
  %switch110 = icmp sgt i64 %.val27, 0
  br i1 %switch110, label %bb.f, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit31"

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val28 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef %.val27, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5892
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit31"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit31": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !5893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val9.i = load ptr, ptr %i.at, align 8, !alias.scope !5893, !noalias !5894, !nonnull !4, !noundef !4 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val10.i = load i64, ptr %i.au, align 8, !alias.scope !5893, !noalias !5894, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5895
  store i32 0, ptr %i.q, align 4, !noalias !5895
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5895
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 6, i1 false), !noalias !5895
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !5895
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.j unwind label %bb.i, !noalias !5896

bb.g:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.p ], [ %i.bd, %bb.m ], [ %i.aw, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5897)
  %.val.i.i = load i64, ptr %i.af, align 8, !alias.scope !5898, !noalias !5894 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i, 0
  br i1 %i.av, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5899
  br label %common.resume

bb.i:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit31"
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit31"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5895
  %i.ax = load i32, ptr %i.u, align 8, !range !11, !noalias !5896, !noundef !4
  %i.ay = trunc nuw i32 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !5896, !nonnull !4, !noundef !4 ; 3 uses
  %i.bb = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.ba), !noalias !5896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5896
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.q unwind label %bb.s, !noalias !5896

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.6.0.copyload.i = load i32, ptr %i.bc, align 4, !noalias !5896 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5896
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.n unwind label %bb.m, !noalias !5896

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = call noundef i32 @close(i32 noundef %.sroa.6.0.copyload.i) #42, !noalias !5896 ; 0 uses
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  %.sroa.059.0.copyload60 = load i64, ptr %i.r, align 8, !noalias !5893 ; 2 uses
  %.sroa.761.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.761.0.copyload63 = load ptr, ptr %.sroa.761.0..sroa_idx62, align 8, !noalias !5893 ; 2 uses
  %.sroa.9.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.9.0.copyload65 = load i64, ptr %.sroa.9.0..sroa_idx64, align 8, !noalias !5893 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5896
  %.val.i12.i = load i64, ptr %i.af, align 8, !alias.scope !5900, !noalias !5894 ; 2 uses
  %i.bf = icmp eq i64 %.val.i12.i, 0
  br i1 %i.bf, label %_ZN6procfs11FileWrapper4open17hbfaf3c07b86b3b0fE.exit, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit14.sink.split.i"
end_hunk_1
begin_hunk_2_@"_ZN61_$LT$procfs_core..KernelConfig$u20$as$u20$procfs..Current$GT$7current17h21927df81fe02cb7E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.md, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !5951
  store i64 1, ptr %0, align 8, !alias.scope !5911, !noalias !5951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5912
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i197.i"

"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit206.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", %bb.cw
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$procfs_core..ConfigSetting$GT$$GT$17h296b53772d1dd096E"(ptr noalias noundef align 8 dereferenceable(48) %i.p), !noalias !5912
  br label %"_ZN70_$LT$procfs_core..KernelConfig$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17he6a079499b8f4f92E.exit"

bb.dc:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i"
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$17h62cc9550895cd81eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.x) #44
          to label %common.resume unwind label %bb.da, !noalias !5911

"_ZN70_$LT$procfs_core..KernelConfig$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17he6a079499b8f4f92E.exit": ; preds = %"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit.i", %"_ZN4core3ptr136drop_in_place$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$$GT$$GT$17hbc28563b4d4c7d68E.exit206.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dr

.body.thread102:                                  ; preds = %bb.dm, %bb.di, %bb.dd
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.dd:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5988
  store i32 0, ptr %i.b, align 4, !noalias !5988
  %.sroa.4.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx.i.i38, align 4, !noalias !5988
  %.sroa.5.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i39, i8 0, i64 6, i1 false), !noalias !5988
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i39, align 4, !noalias !5988
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 12)
          to label %.noexc44 unwind label %.body.thread102

.noexc44:                                         ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5988
  %i.mf = load i32, ptr %i.f, align 8, !range !11, !noalias !5989, !noundef !4
  %i.mg = trunc nuw i32 %i.mf to i1
  br i1 %i.mg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.noexc44
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !5989, !nonnull !4, !noundef !4 ; 3 uses
  %i.mj = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.mi), !noalias !5989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5989
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 12)
          to label %bb.di unwind label %bb.dj, !noalias !5989

bb.df:                                            ; preds = %.noexc44
  %i.mk = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.6.0.copyload.i40 = load i32, ptr %i.mk, align 4, !noalias !5989 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5989
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 12)
          to label %bb.dl unwind label %bb.dg, !noalias !5989

bb.dg:                                            ; preds = %bb.df
  %i.ml = landingpad { ptr, i32 }
          cleanup
  %i.mm = call noundef i32 @close(i32 noundef %.sroa.6.0.copyload.i40) #42, !noalias !5989 ; 0 uses
  br label %.body.thread

bb.dh:                                            ; preds = %bb.dj
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5989
  unreachable

bb.di:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5989
  %i.mo = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.mi, ptr %i.mo, align 8, !noalias !5989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5989
  %i.mp = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h365738bce7e2a18cE(i8 noundef %i.mj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread unwind label %.body.thread102

.thread:                                          ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.dm

bb.dj:                                            ; preds = %bb.de
  %lpad.thr_comm.i43 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.mi) #44
          to label %.body.thread unwind label %bb.dh, !noalias !5989

bb.dk:                                            ; preds = %bb.t
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.mq, ptr noundef nonnull %.sroa.761.193)
  store i64 1, ptr %0, align 8
  br label %bb.dt

bb.dl:                                            ; preds = %bb.df
  %.sroa.068.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.669.0.copyload = load ptr, ptr %.sroa.669.0..sroa_idx, align 8 ; 2 uses
  %.sroa.970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.970.0.copyload = load i64, ptr %.sroa.970.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.mr = icmp eq i64 %.sroa.068.0.copyload, -9223372036854775808
  br i1 %i.mr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread, %bb.dl
  %.sroa.669.0109 = phi ptr [ %i.mp, %.thread ], [ %.sroa.669.0.copyload, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.y, ptr noundef nonnull %.sroa.669.0109)
          to label %bb.ds unwind label %.body.thread102

bb.dn:                                            ; preds = %bb.dl
  store i64 %.sroa.068.0.copyload, ptr %i.aa, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.669.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.970.0.copyload, ptr %.sroa.8.0..sroa_idx6, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %.sroa.6.0.copyload.i40, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5990
  %i.ms = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #42, !noalias !5990 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.do, label %bb.dq, !prof !8

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc49 unwind label %bb.dp

.noexc49:                                         ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.do
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa) #44
  br label %.body.thread

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.sroa.761.193)
  br label %bb.z

bb.dr:                                            ; preds = %bb.dt, %"_ZN70_$LT$procfs_core..KernelConfig$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17he6a079499b8f4f92E.exit"
  ret void

bb.ds:                                            ; preds = %bb.dm
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mv, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.sroa.761.193)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dk, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.dr

.body.thread:                                     ; preds = %bb.dp, %bb.dg, %bb.dj, %.body.thread102
  %eh.lpad-body100 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread102 ], [ %i.ml, %bb.dg ], [ %lpad.thr_comm.i43, %bb.dj ], [ %i.mu, %bb.dp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %.sroa.761.193) #44
          to label %common.resume unwind label %bb.du

bb.du:                                            ; preds = %.body.thread
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$procfs_core..IoErrorWrapper$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc2d87de88d3c547E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @151, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @152, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @153, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN65_$LT$procfs..sys..vm..DropCache$u20$as$u20$core..fmt..Display$GT$3fmt17h097c344c2dd2dec2E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i8, ptr %0, align 1, !range !16, !noundef !4
  %i.e = zext nneg i8 %i.d to i32
  store i32 %i.e, ptr %i.b, align 4
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5993
  store ptr @70, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h49d8bb36d37d0549E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$procfs_core..net..Snmp$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17h71e8541e91d6ce37E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(600) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 79 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 8 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [48 x i8], align 8               ; 8 uses
  %i.ao = alloca [48 x i8], align 8               ; 8 uses
  %i.ap = alloca [48 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 8 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [48 x i8], align 8               ; 8 uses
  %i.au = alloca [48 x i8], align 8               ; 8 uses
  %i.av = alloca [48 x i8], align 8               ; 8 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [48 x i8], align 8               ; 8 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [48 x i8], align 8               ; 8 uses
  %i.ba = alloca [48 x i8], align 8               ; 8 uses
  %i.bb = alloca [48 x i8], align 8               ; 8 uses
  %i.bc = alloca [48 x i8], align 8               ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 8 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %i.bf = alloca [48 x i8], align 8               ; 8 uses
  %i.bg = alloca [48 x i8], align 8               ; 8 uses
  %i.bh = alloca [48 x i8], align 8               ; 8 uses
  %i.bi = alloca [48 x i8], align 8               ; 8 uses
  %i.bj = alloca [48 x i8], align 8               ; 8 uses
  %i.bk = alloca [48 x i8], align 8               ; 8 uses
  %i.bl = alloca [48 x i8], align 8               ; 8 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [48 x i8], align 8               ; 8 uses
  %i.bo = alloca [48 x i8], align 8               ; 8 uses
  %i.bp = alloca [48 x i8], align 8               ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 8 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = alloca [48 x i8], align 8               ; 8 uses
  %i.bt = alloca [48 x i8], align 8               ; 8 uses
  %i.bu = alloca [48 x i8], align 8               ; 8 uses
  %i.bv = alloca [48 x i8], align 8               ; 8 uses
  %i.bw = alloca [48 x i8], align 8               ; 8 uses
  %i.bx = alloca [48 x i8], align 8               ; 8 uses
  %i.by = alloca [48 x i8], align 8               ; 8 uses
  %i.bz = alloca [48 x i8], align 8               ; 8 uses
  %i.ca = alloca [48 x i8], align 8               ; 8 uses
  %i.cb = alloca [48 x i8], align 8               ; 8 uses
  %i.cc = alloca [48 x i8], align 8               ; 8 uses
  %i.cd = alloca [48 x i8], align 8               ; 8 uses
  %i.ce = alloca [48 x i8], align 8               ; 8 uses
  %i.cf = alloca [48 x i8], align 8               ; 8 uses
  %i.cg = alloca [48 x i8], align 8               ; 8 uses
  %i.ch = alloca [48 x i8], align 8               ; 8 uses
  %i.ci = alloca [48 x i8], align 8               ; 8 uses
  %i.cj = alloca [48 x i8], align 8               ; 8 uses
  %i.ck = alloca [48 x i8], align 8               ; 8 uses
  %i.cl = alloca [48 x i8], align 8               ; 8 uses
  %i.cm = alloca [48 x i8], align 8               ; 8 uses
  %i.cn = alloca [48 x i8], align 8               ; 8 uses
  %i.co = alloca [48 x i8], align 8               ; 8 uses
  %i.cp = alloca [48 x i8], align 8               ; 8 uses
  %i.cq = alloca [48 x i8], align 8               ; 8 uses
  %i.cr = alloca [48 x i8], align 8               ; 8 uses
  %i.cs = alloca [48 x i8], align 8               ; 8 uses
  %i.ct = alloca [48 x i8], align 8               ; 8 uses
  %i.cu = alloca [48 x i8], align 8               ; 8 uses
  %i.cv = alloca [48 x i8], align 8               ; 8 uses
  %i.cw = alloca [48 x i8], align 8               ; 8 uses
  %i.cx = alloca [48 x i8], align 8               ; 8 uses
  %i.cy = alloca [48 x i8], align 8               ; 8 uses
  %i.cz = alloca [48 x i8], align 8               ; 8 uses
  %i.da = alloca [48 x i8], align 8               ; 8 uses
  %i.db = alloca [48 x i8], align 8               ; 8 uses
  %i.dc = alloca [48 x i8], align 8               ; 8 uses
  %i.dd = alloca [48 x i8], align 8               ; 8 uses
  %i.de = alloca [48 x i8], align 8               ; 8 uses
  %i.df = alloca [48 x i8], align 8               ; 8 uses
  %i.dg = alloca [48 x i8], align 8               ; 8 uses
  %i.dh = alloca [48 x i8], align 8               ; 8 uses
  %i.di = alloca [48 x i8], align 8               ; 8 uses
  %i.dj = alloca [48 x i8], align 8               ; 8 uses
  %i.dk = alloca [48 x i8], align 8               ; 8 uses
  %i.dl = alloca [48 x i8], align 8               ; 8 uses
  %i.dm = alloca [48 x i8], align 8               ; 8 uses
  %i.dn = alloca [48 x i8], align 8               ; 8 uses
  %i.do = alloca [48 x i8], align 8               ; 8 uses
  %i.dp = alloca [48 x i8], align 8               ; 8 uses
  %i.dq = alloca [48 x i8], align 8               ; 8 uses
  %i.dr = alloca [48 x i8], align 8               ; 8 uses
  %i.ds = alloca [48 x i8], align 8               ; 8 uses
  %i.dt = alloca [48 x i8], align 8               ; 8 uses
  %i.du = alloca [48 x i8], align 8               ; 8 uses
  %i.dv = alloca [48 x i8], align 8               ; 8 uses
  %i.dw = alloca [48 x i8], align 8               ; 8 uses
  %i.dx = alloca [48 x i8], align 8               ; 8 uses
  %i.dy = alloca [48 x i8], align 8               ; 8 uses
  %i.dz = alloca [48 x i8], align 8               ; 8 uses
  %i.ea = alloca [48 x i8], align 8               ; 8 uses
  %i.eb = alloca [48 x i8], align 8               ; 8 uses
  %i.ec = alloca [48 x i8], align 8               ; 8 uses
  %i.ed = alloca [48 x i8], align 8               ; 8 uses
  %i.ee = alloca [48 x i8], align 8               ; 8 uses
  %i.ef = alloca [48 x i8], align 8               ; 8 uses
  %i.eg = alloca [48 x i8], align 8               ; 8 uses
  %i.eh = alloca [48 x i8], align 8               ; 8 uses
  %i.ei = alloca [48 x i8], align 8               ; 8 uses
  %i.ej = alloca [48 x i8], align 8               ; 8 uses
  %i.ek = alloca [48 x i8], align 8               ; 8 uses
  %i.el = alloca [48 x i8], align 8               ; 8 uses
  %i.em = alloca [48 x i8], align 8               ; 8 uses
  %i.en = alloca [48 x i8], align 8               ; 8 uses
  %i.eo = alloca [48 x i8], align 8               ; 8 uses
  %i.ep = alloca [48 x i8], align 8               ; 8 uses
  %i.eq = alloca [48 x i8], align 8               ; 8 uses
  %i.er = alloca [48 x i8], align 8               ; 8 uses
  %i.es = alloca [48 x i8], align 8               ; 8 uses
  %i.et = alloca [48 x i8], align 8               ; 8 uses
  %i.eu = alloca [48 x i8], align 8               ; 8 uses
  %i.ev = alloca [48 x i8], align 8               ; 8 uses
  %i.ew = alloca [48 x i8], align 8               ; 8 uses
  %i.ex = alloca [48 x i8], align 8               ; 8 uses
  %i.ey = alloca [48 x i8], align 8               ; 8 uses
  %i.ez = alloca [48 x i8], align 8               ; 8 uses
  %i.fa = alloca [48 x i8], align 8               ; 8 uses
  %i.fb = alloca [48 x i8], align 8               ; 8 uses
  %i.fc = alloca [48 x i8], align 8               ; 8 uses
  %i.fd = alloca [48 x i8], align 8               ; 8 uses
  %i.fe = alloca [48 x i8], align 8               ; 8 uses
  %i.ff = alloca [48 x i8], align 8               ; 8 uses
  %i.fg = alloca [48 x i8], align 8               ; 8 uses
  %i.fh = alloca [48 x i8], align 8               ; 8 uses
  %i.fi = alloca [48 x i8], align 8               ; 8 uses
  %i.fj = alloca [48 x i8], align 8               ; 8 uses
  %i.fk = alloca [48 x i8], align 8               ; 8 uses
  %i.fl = alloca [48 x i8], align 8               ; 8 uses
  %i.fm = alloca [48 x i8], align 8               ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN6procfs7process7Process15coredump_filter17h9d35b190c6193cecE:bb.a
  store ptr @26, ptr %i.b, align 8, !noalias !20294
  %.sroa.4.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx102, align 8, !noalias !20294
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.5103.0..sroa_idx, align 8, !noalias !20294
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20294
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20294
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20295)
  %.val.i92 = load i64, ptr %i.k, align 8, !alias.scope !20295 ; 2 uses
  %i.cn = icmp eq i64 %.val.i92, 0
  br i1 %i.cn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit94", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i93 = load ptr, ptr %i.co, align 8, !alias.scope !20295, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i93, i64 noundef %.val.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20295
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit94"

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !20296)
  %.val.i95 = load i64, ptr %i.k, align 8, !alias.scope !20296 ; 2 uses
  %i.cp = icmp eq i64 %.val.i95, 0
  br i1 %i.cp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit97", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i96 = load ptr, ptr %i.cq, align 8, !alias.scope !20296, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i96, i64 noundef %.val.i95, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20296
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit97"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit97": ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @641, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 101, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 515, ptr %.sroa.621.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.k

bb.af:                                            ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit78": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !20297)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val.i98 = load i32, ptr %i.cr, align 8, !range !12, !alias.scope !20297, !noundef !4
  %i.cs = call noundef i32 @close(i32 noundef %.val.i98) #42, !noalias !20297 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20298)
  %.val.i1.i99 = load i64, ptr %i.r, align 8, !alias.scope !20299 ; 2 uses
  %i.ct = icmp eq i64 %.val.i1.i99, 0
  br i1 %i.ct, label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit90", label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit78"
  %.val1.i2.i100 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !20299, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i100, i64 noundef %.val.i1.i99, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20299
  br label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit90"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs7process7Process16task_main_thread17h79cdfb2dea62aa53E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !noundef !4
  tail call void @_ZN6procfs7process7Process13task_from_tid17h8c4bc19f6fed5275E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i32 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs7process7Process17set_oom_score_adj17h8b95732eb68da665E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, i16 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  %i.b = alloca [5 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @647, i64 noundef 13)
  call void @llvm.experimental.noalias.scope.decl(metadata !20329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20330
  %i.h = icmp slt i16 %2, 0
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !20330
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #42, !noalias !20331 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc14.i.i.invoke.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #42, !noalias !20332 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.noexc14.i.i.invoke.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i

.noexc14.i.i.invoke.i:                            ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ 5, %bb.b ], [ 6, %bb.c ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #43
          to label %.noexc14.i.i.cont.i unwind label %bb.j, !noalias !20333

.noexc14.i.i.cont.i:                              ; preds = %.noexc14.i.i.invoke.i
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 5, ptr %i.a, align 8, !noalias !20330
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !20330
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !20330
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i, %bb.d
  %i.n = phi ptr [ %i.k, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i ], [ %i.i, %bb.d ]
  %i.o = phi i64 [ 6, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i ], [ 5, %bb.d ]
  %i.p = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0.i.i.i = call i16 @llvm.abs.i16(i16 %2, i1 false)
  %i.q = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17h58c92274f7b16df7E"(i16 noundef %.sroa.011.0.i.i.i, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 5)
          to label %bb.f unwind label %bb.h, !noalias !20330 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i: ; preds = %bb.c
  store i64 6, ptr %i.a, align 8, !noalias !20330
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !20330
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !20334)
  store i8 45, ptr %i.k, align 1, !noalias !20335
  store i64 1, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !alias.scope !20334, !noalias !20330
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20336)
  call void @llvm.experimental.noalias.scope.decl(metadata !20337)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = sub nuw nsw i64 %i.o, %i.p
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.l, !prof !8

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.p, i64 noundef %i.r, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i.i unwind label %bb.h, !noalias !20330

.noexc17.i.i.i:                                   ; preds = %bb.g
  %.pre.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !20338, !noalias !20330
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !20338, !noalias !20330
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20339)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !20339, !noalias !20330 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.v, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !20339, !noalias !20330, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20340
  br label %.body.i

bb.j:                                             ; preds = %.noexc14.i.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.j ], [ %lpad.thr_comm.i.i.i, %bb.i ], [ %lpad.thr_comm.i.i.i, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20341)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !20342, !noalias !20343 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i, 0
  br i1 %i.y, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i", label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i = load ptr, ptr %i.z, align 8, !alias.scope !20342, !noalias !20343, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20344
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i"

bb.l:                                             ; preds = %.noexc17.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.n, %bb.f ], [ %.pre.i.i.i, %.noexc17.i.i.i ]
  %i.ab = phi i64 [ %i.p, %bb.f ], [ %.pre.i.i.i.i.i, %.noexc17.i.i.i ] ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.q, 0       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.ac, i64 %i.r, i1 false), !noalias !20345
  %i.af = add i64 %i.ab, %i.r
  %.sroa.08.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !20333 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !20333, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20330
  invoke fastcc void @_ZN6procfs10write_file17h1b99563507397839E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i, i64 noundef %i.af)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.08.0.copyload.i, 0
  br i1 %i.ah, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.08.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20346
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i"

bb.o:                                             ; preds = %bb.l
  %i.ai = icmp eq i64 %.sroa.08.0.copyload.i, 0
  br i1 %i.ai, label %_ZN6procfs11write_value17h4b4c014ab25f328fE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.08.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20347
  br label %_ZN6procfs11write_value17h4b4c014ab25f328fE.exit

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i": ; preds = %bb.n, %bb.m, %bb.k, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.k ], [ %eh.lpad-body.i, %.body.i ], [ %i.ag, %bb.m ], [ %i.ag, %bb.n ]
  resume { ptr, i32 } %.pn.i

_ZN6procfs11write_value17h4b4c014ab25f328fE.exit: ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs7process7Process2fd17ha8e2cd0bf21531caE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 2               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20405
  store i16 25702, ptr %i.b, align 2, !noalias !20406
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.i, align 2, !noalias !20405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20405
  call void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hd9d3fcb195341c68E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 3), !noalias !20405
  %i.j = load i64, ptr %i.a, align 8, !range !18, !noalias !20405, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit.thread, label %bb.b

_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20405
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !20405, !nonnull !4, !align !5, !noundef !4
  %.val.i.i.i.i.i = load i32, ptr %i.l, align 8, !range !12, !alias.scope !20404, !noalias !20407, !noundef !4
  %i.o = zext i32 %.val.i.i.i.i.i to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 257 to ptr), ptr %i.p, ptr nonnull readonly align 1 %i.n, ptr nonnull inttoptr (i64 622592 to ptr), ptr null) #42, !noalias !20408, !srcloc !31
  %i.r = extractvalue { ptr, i32, i32 } %i.q, 0   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = icmp slt ptr %i.r, null
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %i.s, 4294967295
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 4294967295
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.f, !prof !32

bb.d:                                             ; preds = %bb.b
  %i.v = shl i64 %i.s, 16
  %i.w = and i64 %i.v, 4294901760
  %i.x = or disjoint i64 %i.w, 1
  br label %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @644, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @692) #43, !noalias !20408
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.y = shl i64 %i.s, 32
  br label %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit

_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit: ; preds = %bb.d, %bb.f
  %.sroa.0.0.insert.insert.i.i.i = phi i64 [ %i.y, %bb.f ], [ %i.x, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20405
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 16
  %i.z = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit.thread, %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit
  %.sroa.4.0.extract.shift124 = phi i64 [ 65514, %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit.thread ], [ %.sroa.4.0.extract.shift, %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit ]
  %sext133 = shl i64 %.sroa.4.0.extract.shift124, 48 ; 2 uses
  %i.aa = ashr exact i64 %sext133, 48
  %.neg.i = mul nsw i64 %i.aa, -4294967296
  %i.ab = or disjoint i64 %.neg.i, 2
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.ac)
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @640, i64 noundef 2)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val43 = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val44 = load i64, ptr %i.aj, align 8, !noundef !4 ; 7 uses
  %i.ak = icmp slt i64 %.val44, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.g
  %i.al = icmp eq i64 %.val44, 0
  br i1 %i.al, label %bb.ae, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !20409
  %i.am = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val44, i64 noundef range(i64 1, 9) 1) #42, !noalias !20409 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.g
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.g ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZN6rustix2fs2at6openat17h794659ffd08872e0E.exit
  %.sroa.535.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32 ; 2 uses
  %.sroa.535.0.extract.trunc = trunc nuw i64 %.sroa.535.0.extract.shift to i32 ; 4 uses
  %i.ao = inttoptr i64 %.sroa.535.0.extract.shift to ptr ; 2 uses
  %i.ap = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.ao, ptr nonnull inttoptr (i64 3 to ptr)) #42, !noalias !20410, !srcloc !39
  %i.aq = extractvalue { ptr, i32, i32 } %i.ap, 0 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %.not.i.i.i.i.i48 = icmp sgt ptr %i.aq, inttoptr (i64 -4096 to ptr)
  %i.as = icmp slt ptr %i.aq, null
  %.sroa.06.0.i.i.i.i.i = and i1 %.not.i.i.i.i.i48, %i.as
  %i.at = shl nsw i64 %i.ar, 16
  %i.au = and i64 %i.at, 4294901760
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = shl i64 %i.ar, 32
  %.sroa.3.0.insert.insert.i.i.i.i = select i1 %.sroa.06.0.i.i.i.i.i, i64 %i.av, i64 %i.aw ; 3 uses
  %i.ax = trunc i64 %.sroa.3.0.insert.insert.i.i.i.i to i1
  br i1 %i.ax, label %bb.o, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.i
  %.sroa.518.0.extract.shift.i.i = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %i.ay = or i64 %.sroa.518.0.extract.shift.i.i, 557056
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 257 to ptr), ptr %i.ao, ptr nonnull @690, ptr nonnull %i.az, ptr null) #42, !noalias !20411, !srcloc !31
  %i.bb = extractvalue { ptr, i32, i32 } %i.ba, 0 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = icmp slt ptr %i.bb, null
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.preheader.i.i
  %i.be = and i64 %i.bc, 4294967295
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 4294967295
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !32

bb.k:                                             ; preds = %.preheader.preheader.i.i
  %i.bf = shl i64 %i.bc, 16
  %i.bg = and i64 %i.bf, 4294901760
  %i.bh = or disjoint i64 %i.bg, 1
  br label %_ZN6rustix2fs2at6openat17h4e1a64afa990a7b6E.exit.i.i

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @644, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @692) #43
          to label %.noexc49 unwind label %bb.n

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bi = shl i64 %i.bc, 32
  br label %_ZN6rustix2fs2at6openat17h4e1a64afa990a7b6E.exit.i.i

_ZN6rustix2fs2at6openat17h4e1a64afa990a7b6E.exit.i.i: ; preds = %bb.m, %bb.k
  %.sroa.3.0.insert.insert.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.k ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bj = trunc i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i to i1
end_hunk_3
begin_hunk_4_@"_ZN74_$LT$procfs_core..process..stat..Stat$u20$as$u20$procfs_core..FromRead$GT$9from_read17h555460a6da1ef1b4E":bb.a
  %switch1534 = icmp sgt i64 %.val993, 0
  br i1 %switch1534, label %bb.mr, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit1141"

bb.mr:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit1140"
  %.val994 = load ptr, ptr %i.jq, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val994, i64 noundef %.val993, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !24370
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit1141"

bb.ms:                                            ; preds = %.thread1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !24246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zo, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @727, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 107, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 240, ptr %.sroa.616.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit1140"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit1141": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit1140", %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mv, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit1141"
  %.val = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.zp = icmp eq i64 %.val, 0
  br i1 %i.zp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit1142", label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %.val988 = load ptr, ptr %i.jg, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val988, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit1142"

bb.mv:                                            ; preds = %bb.h
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zq, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.mt

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit1142": ; preds = %bb.mu, %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.experimental.noalias.scope.decl(metadata !24371)
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i1143 = load i32, ptr %i.zr, align 8, !range !12, !alias.scope !24371, !noundef !4
  %i.zs = call noundef i32 @close(i32 noundef %.val.i1143) #42, !noalias !24371 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24372)
  %.val.i1.i = load i64, ptr %1, align 8, !alias.scope !24373 ; 2 uses
  %i.zt = icmp eq i64 %.val.i1.i, 0
  br i1 %i.zt, label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit", label %bb.mw

bb.mw:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit1142"
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i2.i = load ptr, ptr %i.zu, align 8, !alias.scope !24373, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !24373
  br label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN75_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h21de79fcdc0af45cE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = load i16, ptr %0, align 2, !noundef !4   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24387)
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i16 %i.e, 256
  %or.cond.i.i.peel.not = icmp eq i16 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i16 %i.e, 128
  %or.cond.i.i.1.peel.not = icmp eq i16 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i16 %i.e, 64
  %or.cond.i.i.2.peel.not = icmp eq i16 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @634, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @634, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @634, i64 48), %.lr.ph.split.i.i.2.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ]
  %i.j = phi i16 [ -257, %.lr.ph.split.i.i.peel ], [ -129, %.lr.ph.split.i.i.1.peel ], [ -65, %.lr.ph.split.i.i.2.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !24388, !noundef !4
  %i.m = and i16 %i.e, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !24388, !nonnull !4, !align !5, !noundef !4
  %i.o = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_ZN8bitflags6parser9to_writer17hd74a1539a1249b71E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i16 [ %i.ap, %bb.h ], [ %i.m, %bb.a ] ; 9 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 5 uses
  %i.p = icmp ult i64 %.sroa.7.0.i, 3
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i16 %.sroa.13.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24387
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @634, i64 %.sroa.7.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i16, ptr %i.t, align 8, !noalias !24388, !noundef !4 ; 4 uses
  %i.u = and i16 %.val.i.i, %i.e
  %i.v = icmp eq i16 %i.u, %.val.i.i
  %i.w = and i16 %.val.i.i, %.sroa.13.0.i
  %i.x = icmp ne i16 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 3
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @634, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i16, ptr %i.aa, align 8, !noalias !24388, !noundef !4 ; 4 uses
  %i.ab = and i16 %.val.i.i.1, %i.e
  %i.ac = icmp eq i16 %i.ab, %.val.i.i.1
  %i.ad = and i16 %.val.i.i.1, %.sroa.13.0.i
  %i.ae = icmp ne i16 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 3
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @634, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.0.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i16, ptr %i.ah, align 8, !noalias !24388, !noundef !4 ; 4 uses
  %i.ai = and i16 %.val.i.i.2, %i.e
  %i.aj = icmp eq i16 %i.ai, %.val.i.i.2
  %i.ak = and i16 %.val.i.i.2, %.sroa.13.0.i
  %i.al = icmp ne i16 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ]
  %.val.i.i.lcssa = phi i16 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !24388, !noundef !4
  %i.ao = xor i16 %.val.i.i.lcssa, -1
  %i.ap = and i16 %.sroa.13.0.i, %i.ao
  %i.aq = load ptr, ptr %.lcssa56, align 8, !noalias !24388, !nonnull !4, !align !5, !noundef !4
  %i.ar = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.ar, label %_ZN8bitflags6parser9to_writer17hd74a1539a1249b71E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.2.peel, %.backedge.i.i, %.backedge.i.i.1
  %.sroa.13.0.i65 = phi i16 [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.2 ], [ %i.e, %.lr.ph.split.i.i.2.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.1 ], [ false, %.lr.ph.split.i.i.2 ], [ true, %.lr.ph.split.i.i.2.peel ], [ false, %.backedge.i.i ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24387
  store i16 %.sroa.13.0.i65, ptr %i.d, align 2, !noalias !24387
  %.not.i = icmp eq i16 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24387
  store ptr %i.d, ptr %i.c, align 8, !noalias !24390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24390
  store ptr %i.c, ptr %i.b, align 8, !noalias !24390
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfdc736df203e66ecE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !24390
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !24391, !noalias !24392, !nonnull !4, !noundef !4
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !24391, !noalias !24392, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24393
  store ptr @70, ptr %i.a, align 8, !noalias !24390
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !24390
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !24390
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !24390
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !24390
  %i.av = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24387
  br i1 %i.av, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24387
  br label %_ZN8bitflags6parser9to_writer17hd74a1539a1249b71E.exit

bb.h:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aq, i64 noundef %i.an)
  br i1 %i.aw, label %_ZN8bitflags6parser9to_writer17hd74a1539a1249b71E.exit, label %.peel.newph, !llvm.loop !24386

_ZN8bitflags6parser9to_writer17hd74a1539a1249b71E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN75_$LT$procfs..sys..kernel..Version$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0a7305fd46b2b439E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_ZN6procfs3sys6kernel7Version8from_str17heaad3975f37f1033E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$procfs..LocalSystemInfo$u20$as$u20$procfs_core..SystemInfoInterface$GT$14boot_time_secs17h1297a2df33c2e4c0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @_ZN6procfs14boot_time_secs17hb9c122261c903a37E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @"_ZN76_$LT$procfs..LocalSystemInfo$u20$as$u20$procfs_core..SystemInfoInterface$GT$16ticks_per_second17hbbcfed752cfc4e73E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i64 @sysconf(i32 noundef 2) #42
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @"_ZN76_$LT$procfs..LocalSystemInfo$u20$as$u20$procfs_core..SystemInfoInterface$GT$9page_size17hacd747156159a60fE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i64 @sysconf(i32 noundef 30) #42
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hcae6b2c743b2cc32E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h7f521c596a6a1ed3E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h1a6d6988b6104a81E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs..sys..kernel..BuildInfo$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h6e08df70a526ee3bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 26 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [48 x i8], align 8                ; 15 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !3, !noalias !24550, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !24551
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !24551
  br label %.lr.ph.split.i.i

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i": ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !24552
  store i8 1, ptr %i.k, align 8, !noalias !24552
  br label %.lr.ph.split.i.i

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.split.i
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i47
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.z, %bb.y, %bb.g
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split.i.i:                                 ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i ], [ %i.p, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i" ]
  %i.r = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i ], [ %i.o, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i" ] ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.j, align 8, !noalias !24551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false)
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store i64 %i.r, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5122.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx18, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %i.t = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ag, %bb.d ] ; 6 uses
  %i.u = sub nuw i64 %2, %i.t                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %i.w = icmp ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %2, %i.t
  br i1 %.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.aa, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.05.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !24553, !noalias !24554, !noundef !4
  %i.z = icmp eq i8 %i.y, 32
  br i1 %i.z, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aa, %i.u
  br i1 %exitcond.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.ab = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.u)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc36:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc36
  %.sroa.4.0.i27.i.i = phi i64 [ %i.ad, %.noexc36 ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
end_hunk_4
begin_hunk_5_@"_ZN79_$LT$procfs..sys..kernel.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h06a1521bba7cd533E":.peel.begin
  %or.cond.i.i.6.peel.not = icmp eq i16 %i.m, 0
  br i1 %or.cond.i.i.6.peel.not, label %.lr.ph.split.i.i.7.peel, label %bb.a

.lr.ph.split.i.i.7.peel:                          ; preds = %.lr.ph.split.i.i.6.peel
  %i.n = and i16 %i.e, 256
  %or.cond.i.i.7.peel.not = icmp eq i16 %i.n, 0
  br i1 %or.cond.i.i.7.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.7.peel, %.lr.ph.split.i.i.6.peel, %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @581, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 144), %.lr.ph.split.i.i.6.peel ], [ getelementptr inbounds nuw (i8, ptr @581, i64 168), %.lr.ph.split.i.i.7.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ], [ 7, %.lr.ph.split.i.i.6.peel ], [ 8, %.lr.ph.split.i.i.7.peel ]
  %i.o = phi i16 [ -3, %.lr.ph.split.i.i.peel ], [ -5, %.lr.ph.split.i.i.1.peel ], [ -9, %.lr.ph.split.i.i.2.peel ], [ -17, %.lr.ph.split.i.i.3.peel ], [ -33, %.lr.ph.split.i.i.4.peel ], [ -65, %.lr.ph.split.i.i.5.peel ], [ -129, %.lr.ph.split.i.i.6.peel ], [ -257, %.lr.ph.split.i.i.7.peel ]
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !24834, !noundef !4
  %i.r = and i16 %i.e, %i.o
  %i.s = load ptr, ptr %.lcssa56.peel, align 8, !noalias !24834, !nonnull !4, !align !5, !noundef !4
  %i.t = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.q)
  br i1 %i.t, label %_ZN8bitflags6parser9to_writer17h1e2f44234ef23158E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i16 [ %i.cd, %bb.h ], [ %i.r, %bb.a ] ; 19 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 10 uses
  %i.u = icmp ult i64 %.sroa.7.0.i, 8
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.v = icmp eq i16 %.sroa.13.0.i, 0
  br i1 %i.v, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24833
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %.sroa.7.0.i ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val.i.i = load i16, ptr %i.y, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.z = and i16 %.val.i.i, %i.e
  %i.aa = icmp eq i16 %i.z, %.val.i.i
  %i.ab = and i16 %.val.i.i, %.sroa.13.0.i
  %i.ac = icmp ne i16 %i.ab, 0
  %or.cond.i.i = and i1 %i.ac, %i.aa
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.x, 8
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.x ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val.i.i.1 = load i16, ptr %i.af, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.ag = and i16 %.val.i.i.1, %i.e
  %i.ah = icmp eq i16 %i.ag, %.val.i.i.1
  %i.ai = and i16 %.val.i.i.1, %.sroa.13.0.i
  %i.aj = icmp ne i16 %i.ai, 0
  %or.cond.i.i.1 = and i1 %i.aj, %i.ah
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ae, 8
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.ae ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val.i.i.2 = load i16, ptr %i.am, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.an = and i16 %.val.i.i.2, %i.e
  %i.ao = icmp eq i16 %i.an, %.val.i.i.2
  %i.ap = and i16 %.val.i.i.2, %.sroa.13.0.i
  %i.aq = icmp ne i16 %i.ap, 0
  %or.cond.i.i.2 = and i1 %i.aq, %i.ao
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.al, 8
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.al ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i16, ptr %i.at, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.au = and i16 %.val.i.i.3, %i.e
  %i.av = icmp eq i16 %i.au, %.val.i.i.3
  %i.aw = and i16 %.val.i.i.3, %.sroa.13.0.i
  %i.ax = icmp ne i16 %i.aw, 0
  %or.cond.i.i.3 = and i1 %i.ax, %i.av
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.as, 8
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.as ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.val.i.i.4 = load i16, ptr %i.ba, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.bb = and i16 %.val.i.i.4, %i.e
  %i.bc = icmp eq i16 %i.bb, %.val.i.i.4
  %i.bd = and i16 %.val.i.i.4, %.sroa.13.0.i
  %i.be = icmp ne i16 %i.bd, 0
  %or.cond.i.i.4 = and i1 %i.be, %i.bc
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.az, 8
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.az ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val.i.i.5 = load i16, ptr %i.bh, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.bi = and i16 %.val.i.i.5, %i.e
  %i.bj = icmp eq i16 %i.bi, %.val.i.i.5
  %i.bk = and i16 %.val.i.i.5, %.sroa.13.0.i
  %i.bl = icmp ne i16 %i.bk, 0
  %or.cond.i.i.5 = and i1 %i.bl, %i.bj
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.bg, 8
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.bg ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.7.0.i, 7         ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.val.i.i.6 = load i16, ptr %i.bo, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.bp = and i16 %.val.i.i.6, %i.e
  %i.bq = icmp eq i16 %i.bp, %.val.i.i.6
  %i.br = and i16 %.val.i.i.6, %.sroa.13.0.i
  %i.bs = icmp ne i16 %i.br, 0
  %or.cond.i.i.6 = and i1 %i.bs, %i.bq
  br i1 %or.cond.i.i.6, label %bb.b, label %.backedge.i.i.6

.backedge.i.i.6:                                  ; preds = %.lr.ph.split.i.i.6
  %exitcond.not.i.i.6 = icmp eq i64 %i.bn, 8
  br i1 %exitcond.not.i.i.6, label %.loopexit.i, label %.lr.ph.split.i.i.7

.lr.ph.split.i.i.7:                               ; preds = %.backedge.i.i.6
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr @581, i64 %i.bn ; 2 uses
  %i.bu = or disjoint i64 %.sroa.7.0.i, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.val.i.i.7 = load i16, ptr %i.bv, align 8, !noalias !24834, !noundef !4 ; 4 uses
  %i.bw = and i16 %.val.i.i.7, %i.e
  %i.bx = icmp eq i16 %i.bw, %.val.i.i.7
  %i.by = and i16 %.val.i.i.7, %.sroa.13.0.i
  %i.bz = icmp ne i16 %i.by, 0
  %or.cond.i.i.7 = and i1 %i.bz, %i.bx
  br i1 %or.cond.i.i.7, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.7, %.lr.ph.split.i.i.6, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.w, %.lr.ph.split.i.i ], [ %i.ad, %.lr.ph.split.i.i.1 ], [ %i.ak, %.lr.ph.split.i.i.2 ], [ %i.ar, %.lr.ph.split.i.i.3 ], [ %i.ay, %.lr.ph.split.i.i.4 ], [ %i.bf, %.lr.ph.split.i.i.5 ], [ %i.bm, %.lr.ph.split.i.i.6 ], [ %i.bt, %.lr.ph.split.i.i.7 ] ; 2 uses
  %.lcssa = phi i64 [ %i.x, %.lr.ph.split.i.i ], [ %i.ae, %.lr.ph.split.i.i.1 ], [ %i.al, %.lr.ph.split.i.i.2 ], [ %i.as, %.lr.ph.split.i.i.3 ], [ %i.az, %.lr.ph.split.i.i.4 ], [ %i.bg, %.lr.ph.split.i.i.5 ], [ %i.bn, %.lr.ph.split.i.i.6 ], [ %i.bu, %.lr.ph.split.i.i.7 ]
  %.val.i.i.lcssa = phi i16 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ], [ %.val.i.i.6, %.lr.ph.split.i.i.6 ], [ %.val.i.i.7, %.lr.ph.split.i.i.7 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !24834, !noundef !4
  %i.cc = xor i16 %.val.i.i.lcssa, -1
  %i.cd = and i16 %.sroa.13.0.i, %i.cc
  %i.ce = load ptr, ptr %.lcssa56, align 8, !noalias !24834, !nonnull !4, !align !5, !noundef !4
  %i.cf = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.cf, label %_ZN8bitflags6parser9to_writer17h1e2f44234ef23158E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.7, %.lr.ph.split.i.i.7.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4, %.backedge.i.i.5, %.backedge.i.i.6
  %.sroa.13.0.i65 = phi i16 [ %.sroa.13.0.i, %.backedge.i.i.6 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.7 ], [ %i.e, %.lr.ph.split.i.i.7.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.backedge.i.i.5 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.6 ], [ false, %.lr.ph.split.i.i.7 ], [ true, %.lr.ph.split.i.i.7.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.backedge.i.i.4 ], [ false, %.backedge.i.i.5 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24833
  store i16 %.sroa.13.0.i65, ptr %i.d, align 2, !noalias !24833
  %.not.i = icmp eq i16 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.cg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ch = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24833
  store ptr %i.d, ptr %i.c, align 8, !noalias !24836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24836
  store ptr %i.c, ptr %i.b, align 8, !noalias !24836
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfdc736df203e66ecE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !24836
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !24837, !noalias !24838, !nonnull !4, !noundef !4
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !24837, !noalias !24838, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24839
  store ptr @70, ptr %i.a, align 8, !noalias !24836
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !24836
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !24836
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !24836
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !24836
  %i.cj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24833
  br i1 %i.cj, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24833
  br label %_ZN8bitflags6parser9to_writer17h1e2f44234ef23158E.exit

bb.h:                                             ; preds = %bb.b
  %i.ck = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cb)
  br i1 %i.ck, label %_ZN8bitflags6parser9to_writer17h1e2f44234ef23158E.exit, label %.peel.newph, !llvm.loop !24832

_ZN8bitflags6parser9to_writer17h1e2f44234ef23158E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !3, !alias.scope !24849, !noalias !24850, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.thread7", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !24849, !noalias !24850, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !24849, !noalias !24850, !noundef !4 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !24849, !noalias !24850 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24851)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !24852, !noalias !24853, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !24854, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.peel": ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !24854, !noundef !4
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.peel", label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.peel"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !24854, !noundef !4
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.peel", label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.peel"
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !24854, !noundef !4
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.peel"
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i.i.peel" ], [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit16.i.i.peel" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i.i.peel" ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel": ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !24851, !noalias !24850
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24849)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.t

bb.l:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel"
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !24852, !noalias !24855, !noundef !4
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.peel"
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_5
begin_hunk_6_@"_ZN87_$LT$procfs..sys..kernel.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0222dd0d3694256aE":bb.a
  %i.dp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 9) 1) #42, !noalias !28504 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ab, label %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.aa
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.aa ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 range(i64 1, 0) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !28505
  unreachable

_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, i64 range(i64 1, 0) %i.z, i1 false), !noalias !28506
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.z, -65536
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i", %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %.sroa.9.sroa.8.0.extract.shift2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %.sroa.9.sroa.8.0.extract.shift, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.16.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ %i.dp, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.0.1.ph = phi i64 [ 2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h896d3e1feff1d27aE.exit.i" ], [ 1, %_ZN8bitflags6parser10ParseError18invalid_named_flag17h95822a15367d3be6E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 65535
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ac

.loopexit19:                                      ; preds = %bb.y, %bb.a
  %.sroa.9.sroa.0.1 = phi i16 [ 0, %bb.a ], [ %i.dm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.9.sroa.0.1, ptr %i.dr, align 8
  store i64 3, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs..sys..fs..binfmt_misc.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h57d2befff73403f1E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !4    ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28520)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @927, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @927, i64 72), %.lr.ph.split.i.i.3.peel ]
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.k = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.l = and i8 %i.e, %i.k
  %i.m = load ptr, ptr %.lcssa56.peel, align 8, !noalias !28521, !nonnull !4, !align !5, !noundef !4
  %i.n = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef 1)
  br i1 %i.n, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.at, %bb.h ], [ %i.l, %bb.a ] ; 11 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.o = icmp ult i64 %.sroa.7.0.i, 4
  br i1 %i.o, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.p = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.p, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28520
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %.sroa.7.0.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val.i.i = load i8, ptr %i.s, align 8, !noalias !28521, !noundef !4 ; 4 uses
  %i.t = and i8 %.val.i.i, %i.e
  %i.u = icmp eq i8 %i.t, %.val.i.i
  %i.v = and i8 %.val.i.i, %.sroa.13.0.i
  %i.w = icmp ne i8 %i.v, 0
  %or.cond.i.i = and i1 %i.w, %i.u
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.r, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.r ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.7.0.i, 2          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val.i.i.1 = load i8, ptr %i.z, align 8, !noalias !28521, !noundef !4 ; 4 uses
  %i.aa = and i8 %.val.i.i.1, %i.e
  %i.ab = icmp eq i8 %i.aa, %.val.i.i.1
  %i.ac = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ad = icmp ne i8 %i.ac, 0
  %or.cond.i.i.1 = and i1 %i.ad, %i.ab
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.y, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.y ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i.i.2 = load i8, ptr %i.ag, align 8, !noalias !28521, !noundef !4 ; 4 uses
  %i.ah = and i8 %.val.i.i.2, %i.e
  %i.ai = icmp eq i8 %i.ah, %.val.i.i.2
  %i.aj = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.ak = icmp ne i8 %i.aj, 0
  %or.cond.i.i.2 = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.af, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.af ; 2 uses
  %i.am = or disjoint i64 %.sroa.7.0.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val.i.i.3 = load i8, ptr %i.an, align 8, !noalias !28521, !noundef !4 ; 4 uses
  %i.ao = and i8 %.val.i.i.3, %i.e
  %i.ap = icmp eq i8 %i.ao, %.val.i.i.3
  %i.aq = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.ar = icmp ne i8 %i.aq, 0
  %or.cond.i.i.3 = and i1 %i.ar, %i.ap
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.q, %.lr.ph.split.i.i ], [ %i.x, %.lr.ph.split.i.i.1 ], [ %i.ae, %.lr.ph.split.i.i.2 ], [ %i.al, %.lr.ph.split.i.i.3 ]
  %.lcssa = phi i64 [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ], [ %i.am, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.as = xor i8 %.val.i.i.lcssa, -1
  %i.at = and i8 %.sroa.13.0.i, %i.as
  %i.au = load ptr, ptr %.lcssa56, align 8, !noalias !28521, !nonnull !4, !align !5, !noundef !4
  %i.av = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.av, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28520
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !28520
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ax = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28520
  store ptr %i.d, ptr %i.c, align 8, !noalias !28523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28523
  store ptr %i.c, ptr %i.b, align 8, !noalias !28523
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h8b4338ae57529e35E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !28523
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !28524, !noalias !28525, !nonnull !4, !noundef !4
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !28524, !noalias !28525, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28526
  store ptr @70, ptr %i.a, align 8, !noalias !28523
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !28523
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !28523
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !28523
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28523
  %i.az = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28520
  br i1 %i.az, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28520
  br label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit

bb.h:                                             ; preds = %bb.b
  %i.ba = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef 1)
  br i1 %i.ba, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph, !llvm.loop !28519

_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$procfs..process..ProcessesIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce8a9a3006e74b07E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.g = load i64, ptr %i.e, align 8, !range !18, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28"
  %i.l = load ptr, ptr %i.i, align 8, !noundef !4 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28", %bb.a
  store i64 -9223372036854775802, ptr %0, align 8
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26"

"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i25", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24", %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !noundef !4
  %i.o = sext i16 %i.n to i64
  %.neg = mul nsw i64 %i.o, -4294967296
  %i.p = or disjoint i64 %.neg, 2
  %i.q = inttoptr i64 %i.p to ptr
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.q)
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26"

bb.d:                                             ; preds = %bb.b
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %.sroa.8.0.copyload)
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit": ; preds = %.body, %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %eh.lpad-body, %bb.r ], [ %eh.lpad-body, %.body ]
  store i8 0, ptr %i.l, align 1
  %i.r = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.r, label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.sroa.8.0.copyload, i64 noundef 1) #42
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit"

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !range !10, !noundef !4 ; 6 uses
  %i.u = load ptr, ptr %i.j, align 8              ; 12 uses
  %i.v = load i64, ptr %i.k, align 8              ; 8 uses
  switch i64 %i.v, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !alias.scope !28544, !noundef !4 ; 2 uses
  switch i8 %i.w, label %bb.h [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %i.u, align 1, !alias.scope !28544
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.x = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.w, %bb.g ]
  switch i8 %i.x, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.z = add i64 %i.v, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.v, 9
  br i1 %i.aa, label %.preheader.i, label %.preheader102.i

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.ac = add i64 %i.v, -1                        ; 3 uses
  %i.ad = icmp ult i64 %i.v, 9
  %.not91118.i = icmp eq i64 %i.ac, 0             ; 2 uses
  br i1 %i.ad, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph151

.preheader105.i:                                  ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i155, i64 1
  %i.af = add i64 %.sroa.27.0.i154, -1            ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.bm, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.af, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph156

.preheader108.i:                                  ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i150, i64 1
  %i.ai = add i64 %.sroa.27.2.i149, -1            ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph151

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.bd, %bb.m ], [ %i.bv, %bb.p ], [ %i.ag, %bb.k ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.aj, %.preheader108.i ]
  %i.ak = zext i32 %.sroa.033.3.i to i64
  %i.al = shl nuw i64 %i.ak, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph151:                                        ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i150 = phi ptr [ %i.ah, %.preheader108.i ], [ %i.ab, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i149 = phi i64 [ %i.ai, %.preheader108.i ], [ %i.ac, %.preheader108.i.preheader ]
  %.sroa.033.2.i148 = phi i32 [ %i.aj, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.am = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i148, i32 10) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  %i.ao = load i8, ptr %.sroa.03.2.i150, align 1, !alias.scope !28544, !noundef !4
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9                   ; 2 uses
  %brmerge.i = select i1 %i.ar, i1 true, i1 %i.an
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph151
  %i.as = extractvalue { i32, i1 } %i.am, 0
  %i.at = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.au, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph156
  %.mux97.le.i = select i1 %i.bk, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph151
  %.mux.le.i = select i1 %i.ar, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.l, %.lr.ph.i, %bb.o, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.l ]
  %i.av = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.m
  %.sroa.03.3121.i = phi ptr [ %i.bc, %bb.m ], [ %i.ab, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.bb, %bb.m ], [ %i.ac, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.bd, %bb.m ], [ 0, %.preheader105.i ]
  %i.aw = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !28544, !noundef !4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
end_hunk_6
