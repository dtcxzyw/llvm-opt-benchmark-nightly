Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.09?download=true
inline.NumInlined: 10247
inline.NumDeleted: 3945
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMs1_NtNtCslFlrwjHoTci_14polars_compute7rolling6momentINtB5_12MomentWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_14VarianceMomentE4flipCskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.6.1 = select i1 %i.y, double 0.000000e+00, double %i.u, !dbg !162736 ; 2 uses
  %.sroa.9.1 = select i1 %i.y, double 0.000000e+00, double %i.x, !dbg !162736 ; 2 uses
  %i.z = load i64, ptr %0, align 8, !dbg !162739, !range !1179, !alias.scope !162682, !noalias !162685, !noundef !13
  %i.aa = icmp eq i64 %i.i, %i.z, !dbg !162745
  br i1 %i.aa, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162745

bb.b:                                             ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !162746, !noalias !162685
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162746

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, %bb.b
  %i.ab = load ptr, ptr %i.g, align 8, !dbg !162747, !alias.scope !162682, !noalias !162685, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.i, !dbg !162756 ; 3 uses
  store double %i.r, ptr %i.ac, align 8, !dbg !162759
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !162759
  store double %.sroa.6.1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !162759
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !162759
  store double %.sroa.9.1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !162759
  %i.ad = add i64 %i.i, 1, !dbg !162763           ; 2 uses
  store i64 %i.ad, ptr %i.f, align 8, !dbg !162763, !alias.scope !162682, !noalias !162685
  %i.ae = load i64, ptr %i.a, align 8, !dbg !162672, !noundef !13 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !162672
  br i1 %i.af, label %._crit_edge, label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, !dbg !162672
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCslFlrwjHoTci_14polars_compute7rolling6momentINtB5_12MomentWindowdNtB5_14VarianceMomentE4flipCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162764 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !162765, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !162765
  br i1 %i.c, label %._crit_edge, label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph, !dbg !162765

_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.f, align 8, !dbg !162770, !alias.scope !162774, !noalias !162777
  br label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, !dbg !162765

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !162779
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !dbg !162780
  ret void, !dbg !162782

_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit: ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.i = phi i64 [ %.pre, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ], !dbg !162770 ; 3 uses
  %i.j = phi i64 [ %i.b, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.ae, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.9.06 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %.sroa.9.1, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ]
  %.sroa.6.05 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %.sroa.6.1, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.0.04 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ]
  %i.k = add nsw i64 %i.j, -1, !dbg !162783       ; 3 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !162783
  %i.l = load i64, ptr %i.d, align 8, !dbg !162784, !range !1179, !noundef !13
  %i.m = icmp samesign ult i64 %i.k, %i.l, !dbg !162791
  tail call void @llvm.assume(i1 %i.m), !dbg !162792
  %i.n = load ptr, ptr %i.e, align 8, !dbg !162795, !nonnull !13, !noundef !13
  %i.o = icmp samesign ult i64 %i.j, 1152921504606846977, !dbg !162804
  tail call void @llvm.assume(i1 %i.o), !dbg !162808
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k, !dbg !162809
  %i.q = load double, ptr %i.p, align 8, !dbg !162812, !noundef !13 ; 2 uses
  %i.r = fadd double %.sroa.0.04, 1.000000e+00, !dbg !162815 ; 4 uses
  %i.s = fsub double %i.q, %.sroa.6.05, !dbg !162818 ; 2 uses
  %i.t = fdiv double %i.s, %i.r, !dbg !162819
  %i.u = fadd double %.sroa.6.05, %i.t, !dbg !162820 ; 2 uses
  %i.v = fsub double %i.q, %i.u, !dbg !162821
  %i.w = fmul double %i.s, %i.v, !dbg !162821
  %i.x = fadd double %.sroa.9.06, %i.w, !dbg !162822
  %i.y = fcmp oeq double %i.r, 0.000000e+00, !dbg !162823 ; 2 uses
  %.sroa.6.1 = select i1 %i.y, double 0.000000e+00, double %i.u, !dbg !162823 ; 2 uses
  %.sroa.9.1 = select i1 %i.y, double 0.000000e+00, double %i.x, !dbg !162823 ; 2 uses
  %i.z = load i64, ptr %0, align 8, !dbg !162825, !range !1179, !alias.scope !162774, !noalias !162777, !noundef !13
  %i.aa = icmp eq i64 %i.i, %i.z, !dbg !162828
  br i1 %i.aa, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162828

