Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.09?download=true
inline.NumInlined: 10247
inline.NumDeleted: 3945
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls4rankINtB2_10RankWindowymNtNtB6_4rank16RankPolicyRandomEINtB4_23RollingAggWindowNoNullsymE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  br label %bb.c, !dbg !175588

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.u = phi i32 [ %.pre14, %.lr.ph ], [ %i.ac, %bb.b ], !dbg !175585
  %i.v = phi i32 [ %.pre, %.lr.ph ], [ %i.ab, %bb.b ], !dbg !175585
  %.sroa.03.08 = phi i64 [ %i.e, %.lr.ph ], [ %i.w, %bb.b ] ; 3 uses
  %i.w = add nuw i64 %.sroa.03.08, 1, !dbg !175590 ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !dbg !175591, !nonnull !3009, !align !3164, !noundef !3009
  %i.y = load i64, ptr %i.h, align 8, !dbg !175591, !noundef !3009
  %i.z = icmp ult i64 %.sroa.03.08, %i.y, !dbg !175592
  tail call void @llvm.assume(i1 %i.z), !dbg !175593
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.03.08, !dbg !175594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !175595
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRyE7__insertCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i32 noundef %i.v, i32 noundef %i.u), !dbg !175596
  %i.ab = load i32, ptr %i.b, align 4, !dbg !175597, !range !3715, !noundef !3009 ; 2 uses
  %i.ac = load i32, ptr %i.k, align 4, !dbg !175597, !noundef !3009 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !175598
  store i32 %i.ab, ptr %i.i, align 8, !dbg !175599
  store i32 %i.ac, ptr %i.j, align 4, !dbg !175599
  %exitcond.not = icmp eq i64 %i.w, %2, !dbg !175584
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !175560

._crit_edge12:                                    ; preds = %bb.d, %._crit_edge
  store i64 %1, ptr %i.l, align 8, !dbg !175600
  store i64 %2, ptr %i.d, align 8, !dbg !175601
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175602 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !175603, !alias.scope !175574, !noundef !3009 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !175604 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !175604, !alias.scope !175574, !noundef !3009
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !175605 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !175605, !alias.scope !175574, !noundef !3009 ; 3 uses
  %i.aj = shl i64 %i.ai, 17, !dbg !175605
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !175606 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !dbg !175606, !alias.scope !175574, !noundef !3009
  %i.am = xor i64 %i.al, %i.ae, !dbg !175606      ; 2 uses
  %i.an = xor i64 %i.ai, %i.ag, !dbg !175607      ; 3 uses
  %i.ao = xor i64 %i.am, %i.ai, !dbg !175608
  store i64 %i.ao, ptr %i.ah, align 8, !dbg !175608, !alias.scope !175574
  %i.ap = xor i64 %i.an, %i.ae, !dbg !175609
  store i64 %i.ap, ptr %i.ad, align 8, !dbg !175609, !alias.scope !175574
  %i.aq = xor i64 %i.am, %i.aj, !dbg !175610
  store i64 %i.aq, ptr %i.ak, align 8, !dbg !175610, !alias.scope !175574
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 45), !dbg !175611
  store i64 %i.ar, ptr %i.af, align 8, !dbg !175612, !alias.scope !175574
  ret void, !dbg !175613

bb.c:                                             ; preds = %.lr.ph11, %bb.d
  %i.as = phi i32 [ %.pre16, %.lr.ph11 ], [ %i.ba, %bb.d ], !dbg !175589
  %i.at = phi i32 [ %.pre15, %.lr.ph11 ], [ %i.az, %bb.d ], !dbg !175589
  %.sroa.05.09 = phi i64 [ %i.m, %.lr.ph11 ], [ %i.bb, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !175614
  %i.au = load ptr, ptr %i.o, align 8, !dbg !175615, !nonnull !3009, !align !3164, !noundef !3009
  %i.av = load i64, ptr %i.p, align 8, !dbg !175615, !noundef !3009
  %i.aw = icmp ult i64 %.sroa.05.09, %i.av, !dbg !175616
  call void @llvm.assume(i1 %i.aw), !dbg !175617
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.05.09, !dbg !175618
  store ptr %i.ax, ptr %i.c, align 8, !dbg !175615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !175619
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRyE7__removeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i32 noundef %i.at, i32 noundef %i.as), !dbg !175620
  %i.ay = load ptr, ptr %i.s, align 8, !dbg !175621, !align !3164, !noundef !3009
  %i.az = load i32, ptr %i.a, align 8, !dbg !175622, !range !3715, !noundef !3009 ; 2 uses
  %i.ba = load i32, ptr %i.t, align 4, !dbg !175622, !noundef !3009 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !175623
  store i32 %i.az, ptr %i.q, align 8, !dbg !175624
  store i32 %i.ba, ptr %i.r, align 4, !dbg !175624
  %.not = icmp eq ptr %i.ay, null, !dbg !175625
  br i1 %.not, label %bb.e, label %bb.d, !dbg !175626, !prof !3174

