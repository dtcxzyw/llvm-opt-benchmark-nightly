Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.07?download=true
inline.NumInlined: 8529
inline.NumDeleted: 2232
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 388
loop-unroll.NumUnrolled: 466
begin_hunk_0_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recursedNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1R_:bb.a
  store i32 %i.l, ptr %i.d, align 4, !dbg !182045
  br label %bb.f, !dbg !182046

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %i.l, %bb.e ], [ %i.h, %bb.d ]
  %i.n = lshr i64 %.sroa.20.0128, 2, !dbg !182047 ; 8 uses
  %i.o = shl nuw nsw i64 %i.n, 1, !dbg !182048    ; 7 uses
  %i.p = mul nuw nsw i64 %i.n, 3, !dbg !182049    ; 7 uses
  %i.q = icmp samesign ugt i64 %.sroa.20.0128, 49, !dbg !182050
  br i1 %i.q, label %bb.h, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i, !dbg !182050

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, %bb.f
  %.sroa.0.0102.i = phi i64 [ 0, %bb.f ], [ %spec.select.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !182051 ; 2 uses
  %.sroa.075.0.i = phi i64 [ %i.p, %bb.f ], [ %spec.select112.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !182052 ; 3 uses
  %.sroa.069.0.i = phi i64 [ %i.o, %bb.f ], [ %.sroa.069.6.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !182053 ; 4 uses
  %.sroa.0.078.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.0.4.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !182054 ; 4 uses
  %i.r = icmp samesign ult i64 %.sroa.069.0.i, %.sroa.20.0128, !dbg !182055
  call void @llvm.assume(i1 %i.r), !dbg !182056
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %.sroa.069.0.i, !dbg !182057
  %i.t = icmp samesign ult i64 %.sroa.0.078.i, %.sroa.20.0128, !dbg !182058
  call void @llvm.assume(i1 %i.t), !dbg !182059
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %.sroa.0.078.i, !dbg !182060
  %.val.i.i = load double, ptr %i.s, align 8, !dbg !182061, !alias.scope !181983, !noalias !181984, !noundef !5061 ; 3 uses
  %.val2.i.i = load double, ptr %i.u, align 8, !dbg !182061, !alias.scope !181985, !noalias !181984, !noundef !5061 ; 4 uses
  %i.v = fcmp ord double %.val2.i.i, 0.000000e+00, !dbg !182062
  %i.w = fcmp ult double %.val2.i.i, %.val.i.i, !dbg !182063
  %.not2.i.i.i.i.i.i = and i1 %i.v, %i.w, !dbg !182064
  br i1 %.not2.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i, !dbg !182061

bb.g:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i
  %i.x = add nuw nsw i64 %.sroa.0.0102.i, 1, !dbg !182065
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i, !dbg !182066

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i: ; preds = %bb.g, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i
  %.val2.i10.i = phi double [ %.val.i.i, %bb.g ], [ %.val2.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !182067 ; 2 uses
  %.val2.i6.i = phi double [ %.val2.i.i, %bb.g ], [ %.val.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !182068 ; 3 uses
  %.sroa.0.1103.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.0102.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !182069
  %.sroa.069.1.i = phi i64 [ %.sroa.0.078.i, %bb.g ], [ %.sroa.069.0.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !182069
  %.sroa.0.1.i = phi i64 [ %.sroa.069.0.i, %bb.g ], [ %.sroa.0.078.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !182069 ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.075.0.i, %.sroa.20.0128, !dbg !182070
  call void @llvm.assume(i1 %i.y), !dbg !182071
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %.sroa.075.0.i, !dbg !182072
  %.val.i5.i = load double, ptr %i.z, align 8, !dbg !182068, !alias.scope !181986, !noalias !181987, !noundef !5061 ; 2 uses
  %i.aa = fcmp ord double %.val2.i6.i, 0.000000e+00, !dbg !182073
  %i.ab = fcmp ult double %.val2.i6.i, %.val.i5.i, !dbg !182074
  %.not2.i.i.i.i.i7.i = and i1 %i.aa, %i.ab, !dbg !182075 ; 3 uses
  %.val.i9.i = select i1 %.not2.i.i.i.i.i7.i, double %.val.i5.i, double %.val2.i6.i, !dbg !182068
  %i.ac = zext i1 %.not2.i.i.i.i.i7.i to i64, !dbg !182068
  %.sroa.0.2104.i = add nuw nsw i64 %.sroa.0.1103.i, %i.ac, !dbg !182068 ; 2 uses
  %.sroa.069.2.i = select i1 %.not2.i.i.i.i.i7.i, i64 %.sroa.075.0.i, i64 %.sroa.069.1.i, !dbg !182068
  %i.ad = fcmp ord double %.val2.i10.i, 0.000000e+00, !dbg !182076
  %i.ae = fcmp ult double %.val2.i10.i, %.val.i9.i, !dbg !182077
  %.not2.i.i.i.i.i11.i = and i1 %i.ad, %i.ae, !dbg !182078
  br i1 %.not2.i.i.i.i.i11.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i, !dbg !182067

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i
  %i.af = icmp samesign ult i64 %.sroa.0.2104.i, 11, !dbg !182079
  br i1 %i.af, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i, label %bb.l, !dbg !182079

bb.h:                                             ; preds = %bb.f
  %i.ag = add nsw i64 %i.n, -1, !dbg !182080      ; 4 uses
  %i.ah = add nuw nsw i64 %i.n, 1, !dbg !182081   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.n, !dbg !182082
  %i.aj = icmp samesign ult i64 %i.ag, %.sroa.20.0128, !dbg !182083
  call void @llvm.assume(i1 %i.aj), !dbg !182084
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.ag, !dbg !182085
  %.val.i.i.i = load double, ptr %i.ai, align 8, !dbg !182086, !alias.scope !181988, !noalias !181989, !noundef !5061 ; 3 uses
  %.val2.i.i.i = load double, ptr %i.ak, align 8, !dbg !182086, !alias.scope !181990, !noalias !181989, !noundef !5061 ; 4 uses
  %i.al = fcmp ord double %.val2.i.i.i, 0.000000e+00, !dbg !182087
  %i.am = fcmp ult double %.val2.i.i.i, %.val.i.i.i, !dbg !182088
  %.not2.i.i.i.i.i.i.i = and i1 %i.al, %i.am, !dbg !182089
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i, !dbg !182086

bb.i:                                             ; preds = %bb.h
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i, !dbg !182090

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i: ; preds = %bb.i, %bb.h
  %.val2.i6.i.i = phi double [ %.val.i.i.i, %bb.i ], [ %.val2.i.i.i, %bb.h ], !dbg !182091 ; 2 uses
  %.sroa.0.3105.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ], !dbg !182051
  %.sroa.0.2.i = phi i64 [ %i.ag, %bb.i ], [ %i.n, %bb.h ], !dbg !182054
  %.val2.i2.i.i = phi double [ %.val2.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ], !dbg !182092 ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.i ], [ %i.ag, %bb.h ], !dbg !182093
  %i.an = icmp samesign ult i64 %i.ah, %.sroa.20.0128, !dbg !182094
  call void @llvm.assume(i1 %i.an), !dbg !182095
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.ah, !dbg !182096
  %.val.i1.i.i = load double, ptr %i.ao, align 8, !dbg !182092, !alias.scope !181991, !noalias !181992, !noundef !5061 ; 2 uses
  %i.ap = fcmp ord double %.val2.i2.i.i, 0.000000e+00, !dbg !182097
  %i.aq = fcmp ult double %.val2.i2.i.i, %.val.i1.i.i, !dbg !182098
  %.not2.i.i.i.i.i3.i.i = and i1 %i.ap, %i.aq, !dbg !182099 ; 3 uses
  %i.ar = zext i1 %.not2.i.i.i.i.i3.i.i to i64, !dbg !182092
  %.sroa.0.4106.i = add nuw nsw i64 %.sroa.0.3105.i, %i.ar, !dbg !182092
  %.sroa.0.3.i = select i1 %.not2.i.i.i.i.i3.i.i, i64 %i.ah, i64 %.sroa.0.2.i, !dbg !182092
  %.val.i5.i.i = select i1 %.not2.i.i.i.i.i3.i.i, double %.val.i1.i.i, double %.val2.i2.i.i, !dbg !182092
  %i.as = fcmp ord double %.val2.i6.i.i, 0.000000e+00, !dbg !182100
  %i.at = fcmp ult double %.val2.i6.i.i, %.val.i5.i.i, !dbg !182101
  %.not2.i.i.i.i.i7.i.i = and i1 %i.as, %i.at, !dbg !182102 ; 2 uses
  %i.au = zext i1 %.not2.i.i.i.i.i7.i.i to i64, !dbg !182091
  %.sroa.0.5.i = add nuw nsw i64 %.sroa.0.4106.i, %i.au, !dbg !182091 ; 2 uses
  %.sroa.0.4.i = select i1 %.not2.i.i.i.i.i7.i.i, i64 %.sroa.0.0.i.i, i64 %.sroa.0.3.i, !dbg !182091
  %i.av = add nsw i64 %i.o, -1, !dbg !182103      ; 4 uses
  %i.aw = or disjoint i64 %i.o, 1, !dbg !182104   ; 3 uses
  %i.ax = icmp samesign ult i64 %i.o, %.sroa.20.0128, !dbg !182105
  call void @llvm.assume(i1 %i.ax), !dbg !182106
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.o, !dbg !182107
  %i.az = icmp samesign ult i64 %i.av, %.sroa.20.0128, !dbg !182108
  call void @llvm.assume(i1 %i.az), !dbg !182109
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.av, !dbg !182110
  %.val.i.i13.i = load double, ptr %i.ay, align 8, !dbg !182111, !alias.scope !181993, !noalias !181994, !noundef !5061 ; 3 uses
  %.val2.i.i14.i = load double, ptr %i.ba, align 8, !dbg !182111, !alias.scope !181995, !noalias !181994, !noundef !5061 ; 4 uses
  %i.bb = fcmp ord double %.val2.i.i14.i, 0.000000e+00, !dbg !182112
  %i.bc = fcmp ult double %.val2.i.i14.i, %.val.i.i13.i, !dbg !182113
  %.not2.i.i.i.i.i.i15.i = and i1 %i.bb, %i.bc, !dbg !182114
  br i1 %.not2.i.i.i.i.i.i15.i, label %bb.j, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i, !dbg !182111

bb.j:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.5.i, 1, !dbg !182115
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i, !dbg !182116

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i: ; preds = %bb.j, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i
  %.val2.i6.i23.i = phi double [ %.val.i.i13.i, %bb.j ], [ %.val2.i.i14.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !182117 ; 2 uses
  %.sroa.0.6.i = phi i64 [ %i.bd, %bb.j ], [ %.sroa.0.5.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !182118
  %.sroa.069.4.i = phi i64 [ %i.av, %bb.j ], [ %i.o, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !182053
  %.val2.i2.i17.i = phi double [ %.val2.i.i14.i, %bb.j ], [ %.val.i.i13.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !182119 ; 3 uses
  %.sroa.0.0.i18.i = phi i64 [ %i.o, %bb.j ], [ %i.av, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !182120
  %i.be = icmp samesign ult i64 %i.aw, %.sroa.20.0128, !dbg !182121
  call void @llvm.assume(i1 %i.be), !dbg !182122
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.aw, !dbg !182123
  %.val.i1.i19.i = load double, ptr %i.bf, align 8, !dbg !182119, !alias.scope !181996, !noalias !181997, !noundef !5061 ; 2 uses
  %i.bg = fcmp ord double %.val2.i2.i17.i, 0.000000e+00, !dbg !182124
  %i.bh = fcmp ult double %.val2.i2.i17.i, %.val.i1.i19.i, !dbg !182125
  %.not2.i.i.i.i.i3.i20.i = and i1 %i.bg, %i.bh, !dbg !182126 ; 3 uses
  %i.bi = zext i1 %.not2.i.i.i.i.i3.i20.i to i64, !dbg !182119
  %.sroa.0.7.i = add nuw nsw i64 %.sroa.0.6.i, %i.bi, !dbg !182119
  %.sroa.069.5.i = select i1 %.not2.i.i.i.i.i3.i20.i, i64 %i.aw, i64 %.sroa.069.4.i, !dbg !182119
  %.val.i5.i22.i = select i1 %.not2.i.i.i.i.i3.i20.i, double %.val.i1.i19.i, double %.val2.i2.i17.i, !dbg !182119
  %i.bj = fcmp ord double %.val2.i6.i23.i, 0.000000e+00, !dbg !182127
  %i.bk = fcmp ult double %.val2.i6.i23.i, %.val.i5.i22.i, !dbg !182128
  %.not2.i.i.i.i.i7.i24.i = and i1 %i.bj, %i.bk, !dbg !182129 ; 2 uses
  %i.bl = zext i1 %.not2.i.i.i.i.i7.i24.i to i64, !dbg !182117
  %.sroa.0.8.i = add nuw nsw i64 %.sroa.0.7.i, %i.bl, !dbg !182117 ; 2 uses
  %.sroa.069.6.i = select i1 %.not2.i.i.i.i.i7.i24.i, i64 %.sroa.0.0.i18.i, i64 %.sroa.069.5.i, !dbg !182117
  %i.bm = add nsw i64 %i.p, -1, !dbg !182130      ; 4 uses
  %i.bn = add nuw nsw i64 %i.p, 1, !dbg !182131   ; 3 uses
  %i.bo = icmp samesign ult i64 %i.p, %.sroa.20.0128, !dbg !182132
  call void @llvm.assume(i1 %i.bo), !dbg !182133
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.p, !dbg !182134
  %i.bq = icmp samesign ult i64 %i.bm, %.sroa.20.0128, !dbg !182135
  call void @llvm.assume(i1 %i.bq), !dbg !182136
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.bm, !dbg !182137
  %.val.i.i40.i = load double, ptr %i.bp, align 8, !dbg !182138, !alias.scope !181998, !noalias !181999, !noundef !5061 ; 3 uses
  %.val2.i.i41.i = load double, ptr %i.br, align 8, !dbg !182138, !alias.scope !182000, !noalias !181999, !noundef !5061 ; 4 uses
  %i.bs = fcmp ord double %.val2.i.i41.i, 0.000000e+00, !dbg !182139
  %i.bt = fcmp ult double %.val2.i.i41.i, %.val.i.i40.i, !dbg !182140
  %.not2.i.i.i.i.i.i42.i = and i1 %i.bs, %i.bt, !dbg !182141
  br i1 %.not2.i.i.i.i.i.i42.i, label %bb.k, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, !dbg !182138

bb.k:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i
  %i.bu = add nuw nsw i64 %.sroa.0.8.i, 1, !dbg !182142
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, !dbg !182143

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i: ; preds = %bb.k, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i
  %.val2.i6.i50.i = phi double [ %.val.i.i40.i, %bb.k ], [ %.val2.i.i41.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !182144 ; 2 uses
  %.sroa.0.9.i = phi i64 [ %i.bu, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !182118
  %.sroa.075.1.i = phi i64 [ %i.bm, %bb.k ], [ %i.p, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !182052
  %.val2.i2.i44.i = phi double [ %.val2.i.i41.i, %bb.k ], [ %.val.i.i40.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !182145 ; 3 uses
  %.sroa.0.0.i45.i = phi i64 [ %i.p, %bb.k ], [ %i.bm, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !182146
  %i.bv = icmp samesign ult i64 %i.bn, %.sroa.20.0128, !dbg !182147
  call void @llvm.assume(i1 %i.bv), !dbg !182148
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %i.bn, !dbg !182149
  %.val.i1.i46.i = load double, ptr %i.bw, align 8, !dbg !182145, !alias.scope !182001, !noalias !182002, !noundef !5061 ; 2 uses
  %i.bx = fcmp ord double %.val2.i2.i44.i, 0.000000e+00, !dbg !182150
  %i.by = fcmp ult double %.val2.i2.i44.i, %.val.i1.i46.i, !dbg !182151
  %.not2.i.i.i.i.i3.i47.i = and i1 %i.bx, %i.by, !dbg !182152 ; 3 uses
  %i.bz = zext i1 %.not2.i.i.i.i.i3.i47.i to i64, !dbg !182145
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.bz, !dbg !182145
  %.sroa.075.2.i = select i1 %.not2.i.i.i.i.i3.i47.i, i64 %i.bn, i64 %.sroa.075.1.i, !dbg !182145
  %.val.i5.i49.i = select i1 %.not2.i.i.i.i.i3.i47.i, double %.val.i1.i46.i, double %.val2.i2.i44.i, !dbg !182145
  %i.ca = fcmp ord double %.val2.i6.i50.i, 0.000000e+00, !dbg !182153
  %i.cb = fcmp ult double %.val2.i6.i50.i, %.val.i5.i49.i, !dbg !182154
  %.not2.i.i.i.i.i7.i51.i = and i1 %i.ca, %i.cb, !dbg !182155 ; 2 uses
  %i.cc = zext i1 %.not2.i.i.i.i.i7.i51.i to i64, !dbg !182144
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.cc, !dbg !182144
  %spec.select112.i = select i1 %.not2.i.i.i.i.i7.i51.i, i64 %.sroa.0.0.i45.i, i64 %.sroa.075.2.i, !dbg !182144
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i, !dbg !182144

bb.l:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i
  %i.cd = lshr i64 %.sroa.20.0128, 1, !dbg !182156 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %.sroa.20.0128, !dbg !182157 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182003), !dbg !182158
  call void @llvm.experimental.noalias.scope.decl(metadata !182004), !dbg !182158
  %min.iters.check = icmp ult i64 %.sroa.20.0128, 8, !dbg !182159
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !182159

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.cd, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !182159

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !182160 ; 3 uses
  %i.cf = xor i64 %index, -1, !dbg !182161
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %index, !dbg !182162 ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.ce, i64 %i.cf, !dbg !182163 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !182164 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !dbg !182164, !alias.scope !182005
  %wide.load359 = load <2 x double>, ptr %i.ci, align 8, !dbg !182164, !alias.scope !182005
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8, !dbg !182164 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 -24, !dbg !182164 ; 2 uses
  %wide.load360 = load <2 x i64>, ptr %i.cj, align 8, !dbg !182164, !alias.scope !182006
  %wide.load361 = load <2 x i64>, ptr %i.ck, align 8, !dbg !182164, !alias.scope !182006
  %reverse = shufflevector <2 x i64> %wide.load360, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !182164
  %reverse362 = shufflevector <2 x i64> %wide.load361, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !182164
  store <2 x i64> %reverse, ptr %i.cg, align 8, !dbg !182164, !alias.scope !182005
  store <2 x i64> %reverse362, ptr %i.ci, align 8, !dbg !182164, !alias.scope !182005
  %reverse363 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !182164
  %reverse364 = shufflevector <2 x double> %wide.load359, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !182164
  store <2 x double> %reverse363, ptr %i.cj, align 8, !dbg !182164, !alias.scope !182006
  store <2 x double> %reverse364, ptr %i.ck, align 8, !dbg !182164, !alias.scope !182006
  %index.next = add nuw i64 %index, 4, !dbg !182160 ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec, !dbg !182159
  br i1 %i.cl, label %middle.block, label %vector.body, !dbg !182159, !llvm.loop !181684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec, !dbg !182159
  br i1 %cmp.n, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !182159

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %bb.l, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %bb.l ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !182159

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cr, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.cm = xor i64 %.sroa.0.016.i.i, -1, !dbg !182161
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129, i64 %.sroa.0.016.i.i, !dbg !182162 ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ce, i64 %i.cm, !dbg !182163 ; 2 uses
  %i.cp = load double, ptr %i.cn, align 8, !dbg !182164, !alias.scope !182005, !noundef !5061
  %i.cq = load i64, ptr %i.co, align 8, !dbg !182164, !alias.scope !182006
  store i64 %i.cq, ptr %i.cn, align 8, !dbg !182164, !alias.scope !182005
  store double %i.cp, ptr %i.co, align 8, !dbg !182164, !alias.scope !182006
  %i.cr = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !182160 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.cd, !dbg !182159
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !182159, !llvm.loop !181685

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block
  %i.cs = xor i64 %.sroa.0.1.i, -1, !dbg !182165
  %i.ct = add nsw i64 %.sroa.20.0128, %i.cs, !dbg !182165
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit, !dbg !182166

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i
  %.sroa.069.3111.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i ], [ %.sroa.069.2.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i ]
  %i.cu = phi i64 [ 1, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i ], [ %.sroa.0.2104.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i ]
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !182167
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit, !dbg !182166

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cv, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i ], [ true, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !182168
  %.sroa.0.0.i = phi i64 [ %.sroa.069.3111.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i ], [ %i.ct, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !182168 ; 6 uses
  %i.cw = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !dbg !182169, !prof !5846
  br i1 %i.cw, label %bb.n, label %bb.m, !dbg !182169, !prof !5820

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit
  %i.cx = phi i32 [ %.pre, %bb.n ], [ %i.m, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit ] ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o, !dbg !182170

bb.n:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit
  %i.cy = call fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias noundef nonnull align 8 %.sroa.0.0129, i64 noundef %.sroa.20.0128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !182171
  %.pre = load i32, ptr %i.d, align 4, !dbg !182039
  br i1 %i.cy, label %.loopexit, label %bb.m, !dbg !182171

bb.o:                                             ; preds = %bb.m
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0128, !dbg !182172
  br i1 %i.cz, label %bb.ad, label %bb.ae, !dbg !182172

bb.p:                                             ; preds = %bb.ad, %bb.m
  %.sroa.0.0129.lcssa154 = phi ptr [ %.sroa.0.0129, %bb.ad ], [ %.sroa.0.0.ph137, %bb.m ] ; 12 uses
  %.sroa.20.0128.lcssa145 = phi i64 [ %.sroa.20.0128, %bb.ad ], [ %.sroa.20.0.ph136, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182007), !dbg !182173
  %i.da = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0128.lcssa145, !dbg !182174
  br i1 %i.da, label %bb.r, label %bb.q, !dbg !182174

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 1152921504606846976) %.sroa.20.0128.lcssa145, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !dbg !182174, !noalias !182007
  unreachable, !dbg !182174

bb.r:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129.lcssa154, i64 %.sroa.0.0.i, !dbg !182175 ; 2 uses
  %.sroa.013.0.copyload.i = load i64, ptr %.sroa.0.0129.lcssa154, align 8, !dbg !182176, !alias.scope !182007
  %i.dc = load i64, ptr %i.db, align 8, !dbg !182177, !alias.scope !182007
  store i64 %i.dc, ptr %.sroa.0.0129.lcssa154, align 8, !dbg !182177, !alias.scope !182007
  store i64 %.sroa.013.0.copyload.i, ptr %i.db, align 8, !dbg !182178, !alias.scope !182007
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0129.lcssa154, i64 8, !dbg !182179 ; 3 uses
  %i.de = add nsw i64 %.sroa.20.0128.lcssa145, -1, !dbg !182180 ; 7 uses
  %i.df = load double, ptr %.sroa.0.0129.lcssa154, align 8, !dbg !182181, !alias.scope !182007, !noundef !5061 ; 13 uses
  %i.dg = fcmp uno double %i.df, 0.000000e+00     ; 9 uses
  br i1 %i.dg, label %.split14.us.thread.i, label %.lr.ph.split.i, !dbg !182182

._crit_edge.split.i:                              ; preds = %bb.s, %.lr.ph.split.i
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.010.i, %.lr.ph.split.i ], [ %i.de, %bb.s ], !dbg !182183 ; 5 uses
  %i.dh = icmp ult i64 %.sroa.0.0.lcssa.i, %i.de, !dbg !182184
  br i1 %i.dh, label %.lr.ph356, label %.split14.us.i, !dbg !182184

.lr.ph.split.i:                                   ; preds = %bb.r, %bb.s
  %.sroa.0.010.i = phi i64 [ %i.dk, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.0.010.i, !dbg !182185
  %.val23.i = load double, ptr %i.di, align 8, !dbg !182186, !alias.scope !182008, !noundef !5061
  %i.dj = fcmp ult double %i.df, %.val23.i, !dbg !182187
  br i1 %i.dj, label %bb.s, label %._crit_edge.split.i, !dbg !182186

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.dk = add nuw nsw i64 %.sroa.0.010.i, 1, !dbg !182188 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.de, !dbg !182182
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %.lr.ph.split.i, !dbg !182182

.split.i:                                         ; preds = %.lr.ph356
  %i.dl = icmp ult i64 %.sroa.0.0.lcssa.i, %i.dn, !dbg !182184
  br i1 %i.dl, label %.lr.ph356, label %.split14.us.i, !dbg !182184

.split14.us.i:                                    ; preds = %.split.i, %.lr.ph356, %._crit_edge.split.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.de, %._crit_edge.split.i ], [ %i.dn, %.split.i ], [ %.sroa.07.0.i355, %.lr.ph356 ], !dbg !182189 ; 3 uses
  %i.dm = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.i, !dbg !182190
  br i1 %i.dm, label %bb.ab, label %.split14.us.thread.i, !dbg !182190, !prof !5850

.lr.ph356:                                        ; preds = %._crit_edge.split.i, %.split.i
  %.sroa.07.0.i355 = phi i64 [ %i.dn, %.split.i ], [ %i.de, %._crit_edge.split.i ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.07.0.i355, -1, !dbg !182191 ; 4 uses
  %i.do = icmp ult i64 %i.dn, %i.de, !dbg !182192
  call void @llvm.assume(i1 %i.do), !dbg !182193
  %i.dp = getelementptr [8 x i8], ptr %.sroa.0.0129.lcssa154, i64 %.sroa.07.0.i355, !dbg !182194
  %.val.i = load double, ptr %i.dp, align 8, !dbg !182195, !alias.scope !182008, !noundef !5061
  %i.dq = fcmp ult double %i.df, %.val.i, !dbg !182196
  br i1 %i.dq, label %.split14.us.i, label %.split.i, !dbg !182195

.split14.us.thread.i:                             ; preds = %bb.r, %.split14.us.i
  %.us-phi43.i = phi i64 [ %.sroa.07.0.i.lcssa, %.split14.us.i ], [ 0, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa3842.i = phi i64 [ %.sroa.0.0.lcssa.i, %.split14.us.i ], [ 0, %bb.r ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.0.0.lcssa3842.i, !dbg !182197 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182010), !dbg !182198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !182199, !noalias !182011
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.us-phi43.i, !dbg !182200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !182201, !noalias !182011
  br label %bb.t, !dbg !182202

bb.t:                                             ; preds = %bb.x, %.split14.us.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.084.1.i.i, %bb.x ], !dbg !182203 ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.068.1.i.i, %bb.x ], !dbg !182204 ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.046.2.i.i, %bb.x ], !dbg !182205 ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split14.us.thread.i ], [ %.sroa.044.1.i.i, %bb.x ], !dbg !182206 ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.ds, %.split14.us.thread.i ], [ %.sroa.032.1.i.i, %bb.x ], !dbg !182207 ; 12 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.018.2.i.i, %bb.x ], !dbg !182208 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split14.us.thread.i ], [ %.sroa.015.1.i.i, %bb.x ], !dbg !182209 ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.dr, %.split14.us.thread.i ], [ %spec.select.i.i, %bb.x ], !dbg !182210 ; 8 uses
  %i.dt = ptrtoint ptr %.sroa.032.0.i.i to i64, !dbg !182211
  %i.du = ptrtoint ptr %.sroa.01.0.i.i to i64, !dbg !182212
  %i.dv = sub i64 %i.dt, %i.du, !dbg !182213      ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 2056, !dbg !182214  ; 2 uses
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !182215

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.t ], [ %.sroa.060.0.mux.i.i, %bb.v ], [ %i.ee, %bb.w ], !dbg !182206 ; 7 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.t ], [ %.sroa.015.0.mux.i.i, %bb.v ], [ %i.ed, %bb.w ], !dbg !182216 ; 6 uses
  %i.dx = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !182217
  br i1 %i.dx, label %.preheader8.i.i, label %.loopexit9.i.i, !dbg !182217

.preheader8.i.i:                                  ; preds = %bb.u
  %.not28.i.i = icmp eq i64 %.sroa.015.1.i.i, 0, !dbg !182218
  br i1 %.not28.i.i, label %.loopexit9.i.i, label %.lr.ph.i.i.preheader, !dbg !182219

.lr.ph.i.i.preheader:                             ; preds = %.preheader8.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 3, !dbg !182219 ; 3 uses
  %i.dy = icmp ult i64 %.sroa.015.1.i.i, 4, !dbg !182219
  br i1 %i.dy, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !182219

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -4, !dbg !182219
  br label %.lr.ph.i.i, !dbg !182219

bb.v:                                             ; preds = %bb.t
  %i.dz = lshr i64 %i.dv, 3, !dbg !182213         ; 3 uses
  %i.ea = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !182220 ; 3 uses
  %i.eb = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.ea, i1 true, i1 %i.eb, !dbg !182220 ; 2 uses
  %i.ec = add nsw i64 %i.dz, -128, !dbg !182220   ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.ec, i64 %i.dz, !dbg !182220
  %.sroa.060.0.mux.i.i = select i1 %i.ea, i64 %i.ec, i64 %.sroa.044.0.i.i, !dbg !182221
  %.sroa.015.0.mux.i.i = select i1 %i.ea, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i, !dbg !182221
  br i1 %or.cond.i.i, label %bb.u, label %bb.w, !dbg !182221

bb.w:                                             ; preds = %bb.v
  %i.ed = lshr i64 %i.dv, 4, !dbg !182222         ; 2 uses
  %i.ee = sub nsw i64 %i.dz, %i.ed, !dbg !182223
  br label %bb.u, !dbg !182224

.loopexit9.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !182219
  br i1 %lcmp.mod.not, label %.loopexit9.i.i, label %.lr.ph.i.i.epil.preheader, !dbg !182219

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit9.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.012.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.fa, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.068.211.i.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.i.preheader ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.0106.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ew, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %lcmp.mod435 = icmp ne i64 %xtraiter, 0, !dbg !182219
  call void @llvm.assume(i1 %lcmp.mod435), !dbg !182219
  br label %.lr.ph.i.i.epil, !dbg !182219

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.012.i.i.epil = phi ptr [ %i.ei, %.lr.ph.i.i.epil ], [ %.sroa.065.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.211.i.i.epil = phi ptr [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.211.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0106.010.i.i.epil = phi i64 [ %i.ef, %.lr.ph.i.i.epil ], [ %.sroa.0106.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ef = add nuw i64 %.sroa.0106.010.i.i.epil, 1, !dbg !182225
  %i.eg = trunc i64 %.sroa.0106.010.i.i.epil to i8, !dbg !182226
  store i8 %i.eg, ptr %.sroa.068.211.i.i.epil, align 1, !dbg !182226, !noalias !182011
  %.sroa.065.0.val.i.i.epil = load double, ptr %.sroa.065.012.i.i.epil, align 8, !dbg !182227, !alias.scope !182013, !noundef !5061
  %i.eh = fcmp oge double %i.df, %.sroa.065.0.val.i.i.epil, !dbg !182228
  %.not2.i.i.i.i.not.i.i.epil = or i1 %i.dg, %i.eh, !dbg !182229
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %.not2.i.i.i.i.not.i.i.epil to i64, !dbg !182230
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.211.i.i.epil, i64 %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx, !dbg !182230 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.065.012.i.i.epil, i64 8, !dbg !182231
end_hunk_0
begin_hunk_1_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recursedNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  store i32 %i.l, ptr %i.d, align 4, !dbg !182975
  br label %bb.f, !dbg !182976

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %i.l, %bb.e ], [ %i.h, %bb.d ]
  %i.n = lshr i64 %.sroa.20.0134, 2, !dbg !182977 ; 8 uses
  %i.o = shl nuw nsw i64 %i.n, 1, !dbg !182978    ; 7 uses
  %i.p = mul nuw nsw i64 %i.n, 3, !dbg !182979    ; 7 uses
  %i.q = icmp samesign ugt i64 %.sroa.20.0134, 49, !dbg !182980
  br i1 %i.q, label %bb.h, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i, !dbg !182980

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, %bb.f
  %.sroa.0.0102.i = phi i64 [ 0, %bb.f ], [ %spec.select.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !182981 ; 2 uses
  %.sroa.075.0.i = phi i64 [ %i.p, %bb.f ], [ %spec.select112.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !182982 ; 3 uses
  %.sroa.069.0.i = phi i64 [ %i.o, %bb.f ], [ %.sroa.069.6.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !182983 ; 4 uses
  %.sroa.0.078.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.0.4.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !182984 ; 4 uses
  %i.r = icmp samesign ult i64 %.sroa.069.0.i, %.sroa.20.0134, !dbg !182985
  call void @llvm.assume(i1 %i.r), !dbg !182986
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.sroa.069.0.i, !dbg !182987
  %i.t = icmp samesign ult i64 %.sroa.0.078.i, %.sroa.20.0134, !dbg !182988
  call void @llvm.assume(i1 %i.t), !dbg !182989
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.078.i, !dbg !182990
  %.val.i.i = load double, ptr %i.s, align 8, !dbg !182991, !alias.scope !182913, !noalias !182914, !noundef !5061 ; 4 uses
  %.val2.i.i = load double, ptr %i.u, align 8, !dbg !182991, !alias.scope !182915, !noalias !182914, !noundef !5061 ; 3 uses
  %i.v = fcmp ord double %.val.i.i, 0.000000e+00, !dbg !182992
  %i.w = fcmp ult double %.val.i.i, %.val2.i.i, !dbg !182993
  %.not2.i.i.i.i.i = and i1 %i.v, %i.w, !dbg !182994
  br i1 %.not2.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !182991

bb.g:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i
  %i.x = add nuw nsw i64 %.sroa.0.0102.i, 1, !dbg !182995
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !182996

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.g, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i
  %.val2.i10.i = phi double [ %.val.i.i, %bb.g ], [ %.val2.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !182997
  %.val2.i6.i = phi double [ %.val2.i.i, %bb.g ], [ %.val.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !182998 ; 2 uses
  %.sroa.0.1103.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.0102.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !182999
  %.sroa.069.1.i = phi i64 [ %.sroa.0.078.i, %bb.g ], [ %.sroa.069.0.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !182999
  %.sroa.0.1.i = phi i64 [ %.sroa.069.0.i, %bb.g ], [ %.sroa.0.078.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !182999 ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.075.0.i, %.sroa.20.0134, !dbg !183000
  call void @llvm.assume(i1 %i.y), !dbg !183001
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.sroa.075.0.i, !dbg !183002
  %.val.i5.i = load double, ptr %i.z, align 8, !dbg !182998, !alias.scope !182916, !noalias !182917, !noundef !5061 ; 3 uses
  %i.aa = fcmp ord double %.val.i5.i, 0.000000e+00, !dbg !183003
  %i.ab = fcmp ult double %.val.i5.i, %.val2.i6.i, !dbg !183004
  %.not2.i.i.i.i7.i = and i1 %i.aa, %i.ab, !dbg !183005 ; 3 uses
  %.val.i9.i = select i1 %.not2.i.i.i.i7.i, double %.val.i5.i, double %.val2.i6.i, !dbg !182998 ; 2 uses
  %i.ac = zext i1 %.not2.i.i.i.i7.i to i64, !dbg !182998
  %.sroa.0.2104.i = add nuw nsw i64 %.sroa.0.1103.i, %i.ac, !dbg !182998 ; 2 uses
  %.sroa.069.2.i = select i1 %.not2.i.i.i.i7.i, i64 %.sroa.075.0.i, i64 %.sroa.069.1.i, !dbg !182998
  %i.ad = fcmp ord double %.val.i9.i, 0.000000e+00, !dbg !183006
  %i.ae = fcmp ult double %.val.i9.i, %.val2.i10.i, !dbg !183007
  %.not2.i.i.i.i11.i = and i1 %i.ad, %i.ae, !dbg !183008
  br i1 %.not2.i.i.i.i11.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i, !dbg !182997

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %i.af = icmp samesign ult i64 %.sroa.0.2104.i, 11, !dbg !183009
  br i1 %i.af, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i, label %bb.l, !dbg !183009

bb.h:                                             ; preds = %bb.f
  %i.ag = add nsw i64 %i.n, -1, !dbg !183010      ; 4 uses
  %i.ah = add nuw nsw i64 %i.n, 1, !dbg !183011   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.n, !dbg !183012
  %i.aj = icmp samesign ult i64 %i.ag, %.sroa.20.0134, !dbg !183013
  call void @llvm.assume(i1 %i.aj), !dbg !183014
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.ag, !dbg !183015
  %.val.i.i.i = load double, ptr %i.ai, align 8, !dbg !183016, !alias.scope !182918, !noalias !182919, !noundef !5061 ; 4 uses
  %.val2.i.i.i = load double, ptr %i.ak, align 8, !dbg !183016, !alias.scope !182920, !noalias !182919, !noundef !5061 ; 3 uses
  %i.al = fcmp ord double %.val.i.i.i, 0.000000e+00, !dbg !183017
  %i.am = fcmp ult double %.val.i.i.i, %.val2.i.i.i, !dbg !183018
  %.not2.i.i.i.i.i.i = and i1 %i.al, %i.am, !dbg !183019
  br i1 %.not2.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !183016

bb.i:                                             ; preds = %bb.h
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !183020

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.val2.i6.i.i = phi double [ %.val.i.i.i, %bb.i ], [ %.val2.i.i.i, %bb.h ], !dbg !183021
  %.sroa.0.3105.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ], !dbg !182981
  %.sroa.0.2.i = phi i64 [ %i.ag, %bb.i ], [ %i.n, %bb.h ], !dbg !182984
  %.val2.i2.i.i = phi double [ %.val2.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ], !dbg !183022 ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.i ], [ %i.ag, %bb.h ], !dbg !183023
  %i.an = icmp samesign ult i64 %i.ah, %.sroa.20.0134, !dbg !183024
  call void @llvm.assume(i1 %i.an), !dbg !183025
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.ah, !dbg !183026
  %.val.i1.i.i = load double, ptr %i.ao, align 8, !dbg !183022, !alias.scope !182921, !noalias !182922, !noundef !5061 ; 3 uses
  %i.ap = fcmp ord double %.val.i1.i.i, 0.000000e+00, !dbg !183027
  %i.aq = fcmp ult double %.val.i1.i.i, %.val2.i2.i.i, !dbg !183028
  %.not2.i.i.i.i3.i.i = and i1 %i.ap, %i.aq, !dbg !183029 ; 3 uses
  %i.ar = zext i1 %.not2.i.i.i.i3.i.i to i64, !dbg !183022
  %.sroa.0.4106.i = add nuw nsw i64 %.sroa.0.3105.i, %i.ar, !dbg !183022
  %.sroa.0.3.i = select i1 %.not2.i.i.i.i3.i.i, i64 %i.ah, i64 %.sroa.0.2.i, !dbg !183022
  %.val.i5.i.i = select i1 %.not2.i.i.i.i3.i.i, double %.val.i1.i.i, double %.val2.i2.i.i, !dbg !183022 ; 2 uses
  %i.as = fcmp ord double %.val.i5.i.i, 0.000000e+00, !dbg !183030
  %i.at = fcmp ult double %.val.i5.i.i, %.val2.i6.i.i, !dbg !183031
  %.not2.i.i.i.i7.i.i = and i1 %i.as, %i.at, !dbg !183032 ; 2 uses
  %i.au = zext i1 %.not2.i.i.i.i7.i.i to i64, !dbg !183021
  %.sroa.0.5.i = add nuw nsw i64 %.sroa.0.4106.i, %i.au, !dbg !183021 ; 2 uses
  %.sroa.0.4.i = select i1 %.not2.i.i.i.i7.i.i, i64 %.sroa.0.0.i.i, i64 %.sroa.0.3.i, !dbg !183021
  %i.av = add nsw i64 %i.o, -1, !dbg !183033      ; 4 uses
  %i.aw = or disjoint i64 %i.o, 1, !dbg !183034   ; 3 uses
  %i.ax = icmp samesign ult i64 %i.o, %.sroa.20.0134, !dbg !183035
  call void @llvm.assume(i1 %i.ax), !dbg !183036
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.o, !dbg !183037
  %i.az = icmp samesign ult i64 %i.av, %.sroa.20.0134, !dbg !183038
  call void @llvm.assume(i1 %i.az), !dbg !183039
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.av, !dbg !183040
  %.val.i.i13.i = load double, ptr %i.ay, align 8, !dbg !183041, !alias.scope !182923, !noalias !182924, !noundef !5061 ; 4 uses
  %.val2.i.i14.i = load double, ptr %i.ba, align 8, !dbg !183041, !alias.scope !182925, !noalias !182924, !noundef !5061 ; 3 uses
  %i.bb = fcmp ord double %.val.i.i13.i, 0.000000e+00, !dbg !183042
  %i.bc = fcmp ult double %.val.i.i13.i, %.val2.i.i14.i, !dbg !183043
  %.not2.i.i.i.i.i15.i = and i1 %i.bb, %i.bc, !dbg !183044
  br i1 %.not2.i.i.i.i.i15.i, label %bb.j, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i, !dbg !183041

bb.j:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.5.i, 1, !dbg !183045
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i, !dbg !183046

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i: ; preds = %bb.j, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %.val2.i6.i23.i = phi double [ %.val.i.i13.i, %bb.j ], [ %.val2.i.i14.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !183047
  %.sroa.0.6.i = phi i64 [ %i.bd, %bb.j ], [ %.sroa.0.5.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !183048
  %.sroa.069.4.i = phi i64 [ %i.av, %bb.j ], [ %i.o, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !182983
  %.val2.i2.i17.i = phi double [ %.val2.i.i14.i, %bb.j ], [ %.val.i.i13.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !183049 ; 2 uses
  %.sroa.0.0.i18.i = phi i64 [ %i.o, %bb.j ], [ %i.av, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !183050
  %i.be = icmp samesign ult i64 %i.aw, %.sroa.20.0134, !dbg !183051
  call void @llvm.assume(i1 %i.be), !dbg !183052
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.aw, !dbg !183053
  %.val.i1.i19.i = load double, ptr %i.bf, align 8, !dbg !183049, !alias.scope !182926, !noalias !182927, !noundef !5061 ; 3 uses
  %i.bg = fcmp ord double %.val.i1.i19.i, 0.000000e+00, !dbg !183054
  %i.bh = fcmp ult double %.val.i1.i19.i, %.val2.i2.i17.i, !dbg !183055
  %.not2.i.i.i.i3.i20.i = and i1 %i.bg, %i.bh, !dbg !183056 ; 3 uses
  %i.bi = zext i1 %.not2.i.i.i.i3.i20.i to i64, !dbg !183049
  %.sroa.0.7.i = add nuw nsw i64 %.sroa.0.6.i, %i.bi, !dbg !183049
  %.sroa.069.5.i = select i1 %.not2.i.i.i.i3.i20.i, i64 %i.aw, i64 %.sroa.069.4.i, !dbg !183049
  %.val.i5.i22.i = select i1 %.not2.i.i.i.i3.i20.i, double %.val.i1.i19.i, double %.val2.i2.i17.i, !dbg !183049 ; 2 uses
  %i.bj = fcmp ord double %.val.i5.i22.i, 0.000000e+00, !dbg !183057
  %i.bk = fcmp ult double %.val.i5.i22.i, %.val2.i6.i23.i, !dbg !183058
  %.not2.i.i.i.i7.i24.i = and i1 %i.bj, %i.bk, !dbg !183059 ; 2 uses
  %i.bl = zext i1 %.not2.i.i.i.i7.i24.i to i64, !dbg !183047
  %.sroa.0.8.i = add nuw nsw i64 %.sroa.0.7.i, %i.bl, !dbg !183047 ; 2 uses
  %.sroa.069.6.i = select i1 %.not2.i.i.i.i7.i24.i, i64 %.sroa.0.0.i18.i, i64 %.sroa.069.5.i, !dbg !183047
  %i.bm = add nsw i64 %i.p, -1, !dbg !183060      ; 4 uses
  %i.bn = add nuw nsw i64 %i.p, 1, !dbg !183061   ; 3 uses
  %i.bo = icmp samesign ult i64 %i.p, %.sroa.20.0134, !dbg !183062
  call void @llvm.assume(i1 %i.bo), !dbg !183063
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.p, !dbg !183064
  %i.bq = icmp samesign ult i64 %i.bm, %.sroa.20.0134, !dbg !183065
  call void @llvm.assume(i1 %i.bq), !dbg !183066
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.bm, !dbg !183067
  %.val.i.i40.i = load double, ptr %i.bp, align 8, !dbg !183068, !alias.scope !182928, !noalias !182929, !noundef !5061 ; 4 uses
  %.val2.i.i41.i = load double, ptr %i.br, align 8, !dbg !183068, !alias.scope !182930, !noalias !182929, !noundef !5061 ; 3 uses
  %i.bs = fcmp ord double %.val.i.i40.i, 0.000000e+00, !dbg !183069
  %i.bt = fcmp ult double %.val.i.i40.i, %.val2.i.i41.i, !dbg !183070
  %.not2.i.i.i.i.i42.i = and i1 %i.bs, %i.bt, !dbg !183071
  br i1 %.not2.i.i.i.i.i42.i, label %bb.k, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, !dbg !183068

bb.k:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i
  %i.bu = add nuw nsw i64 %.sroa.0.8.i, 1, !dbg !183072
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, !dbg !183073

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i: ; preds = %bb.k, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i
  %.val2.i6.i50.i = phi double [ %.val.i.i40.i, %bb.k ], [ %.val2.i.i41.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !183074
  %.sroa.0.9.i = phi i64 [ %i.bu, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !183048
  %.sroa.075.1.i = phi i64 [ %i.bm, %bb.k ], [ %i.p, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !182982
  %.val2.i2.i44.i = phi double [ %.val2.i.i41.i, %bb.k ], [ %.val.i.i40.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !183075 ; 2 uses
  %.sroa.0.0.i45.i = phi i64 [ %i.p, %bb.k ], [ %i.bm, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !183076
  %i.bv = icmp samesign ult i64 %i.bn, %.sroa.20.0134, !dbg !183077
  call void @llvm.assume(i1 %i.bv), !dbg !183078
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %i.bn, !dbg !183079
  %.val.i1.i46.i = load double, ptr %i.bw, align 8, !dbg !183075, !alias.scope !182931, !noalias !182932, !noundef !5061 ; 3 uses
  %i.bx = fcmp ord double %.val.i1.i46.i, 0.000000e+00, !dbg !183080
  %i.by = fcmp ult double %.val.i1.i46.i, %.val2.i2.i44.i, !dbg !183081
  %.not2.i.i.i.i3.i47.i = and i1 %i.bx, %i.by, !dbg !183082 ; 3 uses
  %i.bz = zext i1 %.not2.i.i.i.i3.i47.i to i64, !dbg !183075
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.bz, !dbg !183075
  %.sroa.075.2.i = select i1 %.not2.i.i.i.i3.i47.i, i64 %i.bn, i64 %.sroa.075.1.i, !dbg !183075
  %.val.i5.i49.i = select i1 %.not2.i.i.i.i3.i47.i, double %.val.i1.i46.i, double %.val2.i2.i44.i, !dbg !183075 ; 2 uses
  %i.ca = fcmp ord double %.val.i5.i49.i, 0.000000e+00, !dbg !183083
  %i.cb = fcmp ult double %.val.i5.i49.i, %.val2.i6.i50.i, !dbg !183084
  %.not2.i.i.i.i7.i51.i = and i1 %i.ca, %i.cb, !dbg !183085 ; 2 uses
  %i.cc = zext i1 %.not2.i.i.i.i7.i51.i to i64, !dbg !183074
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.cc, !dbg !183074
  %spec.select112.i = select i1 %.not2.i.i.i.i7.i51.i, i64 %.sroa.0.0.i45.i, i64 %.sroa.075.2.i, !dbg !183074
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i, !dbg !183074

bb.l:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i
  %i.cd = lshr i64 %.sroa.20.0134, 1, !dbg !183086 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.sroa.20.0134, !dbg !183087 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182933), !dbg !183088
  call void @llvm.experimental.noalias.scope.decl(metadata !182934), !dbg !183088
  %min.iters.check = icmp ult i64 %.sroa.20.0134, 8, !dbg !183089
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !183089

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.cd, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !183089

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !183090 ; 3 uses
  %i.cf = xor i64 %index, -1, !dbg !183091
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %index, !dbg !183092 ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.ce, i64 %i.cf, !dbg !183093 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !183094 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !dbg !183094, !alias.scope !182935
  %wide.load396 = load <2 x double>, ptr %i.ci, align 8, !dbg !183094, !alias.scope !182935
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8, !dbg !183094 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 -24, !dbg !183094 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.cj, align 8, !dbg !183094, !alias.scope !182936
  %wide.load398 = load <2 x i64>, ptr %i.ck, align 8, !dbg !183094, !alias.scope !182936
  %reverse = shufflevector <2 x i64> %wide.load397, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !183094
  %reverse399 = shufflevector <2 x i64> %wide.load398, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !183094
  store <2 x i64> %reverse, ptr %i.cg, align 8, !dbg !183094, !alias.scope !182935
  store <2 x i64> %reverse399, ptr %i.ci, align 8, !dbg !183094, !alias.scope !182935
  %reverse400 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !183094
  %reverse401 = shufflevector <2 x double> %wide.load396, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !183094
  store <2 x double> %reverse400, ptr %i.cj, align 8, !dbg !183094, !alias.scope !182936
  store <2 x double> %reverse401, ptr %i.ck, align 8, !dbg !183094, !alias.scope !182936
  %index.next = add nuw i64 %index, 4, !dbg !183090 ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec, !dbg !183089
  br i1 %i.cl, label %middle.block, label %vector.body, !dbg !183089, !llvm.loop !182620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec, !dbg !183089
  br i1 %cmp.n, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !183089

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %bb.l, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %bb.l ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !183089

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cr, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.cm = xor i64 %.sroa.0.016.i.i, -1, !dbg !183091
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.016.i.i, !dbg !183092 ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ce, i64 %i.cm, !dbg !183093 ; 2 uses
  %i.cp = load double, ptr %i.cn, align 8, !dbg !183094, !alias.scope !182935, !noundef !5061
  %i.cq = load i64, ptr %i.co, align 8, !dbg !183094, !alias.scope !182936
  store i64 %i.cq, ptr %i.cn, align 8, !dbg !183094, !alias.scope !182935
  store double %i.cp, ptr %i.co, align 8, !dbg !183094, !alias.scope !182936
  %i.cr = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !183090 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.cd, !dbg !183089
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !183089, !llvm.loop !182621

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block
  %i.cs = xor i64 %.sroa.0.1.i, -1, !dbg !183095
  %i.ct = add nsw i64 %.sroa.20.0134, %i.cs, !dbg !183095
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !183096

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.069.3111.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i ], [ %.sroa.069.2.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.cu = phi i64 [ 1, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i ], [ %.sroa.0.2104.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !183097
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !183096

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cv, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i ], [ true, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !183098
  %.sroa.0.0.i = phi i64 [ %.sroa.069.3111.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB6_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i ], [ %i.ct, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapdECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !183098 ; 6 uses
  %i.cw = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !dbg !183099, !prof !5846
  br i1 %i.cw, label %bb.n, label %bb.m, !dbg !183099, !prof !5820

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.cx = phi i32 [ %.pre, %bb.n ], [ %i.m, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o, !dbg !183100

bb.n:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.cy = call fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortdNCINvYSdINtB4_16ParallelSliceMutdE20par_sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %.sroa.0.0135, i64 noundef %.sroa.20.0134, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !183101
  %.pre = load i32, ptr %i.d, align 4, !dbg !182969
  br i1 %i.cy, label %.loopexit, label %bb.m, !dbg !183101

bb.o:                                             ; preds = %bb.m
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134, !dbg !183102
  br i1 %i.cz, label %bb.ae, label %bb.af, !dbg !183102

bb.p:                                             ; preds = %bb.ae, %bb.m
  %.sroa.0.0135.lcssa161 = phi ptr [ %.sroa.0.0135, %bb.ae ], [ %.sroa.0.0.ph143, %bb.m ] ; 12 uses
  %.sroa.20.0134.lcssa152 = phi i64 [ %.sroa.20.0134, %bb.ae ], [ %.sroa.20.0.ph142, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182937), !dbg !183103
  %i.da = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134.lcssa152, !dbg !183104
  br i1 %i.da, label %.lr.ph.preheader.i, label %bb.q, !dbg !183104

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 1152921504606846976) %.sroa.20.0134.lcssa152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !dbg !183104, !noalias !182937
  unreachable, !dbg !183104

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135.lcssa161, i64 %.sroa.0.0.i, !dbg !183105 ; 2 uses
  %.sroa.013.0.copyload.i = load i64, ptr %.sroa.0.0135.lcssa161, align 8, !dbg !183106, !alias.scope !182937
  %i.dc = load i64, ptr %i.db, align 8, !dbg !183107, !alias.scope !182937
  store i64 %i.dc, ptr %.sroa.0.0135.lcssa161, align 8, !dbg !183107, !alias.scope !182937
  store i64 %.sroa.013.0.copyload.i, ptr %i.db, align 8, !dbg !183108, !alias.scope !182937
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0135.lcssa161, i64 8, !dbg !183109 ; 3 uses
  %i.de = add nsw i64 %.sroa.20.0134.lcssa152, -1, !dbg !183110 ; 7 uses
  %i.df = load double, ptr %.sroa.0.0135.lcssa161, align 8, !dbg !183111, !alias.scope !182937, !noundef !5061 ; 10 uses
  br label %.lr.ph.i, !dbg !183112

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.de, %bb.r ], [ %.sroa.0.010.i, %.lr.ph.i ] ; 6 uses
  %.not.i.not.not.not387.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.de, !dbg !183113
  br i1 %.not.i.not.not.not387.not, label %.lr.ph390, label %._crit_edge, !dbg !183113

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.010.i = phi i64 [ %i.dj, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.0.010.i, !dbg !183114
  %.val27.i = load double, ptr %i.dg, align 8, !dbg !183112, !alias.scope !182938, !noundef !5061 ; 2 uses
  %i.dh = fcmp ord double %.val27.i, 0.000000e+00, !dbg !183115
  %i.di = fcmp ult double %.val27.i, %i.df, !dbg !183116
  %.not2.i.i.i.i = and i1 %i.dh, %i.di, !dbg !183117
  br i1 %.not2.i.i.i.i, label %bb.r, label %._crit_edge.i, !dbg !183112

bb.r:                                             ; preds = %.lr.ph.i
  %i.dj = add nuw nsw i64 %.sroa.0.010.i, 1, !dbg !183118 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dj, %i.de, !dbg !183119
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !183119

bb.s:                                             ; preds = %.lr.ph390
  %.not.i.not.not.not.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.dl, !dbg !183113
  br i1 %.not.i.not.not.not.not, label %.lr.ph390, label %._crit_edge, !dbg !183113

._crit_edge:                                      ; preds = %bb.s, %.lr.ph390, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.de, %._crit_edge.i ], [ %i.dl, %bb.s ], [ %.sroa.07.0.i388, %.lr.ph390 ], !dbg !183120 ; 3 uses
  %.not.i.not.not.not.lcssa = phi i8 [ 1, %._crit_edge.i ], [ 1, %bb.s ], [ 0, %.lr.ph390 ], !dbg !183113
  %i.dk = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i, !dbg !183121
  br i1 %i.dk, label %bb.ac, label %bb.t, !dbg !183121, !prof !5686

.lr.ph390:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i388 = phi i64 [ %i.dl, %bb.s ], [ %i.de, %._crit_edge.i ] ; 3 uses
  %i.dl = add nsw i64 %.sroa.07.0.i388, -1, !dbg !183122 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %i.de, !dbg !183123
  call void @llvm.assume(i1 %i.dm), !dbg !183124
  %i.dn = getelementptr [8 x i8], ptr %.sroa.0.0135.lcssa161, i64 %.sroa.07.0.i388, !dbg !183125
  %.val25.i = load double, ptr %i.dn, align 8, !dbg !183126, !alias.scope !182938, !noundef !5061 ; 2 uses
  %i.do = fcmp ord double %.val25.i, 0.000000e+00, !dbg !183127
  %i.dp = fcmp ult double %.val25.i, %i.df, !dbg !183128
  %.not2.i.i.i30.i = and i1 %i.do, %i.dp, !dbg !183129
  br i1 %.not2.i.i.i30.i, label %._crit_edge, label %bb.s, !dbg !183126

bb.t:                                             ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.0.0.lcssa.ph.i, !dbg !183130 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182940), !dbg !183131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !183132, !noalias !182941
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.07.0.i.lcssa, !dbg !183133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !183134, !noalias !182941
  br label %bb.u, !dbg !183135

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ], !dbg !183136 ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ], !dbg !183137 ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ], !dbg !183138 ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ], !dbg !183139 ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.dr, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ], !dbg !183140 ; 12 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ], !dbg !183141 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ], !dbg !183142 ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.dq, %bb.t ], [ %spec.select.i.i, %bb.y ], !dbg !183143 ; 8 uses
  %i.ds = ptrtoint ptr %.sroa.032.0.i.i to i64, !dbg !183144
  %i.dt = ptrtoint ptr %.sroa.01.0.i.i to i64, !dbg !183145
  %i.du = sub i64 %i.ds, %i.dt, !dbg !183146      ; 3 uses
  %i.dv = icmp ult i64 %i.du, 2056, !dbg !183147  ; 2 uses
  br i1 %i.dv, label %bb.w, label %bb.v, !dbg !183148

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.ed, %bb.x ], !dbg !183139 ; 7 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.ec, %bb.x ], !dbg !183149 ; 7 uses
  %i.dw = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !183150
  br i1 %i.dw, label %.preheader8.i.i, label %.loopexit9.i.i, !dbg !183150

.preheader8.i.i:                                  ; preds = %bb.v
  %.not28.i.i = icmp eq i64 %.sroa.015.1.i.i, 0, !dbg !183151
  br i1 %.not28.i.i, label %.loopexit9.i.i, label %.lr.ph.i.i.preheader, !dbg !183152

.lr.ph.i.i.preheader:                             ; preds = %.preheader8.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 1, !dbg !183152
  %i.dx = icmp eq i64 %.sroa.015.1.i.i, 1, !dbg !183152
  br i1 %i.dx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !183152

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -2, !dbg !183152
  br label %.lr.ph.i.i, !dbg !183152

bb.w:                                             ; preds = %bb.u
  %i.dy = lshr i64 %i.du, 3, !dbg !183146         ; 3 uses
  %i.dz = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !183153 ; 3 uses
  %i.ea = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.dz, i1 true, i1 %i.ea, !dbg !183153 ; 2 uses
  %i.eb = add nsw i64 %i.dy, -128, !dbg !183153   ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.eb, i64 %i.dy, !dbg !183153
  %.sroa.060.0.mux.i.i = select i1 %i.dz, i64 %i.eb, i64 %.sroa.044.0.i.i, !dbg !183154
  %.sroa.015.0.mux.i.i = select i1 %i.dz, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i, !dbg !183154
  br i1 %or.cond.i.i, label %bb.v, label %bb.x, !dbg !183154

bb.x:                                             ; preds = %bb.w
  %i.ec = lshr i64 %i.du, 4, !dbg !183155         ; 2 uses
  %i.ed = sub nsw i64 %i.dy, %i.ec, !dbg !183156
  br label %bb.v, !dbg !183157

.loopexit9.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !183152
  br i1 %lcmp.mod.not, label %.loopexit9.i.i, label %.lr.ph.i.i.epil.preheader, !dbg !183152

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit9.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.012.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.es, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.068.211.i.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.i.preheader ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, %.loopexit9.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0106.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.en, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %lcmp.mod478 = trunc i64 %.sroa.015.1.i.i to i1, !dbg !183152
  call void @llvm.assume(i1 %lcmp.mod478), !dbg !183152
  %i.ee = trunc i64 %.sroa.0106.010.i.i.epil.init to i8, !dbg !183158
  store i8 %i.ee, ptr %.sroa.068.211.i.i.epil.init, align 1, !dbg !183158, !noalias !182941
  %.sroa.065.0.val.i.i.epil = load double, ptr %.sroa.065.012.i.i.epil.init, align 8, !dbg !183159, !alias.scope !182943, !noundef !5061 ; 2 uses
  %i.ef = fcmp uno double %.sroa.065.0.val.i.i.epil, 0.000000e+00, !dbg !183160
  %i.eg = fcmp oge double %.sroa.065.0.val.i.i.epil, %i.df, !dbg !183161
  %.not2.i.i.i.not.i.i.epil = or i1 %i.ef, %i.eg, !dbg !183162
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %.not2.i.i.i.not.i.i.epil to i64, !dbg !183163
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.211.i.i.epil.init, i64 %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx, !dbg !183163
  br label %.loopexit9.i.i, !dbg !183164

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit9.i.i.loopexit.unr-lcssa, %.preheader8.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.b, %.preheader8.i.i ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, %.loopexit9.i.i.loopexit.unr-lcssa ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil.preheader ], !dbg !183137 ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.b, %.preheader8.i.i ], [ %i.b, %.loopexit9.i.i.loopexit.unr-lcssa ], [ %i.b, %.lr.ph.i.i.epil.preheader ], !dbg !183141 ; 6 uses
  %i.eh = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i, !dbg !183164
end_hunk_1
begin_hunk_2_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recursefNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1R_:bb.a
  %i.l = add i32 %i.k, -1, !dbg !183922
  store i32 %i.l, ptr %i.d, align 4, !dbg !183922
  br label %bb.f, !dbg !183923

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = lshr i64 %.sroa.20.0128, 2, !dbg !183924 ; 8 uses
  %i.n = shl nuw nsw i64 %i.m, 1, !dbg !183925    ; 7 uses
  %i.o = mul nuw nsw i64 %i.m, 3, !dbg !183926    ; 7 uses
  %i.p = icmp samesign ugt i64 %.sroa.20.0128, 49, !dbg !183927
  br i1 %i.p, label %bb.h, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i, !dbg !183927

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, %bb.f
  %.sroa.0.0102.i = phi i64 [ 0, %bb.f ], [ %spec.select.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !183928 ; 2 uses
  %.sroa.075.0.i = phi i64 [ %i.o, %bb.f ], [ %spec.select112.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !183929 ; 3 uses
  %.sroa.069.0.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.069.6.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !183930 ; 4 uses
  %.sroa.0.078.i = phi i64 [ %i.m, %bb.f ], [ %.sroa.0.4.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i ], !dbg !183931 ; 4 uses
  %i.q = icmp samesign ult i64 %.sroa.069.0.i, %.sroa.20.0128, !dbg !183932
  call void @llvm.assume(i1 %i.q), !dbg !183933
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %.sroa.069.0.i, !dbg !183934
  %i.s = icmp samesign ult i64 %.sroa.0.078.i, %.sroa.20.0128, !dbg !183935
  call void @llvm.assume(i1 %i.s), !dbg !183936
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %.sroa.0.078.i, !dbg !183937
  %.val.i.i = load float, ptr %i.r, align 4, !dbg !183938, !alias.scope !183860, !noalias !183861, !noundef !5061 ; 3 uses
  %.val2.i.i = load float, ptr %i.t, align 4, !dbg !183938, !alias.scope !183862, !noalias !183861, !noundef !5061 ; 4 uses
  %i.u = fcmp ord float %.val2.i.i, 0.000000e+00, !dbg !183939
  %i.v = fcmp ult float %.val2.i.i, %.val.i.i, !dbg !183940
  %.not2.i.i.i.i.i.i = and i1 %i.u, %i.v, !dbg !183941
  br i1 %.not2.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i, !dbg !183938

bb.g:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i
  %i.w = add nuw nsw i64 %.sroa.0.0102.i, 1, !dbg !183942
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i, !dbg !183943

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i: ; preds = %bb.g, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i
  %.val2.i10.i = phi float [ %.val.i.i, %bb.g ], [ %.val2.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !183944 ; 2 uses
  %.val2.i6.i = phi float [ %.val2.i.i, %bb.g ], [ %.val.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !183945 ; 3 uses
  %.sroa.0.1103.i = phi i64 [ %i.w, %bb.g ], [ %.sroa.0.0102.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !183946
  %.sroa.069.1.i = phi i64 [ %.sroa.0.078.i, %bb.g ], [ %.sroa.069.0.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !183946
  %.sroa.0.1.i = phi i64 [ %.sroa.069.0.i, %bb.g ], [ %.sroa.0.078.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i ], !dbg !183946 ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.075.0.i, %.sroa.20.0128, !dbg !183947
  call void @llvm.assume(i1 %i.x), !dbg !183948
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %.sroa.075.0.i, !dbg !183949
  %.val.i5.i = load float, ptr %i.y, align 4, !dbg !183945, !alias.scope !183863, !noalias !183864, !noundef !5061 ; 2 uses
  %i.z = fcmp ord float %.val2.i6.i, 0.000000e+00, !dbg !183950
  %i.aa = fcmp ult float %.val2.i6.i, %.val.i5.i, !dbg !183951
  %.not2.i.i.i.i.i7.i = and i1 %i.z, %i.aa, !dbg !183952 ; 3 uses
  %.val.i9.i = select i1 %.not2.i.i.i.i.i7.i, float %.val.i5.i, float %.val2.i6.i, !dbg !183945
  %i.ab = zext i1 %.not2.i.i.i.i.i7.i to i64, !dbg !183945
  %.sroa.0.2104.i = add nuw nsw i64 %.sroa.0.1103.i, %i.ab, !dbg !183945 ; 2 uses
  %.sroa.069.2.i = select i1 %.not2.i.i.i.i.i7.i, i64 %.sroa.075.0.i, i64 %.sroa.069.1.i, !dbg !183945
  %i.ac = fcmp ord float %.val2.i10.i, 0.000000e+00, !dbg !183953
  %i.ad = fcmp ult float %.val2.i10.i, %.val.i9.i, !dbg !183954
  %.not2.i.i.i.i.i11.i = and i1 %i.ac, %i.ad, !dbg !183955
  br i1 %.not2.i.i.i.i.i11.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i, !dbg !183944

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i
  %i.ae = icmp samesign ult i64 %.sroa.0.2104.i, 11, !dbg !183956
  br i1 %i.ae, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i, label %bb.l, !dbg !183956

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i64 %i.m, -1, !dbg !183957      ; 4 uses
  %i.ag = add nuw nsw i64 %i.m, 1, !dbg !183958   ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.m, !dbg !183959
  %i.ai = icmp samesign ult i64 %i.af, %.sroa.20.0128, !dbg !183960
  call void @llvm.assume(i1 %i.ai), !dbg !183961
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.af, !dbg !183962
  %.val.i.i.i = load float, ptr %i.ah, align 4, !dbg !183963, !alias.scope !183865, !noalias !183866, !noundef !5061 ; 3 uses
  %.val2.i.i.i = load float, ptr %i.aj, align 4, !dbg !183963, !alias.scope !183867, !noalias !183866, !noundef !5061 ; 4 uses
  %i.ak = fcmp ord float %.val2.i.i.i, 0.000000e+00, !dbg !183964
  %i.al = fcmp ult float %.val2.i.i.i, %.val.i.i.i, !dbg !183965
  %.not2.i.i.i.i.i.i.i = and i1 %i.ak, %i.al, !dbg !183966
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i, !dbg !183963

bb.i:                                             ; preds = %bb.h
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i, !dbg !183967

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i: ; preds = %bb.i, %bb.h
  %.val2.i6.i.i = phi float [ %.val.i.i.i, %bb.i ], [ %.val2.i.i.i, %bb.h ], !dbg !183968 ; 2 uses
  %.sroa.0.3105.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ], !dbg !183928
  %.sroa.0.2.i = phi i64 [ %i.af, %bb.i ], [ %i.m, %bb.h ], !dbg !183931
  %.val2.i2.i.i = phi float [ %.val2.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ], !dbg !183969 ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.i ], [ %i.af, %bb.h ], !dbg !183970
  %i.am = icmp samesign ult i64 %i.ag, %.sroa.20.0128, !dbg !183971
  call void @llvm.assume(i1 %i.am), !dbg !183972
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.ag, !dbg !183973
  %.val.i1.i.i = load float, ptr %i.an, align 4, !dbg !183969, !alias.scope !183868, !noalias !183869, !noundef !5061 ; 2 uses
  %i.ao = fcmp ord float %.val2.i2.i.i, 0.000000e+00, !dbg !183974
  %i.ap = fcmp ult float %.val2.i2.i.i, %.val.i1.i.i, !dbg !183975
  %.not2.i.i.i.i.i3.i.i = and i1 %i.ao, %i.ap, !dbg !183976 ; 3 uses
  %i.aq = zext i1 %.not2.i.i.i.i.i3.i.i to i64, !dbg !183969
  %.sroa.0.4106.i = add nuw nsw i64 %.sroa.0.3105.i, %i.aq, !dbg !183969
  %.sroa.0.3.i = select i1 %.not2.i.i.i.i.i3.i.i, i64 %i.ag, i64 %.sroa.0.2.i, !dbg !183969
  %.val.i5.i.i = select i1 %.not2.i.i.i.i.i3.i.i, float %.val.i1.i.i, float %.val2.i2.i.i, !dbg !183969
  %i.ar = fcmp ord float %.val2.i6.i.i, 0.000000e+00, !dbg !183977
  %i.as = fcmp ult float %.val2.i6.i.i, %.val.i5.i.i, !dbg !183978
  %.not2.i.i.i.i.i7.i.i = and i1 %i.ar, %i.as, !dbg !183979 ; 2 uses
  %i.at = zext i1 %.not2.i.i.i.i.i7.i.i to i64, !dbg !183968
  %.sroa.0.5.i = add nuw nsw i64 %.sroa.0.4106.i, %i.at, !dbg !183968 ; 2 uses
  %.sroa.0.4.i = select i1 %.not2.i.i.i.i.i7.i.i, i64 %.sroa.0.0.i.i, i64 %.sroa.0.3.i, !dbg !183968
  %i.au = add nsw i64 %i.n, -1, !dbg !183980      ; 4 uses
  %i.av = or disjoint i64 %i.n, 1, !dbg !183981   ; 3 uses
  %i.aw = icmp samesign ult i64 %i.n, %.sroa.20.0128, !dbg !183982
  call void @llvm.assume(i1 %i.aw), !dbg !183983
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.n, !dbg !183984
  %i.ay = icmp samesign ult i64 %i.au, %.sroa.20.0128, !dbg !183985
  call void @llvm.assume(i1 %i.ay), !dbg !183986
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.au, !dbg !183987
  %.val.i.i13.i = load float, ptr %i.ax, align 4, !dbg !183988, !alias.scope !183870, !noalias !183871, !noundef !5061 ; 3 uses
  %.val2.i.i14.i = load float, ptr %i.az, align 4, !dbg !183988, !alias.scope !183872, !noalias !183871, !noundef !5061 ; 4 uses
  %i.ba = fcmp ord float %.val2.i.i14.i, 0.000000e+00, !dbg !183989
  %i.bb = fcmp ult float %.val2.i.i14.i, %.val.i.i13.i, !dbg !183990
  %.not2.i.i.i.i.i.i15.i = and i1 %i.ba, %i.bb, !dbg !183991
  br i1 %.not2.i.i.i.i.i.i15.i, label %bb.j, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i, !dbg !183988

bb.j:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.5.i, 1, !dbg !183992
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i, !dbg !183993

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i: ; preds = %bb.j, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i
  %.val2.i6.i23.i = phi float [ %.val.i.i13.i, %bb.j ], [ %.val2.i.i14.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !183994 ; 2 uses
  %.sroa.0.6.i = phi i64 [ %i.bc, %bb.j ], [ %.sroa.0.5.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !183995
  %.sroa.069.4.i = phi i64 [ %i.au, %bb.j ], [ %i.n, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !183930
  %.val2.i2.i17.i = phi float [ %.val2.i.i14.i, %bb.j ], [ %.val.i.i13.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !183996 ; 3 uses
  %.sroa.0.0.i18.i = phi i64 [ %i.n, %bb.j ], [ %i.au, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i.i ], !dbg !183997
  %i.bd = icmp samesign ult i64 %i.av, %.sroa.20.0128, !dbg !183998
  call void @llvm.assume(i1 %i.bd), !dbg !183999
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.av, !dbg !184000
  %.val.i1.i19.i = load float, ptr %i.be, align 4, !dbg !183996, !alias.scope !183873, !noalias !183874, !noundef !5061 ; 2 uses
  %i.bf = fcmp ord float %.val2.i2.i17.i, 0.000000e+00, !dbg !184001
  %i.bg = fcmp ult float %.val2.i2.i17.i, %.val.i1.i19.i, !dbg !184002
  %.not2.i.i.i.i.i3.i20.i = and i1 %i.bf, %i.bg, !dbg !184003 ; 3 uses
  %i.bh = zext i1 %.not2.i.i.i.i.i3.i20.i to i64, !dbg !183996
  %.sroa.0.7.i = add nuw nsw i64 %.sroa.0.6.i, %i.bh, !dbg !183996
  %.sroa.069.5.i = select i1 %.not2.i.i.i.i.i3.i20.i, i64 %i.av, i64 %.sroa.069.4.i, !dbg !183996
  %.val.i5.i22.i = select i1 %.not2.i.i.i.i.i3.i20.i, float %.val.i1.i19.i, float %.val2.i2.i17.i, !dbg !183996
  %i.bi = fcmp ord float %.val2.i6.i23.i, 0.000000e+00, !dbg !184004
  %i.bj = fcmp ult float %.val2.i6.i23.i, %.val.i5.i22.i, !dbg !184005
  %.not2.i.i.i.i.i7.i24.i = and i1 %i.bi, %i.bj, !dbg !184006 ; 2 uses
  %i.bk = zext i1 %.not2.i.i.i.i.i7.i24.i to i64, !dbg !183994
  %.sroa.0.8.i = add nuw nsw i64 %.sroa.0.7.i, %i.bk, !dbg !183994 ; 2 uses
  %.sroa.069.6.i = select i1 %.not2.i.i.i.i.i7.i24.i, i64 %.sroa.0.0.i18.i, i64 %.sroa.069.5.i, !dbg !183994
  %i.bl = add nsw i64 %i.o, -1, !dbg !184007      ; 4 uses
  %i.bm = add nuw nsw i64 %i.o, 1, !dbg !184008   ; 3 uses
  %i.bn = icmp samesign ult i64 %i.o, %.sroa.20.0128, !dbg !184009
  call void @llvm.assume(i1 %i.bn), !dbg !184010
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.o, !dbg !184011
  %i.bp = icmp samesign ult i64 %i.bl, %.sroa.20.0128, !dbg !184012
  call void @llvm.assume(i1 %i.bp), !dbg !184013
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.bl, !dbg !184014
  %.val.i.i40.i = load float, ptr %i.bo, align 4, !dbg !184015, !alias.scope !183875, !noalias !183876, !noundef !5061 ; 3 uses
  %.val2.i.i41.i = load float, ptr %i.bq, align 4, !dbg !184015, !alias.scope !183877, !noalias !183876, !noundef !5061 ; 4 uses
  %i.br = fcmp ord float %.val2.i.i41.i, 0.000000e+00, !dbg !184016
  %i.bs = fcmp ult float %.val2.i.i41.i, %.val.i.i40.i, !dbg !184017
  %.not2.i.i.i.i.i.i42.i = and i1 %i.br, %i.bs, !dbg !184018
  br i1 %.not2.i.i.i.i.i.i42.i, label %bb.k, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, !dbg !184015

bb.k:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i
  %i.bt = add nuw nsw i64 %.sroa.0.8.i, 1, !dbg !184019
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i, !dbg !184020

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i43.i: ; preds = %bb.k, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i
  %.val2.i6.i50.i = phi float [ %.val.i.i40.i, %bb.k ], [ %.val2.i.i41.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !184021 ; 2 uses
  %.sroa.0.9.i = phi i64 [ %i.bt, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !183995
  %.sroa.075.1.i = phi i64 [ %i.bl, %bb.k ], [ %i.o, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !183929
  %.val2.i2.i44.i = phi float [ %.val2.i.i41.i, %bb.k ], [ %.val.i.i40.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !184022 ; 3 uses
  %.sroa.0.0.i45.i = phi i64 [ %i.o, %bb.k ], [ %i.bl, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i16.i ], !dbg !184023
  %i.bu = icmp samesign ult i64 %i.bm, %.sroa.20.0128, !dbg !184024
  call void @llvm.assume(i1 %i.bu), !dbg !184025
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %i.bm, !dbg !184026
  %.val.i1.i46.i = load float, ptr %i.bv, align 4, !dbg !184022, !alias.scope !183878, !noalias !183879, !noundef !5061 ; 2 uses
  %i.bw = fcmp ord float %.val2.i2.i44.i, 0.000000e+00, !dbg !184027
  %i.bx = fcmp ult float %.val2.i2.i44.i, %.val.i1.i46.i, !dbg !184028
  %.not2.i.i.i.i.i3.i47.i = and i1 %i.bw, %i.bx, !dbg !184029 ; 3 uses
  %i.by = zext i1 %.not2.i.i.i.i.i3.i47.i to i64, !dbg !184022
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.by, !dbg !184022
  %.sroa.075.2.i = select i1 %.not2.i.i.i.i.i3.i47.i, i64 %i.bm, i64 %.sroa.075.1.i, !dbg !184022
  %.val.i5.i49.i = select i1 %.not2.i.i.i.i.i3.i47.i, float %.val.i1.i46.i, float %.val2.i2.i44.i, !dbg !184022
  %i.bz = fcmp ord float %.val2.i6.i50.i, 0.000000e+00, !dbg !184030
  %i.ca = fcmp ult float %.val2.i6.i50.i, %.val.i5.i49.i, !dbg !184031
  %.not2.i.i.i.i.i7.i51.i = and i1 %i.bz, %i.ca, !dbg !184032 ; 2 uses
  %i.cb = zext i1 %.not2.i.i.i.i.i7.i51.i to i64, !dbg !184021
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.cb, !dbg !184021
  %spec.select112.i = select i1 %.not2.i.i.i.i.i7.i51.i, i64 %.sroa.0.0.i45.i, i64 %.sroa.075.2.i, !dbg !184021
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0Es0_0B1Z_.exit66.i, !dbg !184021

bb.l:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i
  %i.cc = lshr i64 %.sroa.20.0128, 1, !dbg !184033 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %.sroa.20.0128, !dbg !184034 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183880), !dbg !184035
  call void @llvm.experimental.noalias.scope.decl(metadata !183881), !dbg !184035
  %min.iters.check = icmp ult i64 %.sroa.20.0128, 16, !dbg !184036
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !184036

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  br label %vector.body, !dbg !184036

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !184037 ; 3 uses
  %i.ce = xor i64 %index, -1, !dbg !184038
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %index, !dbg !184039 ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cd, i64 %i.ce, !dbg !184040 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !184041 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !dbg !184041, !alias.scope !183882
  %wide.load349 = load <4 x float>, ptr %i.ch, align 4, !dbg !184041, !alias.scope !183882
  %i.ci = getelementptr i8, ptr %i.cg, i64 -12, !dbg !184041 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 -28, !dbg !184041 ; 2 uses
  %wide.load350 = load <4 x i32>, ptr %i.ci, align 4, !dbg !184041, !alias.scope !183883
  %wide.load351 = load <4 x i32>, ptr %i.cj, align 4, !dbg !184041, !alias.scope !183883
  %reverse = shufflevector <4 x i32> %wide.load350, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184041
  %reverse352 = shufflevector <4 x i32> %wide.load351, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184041
  store <4 x i32> %reverse, ptr %i.cf, align 4, !dbg !184041, !alias.scope !183882
  store <4 x i32> %reverse352, ptr %i.ch, align 4, !dbg !184041, !alias.scope !183882
  %reverse353 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184041
  %reverse354 = shufflevector <4 x float> %wide.load349, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184041
  store <4 x float> %reverse353, ptr %i.ci, align 4, !dbg !184041, !alias.scope !183883
  store <4 x float> %reverse354, ptr %i.cj, align 4, !dbg !184041, !alias.scope !183883
  %index.next = add nuw i64 %index, 8, !dbg !184037 ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec, !dbg !184036
  br i1 %i.ck, label %middle.block, label %vector.body, !dbg !184036, !llvm.loop !183561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec, !dbg !184036
  br i1 %cmp.n, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !184036

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %bb.l, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %bb.l ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !184036

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.cl = xor i64 %.sroa.0.016.i.i, -1, !dbg !184038
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129, i64 %.sroa.0.016.i.i, !dbg !184039 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cd, i64 %i.cl, !dbg !184040 ; 2 uses
  %i.co = load float, ptr %i.cm, align 4, !dbg !184041, !alias.scope !183882, !noundef !5061
  %i.cp = load i32, ptr %i.cn, align 4, !dbg !184041, !alias.scope !183883
  store i32 %i.cp, ptr %i.cm, align 4, !dbg !184041, !alias.scope !183882
  store float %i.co, ptr %i.cn, align 4, !dbg !184041, !alias.scope !183883
  %i.cq = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !184037 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %i.cc, !dbg !184036
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !184036, !llvm.loop !183562

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block
  %i.cr = xor i64 %.sroa.0.1.i, -1, !dbg !184042
  %i.cs = add nsw i64 %.sroa.20.0128, %i.cr, !dbg !184042
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit, !dbg !184043

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i
  %.sroa.069.3111.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i ], [ %.sroa.069.2.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i ]
  %i.ct = phi i64 [ 1, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.i ], [ %.sroa.0.2104.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit.i ]
  %i.cu = icmp eq i64 %i.ct, 0, !dbg !184044
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit, !dbg !184043

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cu, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i ], [ true, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !184045
  %.sroa.0.0.i = phi i64 [ %.sroa.069.3111.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0E0B1Z_.exit12.thread.i ], [ %i.cs, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !184045 ; 6 uses
  %i.cv = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !dbg !184046, !prof !5846
  br i1 %i.cv, label %bb.n, label %bb.m, !dbg !184046, !prof !5820

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit
  br i1 %.not, label %bb.p, label %bb.o, !dbg !184047

bb.n:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB1X_.exit
  %i.cw = call fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE00E0EB27_(ptr noalias noundef nonnull align 4 %.sroa.0.0129, i64 noundef %.sroa.20.0128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !184048
  br i1 %i.cw, label %.loopexit, label %bb.m, !dbg !184048

bb.o:                                             ; preds = %bb.m
  %i.cx = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0128, !dbg !184049
  br i1 %i.cx, label %bb.ad, label %bb.ae, !dbg !184049

bb.p:                                             ; preds = %bb.ad, %bb.m
  %.sroa.0.0129.lcssa154 = phi ptr [ %.sroa.0.0129, %bb.ad ], [ %.sroa.0.0.ph137, %bb.m ] ; 12 uses
  %.sroa.20.0128.lcssa145 = phi i64 [ %.sroa.20.0128, %bb.ad ], [ %.sroa.20.0.ph136, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183884), !dbg !184050
  %i.cy = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0128.lcssa145, !dbg !184051
  br i1 %i.cy, label %bb.r, label %bb.q, !dbg !184051

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 2305843009213693952) %.sroa.20.0128.lcssa145, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !dbg !184051, !noalias !183884
  unreachable, !dbg !184051

bb.r:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0129.lcssa154, i64 %.sroa.0.0.i, !dbg !184052 ; 2 uses
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.0.0129.lcssa154, align 4, !dbg !184053, !alias.scope !183884
  %i.da = load i32, ptr %i.cz, align 4, !dbg !184054, !alias.scope !183884
  store i32 %i.da, ptr %.sroa.0.0129.lcssa154, align 4, !dbg !184054, !alias.scope !183884
  store i32 %.sroa.013.0.copyload.i, ptr %i.cz, align 4, !dbg !184055, !alias.scope !183884
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0129.lcssa154, i64 4, !dbg !184056 ; 3 uses
  %i.dc = add nsw i64 %.sroa.20.0128.lcssa145, -1, !dbg !184057 ; 7 uses
  %i.dd = load float, ptr %.sroa.0.0129.lcssa154, align 4, !dbg !184058, !alias.scope !183884, !noundef !5061 ; 13 uses
  %i.de = fcmp uno float %i.dd, 0.000000e+00      ; 9 uses
  br i1 %i.de, label %.split14.us.thread.i, label %.lr.ph.split.i, !dbg !184059

._crit_edge.split.i:                              ; preds = %bb.s, %.lr.ph.split.i
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.010.i, %.lr.ph.split.i ], [ %i.dc, %bb.s ], !dbg !184060 ; 5 uses
  %i.df = icmp ult i64 %.sroa.0.0.lcssa.i, %i.dc, !dbg !184061
  br i1 %i.df, label %.lr.ph346, label %.split14.us.i, !dbg !184061

.lr.ph.split.i:                                   ; preds = %bb.r, %bb.s
  %.sroa.0.010.i = phi i64 [ %i.di, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.0.010.i, !dbg !184062
  %.val23.i = load float, ptr %i.dg, align 4, !dbg !184063, !alias.scope !183885, !noundef !5061
  %i.dh = fcmp ult float %i.dd, %.val23.i, !dbg !184064
  br i1 %i.dh, label %bb.s, label %._crit_edge.split.i, !dbg !184063

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.di = add nuw nsw i64 %.sroa.0.010.i, 1, !dbg !184065 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.di, %i.dc, !dbg !184059
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %.lr.ph.split.i, !dbg !184059

.split.i:                                         ; preds = %.lr.ph346
  %i.dj = icmp ult i64 %.sroa.0.0.lcssa.i, %i.dl, !dbg !184061
  br i1 %i.dj, label %.lr.ph346, label %.split14.us.i, !dbg !184061

.split14.us.i:                                    ; preds = %.split.i, %.lr.ph346, %._crit_edge.split.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.dc, %._crit_edge.split.i ], [ %i.dl, %.split.i ], [ %.sroa.07.0.i345, %.lr.ph346 ], !dbg !184066 ; 3 uses
  %i.dk = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.i, !dbg !184067
  br i1 %i.dk, label %bb.ab, label %.split14.us.thread.i, !dbg !184067, !prof !5850

.lr.ph346:                                        ; preds = %._crit_edge.split.i, %.split.i
  %.sroa.07.0.i345 = phi i64 [ %i.dl, %.split.i ], [ %i.dc, %._crit_edge.split.i ] ; 3 uses
  %i.dl = add nsw i64 %.sroa.07.0.i345, -1, !dbg !184068 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %i.dc, !dbg !184069
  call void @llvm.assume(i1 %i.dm), !dbg !184070
  %i.dn = getelementptr [4 x i8], ptr %.sroa.0.0129.lcssa154, i64 %.sroa.07.0.i345, !dbg !184071
  %.val.i = load float, ptr %i.dn, align 4, !dbg !184072, !alias.scope !183885, !noundef !5061
  %i.do = fcmp ult float %i.dd, %.val.i, !dbg !184073
  br i1 %i.do, label %.split14.us.i, label %.split.i, !dbg !184072

.split14.us.thread.i:                             ; preds = %bb.r, %.split14.us.i
  %.us-phi43.i = phi i64 [ %.sroa.07.0.i.lcssa, %.split14.us.i ], [ 0, %bb.r ] ; 2 uses
  %.sroa.0.0.lcssa3842.i = phi i64 [ %.sroa.0.0.lcssa.i, %.split14.us.i ], [ 0, %bb.r ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.0.0.lcssa3842.i, !dbg !184074 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183887), !dbg !184075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !184076, !noalias !183888
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.us-phi43.i, !dbg !184077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !184078, !noalias !183888
  br label %bb.t, !dbg !184079

bb.t:                                             ; preds = %bb.x, %.split14.us.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.084.1.i.i, %bb.x ], !dbg !184080 ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.068.1.i.i, %bb.x ], !dbg !184081 ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.046.2.i.i, %bb.x ], !dbg !184082 ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split14.us.thread.i ], [ %.sroa.044.1.i.i, %bb.x ], !dbg !184083 ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.dq, %.split14.us.thread.i ], [ %.sroa.032.1.i.i, %bb.x ], !dbg !184084 ; 12 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split14.us.thread.i ], [ %.sroa.018.2.i.i, %bb.x ], !dbg !184085 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split14.us.thread.i ], [ %.sroa.015.1.i.i, %bb.x ], !dbg !184086 ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.dp, %.split14.us.thread.i ], [ %spec.select.i.i, %bb.x ], !dbg !184087 ; 8 uses
  %i.dr = ptrtoint ptr %.sroa.032.0.i.i to i64, !dbg !184088
  %i.ds = ptrtoint ptr %.sroa.01.0.i.i to i64, !dbg !184089
  %i.dt = sub i64 %i.dr, %i.ds, !dbg !184090      ; 3 uses
  %i.du = icmp ult i64 %i.dt, 1028, !dbg !184091  ; 2 uses
  br i1 %i.du, label %bb.v, label %bb.u, !dbg !184092

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.t ], [ %.sroa.060.0.mux.i.i, %bb.v ], [ %i.ec, %bb.w ], !dbg !184083 ; 7 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.t ], [ %.sroa.015.0.mux.i.i, %bb.v ], [ %i.eb, %bb.w ], !dbg !184093 ; 6 uses
  %i.dv = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !184094
  br i1 %i.dv, label %.preheader8.i.i, label %.loopexit9.i.i, !dbg !184094

.preheader8.i.i:                                  ; preds = %bb.u
  %.not28.i.i = icmp eq i64 %.sroa.015.1.i.i, 0, !dbg !184095
  br i1 %.not28.i.i, label %.loopexit9.i.i, label %.lr.ph.i.i.preheader, !dbg !184096

.lr.ph.i.i.preheader:                             ; preds = %.preheader8.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 3, !dbg !184096 ; 3 uses
  %i.dw = icmp ult i64 %.sroa.015.1.i.i, 4, !dbg !184096
  br i1 %i.dw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !184096

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -4, !dbg !184096
  br label %.lr.ph.i.i, !dbg !184096

bb.v:                                             ; preds = %bb.t
  %i.dx = lshr i64 %i.dt, 2, !dbg !184090         ; 3 uses
  %i.dy = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !184097 ; 3 uses
  %i.dz = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.dy, i1 true, i1 %i.dz, !dbg !184097 ; 2 uses
  %i.ea = add nsw i64 %i.dx, -128, !dbg !184097   ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.ea, i64 %i.dx, !dbg !184097
  %.sroa.060.0.mux.i.i = select i1 %i.dy, i64 %i.ea, i64 %.sroa.044.0.i.i, !dbg !184098
  %.sroa.015.0.mux.i.i = select i1 %i.dy, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i, !dbg !184098
  br i1 %or.cond.i.i, label %bb.u, label %bb.w, !dbg !184098

bb.w:                                             ; preds = %bb.v
  %i.eb = lshr i64 %i.dt, 3, !dbg !184099         ; 2 uses
  %i.ec = sub nsw i64 %i.dx, %i.eb, !dbg !184100
  br label %bb.u, !dbg !184101

.loopexit9.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !184096
  br i1 %lcmp.mod.not, label %.loopexit9.i.i, label %.lr.ph.i.i.epil.preheader, !dbg !184096

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit9.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.012.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.ey, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.068.211.i.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.i.preheader ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.0106.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.eu, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %lcmp.mod421 = icmp ne i64 %xtraiter, 0, !dbg !184096
  call void @llvm.assume(i1 %lcmp.mod421), !dbg !184096
  br label %.lr.ph.i.i.epil, !dbg !184096

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.012.i.i.epil = phi ptr [ %i.eg, %.lr.ph.i.i.epil ], [ %.sroa.065.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.211.i.i.epil = phi ptr [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.211.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0106.010.i.i.epil = phi i64 [ %i.ed, %.lr.ph.i.i.epil ], [ %.sroa.0106.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ed = add nuw i64 %.sroa.0106.010.i.i.epil, 1, !dbg !184102
  %i.ee = trunc i64 %.sroa.0106.010.i.i.epil to i8, !dbg !184103
  store i8 %i.ee, ptr %.sroa.068.211.i.i.epil, align 1, !dbg !184103, !noalias !183888
  %.sroa.065.0.val.i.i.epil = load float, ptr %.sroa.065.012.i.i.epil, align 4, !dbg !184104, !alias.scope !183890, !noundef !5061
  %i.ef = fcmp oge float %i.dd, %.sroa.065.0.val.i.i.epil, !dbg !184105
  %.not2.i.i.i.i.not.i.i.epil = or i1 %i.de, %i.ef, !dbg !184106
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %.not2.i.i.i.i.not.i.i.epil to i64, !dbg !184107
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.211.i.i.epil, i64 %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx, !dbg !184107 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.065.012.i.i.epil, i64 4, !dbg !184108
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !184096 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !184096
end_hunk_2
begin_hunk_3_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recursefNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.l = add i32 %i.k, -1, !dbg !184853
  store i32 %i.l, ptr %i.d, align 4, !dbg !184853
  br label %bb.f, !dbg !184854

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = lshr i64 %.sroa.20.0134, 2, !dbg !184855 ; 8 uses
  %i.n = shl nuw nsw i64 %i.m, 1, !dbg !184856    ; 7 uses
  %i.o = mul nuw nsw i64 %i.m, 3, !dbg !184857    ; 7 uses
  %i.p = icmp samesign ugt i64 %.sroa.20.0134, 49, !dbg !184858
  br i1 %i.p, label %bb.h, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i, !dbg !184858

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, %bb.f
  %.sroa.0.0102.i = phi i64 [ 0, %bb.f ], [ %spec.select.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !184859 ; 2 uses
  %.sroa.075.0.i = phi i64 [ %i.o, %bb.f ], [ %spec.select112.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !184860 ; 3 uses
  %.sroa.069.0.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.069.6.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !184861 ; 4 uses
  %.sroa.0.078.i = phi i64 [ %i.m, %bb.f ], [ %.sroa.0.4.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i ], !dbg !184862 ; 4 uses
  %i.q = icmp samesign ult i64 %.sroa.069.0.i, %.sroa.20.0134, !dbg !184863
  call void @llvm.assume(i1 %i.q), !dbg !184864
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %.sroa.069.0.i, !dbg !184865
  %i.s = icmp samesign ult i64 %.sroa.0.078.i, %.sroa.20.0134, !dbg !184866
  call void @llvm.assume(i1 %i.s), !dbg !184867
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.078.i, !dbg !184868
  %.val.i.i = load float, ptr %i.r, align 4, !dbg !184869, !alias.scope !184791, !noalias !184792, !noundef !5061 ; 4 uses
  %.val2.i.i = load float, ptr %i.t, align 4, !dbg !184869, !alias.scope !184793, !noalias !184792, !noundef !5061 ; 3 uses
  %i.u = fcmp ord float %.val.i.i, 0.000000e+00, !dbg !184870
  %i.v = fcmp ult float %.val.i.i, %.val2.i.i, !dbg !184871
  %.not2.i.i.i.i.i = and i1 %i.u, %i.v, !dbg !184872
  br i1 %.not2.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !184869

bb.g:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i
  %i.w = add nuw nsw i64 %.sroa.0.0102.i, 1, !dbg !184873
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !184874

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.g, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i
  %.val2.i10.i = phi float [ %.val.i.i, %bb.g ], [ %.val2.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !184875
  %.val2.i6.i = phi float [ %.val2.i.i, %bb.g ], [ %.val.i.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !184876 ; 2 uses
  %.sroa.0.1103.i = phi i64 [ %i.w, %bb.g ], [ %.sroa.0.0102.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !184877
  %.sroa.069.1.i = phi i64 [ %.sroa.0.078.i, %bb.g ], [ %.sroa.069.0.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !184877
  %.sroa.0.1.i = phi i64 [ %.sroa.069.0.i, %bb.g ], [ %.sroa.0.078.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i ], !dbg !184877 ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.075.0.i, %.sroa.20.0134, !dbg !184878
  call void @llvm.assume(i1 %i.x), !dbg !184879
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %.sroa.075.0.i, !dbg !184880
  %.val.i5.i = load float, ptr %i.y, align 4, !dbg !184876, !alias.scope !184794, !noalias !184795, !noundef !5061 ; 3 uses
  %i.z = fcmp ord float %.val.i5.i, 0.000000e+00, !dbg !184881
  %i.aa = fcmp ult float %.val.i5.i, %.val2.i6.i, !dbg !184882
  %.not2.i.i.i.i7.i = and i1 %i.z, %i.aa, !dbg !184883 ; 3 uses
  %.val.i9.i = select i1 %.not2.i.i.i.i7.i, float %.val.i5.i, float %.val2.i6.i, !dbg !184876 ; 2 uses
  %i.ab = zext i1 %.not2.i.i.i.i7.i to i64, !dbg !184876
  %.sroa.0.2104.i = add nuw nsw i64 %.sroa.0.1103.i, %i.ab, !dbg !184876 ; 2 uses
  %.sroa.069.2.i = select i1 %.not2.i.i.i.i7.i, i64 %.sroa.075.0.i, i64 %.sroa.069.1.i, !dbg !184876
  %i.ac = fcmp ord float %.val.i9.i, 0.000000e+00, !dbg !184884
  %i.ad = fcmp ult float %.val.i9.i, %.val2.i10.i, !dbg !184885
  %.not2.i.i.i.i11.i = and i1 %i.ac, %i.ad, !dbg !184886
  br i1 %.not2.i.i.i.i11.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i, !dbg !184875

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %i.ae = icmp samesign ult i64 %.sroa.0.2104.i, 11, !dbg !184887
  br i1 %i.ae, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i, label %bb.l, !dbg !184887

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i64 %i.m, -1, !dbg !184888      ; 4 uses
  %i.ag = add nuw nsw i64 %i.m, 1, !dbg !184889   ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.m, !dbg !184890
  %i.ai = icmp samesign ult i64 %i.af, %.sroa.20.0134, !dbg !184891
  call void @llvm.assume(i1 %i.ai), !dbg !184892
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.af, !dbg !184893
  %.val.i.i.i = load float, ptr %i.ah, align 4, !dbg !184894, !alias.scope !184796, !noalias !184797, !noundef !5061 ; 4 uses
  %.val2.i.i.i = load float, ptr %i.aj, align 4, !dbg !184894, !alias.scope !184798, !noalias !184797, !noundef !5061 ; 3 uses
  %i.ak = fcmp ord float %.val.i.i.i, 0.000000e+00, !dbg !184895
  %i.al = fcmp ult float %.val.i.i.i, %.val2.i.i.i, !dbg !184896
  %.not2.i.i.i.i.i.i = and i1 %i.ak, %i.al, !dbg !184897
  br i1 %.not2.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !184894

bb.i:                                             ; preds = %bb.h
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !184898

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.h
  %.val2.i6.i.i = phi float [ %.val.i.i.i, %bb.i ], [ %.val2.i.i.i, %bb.h ], !dbg !184899
  %.sroa.0.3105.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ], !dbg !184859
  %.sroa.0.2.i = phi i64 [ %i.af, %bb.i ], [ %i.m, %bb.h ], !dbg !184862
  %.val2.i2.i.i = phi float [ %.val2.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ], !dbg !184900 ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.i ], [ %i.af, %bb.h ], !dbg !184901
  %i.am = icmp samesign ult i64 %i.ag, %.sroa.20.0134, !dbg !184902
  call void @llvm.assume(i1 %i.am), !dbg !184903
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.ag, !dbg !184904
  %.val.i1.i.i = load float, ptr %i.an, align 4, !dbg !184900, !alias.scope !184799, !noalias !184800, !noundef !5061 ; 3 uses
  %i.ao = fcmp ord float %.val.i1.i.i, 0.000000e+00, !dbg !184905
  %i.ap = fcmp ult float %.val.i1.i.i, %.val2.i2.i.i, !dbg !184906
  %.not2.i.i.i.i3.i.i = and i1 %i.ao, %i.ap, !dbg !184907 ; 3 uses
  %i.aq = zext i1 %.not2.i.i.i.i3.i.i to i64, !dbg !184900
  %.sroa.0.4106.i = add nuw nsw i64 %.sroa.0.3105.i, %i.aq, !dbg !184900
  %.sroa.0.3.i = select i1 %.not2.i.i.i.i3.i.i, i64 %i.ag, i64 %.sroa.0.2.i, !dbg !184900
  %.val.i5.i.i = select i1 %.not2.i.i.i.i3.i.i, float %.val.i1.i.i, float %.val2.i2.i.i, !dbg !184900 ; 2 uses
  %i.ar = fcmp ord float %.val.i5.i.i, 0.000000e+00, !dbg !184908
  %i.as = fcmp ult float %.val.i5.i.i, %.val2.i6.i.i, !dbg !184909
  %.not2.i.i.i.i7.i.i = and i1 %i.ar, %i.as, !dbg !184910 ; 2 uses
  %i.at = zext i1 %.not2.i.i.i.i7.i.i to i64, !dbg !184899
  %.sroa.0.5.i = add nuw nsw i64 %.sroa.0.4106.i, %i.at, !dbg !184899 ; 2 uses
  %.sroa.0.4.i = select i1 %.not2.i.i.i.i7.i.i, i64 %.sroa.0.0.i.i, i64 %.sroa.0.3.i, !dbg !184899
  %i.au = add nsw i64 %i.n, -1, !dbg !184911      ; 4 uses
  %i.av = or disjoint i64 %i.n, 1, !dbg !184912   ; 3 uses
  %i.aw = icmp samesign ult i64 %i.n, %.sroa.20.0134, !dbg !184913
  call void @llvm.assume(i1 %i.aw), !dbg !184914
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.n, !dbg !184915
  %i.ay = icmp samesign ult i64 %i.au, %.sroa.20.0134, !dbg !184916
  call void @llvm.assume(i1 %i.ay), !dbg !184917
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.au, !dbg !184918
  %.val.i.i13.i = load float, ptr %i.ax, align 4, !dbg !184919, !alias.scope !184801, !noalias !184802, !noundef !5061 ; 4 uses
  %.val2.i.i14.i = load float, ptr %i.az, align 4, !dbg !184919, !alias.scope !184803, !noalias !184802, !noundef !5061 ; 3 uses
  %i.ba = fcmp ord float %.val.i.i13.i, 0.000000e+00, !dbg !184920
  %i.bb = fcmp ult float %.val.i.i13.i, %.val2.i.i14.i, !dbg !184921
  %.not2.i.i.i.i.i15.i = and i1 %i.ba, %i.bb, !dbg !184922
  br i1 %.not2.i.i.i.i.i15.i, label %bb.j, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i, !dbg !184919

bb.j:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.5.i, 1, !dbg !184923
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i, !dbg !184924

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i: ; preds = %bb.j, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i
  %.val2.i6.i23.i = phi float [ %.val.i.i13.i, %bb.j ], [ %.val2.i.i14.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !184925
  %.sroa.0.6.i = phi i64 [ %i.bc, %bb.j ], [ %.sroa.0.5.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !184926
  %.sroa.069.4.i = phi i64 [ %i.au, %bb.j ], [ %i.n, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !184861
  %.val2.i2.i17.i = phi float [ %.val2.i.i14.i, %bb.j ], [ %.val.i.i13.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !184927 ; 2 uses
  %.sroa.0.0.i18.i = phi i64 [ %i.n, %bb.j ], [ %i.au, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !184928
  %i.bd = icmp samesign ult i64 %i.av, %.sroa.20.0134, !dbg !184929
  call void @llvm.assume(i1 %i.bd), !dbg !184930
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.av, !dbg !184931
  %.val.i1.i19.i = load float, ptr %i.be, align 4, !dbg !184927, !alias.scope !184804, !noalias !184805, !noundef !5061 ; 3 uses
  %i.bf = fcmp ord float %.val.i1.i19.i, 0.000000e+00, !dbg !184932
  %i.bg = fcmp ult float %.val.i1.i19.i, %.val2.i2.i17.i, !dbg !184933
  %.not2.i.i.i.i3.i20.i = and i1 %i.bf, %i.bg, !dbg !184934 ; 3 uses
  %i.bh = zext i1 %.not2.i.i.i.i3.i20.i to i64, !dbg !184927
  %.sroa.0.7.i = add nuw nsw i64 %.sroa.0.6.i, %i.bh, !dbg !184927
  %.sroa.069.5.i = select i1 %.not2.i.i.i.i3.i20.i, i64 %i.av, i64 %.sroa.069.4.i, !dbg !184927
  %.val.i5.i22.i = select i1 %.not2.i.i.i.i3.i20.i, float %.val.i1.i19.i, float %.val2.i2.i17.i, !dbg !184927 ; 2 uses
  %i.bi = fcmp ord float %.val.i5.i22.i, 0.000000e+00, !dbg !184935
  %i.bj = fcmp ult float %.val.i5.i22.i, %.val2.i6.i23.i, !dbg !184936
  %.not2.i.i.i.i7.i24.i = and i1 %i.bi, %i.bj, !dbg !184937 ; 2 uses
  %i.bk = zext i1 %.not2.i.i.i.i7.i24.i to i64, !dbg !184925
  %.sroa.0.8.i = add nuw nsw i64 %.sroa.0.7.i, %i.bk, !dbg !184925 ; 2 uses
  %.sroa.069.6.i = select i1 %.not2.i.i.i.i7.i24.i, i64 %.sroa.0.0.i18.i, i64 %.sroa.069.5.i, !dbg !184925
  %i.bl = add nsw i64 %i.o, -1, !dbg !184938      ; 4 uses
  %i.bm = add nuw nsw i64 %i.o, 1, !dbg !184939   ; 3 uses
  %i.bn = icmp samesign ult i64 %i.o, %.sroa.20.0134, !dbg !184940
  call void @llvm.assume(i1 %i.bn), !dbg !184941
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.o, !dbg !184942
  %i.bp = icmp samesign ult i64 %i.bl, %.sroa.20.0134, !dbg !184943
  call void @llvm.assume(i1 %i.bp), !dbg !184944
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.bl, !dbg !184945
  %.val.i.i40.i = load float, ptr %i.bo, align 4, !dbg !184946, !alias.scope !184806, !noalias !184807, !noundef !5061 ; 4 uses
  %.val2.i.i41.i = load float, ptr %i.bq, align 4, !dbg !184946, !alias.scope !184808, !noalias !184807, !noundef !5061 ; 3 uses
  %i.br = fcmp ord float %.val.i.i40.i, 0.000000e+00, !dbg !184947
  %i.bs = fcmp ult float %.val.i.i40.i, %.val2.i.i41.i, !dbg !184948
  %.not2.i.i.i.i.i42.i = and i1 %i.br, %i.bs, !dbg !184949
  br i1 %.not2.i.i.i.i.i42.i, label %bb.k, label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, !dbg !184946

bb.k:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i
  %i.bt = add nuw nsw i64 %.sroa.0.8.i, 1, !dbg !184950
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i, !dbg !184951

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i43.i: ; preds = %bb.k, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i
  %.val2.i6.i50.i = phi float [ %.val.i.i40.i, %bb.k ], [ %.val2.i.i41.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !184952
  %.sroa.0.9.i = phi i64 [ %i.bt, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !184926
  %.sroa.075.1.i = phi i64 [ %i.bl, %bb.k ], [ %i.o, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !184860
  %.val2.i2.i44.i = phi float [ %.val2.i.i41.i, %bb.k ], [ %.val.i.i40.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !184953 ; 2 uses
  %.sroa.0.0.i45.i = phi i64 [ %i.o, %bb.k ], [ %i.bl, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i16.i ], !dbg !184954
  %i.bu = icmp samesign ult i64 %i.bm, %.sroa.20.0134, !dbg !184955
  call void @llvm.assume(i1 %i.bu), !dbg !184956
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %i.bm, !dbg !184957
  %.val.i1.i46.i = load float, ptr %i.bv, align 4, !dbg !184953, !alias.scope !184809, !noalias !184810, !noundef !5061 ; 3 uses
  %i.bw = fcmp ord float %.val.i1.i46.i, 0.000000e+00, !dbg !184958
  %i.bx = fcmp ult float %.val.i1.i46.i, %.val2.i2.i44.i, !dbg !184959
  %.not2.i.i.i.i3.i47.i = and i1 %i.bw, %i.bx, !dbg !184960 ; 3 uses
  %i.by = zext i1 %.not2.i.i.i.i3.i47.i to i64, !dbg !184953
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.by, !dbg !184953
  %.sroa.075.2.i = select i1 %.not2.i.i.i.i3.i47.i, i64 %i.bm, i64 %.sroa.075.1.i, !dbg !184953
  %.val.i5.i49.i = select i1 %.not2.i.i.i.i3.i47.i, float %.val.i1.i46.i, float %.val2.i2.i44.i, !dbg !184953 ; 2 uses
  %i.bz = fcmp ord float %.val.i5.i49.i, 0.000000e+00, !dbg !184961
  %i.ca = fcmp ult float %.val.i5.i49.i, %.val2.i6.i50.i, !dbg !184962
  %.not2.i.i.i.i7.i51.i = and i1 %i.bz, %i.ca, !dbg !184963 ; 2 uses
  %i.cb = zext i1 %.not2.i.i.i.i7.i51.i to i64, !dbg !184952
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.cb, !dbg !184952
  %spec.select112.i = select i1 %.not2.i.i.i.i7.i51.i, i64 %.sroa.0.0.i45.i, i64 %.sroa.075.2.i, !dbg !184952
  br label %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0Es0_0Cs1LHh8CLbVkQ_11polars_core.exit66.i, !dbg !184952

bb.l:                                             ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i
  %i.cc = lshr i64 %.sroa.20.0134, 1, !dbg !184964 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %.sroa.20.0134, !dbg !184965 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184811), !dbg !184966
  call void @llvm.experimental.noalias.scope.decl(metadata !184812), !dbg !184966
  %min.iters.check = icmp ult i64 %.sroa.20.0134, 16, !dbg !184967
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !184967

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  br label %vector.body, !dbg !184967

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !184968 ; 3 uses
  %i.ce = xor i64 %index, -1, !dbg !184969
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %index, !dbg !184970 ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cd, i64 %i.ce, !dbg !184971 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !184972 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !dbg !184972, !alias.scope !184813
  %wide.load386 = load <4 x float>, ptr %i.ch, align 4, !dbg !184972, !alias.scope !184813
  %i.ci = getelementptr i8, ptr %i.cg, i64 -12, !dbg !184972 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 -28, !dbg !184972 ; 2 uses
  %wide.load387 = load <4 x i32>, ptr %i.ci, align 4, !dbg !184972, !alias.scope !184814
  %wide.load388 = load <4 x i32>, ptr %i.cj, align 4, !dbg !184972, !alias.scope !184814
  %reverse = shufflevector <4 x i32> %wide.load387, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184972
  %reverse389 = shufflevector <4 x i32> %wide.load388, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184972
  store <4 x i32> %reverse, ptr %i.cf, align 4, !dbg !184972, !alias.scope !184813
  store <4 x i32> %reverse389, ptr %i.ch, align 4, !dbg !184972, !alias.scope !184813
  %reverse390 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184972
  %reverse391 = shufflevector <4 x float> %wide.load386, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !184972
  store <4 x float> %reverse390, ptr %i.ci, align 4, !dbg !184972, !alias.scope !184814
  store <4 x float> %reverse391, ptr %i.cj, align 4, !dbg !184972, !alias.scope !184814
  %index.next = add nuw i64 %index, 8, !dbg !184968 ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec, !dbg !184967
  br i1 %i.ck, label %middle.block, label %vector.body, !dbg !184967, !llvm.loop !184498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec, !dbg !184967
  br i1 %cmp.n, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !184967

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %bb.l, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %bb.l ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !184967

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.cl = xor i64 %.sroa.0.016.i.i, -1, !dbg !184969
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.016.i.i, !dbg !184970 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cd, i64 %i.cl, !dbg !184971 ; 2 uses
  %i.co = load float, ptr %i.cm, align 4, !dbg !184972, !alias.scope !184813, !noundef !5061
  %i.cp = load i32, ptr %i.cn, align 4, !dbg !184972, !alias.scope !184814
  store i32 %i.cp, ptr %i.cm, align 4, !dbg !184972, !alias.scope !184813
  store float %i.co, ptr %i.cn, align 4, !dbg !184972, !alias.scope !184814
  %i.cq = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !184968 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %i.cc, !dbg !184967
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !184967, !llvm.loop !184499

_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block
  %i.cr = xor i64 %.sroa.0.1.i, -1, !dbg !184973
  %i.cs = add nsw i64 %.sroa.20.0134, %i.cr, !dbg !184973
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !184974

_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i: ; preds = %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.069.3111.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i ], [ %.sroa.069.2.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.ct = phi i64 [ 1, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.i ], [ %.sroa.0.2104.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.cu = icmp eq i64 %i.ct, 0, !dbg !184975
  br label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !184974

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cu, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i ], [ true, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !184976
  %.sroa.0.0.i = phi i64 [ %.sroa.069.3111.i, %_RNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB6_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit12.thread.i ], [ %i.cs, %_RINvNvMNtCscgRAwXFJnXP_4core5sliceSp7reverse7revswapfECs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !184976 ; 6 uses
  %i.cv = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !dbg !184977, !prof !5846
  br i1 %i.cv, label %bb.n, label %bb.m, !dbg !184977, !prof !5820

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  br i1 %.not, label %bb.p, label %bb.o, !dbg !184978

bb.n:                                             ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort12choose_pivotfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.cw = call fastcc noundef zeroext i1 @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort22partial_insertion_sortfNCINvYSfINtB4_16ParallelSliceMutfE20par_sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %.sroa.0.0135, i64 noundef %.sroa.20.0134, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !184979
  br i1 %i.cw, label %.loopexit, label %bb.m, !dbg !184979

bb.o:                                             ; preds = %bb.m
  %i.cx = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134, !dbg !184980
  br i1 %i.cx, label %bb.ae, label %bb.af, !dbg !184980

bb.p:                                             ; preds = %bb.ae, %bb.m
  %.sroa.0.0135.lcssa161 = phi ptr [ %.sroa.0.0135, %bb.ae ], [ %.sroa.0.0.ph143, %bb.m ] ; 12 uses
  %.sroa.20.0134.lcssa152 = phi i64 [ %.sroa.20.0134, %bb.ae ], [ %.sroa.20.0.ph142, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184815), !dbg !184981
  %i.cy = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134.lcssa152, !dbg !184982
  br i1 %i.cy, label %.lr.ph.preheader.i, label %bb.q, !dbg !184982

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 2305843009213693952) %.sroa.20.0134.lcssa152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !dbg !184982, !noalias !184815
  unreachable, !dbg !184982

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0135.lcssa161, i64 %.sroa.0.0.i, !dbg !184983 ; 2 uses
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.0.0135.lcssa161, align 4, !dbg !184984, !alias.scope !184815
  %i.da = load i32, ptr %i.cz, align 4, !dbg !184985, !alias.scope !184815
  store i32 %i.da, ptr %.sroa.0.0135.lcssa161, align 4, !dbg !184985, !alias.scope !184815
  store i32 %.sroa.013.0.copyload.i, ptr %i.cz, align 4, !dbg !184986, !alias.scope !184815
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0135.lcssa161, i64 4, !dbg !184987 ; 3 uses
  %i.dc = add nsw i64 %.sroa.20.0134.lcssa152, -1, !dbg !184988 ; 7 uses
  %i.dd = load float, ptr %.sroa.0.0135.lcssa161, align 4, !dbg !184989, !alias.scope !184815, !noundef !5061 ; 10 uses
  br label %.lr.ph.i, !dbg !184990

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.dc, %bb.r ], [ %.sroa.0.010.i, %.lr.ph.i ] ; 6 uses
  %.not.i.not.not.not377.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.dc, !dbg !184991
  br i1 %.not.i.not.not.not377.not, label %.lr.ph380, label %._crit_edge, !dbg !184991

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.010.i = phi i64 [ %i.dh, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.0.010.i, !dbg !184992
  %.val27.i = load float, ptr %i.de, align 4, !dbg !184990, !alias.scope !184816, !noundef !5061 ; 2 uses
  %i.df = fcmp ord float %.val27.i, 0.000000e+00, !dbg !184993
  %i.dg = fcmp ult float %.val27.i, %i.dd, !dbg !184994
  %.not2.i.i.i.i = and i1 %i.df, %i.dg, !dbg !184995
  br i1 %.not2.i.i.i.i, label %bb.r, label %._crit_edge.i, !dbg !184990

bb.r:                                             ; preds = %.lr.ph.i
  %i.dh = add nuw nsw i64 %.sroa.0.010.i, 1, !dbg !184996 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %i.dc, !dbg !184997
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !184997

bb.s:                                             ; preds = %.lr.ph380
  %.not.i.not.not.not.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.dj, !dbg !184991
  br i1 %.not.i.not.not.not.not, label %.lr.ph380, label %._crit_edge, !dbg !184991

._crit_edge:                                      ; preds = %bb.s, %.lr.ph380, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.dc, %._crit_edge.i ], [ %i.dj, %bb.s ], [ %.sroa.07.0.i378, %.lr.ph380 ], !dbg !184998 ; 3 uses
  %.not.i.not.not.not.lcssa = phi i8 [ 1, %._crit_edge.i ], [ 1, %bb.s ], [ 0, %.lr.ph380 ], !dbg !184991
  %i.di = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i, !dbg !184999
  br i1 %i.di, label %bb.ac, label %bb.t, !dbg !184999, !prof !5686

.lr.ph380:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i378 = phi i64 [ %i.dj, %bb.s ], [ %i.dc, %._crit_edge.i ] ; 3 uses
  %i.dj = add nsw i64 %.sroa.07.0.i378, -1, !dbg !185000 ; 4 uses
  %i.dk = icmp ult i64 %i.dj, %i.dc, !dbg !185001
  call void @llvm.assume(i1 %i.dk), !dbg !185002
  %i.dl = getelementptr [4 x i8], ptr %.sroa.0.0135.lcssa161, i64 %.sroa.07.0.i378, !dbg !185003
  %.val25.i = load float, ptr %i.dl, align 4, !dbg !185004, !alias.scope !184816, !noundef !5061 ; 2 uses
  %i.dm = fcmp ord float %.val25.i, 0.000000e+00, !dbg !185005
  %i.dn = fcmp ult float %.val25.i, %i.dd, !dbg !185006
  %.not2.i.i.i30.i = and i1 %i.dm, %i.dn, !dbg !185007
  br i1 %.not2.i.i.i30.i, label %._crit_edge, label %bb.s, !dbg !185004

bb.t:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.0.0.lcssa.ph.i, !dbg !185008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184818), !dbg !185009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !185010, !noalias !184819
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.07.0.i.lcssa, !dbg !185011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !185012, !noalias !184819
  br label %bb.u, !dbg !185013

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ], !dbg !185014 ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ], !dbg !185015 ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ], !dbg !185016 ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ], !dbg !185017 ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.dp, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ], !dbg !185018 ; 12 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ], !dbg !185019 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ], !dbg !185020 ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.do, %bb.t ], [ %spec.select.i.i, %bb.y ], !dbg !185021 ; 8 uses
  %i.dq = ptrtoint ptr %.sroa.032.0.i.i to i64, !dbg !185022
  %i.dr = ptrtoint ptr %.sroa.01.0.i.i to i64, !dbg !185023
  %i.ds = sub i64 %i.dq, %i.dr, !dbg !185024      ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 1028, !dbg !185025  ; 2 uses
  br i1 %i.dt, label %bb.w, label %bb.v, !dbg !185026

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.eb, %bb.x ], !dbg !185017 ; 7 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.ea, %bb.x ], !dbg !185027 ; 7 uses
  %i.du = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !185028
  br i1 %i.du, label %.preheader8.i.i, label %.loopexit9.i.i, !dbg !185028

.preheader8.i.i:                                  ; preds = %bb.v
  %.not28.i.i = icmp eq i64 %.sroa.015.1.i.i, 0, !dbg !185029
  br i1 %.not28.i.i, label %.loopexit9.i.i, label %.lr.ph.i.i.preheader, !dbg !185030

.lr.ph.i.i.preheader:                             ; preds = %.preheader8.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 1, !dbg !185030
  %i.dv = icmp eq i64 %.sroa.015.1.i.i, 1, !dbg !185030
  br i1 %i.dv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !185030

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -2, !dbg !185030
  br label %.lr.ph.i.i, !dbg !185030

bb.w:                                             ; preds = %bb.u
  %i.dw = lshr i64 %i.ds, 2, !dbg !185024         ; 3 uses
  %i.dx = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i, !dbg !185031 ; 3 uses
  %i.dy = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy, !dbg !185031 ; 2 uses
  %i.dz = add nsw i64 %i.dw, -128, !dbg !185031   ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.dz, i64 %i.dw, !dbg !185031
  %.sroa.060.0.mux.i.i = select i1 %i.dx, i64 %i.dz, i64 %.sroa.044.0.i.i, !dbg !185032
  %.sroa.015.0.mux.i.i = select i1 %i.dx, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i, !dbg !185032
  br i1 %or.cond.i.i, label %bb.v, label %bb.x, !dbg !185032

bb.x:                                             ; preds = %bb.w
  %i.ea = lshr i64 %i.ds, 3, !dbg !185033         ; 2 uses
  %i.eb = sub nsw i64 %i.dw, %i.ea, !dbg !185034
  br label %bb.v, !dbg !185035

.loopexit9.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !185030
  br i1 %lcmp.mod.not, label %.loopexit9.i.i, label %.lr.ph.i.i.epil.preheader, !dbg !185030

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit9.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.012.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.eq, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %.sroa.068.211.i.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.i.preheader ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, %.loopexit9.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0106.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.el, %.loopexit9.i.i.loopexit.unr-lcssa ]
  %lcmp.mod464 = trunc i64 %.sroa.015.1.i.i to i1, !dbg !185030
  call void @llvm.assume(i1 %lcmp.mod464), !dbg !185030
  %i.ec = trunc i64 %.sroa.0106.010.i.i.epil.init to i8, !dbg !185036
  store i8 %i.ec, ptr %.sroa.068.211.i.i.epil.init, align 1, !dbg !185036, !noalias !184819
  %.sroa.065.0.val.i.i.epil = load float, ptr %.sroa.065.012.i.i.epil.init, align 4, !dbg !185037, !alias.scope !184821, !noundef !5061 ; 2 uses
  %i.ed = fcmp uno float %.sroa.065.0.val.i.i.epil, 0.000000e+00, !dbg !185038
  %i.ee = fcmp oge float %.sroa.065.0.val.i.i.epil, %i.dd, !dbg !185039
  %.not2.i.i.i.not.i.i.epil = or i1 %i.ed, %i.ee, !dbg !185040
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %.not2.i.i.i.not.i.i.epil to i64, !dbg !185041
  %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.211.i.i.epil.init, i64 %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx, !dbg !185041
  br label %.loopexit9.i.i, !dbg !185042

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit9.i.i.loopexit.unr-lcssa, %.preheader8.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.b, %.preheader8.i.i ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, %.loopexit9.i.i.loopexit.unr-lcssa ], [ %.sroa.sel119.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil.preheader ], !dbg !185015 ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.b, %.preheader8.i.i ], [ %i.b, %.loopexit9.i.i.loopexit.unr-lcssa ], [ %i.b, %.lr.ph.i.i.epil.preheader ], !dbg !185019 ; 6 uses
  %i.ef = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i, !dbg !185042
  br i1 %i.ef, label %.preheader7.i.i, label %.loopexit.i.i, !dbg !185042

end_hunk_3