bb.b:                                             ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !162829, !noalias !162777
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162829

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, %bb.b
  %i.ab = load ptr, ptr %i.g, align 8, !dbg !162830, !alias.scope !162774, !noalias !162777, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.i, !dbg !162835 ; 3 uses
  store double %i.r, ptr %i.ac, align 8, !dbg !162837
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !162837
  store double %.sroa.6.1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !162837
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !162837
  store double %.sroa.9.1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !162837
  %i.ad = add i64 %i.i, 1, !dbg !162839           ; 2 uses
  store i64 %i.ad, ptr %i.f, align 8, !dbg !162839, !alias.scope !162774, !noalias !162777
  %i.ae = load i64, ptr %i.a, align 8, !dbg !162765, !noundef !13 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !162765
  br i1 %i.af, label %._crit_edge, label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, !dbg !162765
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCslFlrwjHoTci_14polars_compute7rolling6momentINtB5_12MomentWindowfNtB5_14VarianceMomentE4flipCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162840 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !162841, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !162841
  br i1 %i.c, label %._crit_edge, label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph, !dbg !162841

_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.f, align 8, !dbg !162846, !alias.scope !162850, !noalias !162853
  br label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, !dbg !162841

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !162855
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !dbg !162856
  ret void, !dbg !162858

_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit: ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.i = phi i64 [ %.pre, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ], !dbg !162846 ; 3 uses
  %i.j = phi i64 [ %i.b, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.ae, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.9.06 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %.sroa.9.1, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ]
  %.sroa.6.05 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %.sroa.6.1, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.0.04 = phi double [ 0.000000e+00, %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit.lr.ph ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit ]
  %i.k = add nsw i64 %i.j, -1, !dbg !162859       ; 3 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !162859
  %i.l = load i64, ptr %i.d, align 8, !dbg !162860, !range !1179, !noundef !13
  %i.m = icmp samesign ult i64 %i.k, %i.l, !dbg !162867
  tail call void @llvm.assume(i1 %i.m), !dbg !162868
  %i.n = load ptr, ptr %i.e, align 8, !dbg !162871, !nonnull !13, !noundef !13
  %i.o = icmp samesign ult i64 %i.j, 1152921504606846977, !dbg !162880
  tail call void @llvm.assume(i1 %i.o), !dbg !162884
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k, !dbg !162885
  %i.q = load double, ptr %i.p, align 8, !dbg !162888, !noundef !13 ; 2 uses
  %i.r = fadd double %.sroa.0.04, 1.000000e+00, !dbg !162891 ; 4 uses
  %i.s = fsub double %i.q, %.sroa.6.05, !dbg !162894 ; 2 uses
  %i.t = fdiv double %i.s, %i.r, !dbg !162895
  %i.u = fadd double %.sroa.6.05, %i.t, !dbg !162896 ; 2 uses
  %i.v = fsub double %i.q, %i.u, !dbg !162897
  %i.w = fmul double %i.s, %i.v, !dbg !162897
  %i.x = fadd double %.sroa.9.06, %i.w, !dbg !162898
  %i.y = fcmp oeq double %i.r, 0.000000e+00, !dbg !162899 ; 2 uses
  %.sroa.6.1 = select i1 %i.y, double 0.000000e+00, double %i.u, !dbg !162899 ; 2 uses
  %.sroa.9.1 = select i1 %i.y, double 0.000000e+00, double %i.x, !dbg !162899 ; 2 uses
  %i.z = load i64, ptr %0, align 8, !dbg !162901, !range !1179, !alias.scope !162850, !noalias !162853, !noundef !13
  %i.aa = icmp eq i64 %i.i, %i.z, !dbg !162904
  br i1 %i.aa, label %bb.b, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162904