bb.d:                                             ; preds = %bb.c
  %i.bb = add nuw i64 %.sroa.05.09, 1, !dbg !175627 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !175628
  %exitcond13.not = icmp eq i64 %i.bb, %1, !dbg !175587
  br i1 %exitcond13.not, label %._crit_edge12, label %bb.c, !dbg !175588

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #45, !dbg !175629
  unreachable, !dbg !175629
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls4rankINtB2_10RankWindowymNtNtB6_4rank16RankPolicyRandomEINtB4_23RollingAggWindowNoNullsymE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #0 !dbg !2181 !guid !175633 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !175635
  %i.b = load i64, ptr %i.a, align 8, !dbg !175635, !noundef !3009
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !175636
  %i.d = load i64, ptr %i.c, align 8, !dbg !175636, !noundef !3009
  %.not.i = icmp ule i64 %i.b, %1, !dbg !175637
  %i.e = icmp ult i64 %1, %i.d, !dbg !175638
  %.sroa.0.0.i = and i1 %.not.i, %i.e, !dbg !175638
  br i1 %.sroa.0.0.i, label %bb.b, label %bb.c, !dbg !175639

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !175640
  %i.g = load i64, ptr %i.f, align 8, !dbg !175640, !noundef !3009 ; 2 uses
  %i.h = icmp ult i64 %1, %i.g, !dbg !175640
  br i1 %i.h, label %bb.d, label %bb.e, !dbg !175640

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.3.0 = phi i32 [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ], !dbg !175641
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !175642
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.3.0, 1, !dbg !175642
  ret { i32, i32 } %i.j, !dbg !175642

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !175640
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175643
  %i.m = load ptr, ptr %i.k, align 8, !dbg !175644, !nonnull !3009, !align !3164, !noundef !3009
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %1, !dbg !175644
  %i.o = tail call { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyymE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !dbg !175645 ; 2 uses
  %i.p = extractvalue { i32, i32 } %i.o, 0, !dbg !175645
  %i.q = extractvalue { i32, i32 } %i.o, 1, !dbg !175645
  br label %bb.c, !dbg !175642

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #45, !dbg !175640
  unreachable, !dbg !175640
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 !dbg !1273 !guid !175646 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !dbg !175648, !range !3469, !noundef !3009 ; 3 uses
  %.not = icmp eq i64 %i.a, 7, !dbg !175648
  br i1 %.not, label %bb.c, label %bb.b, !dbg !175649, !prof !3174

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, 4, !dbg !175650
  tail call void @llvm.assume(i1 %i.b), !dbg !175650
  %i.c = icmp eq i64 %i.a, 2, !dbg !175651
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !175651, !prof !3209

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #45, !dbg !175652
  unreachable, !dbg !175652

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !175653
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !175653
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !175653
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !175653
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %6, i64 %7), !dbg !175654
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175655
  store double %.sroa.4.0.copyload, ptr %i.d, align 8, !dbg !175655
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !175655
  store i8 %.sroa.5.0.copyload, ptr %i.e, align 8, !dbg !175655
  ret void, !dbg !175656

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 133 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #45, !dbg !175657
  unreachable, !dbg !175657
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !2183 !guid !175658 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !175659
  ret void, !dbg !175660
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !175661 !guid !175711 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !175749
  %i.b = load i32, ptr %i.a, align 4, !dbg !175749, !noundef !3009 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !175750
  br i1 %i.c, label %bb.n, label %bb.b, !dbg !175750

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !175751
  %i.e = load ptr, ptr %i.d, align 8, !dbg !175751, !nonnull !3009, !noundef !3009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !175752
  %i.g = load i64, ptr %i.f, align 8, !dbg !175752, !noundef !3009
  %i.h = zext i32 %i.b to i64, !dbg !175753       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !175754
  tail call void @llvm.assume(i1 %i.i), !dbg !175755
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !175756
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !175757
  %i.l = load i32, ptr %i.k, align 4, !dbg !175757, !noundef !3009 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !175757       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !175758
  br i1 %i.n, label %bb.n, label %bb.c, !dbg !175758

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !175759
  %i.p = load i8, ptr %i.o, align 8, !dbg !175759, !range !3514, !noundef !3009
  %i.q = uitofp i32 %i.l to double, !dbg !175760  ; 6 uses
  switch i8 %i.p, label %default.unreachable31 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !175761