bb.b:                                             ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !162905, !noalias !162853
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !162905

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCslFlrwjHoTci_14polars_compute6moment8VarStateE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, %bb.b
  %i.ab = load ptr, ptr %i.g, align 8, !dbg !162906, !alias.scope !162850, !noalias !162853, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.i, !dbg !162911 ; 3 uses
  store double %i.r, ptr %i.ac, align 8, !dbg !162913
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !162913
  store double %.sroa.6.1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !162913
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !162913
  store double %.sroa.9.1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !162913
  %i.ad = add i64 %i.i, 1, !dbg !162915           ; 2 uses
  store i64 %i.ad, ptr %i.f, align 8, !dbg !162915, !alias.scope !162850, !noalias !162853
  %i.ae = load i64, ptr %i.a, align 8, !dbg !162841, !noundef !13 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !162841
  br i1 %i.af, label %._crit_edge, label %_RNvMNtCslFlrwjHoTci_14polars_compute6momentNtB2_8VarState10insert_one.exit, !dbg !162841
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162916 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !162917 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !162928 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !162930
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !162930

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !162932
  %i.f = load ptr, ptr %i.e, align 8, !dbg !162932, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !162939
  %i.h = load i64, ptr %i.g, align 8, !dbg !162939, !noundef !13
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !162940
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !162949 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !162949, !noundef !13
  %.not = icmp eq ptr %i.k, null, !dbg !162949
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !162952
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !162953
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162954), !dbg !162957
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !162965
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !162972
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !162954 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !162954
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !162954
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !162954
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !162954
  br label %bb.c, !dbg !162975

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %8, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %7, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i2140.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %6, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %3, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !162976 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162977), !dbg !162978
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !162979
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !162980

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !162981
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, label %bb.e, !dbg !162993

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !162994
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !162997, !noalias !163003, !noundef !13
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !163008

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !163009
  %i.y = icmp eq i64 %i.r, 0, !dbg !163010
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !163010

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !163013
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !163013

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !163014 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !163016
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !163017, !noalias !163021
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !163024
  br label %._crit_edge.i.i.i.i, !dbg !163029

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !163030
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !163031 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !163031
  %i.ah = lshr i64 %i.af, 1, !dbg !163032
  %i.ai = add i64 %i.ae, -1, !dbg !163030
  %i.aj = and i8 %i.ag, 1, !dbg !163033
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !163034

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !163035
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !163036, !noalias !163038 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !163039
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %bb.j
  ], !dbg !163040

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !163039
  br label %1, !dbg !163043

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !163050
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.i, !dbg !163055

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !163056 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !163058, !noalias !163061, !noundef !13
  br label %1, !dbg !163064

1:                                                ; preds = %bb.i, %bb.g
  %.ph31.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.i ]
  %.ph32.i = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.i ]
  %.pre.i.i.i21.ph.i = phi i64 [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i23.i, %bb.i ]
  %.ph33.i = phi i64 [ %i.am, %bb.g ], [ %i.r, %bb.i ]
  %.ph34.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %bb.i ]
  %.ph35.i = phi ptr [ %i.t, %bb.g ], [ %i.ar, %bb.i ]
  %.ph36.i = phi ptr [ %i.x, %bb.g ], [ null, %bb.i ]
  %.sroa.3.0.i.pn.i.ph.ph.i = phi i32 [ %i.ap, %bb.g ], [ %.val.i.i.i, %bb.i ]
  %2 = zext i32 %.sroa.3.0.i.pn.i.ph.ph.i to i64, !dbg !163067
  br label %bb.j, !dbg !163067

bb.j:                                             ; preds = %1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %3 = phi ptr [ %.ph36.i, %1 ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %.ph35.i, %1 ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %.ph34.i, %1 ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi i64 [ %.ph33.i, %1 ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i2140.i = phi i64 [ %.pre.i.i.i21.ph.i, %1 ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %7 = phi i64 [ %.ph32.i, %1 ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %8 = phi ptr [ %.ph31.i, %1 ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %9 = phi i64 [ %2, %1 ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], !dbg !163067
  %i.as = add i64 %9, %.sroa.0.0.i, !dbg !163076
  br label %bb.c, !dbg !162975

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !163080
  br label %bb.k, !dbg !163090

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %bb.a ], !dbg !163091
  ret i64 %.sroa.0.0, !dbg !163092
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE24new_unchecked_unknown_mdCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !163093 {
bb.a:
  %i.a = trunc nuw i64 %5 to i1, !dbg !163094
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !163094

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !163098
  %i.c = load ptr, ptr %i.b, align 8, !dbg !163098, !nonnull !13, !noundef !13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !163106
  %i.e = load i64, ptr %i.d, align 8, !dbg !163106, !noundef !13 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !163107
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.preheader, !dbg !163120

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3, !dbg !163121       ; 3 uses
  %i.g = icmp ult i64 %i.e, 4, !dbg !163121
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !163121

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4, !dbg !163121
  br label %.preheader, !dbg !163121

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !163125 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ], !dbg !163126
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163127
  %i.i = getelementptr i8, ptr %i.h, i64 16, !dbg !163130
  %.val.i = load i64, ptr %i.i, align 8, !dbg !163130, !noundef !13
  %i.j = add i64 %.val.i, %.sroa.02.0.i, !dbg !163131
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163127
  %i.l = getelementptr i8, ptr %i.k, i64 40, !dbg !163130
  %.val.i.1 = load i64, ptr %i.l, align 8, !dbg !163130, !noundef !13
  %i.m = add i64 %.val.i.1, %i.j, !dbg !163131
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163127
  %i.o = getelementptr i8, ptr %i.n, i64 64, !dbg !163130
  %.val.i.2 = load i64, ptr %i.o, align 8, !dbg !163130, !noundef !13
  %i.p = add i64 %.val.i.2, %i.m, !dbg !163131
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163127
  %i.r = getelementptr i8, ptr %i.q, i64 88, !dbg !163130
  %.val.i.3 = load i64, ptr %i.r, align 8, !dbg !163130, !noundef !13
  %i.s = add i64 %.val.i.3, %i.p, !dbg !163131    ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 4, !dbg !163136 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !163121 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !163121
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %.preheader, !dbg !163121

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !163121
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil.preheader, !dbg !163121

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0, !dbg !163121
  tail call void @llvm.assume(i1 %lcmp.mod10), !dbg !163121
  br label %.preheader.epil, !dbg !163121

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !163125 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.w, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !163126
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil, !dbg !163127
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !163130
  %.val.i.epil = load i64, ptr %i.v, align 8, !dbg !163130, !noundef !13
  %i.w = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !163131 ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !163136
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !163121 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !163121
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil, !dbg !163121, !llvm.loop !163139

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %6, %bb.a ], [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.w, %.preheader.epil ], !dbg !163140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !163141
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !163143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !163146
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !163143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !163147
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !163143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !163148
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163143
  store i64 -1, ptr %i.ab, align 8, !dbg !163143
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !163143
  store i64 %.sroa.02.0, ptr %i.ac, align 8, !dbg !163143
  ret void, !dbg !163149
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE8maybe_gcCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163150 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [160 x i8], align 8               ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !163151
  %i.h = load i64, ptr %i.g, align 8, !dbg !163151, !noundef !13
  %i.i = icmp ult i64 %i.h, 16385, !dbg !163151
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !163151

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !dbg !163152
  br label %bb.ag, !dbg !163153

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !163155
  %i.k = load ptr, ptr %i.j, align 8, !dbg !163155, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !163162
  %i.m = load atomic i64, ptr %i.l acquire, align 8, !dbg !163169
  %i.n = icmp eq i64 %i.m, 1, !dbg !163171
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !163171

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %1)
          to label %bb.f unwind label %bb.ah, !dbg !163172

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !dbg !163173
  br label %bb.ag, !dbg !163153

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !163174
  %i.q = load i64, ptr %i.p, align 8, !dbg !163174, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !163180
  %i.s = load ptr, ptr %i.r, align 8, !dbg !163180, !nonnull !13, !noundef !13 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !163189
  %i.u = load i64, ptr %i.t, align 8, !dbg !163189, !noundef !13 ; 5 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !163190
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.preheader, !dbg !163203

.preheader.preheader:                             ; preds = %bb.f
  %xtraiter = and i64 %i.u, 1, !dbg !163204
  %i.w = icmp eq i64 %i.u, 1, !dbg !163204
  br i1 %i.w, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !163204

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.u, -2, !dbg !163204
  br label %.preheader, !dbg !163204

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ao, %.preheader ], !dbg !163208 ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.an, %.preheader ], !dbg !163209
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i, !dbg !163210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163213), !dbg !163216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163217), !dbg !163220
  %i.y = load ptr, ptr %i.x, align 8, !dbg !163223, !alias.scope !163233, !nonnull !13, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !163234
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !163241, !noalias !163233
  %i.ab = icmp ugt i64 %i.aa, 1, !dbg !163243
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !163243
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !163243, !alias.scope !163233
  %.sroa.0.0.i.i.i = select i1 %i.ab, i64 0, i64 %i.ad, !dbg !163243
  %i.ae = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i, !dbg !163244
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i, !dbg !163210 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !163210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163247), !dbg !163216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163249), !dbg !163220
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !163223, !alias.scope !163251, !nonnull !13, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !163234
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !dbg !163241, !noalias !163251
  %i.ak = icmp ugt i64 %i.aj, 1, !dbg !163243
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !163243
  %i.am = load i64, ptr %i.al, align 8, !dbg !163243, !alias.scope !163251
  %.sroa.0.0.i.i.i.1 = select i1 %i.ak, i64 0, i64 %i.am, !dbg !163243
  %i.an = add i64 %.sroa.0.0.i.i.i.1, %i.ae, !dbg !163244 ; 3 uses
  %i.ao = add nuw i64 %.sroa.04.0.i, 2, !dbg !163252 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !163204 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !163204
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %.preheader, !dbg !163204

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !163204
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil.preheader, !dbg !163204

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ao, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.an, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericShE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB56_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.u to i1, !dbg !163204
  tail call void @llvm.assume(i1 %lcmp.mod13), !dbg !163204
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i.epil.init, !dbg !163210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163213), !dbg !163216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163217), !dbg !163220
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !163223, !alias.scope !163233, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !163234
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !dbg !163241, !noalias !163233
  %i.at = icmp ugt i64 %i.as, 1, !dbg !163243
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE8maybe_gcCskY9G75ZWc4U_11polars_expr:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 16, !dbg !163338 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !163341, !noalias !163284
  %.not.i = icmp eq ptr %i.bu, %i.bs, !dbg !163316
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !163325

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163342, !noalias !163284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !163343, !noalias !163284
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !163343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !dbg !163343, !noalias !163278
  call void @llvm.experimental.noalias.scope.decl(metadata !163344), !dbg !163347
  call void @llvm.experimental.noalias.scope.decl(metadata !163348), !dbg !163347
  call void @llvm.experimental.noalias.scope.decl(metadata !163350), !dbg !163347
  call void @llvm.experimental.noalias.scope.decl(metadata !163352), !dbg !163355
  call void @llvm.experimental.noalias.scope.decl(metadata !163358), !dbg !163355
  %i.bw = load ptr, ptr %i.a, align 8, !dbg !163360, !alias.scope !163365, !noalias !163366, !noundef !13
  %.not.i.i.i = icmp eq ptr %i.bw, null, !dbg !163360
  br i1 %.not.i.i.i, label %bb.s, label %bb.o, !dbg !163367

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !163368
  %i.by = load i64, ptr %i.bx, align 8, !dbg !163368, !alias.scope !163365, !noalias !163366, !noundef !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !163371
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !163371, !alias.scope !163376, !noalias !163377, !noundef !13
  %.not2.i.i.i = icmp eq i64 %i.by, %i.ca, !dbg !163378
  br i1 %.not2.i.i.i, label %bb.s, label %bb.p, !dbg !163378, !prof !4789

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #43
          to label %bb.r unwind label %bb.u, !dbg !163379, !noalias !163380