default.unreachable31:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !175762
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175763
  %i.t = load double, ptr %i.s, align 8, !dbg !175763, !noundef !3009
  %i.u = fmul double %i.r, %i.t, !dbg !175764
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !175765
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !175764
  %i.x = add nsw i64 %i.m, -1, !dbg !175766
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !175767
  br label %bb.j, !dbg !175768

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !175769
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175770
  %i.aa = load double, ptr %i.z, align 8, !dbg !175770, !noundef !3009
  %i.ab = fmul double %i.y, %i.aa, !dbg !175771
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !175772
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !175771
  br label %bb.j, !dbg !175773

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !175774
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175775
  %i.ag = load double, ptr %i.af, align 8, !dbg !175775, !noundef !3009
  %i.ah = fmul double %i.ae, %i.ag, !dbg !175776
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !175777
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !175776
  %i.ak = add nsw i64 %i.m, -1, !dbg !175778
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !175779
  br label %bb.j, !dbg !175780

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !175781
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175782
  %i.an = load double, ptr %i.am, align 8, !dbg !175782, !noundef !3009
  %i.ao = fmul double %i.al, %i.an, !dbg !175783  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !175784
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !175783
  %i.ar = add nsw i64 %i.m, -1, !dbg !175785
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !175786 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !175787
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !175788
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !175789
  %i.av = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !175790 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.k, !dbg !175789

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !175791
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175792
  %i.ay = load double, ptr %i.ax, align 8, !dbg !175792, !noundef !3009
  %i.az = fmul double %i.aw, %i.ay, !dbg !175793  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !175794
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !175793 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !175795
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !175796
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !175797
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !175797

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175798
  %i.bg = load double, ptr %i.bf, align 8, !dbg !175798, !noundef !3009
  %i.bh = fmul double %i.bg, %i.q, !dbg !175799
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !175800
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !175801
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !175802
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !175801
  br label %bb.j, !dbg !175803

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !175760
  %i.bm = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !175804
  br label %bb.n, !dbg !175805

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !175806
  %i.bo = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !175807
  %i.bp = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.av, i16 noundef %i.bo) #40, !dbg !175808
  %i.bq = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef 15360, i16 noundef 15360) #40, !dbg !175809
  %i.br = tail call fastcc noundef i16 @_RNvXsD_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Div3div(i16 noundef %i.bp, i16 noundef %i.bq) #40, !dbg !175810
  br label %bb.n, !dbg !175811

bb.l:                                             ; preds = %bb.h
  %i.bs = uitofp i64 %i.bb to double, !dbg !175812
  %i.bt = fsub double %i.az, %i.bs, !dbg !175813
  %i.bu = tail call fastcc i16 @_RINvXNvNtCs2mZqlW55729_12polars_utils7float16s3_1__NtB5_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromdECskY9G75ZWc4U_11polars_expr(double noundef %i.bt) #40, !dbg !175814
  %i.bv = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !175815 ; 2 uses
  %i.bw = add i64 %i.bb, 1, !dbg !175816
  %i.bx = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bw), !dbg !175817
  %i.by = tail call fastcc noundef i16 @_RNvXsB_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Sub3sub(i16 noundef %i.bx, i16 noundef %i.bv) #40, !dbg !175818
  %i.bz = tail call fastcc noundef i16 @_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul(i16 noundef %i.bu, i16 noundef %i.by) #40, !dbg !175819
  %i.ca = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.bz, i16 noundef %i.bv) #40, !dbg !175820
  br label %bb.n, !dbg !175821