bb.q:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !163381, !alias.scope !163382, !noalias !163383
  br label %.body.i.i, !dbg !163384

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !163385
  store atomic i64 -1, ptr %i.cc monotonic, align 8, !dbg !163396, !alias.scope !163376, !noalias !163377
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !163381 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !163398, !alias.scope !163400, !noalias !163377, !noundef !13
  %i.cf = icmp eq ptr %i.ce, null, !dbg !163398
  br i1 %i.cf, label %bb.x, label %bb.t, !dbg !163398

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cd)
          to label %bb.x unwind label %bb.q, !dbg !163403, !noalias !163377

bb.u:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i.i unwind label %bb.v, !dbg !163406, !noalias !163366

bb.v:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163410, !noalias !163366
  unreachable, !dbg !163410

.body.i.i:                                        ; preds = %bb.u, %bb.q
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %i.cb, %bb.q ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #41
          to label %.body.thread.i unwind label %bb.w, !dbg !163411, !noalias !163383

bb.w:                                             ; preds = %.body.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163412, !noalias !163383
  unreachable, !dbg !163412

bb.x:                                             ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !163381, !alias.scope !163382, !noalias !163383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false), !dbg !163413, !alias.scope !163414, !noalias !163415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !163416, !noalias !163284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !163416, !noalias !163284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !163282, !noalias !163284
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %bb.z unwind label %bb.y, !dbg !163282, !noalias !163278

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.ab, !dbg !163417, !noalias !163278

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit9.i unwind label %bb.aa, !dbg !163420, !noalias !163278

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.aa, %bb.y
  %.pn6.i = phi { ptr, i32 } [ %i.ck, %bb.aa ], [ %i.cj, %bb.y ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.thread unwind label %bb.ab, !dbg !163423, !noalias !163278

bb.aa:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit9.i: ; preds = %bb.z
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg), !dbg !163426
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE2gcCskY9G75ZWc4U_11polars_expr.exit, !dbg !163426