bb.m:                                             ; preds = %bb.h
  %i.cb = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !175822
  br label %bb.n, !dbg !175821

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.7.0 = phi i16 [ %i.ca, %bb.l ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.br, %bb.k ], [ %i.cb, %bb.m ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i16 [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !175760
  %i.cc = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0, !dbg !175805
  %i.cd = insertvalue { i16, i16 } %i.cc, i16 %.sroa.7.0, 1, !dbg !175805
  ret { i16, i16 } %i.cd, !dbg !175805
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowdEINtB4_23RollingAggWindowNoNullsdE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 !dbg !1277 !guid !175823 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !dbg !175825, !range !3469, !noundef !3009 ; 3 uses
  %.not = icmp eq i64 %i.a, 7, !dbg !175825
  br i1 %.not, label %bb.c, label %bb.b, !dbg !175826, !prof !3174

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, 4, !dbg !175827
  tail call void @llvm.assume(i1 %i.b), !dbg !175827
  %i.c = icmp eq i64 %i.a, 2, !dbg !175828
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !175828, !prof !3209

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #45, !dbg !175829
  unreachable, !dbg !175829

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !175830
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !175830
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !175830
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !175830
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %6, i64 %7), !dbg !175831
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175832
  store double %.sroa.4.0.copyload, ptr %i.d, align 8, !dbg !175832
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !175832
  store i8 %.sroa.5.0.copyload, ptr %i.e, align 8, !dbg !175832
  ret void, !dbg !175833

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 133 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #45, !dbg !175834
  unreachable, !dbg !175834
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowdEINtB4_23RollingAggWindowNoNullsdE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !2184 !guid !175835 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !175836
  ret void, !dbg !175837
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowdEINtB4_23RollingAggWindowNoNullsdE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !175838 !guid !175884 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !175922
  %i.b = load i32, ptr %i.a, align 4, !dbg !175922, !noundef !3009 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !175923
  br i1 %i.c, label %bb.n, label %bb.b, !dbg !175923

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !175924
  %i.e = load ptr, ptr %i.d, align 8, !dbg !175924, !nonnull !3009, !noundef !3009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !175925
  %i.g = load i64, ptr %i.f, align 8, !dbg !175925, !noundef !3009
  %i.h = zext i32 %i.b to i64, !dbg !175926       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !175927
  tail call void @llvm.assume(i1 %i.i), !dbg !175928
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !175929
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !175930
  %i.l = load i32, ptr %i.k, align 4, !dbg !175930, !noundef !3009 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !175930       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !175931
  br i1 %i.n, label %bb.n, label %bb.c, !dbg !175931

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !175932
  %i.p = load i8, ptr %i.o, align 8, !dbg !175932, !range !3514, !noundef !3009
  %i.q = uitofp i32 %i.l to double, !dbg !175933  ; 6 uses
  switch i8 %i.p, label %default.unreachable31 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !175934

default.unreachable31:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !175935
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175936
  %i.t = load double, ptr %i.s, align 8, !dbg !175936, !noundef !3009
  %i.u = fmul double %i.r, %i.t, !dbg !175937
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !175938
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !175937
  %i.x = add nsw i64 %i.m, -1, !dbg !175939
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !175940
  br label %bb.j, !dbg !175941

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !175942
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175943
  %i.aa = load double, ptr %i.z, align 8, !dbg !175943, !noundef !3009
  %i.ab = fmul double %i.y, %i.aa, !dbg !175944
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !175945
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !175944
  br label %bb.j, !dbg !175946

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !175947
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175948
  %i.ag = load double, ptr %i.af, align 8, !dbg !175948, !noundef !3009
  %i.ah = fmul double %i.ae, %i.ag, !dbg !175949
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !175950
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !175949
  %i.ak = add nsw i64 %i.m, -1, !dbg !175951
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !175952
  br label %bb.j, !dbg !175953

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !175954
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175955
  %i.an = load double, ptr %i.am, align 8, !dbg !175955, !noundef !3009
  %i.ao = fmul double %i.al, %i.an, !dbg !175956  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !175957
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !175956
  %i.ar = add nsw i64 %i.m, -1, !dbg !175958
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !175959 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !175960
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !175961
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !175962
  %i.av = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !175963 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.k, !dbg !175962

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !175964
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175965
  %i.ay = load double, ptr %i.ax, align 8, !dbg !175965, !noundef !3009
  %i.az = fmul double %i.aw, %i.ay, !dbg !175966  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !175967
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !175966 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !175968
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !175969
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !175970
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !175970

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !175971
  %i.bg = load double, ptr %i.bf, align 8, !dbg !175971, !noundef !3009
  %i.bh = fmul double %i.bg, %i.q, !dbg !175972
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !175973
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !175974
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !175975
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !175974
  br label %bb.j, !dbg !175976

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !175933
  %i.bm = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !175977
  br label %bb.n, !dbg !175978

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !175979
  %i.bo = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !175980
  %i.bp = fadd double %i.av, %i.bo, !dbg !175981
  %i.bq = fmul double %i.bp, 5.000000e-01, !dbg !175982
  br label %bb.n, !dbg !175983

bb.l:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.bb to double, !dbg !175984
  %i.bs = fsub double %i.az, %i.br, !dbg !175985
  %i.bt = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !175986 ; 2 uses
  %i.bu = add i64 %i.bb, 1, !dbg !175987
  %i.bv = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bu), !dbg !175988
  %i.bw = fsub double %i.bv, %i.bt, !dbg !175989
  %i.bx = fmul double %i.bs, %i.bw, !dbg !175990
  %i.by = fadd double %i.bt, %i.bx, !dbg !175991
  br label %bb.n, !dbg !175992

bb.m:                                             ; preds = %bb.h
  %i.bz = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !175993
  br label %bb.n, !dbg !175992

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.7.0 = phi double [ %i.by, %bb.l ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.bq, %bb.k ], [ %i.bz, %bb.m ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !175933
  %i.ca = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0, !dbg !175978
  %i.cb = insertvalue { i64, double } %i.ca, double %.sroa.7.0, 1, !dbg !175978
  ret { i64, double } %i.cb, !dbg !175978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowfEINtB4_23RollingAggWindowNoNullsfE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 !dbg !1281 !guid !175994 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !dbg !175996, !range !3469, !noundef !3009 ; 3 uses
  %.not = icmp eq i64 %i.a, 7, !dbg !175996
  br i1 %.not, label %bb.c, label %bb.b, !dbg !175997, !prof !3174

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, 4, !dbg !175998
  tail call void @llvm.assume(i1 %i.b), !dbg !175998
  %i.c = icmp eq i64 %i.a, 2, !dbg !175999
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !175999, !prof !3209

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #45, !dbg !176000
  unreachable, !dbg !176000

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !176001
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !176001
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !176001
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !176001
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %6, i64 %7), !dbg !176002
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176003
  store double %.sroa.4.0.copyload, ptr %i.d, align 8, !dbg !176003
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !176003
  store i8 %.sroa.5.0.copyload, ptr %i.e, align 8, !dbg !176003
  ret void, !dbg !176004

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 133 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #45, !dbg !176005
  unreachable, !dbg !176005
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowfEINtB4_23RollingAggWindowNoNullsfE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !2185 !guid !176006 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !176007
  ret void, !dbg !176008
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowfEINtB4_23RollingAggWindowNoNullsfE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !176009 !guid !176057 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !176095
  %i.b = load i32, ptr %i.a, align 4, !dbg !176095, !noundef !3009 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !176096
  br i1 %i.c, label %bb.n, label %bb.b, !dbg !176096

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176097
  %i.e = load ptr, ptr %i.d, align 8, !dbg !176097, !nonnull !3009, !noundef !3009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !176098
  %i.g = load i64, ptr %i.f, align 8, !dbg !176098, !noundef !3009
  %i.h = zext i32 %i.b to i64, !dbg !176099       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !176100
  tail call void @llvm.assume(i1 %i.i), !dbg !176101
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !176102
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !176103
  %i.l = load i32, ptr %i.k, align 4, !dbg !176103, !noundef !3009 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !176103       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !176104
  br i1 %i.n, label %bb.n, label %bb.c, !dbg !176104

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !176105
  %i.p = load i8, ptr %i.o, align 8, !dbg !176105, !range !3514, !noundef !3009
  %i.q = uitofp i32 %i.l to double, !dbg !176106  ; 6 uses
  switch i8 %i.p, label %default.unreachable31 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !176107