bb.ab:                                            ; preds = %bb.af, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit10.i, %bb.ad, %bb.ac, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.y, %.body.thread.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163429, !noalias !163278
  unreachable, !dbg !163429

bb.ac:                                            ; preds = %.lr.ph.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutable22MutableBinaryViewArrayShEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(160) %i.e) #41
          to label %.body.thread.i unwind label %bb.ab, !dbg !163282, !noalias !163284

bb.ad:                                            ; preds = %.body.thread.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit10.i unwind label %bb.ab, !dbg !163430, !noalias !163278

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit10.i: ; preds = %bb.ad
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit11.i unwind label %bb.ab, !dbg !163433, !noalias !163278

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit10.i
  br i1 %.sroa.03.0.i, label %bb.ae, label %.body.thread, !dbg !163282

bb.ae:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit11.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !163282 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !163436, !alias.scope !163438, !noalias !163278, !noundef !13
  %i.cp = icmp eq ptr %i.co, null, !dbg !163436
  br i1 %i.cp, label %.body.thread, label %bb.af, !dbg !163436

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %.body.thread unwind label %bb.ab, !dbg !163441, !noalias !163278

_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE2gcCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit9.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !163444
  br label %bb.ag, !dbg !163267

bb.ag:                                            ; preds = %bb.g, %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE2gcCskY9G75ZWc4U_11polars_expr.exit, %bb.e, %bb.b
  ret void, !dbg !163445

.body.thread:                                     ; preds = %bb.af, %bb.ae, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit11.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.ah
  %eh.lpad-body7 = phi { ptr, i32 } [ %.pn.i, %bb.ae ], [ %i.cq, %bb.ah ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit11.i ], [ %.pn6.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.pn.i, %bb.af ]
  resume { ptr, i32 } %eh.lpad-body7, !dbg !163446

bb.ah:                                            ; preds = %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(128) %1) #41
          to label %.body.thread unwind label %bb.ai, !dbg !163447

bb.ai:                                            ; preds = %bb.ah
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163446
  unreachable, !dbg !163446
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE15total_bytes_lenCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163448 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163449 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !163460 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !163462
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !163462

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !163464
  %i.f = load ptr, ptr %i.e, align 8, !dbg !163464, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !163471
  %i.h = load i64, ptr %i.g, align 8, !dbg !163471, !noundef !13
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !163472
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !163481 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !163481, !noundef !13
  %.not = icmp eq ptr %i.k, null, !dbg !163481
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !163484
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !163485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163486), !dbg !163489
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !163496
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !163503
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !163486 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !163486
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !163486
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !163486
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !163486
  br label %bb.c, !dbg !163506

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %8, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %7, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i2140.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %6, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %3, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !163507 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163508), !dbg !163509
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !163510
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !163511

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !163512
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, label %bb.e, !dbg !163520

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !163521
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !163523, !noalias !163529, !noundef !13
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !163534

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !163535
  %i.y = icmp eq i64 %i.r, 0, !dbg !163536
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !163536

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !163539
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !163539

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !163540 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !163542
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !163543, !noalias !163547
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !163550
  br label %._crit_edge.i.i.i.i, !dbg !163555

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !163556
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !163557 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !163557
  %i.ah = lshr i64 %i.af, 1, !dbg !163558
  %i.ai = add i64 %i.ae, -1, !dbg !163556
  %i.aj = and i8 %i.ag, 1, !dbg !163559
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !163560

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !163561
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !163562, !noalias !163564 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !163565
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %bb.j
  ], !dbg !163566

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !163565
  br label %1, !dbg !163569

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !163576
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.i, !dbg !163581

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !163582 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !163584, !noalias !163587, !noundef !13
  br label %1, !dbg !163590