default.unreachable31:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !176108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176109
  %i.t = load double, ptr %i.s, align 8, !dbg !176109, !noundef !3009
  %i.u = fmul double %i.r, %i.t, !dbg !176110
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !176111
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !176110
  %i.x = add nsw i64 %i.m, -1, !dbg !176112
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !176113
  br label %bb.j, !dbg !176114

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !176115
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176116
  %i.aa = load double, ptr %i.z, align 8, !dbg !176116, !noundef !3009
  %i.ab = fmul double %i.y, %i.aa, !dbg !176117
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !176118
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !176117
  br label %bb.j, !dbg !176119

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !176120
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176121
  %i.ag = load double, ptr %i.af, align 8, !dbg !176121, !noundef !3009
  %i.ah = fmul double %i.ae, %i.ag, !dbg !176122
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !176123
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !176122
  %i.ak = add nsw i64 %i.m, -1, !dbg !176124
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !176125
  br label %bb.j, !dbg !176126

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !176127
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176128
  %i.an = load double, ptr %i.am, align 8, !dbg !176128, !noundef !3009
  %i.ao = fmul double %i.al, %i.an, !dbg !176129  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !176130
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !176129
  %i.ar = add nsw i64 %i.m, -1, !dbg !176131
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !176132 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !176133
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !176134
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !176135
  %i.av = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !176136 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.k, !dbg !176135

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !176137
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176138
  %i.ay = load double, ptr %i.ax, align 8, !dbg !176138, !noundef !3009
  %i.az = fmul double %i.aw, %i.ay, !dbg !176139  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !176140
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !176139 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !176141
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !176142
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !176143
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !176143

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !176144
  %i.bg = load double, ptr %i.bf, align 8, !dbg !176144, !noundef !3009
  %i.bh = fmul double %i.bg, %i.q, !dbg !176145
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !176146
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !176147
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !176148
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !176147
  br label %bb.j, !dbg !176149

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !176106
  %i.bm = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !176150
  br label %bb.n, !dbg !176151

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !176152
  %i.bo = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !176153
  %i.bp = fadd float %i.av, %i.bo, !dbg !176154
  %i.bq = fmul float %i.bp, 5.000000e-01, !dbg !176155
  br label %bb.n, !dbg !176156

bb.l:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.bb to double, !dbg !176157
  %i.bs = fsub double %i.az, %i.br, !dbg !176158
  %i.bt = fptrunc double %i.bs to float, !dbg !176159
  %i.bu = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !176160 ; 2 uses
  %i.bv = add i64 %i.bb, 1, !dbg !176161
  %i.bw = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bv), !dbg !176162
  %i.bx = fsub float %i.bw, %i.bu, !dbg !176163
  %i.by = fmul float %i.bx, %i.bt, !dbg !176164
  %i.bz = fadd float %i.bu, %i.by, !dbg !176165
  br label %bb.n, !dbg !176166