1:                                                ; preds = %bb.i, %bb.g
  %.ph31.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.i ]
  %.ph32.i = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.i ]
  %.pre.i.i.i21.ph.i = phi i64 [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i23.i, %bb.i ]
  %.ph33.i = phi i64 [ %i.am, %bb.g ], [ %i.r, %bb.i ]
  %.ph34.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %bb.i ]
  %.ph35.i = phi ptr [ %i.t, %bb.g ], [ %i.ar, %bb.i ]
  %.ph36.i = phi ptr [ %i.x, %bb.g ], [ null, %bb.i ]
  %.sroa.3.0.i.pn.i.ph.ph.i = phi i32 [ %i.ap, %bb.g ], [ %.val.i.i.i, %bb.i ]
  %2 = zext i32 %.sroa.3.0.i.pn.i.ph.ph.i to i64, !dbg !163593
  br label %bb.j, !dbg !163593

bb.j:                                             ; preds = %1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %3 = phi ptr [ %.ph36.i, %1 ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %.ph35.i, %1 ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %.ph34.i, %1 ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi i64 [ %.ph33.i, %1 ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i2140.i = phi i64 [ %.pre.i.i.i21.ph.i, %1 ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %7 = phi i64 [ %.ph32.i, %1 ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %8 = phi ptr [ %.ph31.i, %1 ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %9 = phi i64 [ %2, %1 ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], !dbg !163593
  %i.as = add i64 %9, %.sroa.0.0.i, !dbg !163600
  br label %bb.c, !dbg !163506

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !163603
  br label %bb.k, !dbg !163612

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %bb.a ], !dbg !163613
  ret i64 %.sroa.0.0, !dbg !163614
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE24new_unchecked_unknown_mdCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !163615 {
bb.a:
  %i.a = trunc nuw i64 %5 to i1, !dbg !163616
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !163616

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !163620
  %i.c = load ptr, ptr %i.b, align 8, !dbg !163620, !nonnull !13, !noundef !13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !163627
  %i.e = load i64, ptr %i.d, align 8, !dbg !163627, !noundef !13 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !163628
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.preheader, !dbg !163641

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3, !dbg !163642       ; 3 uses
  %i.g = icmp ult i64 %i.e, 4, !dbg !163642
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !163642

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4, !dbg !163642
  br label %.preheader, !dbg !163642

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !163646 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ], !dbg !163647
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163648
  %i.i = getelementptr i8, ptr %i.h, i64 16, !dbg !163651
  %.val.i = load i64, ptr %i.i, align 8, !dbg !163651, !noundef !13
  %i.j = add i64 %.val.i, %.sroa.02.0.i, !dbg !163652
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163648
  %i.l = getelementptr i8, ptr %i.k, i64 40, !dbg !163651
  %.val.i.1 = load i64, ptr %i.l, align 8, !dbg !163651, !noundef !13
  %i.m = add i64 %.val.i.1, %i.j, !dbg !163652
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163648
  %i.o = getelementptr i8, ptr %i.n, i64 64, !dbg !163651
  %.val.i.2 = load i64, ptr %i.o, align 8, !dbg !163651, !noundef !13
  %i.p = add i64 %.val.i.2, %i.m, !dbg !163652
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !163648
  %i.r = getelementptr i8, ptr %i.q, i64 88, !dbg !163651
  %.val.i.3 = load i64, ptr %i.r, align 8, !dbg !163651, !noundef !13
  %i.s = add i64 %.val.i.3, %i.p, !dbg !163652    ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 4, !dbg !163657 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !163642 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !163642
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %.preheader, !dbg !163642

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !163642
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil.preheader, !dbg !163642

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0, !dbg !163642
  tail call void @llvm.assume(i1 %lcmp.mod10), !dbg !163642
  br label %.preheader.epil, !dbg !163642

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !163646 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.w, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !163647
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil, !dbg !163648
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !163651
  %.val.i.epil = load i64, ptr %i.v, align 8, !dbg !163651, !noundef !13
  %i.w = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !163652 ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !163657
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !163642 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !163642
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil, !dbg !163642, !llvm.loop !163660

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %6, %bb.a ], [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.w, %.preheader.epil ], !dbg !163661
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !163662
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !163664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !163667
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !163664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !163668
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !163664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !163669
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163664
  store i64 -1, ptr %i.ab, align 8, !dbg !163664
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !163664
  store i64 %.sroa.02.0, ptr %i.ac, align 8, !dbg !163664
  ret void, !dbg !163670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE8maybe_gcCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163671 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [160 x i8], align 8               ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !163672
  %i.h = load i64, ptr %i.g, align 8, !dbg !163672, !noundef !13
  %i.i = icmp ult i64 %i.h, 16385, !dbg !163672
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !163672

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !dbg !163673
  br label %bb.ag, !dbg !163674

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !163676
  %i.k = load ptr, ptr %i.j, align 8, !dbg !163676, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !163683
  %i.m = load atomic i64, ptr %i.l acquire, align 8, !dbg !163690
  %i.n = icmp eq i64 %i.m, 1, !dbg !163692
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !163692

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE15total_bytes_lenCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %1)
          to label %bb.f unwind label %bb.ah, !dbg !163693

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !dbg !163694
  br label %bb.ag, !dbg !163674

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !163695
  %i.q = load i64, ptr %i.p, align 8, !dbg !163695, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !163701
  %i.s = load ptr, ptr %i.r, align 8, !dbg !163701, !nonnull !13, !noundef !13 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !163710
  %i.u = load i64, ptr %i.t, align 8, !dbg !163710, !noundef !13 ; 5 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !163711
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.preheader, !dbg !163724

.preheader.preheader:                             ; preds = %bb.f
  %xtraiter = and i64 %i.u, 1, !dbg !163725
  %i.w = icmp eq i64 %i.u, 1, !dbg !163725
  br i1 %i.w, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !163725

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.u, -2, !dbg !163725
  br label %.preheader, !dbg !163725

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ao, %.preheader ], !dbg !163729 ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.an, %.preheader ], !dbg !163730
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i, !dbg !163731 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163734), !dbg !163737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163738), !dbg !163741
  %i.y = load ptr, ptr %i.x, align 8, !dbg !163744, !alias.scope !163753, !nonnull !13, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !163754
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !163761, !noalias !163753
  %i.ab = icmp ugt i64 %i.aa, 1, !dbg !163763
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !163763
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !163763, !alias.scope !163753
  %.sroa.0.0.i.i.i = select i1 %i.ab, i64 0, i64 %i.ad, !dbg !163763
  %i.ae = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i, !dbg !163764
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i, !dbg !163731 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !163731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163767), !dbg !163737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163769), !dbg !163741
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !163744, !alias.scope !163771, !nonnull !13, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !163754
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !dbg !163761, !noalias !163771
  %i.ak = icmp ugt i64 %i.aj, 1, !dbg !163763
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !163763
  %i.am = load i64, ptr %i.al, align 8, !dbg !163763, !alias.scope !163771
  %.sroa.0.0.i.i.i.1 = select i1 %i.ak, i64 0, i64 %i.am, !dbg !163763
  %i.an = add i64 %.sroa.0.0.i.i.i.1, %i.ae, !dbg !163764 ; 3 uses
  %i.ao = add nuw i64 %.sroa.04.0.i, 2, !dbg !163772 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !163725 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !163725
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %.preheader, !dbg !163725

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !163725
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.preheader.epil.preheader, !dbg !163725

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ao, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.an, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.u to i1, !dbg !163725
  tail call void @llvm.assume(i1 %lcmp.mod13), !dbg !163725
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.04.0.i.epil.init, !dbg !163731 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163734), !dbg !163737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163738), !dbg !163741
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !163744, !alias.scope !163753, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !163754
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !dbg !163761, !noalias !163753
  %i.at = icmp ugt i64 %i.as, 1, !dbg !163763
end_hunk_1