bb.m:                                             ; preds = %bb.h
  %i.ca = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !176167
  br label %bb.n, !dbg !176166

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.7.0 = phi float [ %i.bz, %bb.l ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.bq, %bb.k ], [ %i.ca, %bb.m ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i32 [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !176106
  %i.cb = insertvalue { i32, float } poison, i32 %.sroa.0.0, 0, !dbg !176151
  %i.cc = insertvalue { i32, float } %i.cb, float %.sroa.7.0, 1, !dbg !176151
  ret { i32, float } %i.cc, !dbg !176151
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B32_EEINtB2_16RollingAggWindowB32_B32_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176168 !guid !176169 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B14_EINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !176170
  ret void, !dbg !176171
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B32_EEINtB2_16RollingAggWindowB32_B32_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 !dbg !176172 !guid !176173 {
bb.a:
  %i.a = tail call { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B14_EINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1), !dbg !176174
  ret { i16, i16 } %i.a, !dbg !176175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B32_EEINtB2_16RollingAggWindowB32_B32_E9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #6 !dbg !1425 !guid !176176 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176177
  %.val = load i64, ptr %i.a, align 8, !dbg !176177, !noundef !3009
  ret i64 %.val, !dbg !176178
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowaaEEINtB2_16RollingAggWindowaaE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176179 !guid !176180 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !176181
  ret void, !dbg !176182
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowaaEEINtB2_16RollingAggWindowaaE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 !dbg !176183 !guid !176184 {
bb.a:
  %i.a = tail call { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1), !dbg !176185
  ret { i1, i8 } %i.a, !dbg !176186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowaaEEINtB2_16RollingAggWindowaaE9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #6 !dbg !1468 !guid !176187 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176188
  %.val = load i64, ptr %i.a, align 8, !dbg !176188, !noundef !3009
  ret i64 %.val, !dbg !176189
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowddEEINtB2_16RollingAggWindowddE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176190 !guid !176191 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !176192
  ret void, !dbg !176193
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowddEEINtB2_16RollingAggWindowddE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !176194 !guid !176195 {
bb.a:
  %i.a = tail call { i64, double } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1), !dbg !176196
  ret { i64, double } %i.a, !dbg !176197
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowddEEINtB2_16RollingAggWindowddE9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #6 !dbg !1488 !guid !176198 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176199
  %.val = load i64, ptr %i.a, align 8, !dbg !176199, !noundef !3009
  ret i64 %.val, !dbg !176200
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowffEEINtB2_16RollingAggWindowffE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176201 !guid !176202 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2), !dbg !176203
  ret void, !dbg !176204
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowffEEINtB2_16RollingAggWindowffE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 !dbg !176205 !guid !176206 {
bb.a:
  %i.a = tail call { i32, float } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1), !dbg !176207
  ret { i32, float } %i.a, !dbg !176208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowffEEINtB2_16RollingAggWindowffE9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #6 !dbg !1519 !guid !176209 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176210
  %.val = load i64, ptr %i.a, align 8, !dbg !176210, !noundef !3009
  ret i64 %.val, !dbg !176211
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowhhEEINtB2_16RollingAggWindowhhE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176212 !guid !176213 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !176214
  ret void, !dbg !176215
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowhhEEINtB2_16RollingAggWindowhhE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 !dbg !176216 !guid !176217 {
bb.a:
  %i.a = tail call { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %1), !dbg !176218
  ret { i1, i8 } %i.a, !dbg !176219
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowhhEEINtB2_16RollingAggWindowhhE9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #6 !dbg !1546 !guid !176220 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176221
  %.val = load i64, ptr %i.a, align 8, !dbg !176221, !noundef !3009
  ret i64 %.val, !dbg !176222
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowllEEINtB2_16RollingAggWindowllE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176223 !guid !176224 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2), !dbg !176225
  ret void, !dbg !176226
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowllEEINtB2_16RollingAggWindowllE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 !dbg !176227 !guid !176228 {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1), !dbg !176229
  ret { i32, i32 } %i.a, !dbg !176230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowllEEINtB2_16RollingAggWindowllE9slice_lenCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #6 !dbg !1570 !guid !176231 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176232
  %.val = load i64, ptr %i.a, align 8, !dbg !176232, !noundef !3009
  ret i64 %.val, !dbg !176233
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowmmEEINtB2_16RollingAggWindowmmE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !176234 !guid !176235 {
bb.a:
  tail call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2), !dbg !176236
  ret void, !dbg !176237
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window15rolling_kernels6sharedINtB2_30RollingAggWindowNoNullsWrapperINtNtNtCslFlrwjHoTci_14polars_compute7rolling3sum9SumWindowmmEEINtB2_16RollingAggWindowmmE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 !dbg !176238 !guid !176239 {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef %1), !dbg !176240
  ret { i32, i32 } %i.a, !dbg !176241
end_hunk_0
