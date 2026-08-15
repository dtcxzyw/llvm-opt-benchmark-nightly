inline.NumInlined: 184
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed8set_year:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !2813, !alias.scope !2809
  store i32 %i.c, ptr %i.e, align 4, !dbg !2813, !alias.scope !2809
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECs2c5WrizoNH7_11polars_json.exit, !dbg !2814

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 1, %bb.b ], !dbg !2815
  ret i8 %.sroa.0.0, !dbg !2816
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed9set_month(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2817 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !2818
  %or.cond = icmp ult i64 %i.a, 12, !dbg !2818
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECs2c5WrizoNH7_11polars_json.exit, !dbg !2818

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2822 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !2823  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !2824, !range !1997, !alias.scope !2826, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !2824 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !2829
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !2826
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !2829
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECs2c5WrizoNH7_11polars_json.exit, label %bb.c, !dbg !2829

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !2830, !alias.scope !2826
  store i32 %i.c, ptr %i.e, align 4, !dbg !2830, !alias.scope !2826
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECs2c5WrizoNH7_11polars_json.exit, !dbg !2831

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !2832
  ret i8 %.sroa.0.0, !dbg !2833
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2c5WrizoNH7_11polars_json(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 !dbg !2834 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !2840, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2841
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2843
  %i.d = load i64, ptr %i.c, align 8, !dbg !2843, !noundef !13 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11, !dbg !2844
  tail call void @llvm.assume(i1 %i.e), !dbg !2852
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !2853
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !2854
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d, !dbg !2856
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0, !dbg !2860
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1, !dbg !2860
  ret { ptr, ptr } %i.j, !dbg !2860
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeE7next_kvCs2c5WrizoNH7_11polars_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 !dbg !2861 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2863
  %i.b = load i64, ptr %i.a, align 8, !dbg !2863, !noundef !13 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !2863, !nonnull !13, !noundef !13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2863
  %i.e = load i64, ptr %i.d, align 8, !dbg !2863, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 538, !dbg !2864
  %i.g = load i16, ptr %i.f, align 2, !dbg !2864, !noundef !13
  %i.h = zext i16 %i.g to i64, !dbg !2871
  %i.i = icmp ult i64 %i.e, %i.h, !dbg !2876
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !2876

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.020 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.019 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.020, align 8, !dbg !2877, !noalias !2882, !noundef !13 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null, !dbg !2885
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !2888

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64, !dbg !2889
  br label %._crit_edge, !dbg !2899

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ], !dbg !2901
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ], !dbg !2901
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ], !dbg !2901
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !dbg !2899
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2899
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !2899
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2899
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !2899
  br label %bb.d, !dbg !2902

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2904
  store ptr %.sroa.0.020, ptr %i.l, align 8, !dbg !2904
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2904
  store i64 %.sroa.5.019, ptr %i.m, align 8, !dbg !2904
  store ptr null, ptr %0, align 8, !dbg !2904
  br label %bb.d, !dbg !2902

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.5.019, 1, !dbg !2906      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 536, !dbg !2907
  %i.p = load i16, ptr %i.o, align 8, !dbg !2907, !noalias !2882 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 538, !dbg !2864
  %i.r = load i16, ptr %i.q, align 2, !dbg !2864, !noundef !13
  %i.s = icmp ult i16 %i.p, %i.r, !dbg !2876
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph, !dbg !2876

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void, !dbg !2908
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs2c5WrizoNH7_11polars_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 !dbg !2909 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2910
  %i.b = load i64, ptr %i.a, align 8, !dbg !2910, !noundef !13 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !2910, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2910
  %i.e = load i64, ptr %i.d, align 8, !dbg !2910, !noundef !13 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0, !dbg !2911
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !2911

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1, !dbg !2916
  store ptr %i.c, ptr %0, align 8, !dbg !2920
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2920
  store i64 0, ptr %i.h, align 8, !dbg !2920
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2920
  store i64 %i.g, ptr %i.i, align 8, !dbg !2920
  br label %bb.d, !dbg !2924

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11, !dbg !2925
  tail call void @llvm.assume(i1 %i.j), !dbg !2935
  %i.k = getelementptr i8, ptr %i.c, i64 552, !dbg !2936
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e, !dbg !2936 ; 2 uses
  %xtraiter = and i64 %i.b, 7, !dbg !2937         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2937
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !dbg !2937

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1, !dbg !2941 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !dbg !2941, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 544, !dbg !2942 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !2946 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !2946
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !dbg !2946, !llvm.loop !2948

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.prol, %.prol.preheader ]
  %.sroa.017.0.in.unr = phi ptr [ %i.l, %bb.c ], [ %i.m, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %i.n = icmp ult i64 %i.b, 8, !dbg !2937
  br i1 %i.n, label %.unr-lcssa, label %.new, !dbg !2937

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void, !dbg !2950

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in = phi ptr [ %i.w, %.new ], [ %.sroa.017.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0.in = phi i64 [ %.sroa.019.0.7, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 544, !dbg !2942
  %.sroa.017.0.1 = load ptr, ptr %i.o, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0.1, i64 544, !dbg !2942
  %.sroa.017.0.2 = load ptr, ptr %i.p, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.2, i64 544, !dbg !2942
  %.sroa.017.0.3 = load ptr, ptr %i.q, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.3, i64 544, !dbg !2942
  %.sroa.017.0.4 = load ptr, ptr %i.r, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.4, i64 544, !dbg !2942
  %.sroa.017.0.5 = load ptr, ptr %i.s, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.5, i64 544, !dbg !2942
  %.sroa.017.0.6 = load ptr, ptr %i.t, align 8, !dbg !2941, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.6, i64 544, !dbg !2942
  %.sroa.019.0.7 = add i64 %.sroa.019.0.in, -8, !dbg !2941 ; 2 uses
  %.sroa.017.0.7 = load ptr, ptr %i.u, align 8, !dbg !2941, !nonnull !13, !noundef !13 ; 2 uses
  %i.v = icmp eq i64 %.sroa.019.0.7, 0, !dbg !2946
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.7, i64 544, !dbg !2942
  br i1 %i.v, label %.unr-lcssa, label %.new, !dbg !2946

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.sroa.017.0.lcssa = phi ptr [ %.sroa.017.0.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.7, %.new ], !dbg !2941
  store ptr %.sroa.017.0.lcssa, ptr %0, align 8, !dbg !2951
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2951
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !dbg !2951
  br label %bb.d, !dbg !2957
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) initializes((16, 24)) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2958 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2963 ; 4 uses
  store i64 0, ptr %i.f, align 8, !dbg !2963
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3), !dbg !2967
  %i.g = load i64, ptr %i.f, align 8, !dbg !2979, !alias.scope !2982, !noundef !13 ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1, !dbg !2985
  tail call void @llvm.assume(i1 %i.h), !dbg !2987
  %.not.i = icmp eq i64 %3, 0, !dbg !2988
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !2988

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2990
  %i.j = load ptr, ptr %i.i, align 8, !dbg !2990, !alias.scope !2982, !nonnull !13, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g, !dbg !2999
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !dbg !3002
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !3005, !alias.scope !2982
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json.exit, !dbg !3006

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %.pre.i, %bb.b ], [ %i.g, %bb.a ], !dbg !3005
  %i.m = add i64 %i.l, %3, !dbg !3005             ; 2 uses
  store i64 %i.m, ptr %i.f, align 8, !dbg !3005, !alias.scope !2982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3007
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3008
  %i.o = load ptr, ptr %i.n, align 8, !dbg !3008, !nonnull !13, !noundef !13
  call void @_RNvNtNtCshSReUCO0YaO_9simd_json5value8borrowed8to_value(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull %i.o, i64 noundef %i.m), !dbg !3007
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !3026
  %i.q = load i32, ptr %i.p, align 8, !dbg !3026, !range !3029, !noundef !13
  %.not = icmp eq i32 %i.q, 1114113, !dbg !3026
  br i1 %.not, label %bb.k, label %bb.c, !dbg !3030

bb.c:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 16 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !3033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034), !dbg !3031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3037, !noalias !3041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3043, !noalias !3041
  store ptr %i.d, ptr %i.a, align 8, !dbg !3043, !noalias !3041
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3043
  store ptr @_RNvXs2_NtCshSReUCO0YaO_9simd_json5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !3043, !noalias !3041
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.d, !dbg !3047, !noalias !3058

bb.d:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2c5WrizoNH7_11polars_json.exit.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshSReUCO0YaO_9simd_json5error5ErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #23
          to label %common.resume.i unwind label %bb.j, !dbg !3059, !noalias !3058

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3037, !noalias !3041
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %bb.e unwind label %bb.d, !dbg !3060, !noalias !3058

bb.e:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.4.sroa.0.0.copyload1 = load <24 x i8>, ptr %i.c, align 8, !dbg !3065, !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3059, !noalias !3041
  call void @llvm.experimental.noalias.scope.decl(metadata !3066), !dbg !3059
  call void @llvm.experimental.noalias.scope.decl(metadata !3069), !dbg !3072
  %i.s = load i8, ptr %i.d, align 8, !dbg !3074, !range !609, !alias.scope !3076, !noalias !3058, !noundef !13 ; 2 uses
  %i.t = icmp samesign ugt i8 %i.s, 12, !dbg !3074
  %i.u = zext nneg i8 %i.s to i64, !dbg !3074
  %i.v = add nsw i64 %i.u, -12, !dbg !3074
  %i.w = select i1 %i.t, i64 %i.v, i64 0, !dbg !3074
  switch i64 %i.w, label %bb.f [
    i64 0, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 1, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 2, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 3, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 4, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 5, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 6, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 7, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 8, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 9, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 10, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 11, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 12, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 13, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 14, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 15, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 16, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 17, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 18, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 19, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 20, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 21, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 22, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 23, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 24, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 25, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 26, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 27, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 28, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 29, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 30, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 31, label %bb.g
    i64 32, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 33, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 34, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 35, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 36, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 37, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 38, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 39, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
    i64 40, label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
  ], !dbg !3074

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3074
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !dbg !3074, !alias.scope !3076, !noalias !3058, !nonnull !13, !noundef !13
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2c5WrizoNH7_11polars_json(ptr nonnull %.val.i.i.i), !dbg !3074, !noalias !3077
  br label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit, !dbg !3074

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3074 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2c5WrizoNH7_11polars_json.exit.i.i.i unwind label %bb.h, !dbg !3078, !noalias !3058

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.i, !dbg !3081, !noalias !3058

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !3078, !noalias !3058
  unreachable, !dbg !3078

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !3083

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y), !dbg !3084, !noalias !3058
  br label %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit, !dbg !3074

bb.j:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !3086, !noalias !3058
  unreachable, !dbg !3086

_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit: ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2c5WrizoNH7_11polars_json.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3088
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3089
  store i64 2, ptr %i.ac, align 8, !dbg !3089
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3089
  store <24 x i8> %.sroa.4.sroa.0.0.copyload1, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !3089
  br label %bb.l, !dbg !3090

bb.k:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ad, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !3093
  br label %bb.l, !dbg !3094

bb.l:                                             ; preds = %bb.k, %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit
  %storemerge = phi i64 [ 1, %_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_.exit ], [ 0, %bb.k ], !dbg !3095
  store i64 %storemerge, ptr %0, align 16, !dbg !3095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3096
  ret void, !dbg !3097
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 -1, 10) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1784 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.not = icmp eq i64 %3, 0, !dbg !3098
  br i1 %.not, label %bb.b, label %bb.c, !dbg !3098, !prof !754

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !dbg !3099
  unreachable, !dbg !3099

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0, !dbg !3100
  br i1 %i.b, label %bb.e, label %bb.d, !dbg !3100

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !3101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3105
  store ptr %1, ptr %i.a, align 8, !dbg !3105
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3105
  store ptr %i.c, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !dbg !3105
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3105
  store i64 %3, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !3105
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3105 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3105
  %i.d = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !3106, !noalias !3108 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0, !dbg !3106
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !3111

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3113
  store i8 4, ptr %i.f, align 8, !dbg !3113
  store ptr null, ptr %0, align 8, !dbg !3113
  br label %bb.i, !dbg !3114

.lr.ph:                                           ; preds = %bb.d, %bb.s
  %i.g = phi { i1, i8 } [ %i.af, %bb.s ], [ %i.d, %bb.d ]
  %.sroa.011.051 = phi i64 [ %i.ae, %bb.s ], [ 0, %bb.d ] ; 2 uses
  %i.h = extractvalue { i1, i8 } %i.g, 1, !dbg !3106
  %i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3116, !alias.scope !3117, !noalias !3108, !noundef !13 ; 8 uses
  %i.j = add i64 %i.i, 1, !dbg !3119
  store i64 %i.j, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3119, !alias.scope !3117, !noalias !3108
  %i.k = add i8 %i.h, -48, !dbg !3120             ; 2 uses
  %or.cond = icmp ult i8 %i.k, 10, !dbg !3120
  br i1 %or.cond, label %bb.k, label %bb.j, !dbg !3120

._crit_edge:                                      ; preds = %bb.s, %bb.d
  %.sroa.011.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.s ], !dbg !3122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3123
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 range(i64 -1, 10) %3), !dbg !3124 ; 4 uses
  %.not.i = icmp ult i64 %3, %2, !dbg !3130
  br i1 %.not.i, label %bb.f, label %bb.g, !dbg !3130

bb.f:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i, !dbg !3137
  %i.m = load i8, ptr %i.l, align 1, !dbg !3137, !alias.scope !3138, !noundef !13
  %i.n = icmp sgt i8 %i.m, -65, !dbg !3141
  br i1 %i.n, label %bb.g, label %bb.h, !dbg !3143

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.o = sub nuw i64 %2, %.sroa.0.0.i, !dbg !3144
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i, !dbg !3147
  store ptr %i.p, ptr %0, align 8, !dbg !3149
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3149
  store i64 %i.o, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !3149
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3149
  store i64 %.sroa.011.0.lcssa, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !3149
  br label %bb.i, !dbg !3150

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0.i, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !dbg !3151
  unreachable, !dbg !3151

bb.i:                                             ; preds = %bb.q, %bb.g, %bb.e
  ret void, !dbg !3150

bb.j:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.i, 0, !dbg !3152
  br i1 %i.q, label %bb.n, label %bb.l, !dbg !3152

bb.k:                                             ; preds = %.lr.ph
  %i.r = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.011.051, i64 10), !dbg !3153 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1, !dbg !3153
  br i1 %i.s, label %bb.t, label %bb.r, !dbg !3156, !prof !754

bb.l:                                             ; preds = %bb.j
  %.not.i32 = icmp ult i64 %i.i, %2, !dbg !3158
  br i1 %.not.i32, label %bb.m, label %.split.i33, !dbg !3158

.split.i33:                                       ; preds = %bb.l
  %i.t = icmp eq i64 %i.i, %2, !dbg !3163
  br i1 %i.t, label %bb.o, label %bb.p, !dbg !3164

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.i, !dbg !3165
  %i.v = load i8, ptr %i.u, align 1, !dbg !3165, !alias.scope !3166, !noundef !13
  %i.w = icmp sgt i8 %i.v, -65, !dbg !3169
  br i1 %i.w, label %bb.o, label %bb.p, !dbg !3164

bb.n:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3171
  store i8 3, ptr %i.x, align 8, !dbg !3171
  store ptr null, ptr %0, align 8, !dbg !3171
  br label %bb.q, !dbg !3172

bb.o:                                             ; preds = %bb.m, %.split.i33
  %i.y = sub nuw i64 %2, %i.i, !dbg !3173
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.i, !dbg !3176
  store ptr %i.z, ptr %0, align 8, !dbg !3178
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3178
  store i64 %i.y, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !3178
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3178
  store i64 %.sroa.011.051, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !3178
  br label %bb.q, !dbg !3179

bb.p:                                             ; preds = %bb.m, %.split.i33
  call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.i, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !dbg !3181
  unreachable, !dbg !3181

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3123
  br label %bb.i, !dbg !3114

bb.r:                                             ; preds = %bb.k
  %i.aa = extractvalue { i64, i1 } %i.r, 0, !dbg !3153
  %i.ab = zext nneg i8 %i.k to i64, !dbg !3182
  %i.ac = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 %i.ab), !dbg !3185 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1, !dbg !3185
  br i1 %i.ad, label %bb.t, label %bb.s, !dbg !3188, !prof !754

bb.s:                                             ; preds = %bb.r
  %i.ae = extractvalue { i64, i1 } %i.ac, 0, !dbg !3185 ; 2 uses
  %i.af = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !3106, !noalias !3108 ; 2 uses
  %i.ag = extractvalue { i1, i8 } %i.af, 0, !dbg !3106
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !dbg !3111

bb.t:                                             ; preds = %bb.r, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3190
  store i8 0, ptr %i.ah, align 8, !dbg !3190
  store ptr null, ptr %0, align 8, !dbg !3190
  br label %bb.q, !dbg !3179
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3191 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3194, !nonnull !13, !align !658, !noundef !13
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !dbg !3195
  ret i1 false, !dbg !3201
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !3202 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3204, !nonnull !13, !align !658, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205), !dbg !3208
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3209
  %i.c = load ptr, ptr %i.b, align 8, !dbg !3209, !alias.scope !3205, !noalias !3215, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3209
  %i.e = load i64, ptr %i.d, align 8, !dbg !3209, !alias.scope !3205, !noalias !3215, !noundef !13
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !3209, !noalias !3205
  ret i1 %i.f, !dbg !3217
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCskvxhC2XdrPP_11value_trait4node10StaticNodeNtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !3218 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !3219, !nonnull !13, !align !3220, !noundef !13 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221), !dbg !3224
  %i.h = load i8, ptr %i.g, align 16, !dbg !3225, !range !3232, !alias.scope !3221, !noalias !3233, !noundef !13
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ], !dbg !3225

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3235, !noalias !3236
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3235
  store ptr %i.i, ptr %i.f, align 8, !dbg !3235, !noalias !3236
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37), !dbg !3237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3239, !noalias !3236
  br label %_RNvXs7_NtCskvxhC2XdrPP_11value_trait4nodeNtB5_10StaticNodeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.exit, !dbg !3239
end_hunk_0
begin_hunk_1_@llvm.abs.i32
!2890 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1w_NtNtCscgRAwXFJnXP_4core7convert3numjINtB8_4FromtE4from", scope: !2873, file: !2565, line: 79, type: !12, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2891 = distinct !DILocation(line: 342, column: 31, scope: !2892, inlinedAt: !2895)
!2892 = distinct !DISubprogram(name: "{closure#0}<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNCNvMse_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB7_7NodeRefNtNtB7_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1t_NtB1b_14LeafOrInternalE6ascend0Cs2c5WrizoNH7_11polars_json", scope: !2893, file: !2835, line: 340, type: !12, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2893 = !DINamespace(name: "ascend", scope: !2894)
!2894 = !DINamespace(name: "{impl#16}", scope: !2837)
!2895 = distinct !DILocation(line: 1165, column: 29, scope: !2896, inlinedAt: !2898)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !639, line: 1165, column: 13)
!2897 = distinct !DISubprogram(name: "map<&core::ptr::non_null::NonNull<alloc::collections::btree::node::InternalNode<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::{impl#16}::ascend::{closure_env#0}<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node12InternalNodeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEE3mapINtB1h_6HandleINtB1h_7NodeRefNtNtB1h_6marker5ImmutB2j_B2j_NtB3O_8InternalENtB3O_4EdgeENCNvMse_B1h_IB3y_B3M_B2j_B2j_NtB3O_14LeafOrInternalE6ascend0ECs2c5WrizoNH7_11polars_json", scope: !640, file: !639, line: 1160, type: !12, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2898 = distinct !DILocation(line: 340, column: 14, scope: !2878, inlinedAt: !2880)
!2899 = !DILocation(line: 389, column: 34, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2870, file: !2862, line: 389, column: 17)
!2901 = !DILocation(line: 0, scope: !2861)
!2902 = !DILocation(line: 0, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2870, file: !1460, discriminator: 0)
!2904 = !DILocation(line: 392, column: 41, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2881, file: !2862, line: 392, column: 21)
!2906 = !DILocation(line: 341, column: 55, scope: !2892, inlinedAt: !2895)
!2907 = !DILocation(line: 342, column: 43, scope: !2892, inlinedAt: !2895)
!2908 = !DILocation(line: 396, column: 6, scope: !2861)
!2909 = distinct !DISubprogram(name: "next_leaf_edge<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs2c5WrizoNH7_11polars_json", scope: !2836, file: !2862, line: 715, type: !12, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2910 = !DILocation(line: 718, column: 15, scope: !2909)
!2911 = !DILocation(line: 731, column: 12, scope: !2912, inlinedAt: !2913)
!2912 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsy_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1r_NtB19_14LeafOrInternalE5forceCs2c5WrizoNH7_11polars_json", scope: !2866, file: !2835, line: 725, type: !12, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2913 = !DILocation(line: 1687, column: 25, scope: !2914, inlinedAt: !2915)
!2914 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::KV>", linkageName: "_RNvMs14_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1F_NtB1n_14LeafOrInternalENtB1n_2KVE5forceCs2c5WrizoNH7_11polars_json", scope: !2836, file: !2835, line: 1681, type: !12, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2915 = !DILocation(line: 718, column: 20, scope: !2909)
!2916 = !DILocation(line: 812, column: 46, scope: !2917, inlinedAt: !2918)
!2917 = distinct !DISubprogram(name: "right_edge<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Leaf>", linkageName: "_RNvMsD_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_4LeafENtB1m_2KVE10right_edgeCs2c5WrizoNH7_11polars_json", scope: !2836, file: !2835, line: 811, type: !12, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2918 = !DILocation(line: 719, column: 38, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2909, file: !2862, line: 719, column: 13)
!2920 = !DILocation(line: 880, column: 9, scope: !2921, inlinedAt: !2922)
!2921 = distinct !DISubprogram(name: "new_edge<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Leaf>", linkageName: "_RNvMsI_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_4LeafENtB1m_4EdgeE8new_edgeCs2c5WrizoNH7_11polars_json", scope: !2836, file: !2835, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2922 = !DILocation(line: 812, column: 18, scope: !2923, inlinedAt: !2918)
!2923 = !DILexicalBlockFile(scope: !2917, file: !2835, discriminator: 2)
!2924 = !DILocation(line: 719, column: 49, scope: !2909)
!2925 = !DILocation(line: 252, column: 39, scope: !2926, inlinedAt: !2927)
!2926 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtNtB9_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB38_EEEE13get_uncheckedCs2c5WrizoNH7_11polars_json", scope: !2847, file: !2846, line: 239, type: !12, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2927 = !DILocation(line: 646, column: 26, scope: !2928, inlinedAt: !2929)
!2928 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitINtNtNtB5_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2F_EEE13get_uncheckedjECs2c5WrizoNH7_11polars_json", scope: !771, file: !769, line: 639, type: !12, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2929 = !DILocation(line: 1115, column: 49, scope: !2930, inlinedAt: !2932)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !2835, line: 1114, column: 9)
!2931 = distinct !DISubprogram(name: "descend<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsO_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_8InternalENtB1m_4EdgeE7descendCs2c5WrizoNH7_11polars_json", scope: !2836, file: !2835, line: 1102, type: !12, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2932 = !DILocation(line: 722, column: 36, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !2862, line: 721, column: 17)
!2934 = distinct !DILexicalBlock(scope: !2909, file: !2862, line: 720, column: 13)
!2935 = !DILocation(line: 252, column: 13, scope: !2926, inlinedAt: !2927)
!2936 = !DILocation(line: 253, column: 13, scope: !2926, inlinedAt: !2927)
!2937 = !DILocation(line: 634, column: 9, scope: !2938, inlinedAt: !2940)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !2862, line: 633, column: 9)
!2939 = distinct !DISubprogram(name: "first_leaf_edge<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsn_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1D_NtB1k_14LeafOrInternalE15first_leaf_edgeCs2c5WrizoNH7_11polars_json", scope: !2866, file: !2862, line: 630, type: !12, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2940 = !DILocation(line: 722, column: 46, scope: !2933)
!2941 = !DILocation(line: 722, scope: !2933)
!2942 = !DILocation(line: 1115, column: 29, scope: !2943, inlinedAt: !2944)
!2943 = distinct !DILexicalBlock(scope: !2931, file: !2835, line: 1114, column: 9)
!2944 = !DILocation(line: 637, column: 68, scope: !2945, inlinedAt: !2940)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !2862, line: 637, column: 17)
!2946 = !DILocation(line: 731, column: 12, scope: !2912, inlinedAt: !2947)
!2947 = !DILocation(line: 635, column: 24, scope: !2938, inlinedAt: !2940)
!2948 = distinct !{!2948, !2949}
!2949 = !{!"llvm.loop.unroll.disable"}
!2950 = !DILocation(line: 725, column: 6, scope: !2909)
!2951 = !DILocation(line: 880, column: 9, scope: !2921, inlinedAt: !2952)
!2952 = !DILocation(line: 349, column: 18, scope: !2953, inlinedAt: !2955)
!2953 = !DILexicalBlockFile(scope: !2954, file: !2835, discriminator: 2)
!2954 = distinct !DISubprogram(name: "first_edge<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Leaf>", linkageName: "_RNvMse_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1r_NtB19_4LeafE10first_edgeCs2c5WrizoNH7_11polars_json", scope: !2866, file: !2835, line: 348, type: !12, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2955 = !DILocation(line: 636, column: 43, scope: !2956, inlinedAt: !2940)
!2956 = distinct !DILexicalBlock(scope: !2938, file: !2862, line: 636, column: 17)
!2957 = !DILocation(line: 723, column: 13, scope: !2909)
!2958 = distinct !DISubprogram(name: "parse_value", linkageName: "_RNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value", scope: !2960, file: !2959, line: 89, type: !12, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2959 = !DIFile(filename: "crates/polars-json/src/ndjson/file.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "56e71d61c5ea1c2165f096ace525e719")
!2960 = !DINamespace(name: "file", scope: !2961)
!2961 = !DINamespace(name: "ndjson", scope: !2962)
!2962 = !DINamespace(name: "polars_json", scope: null)
!2963 = !DILocation(line: 3005, column: 13, scope: !2964, inlinedAt: !2966)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !27, line: 2996, column: 9)
!2965 = distinct !DISubprogram(name: "clear<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE5clearCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 2995, type: !12, scopeLine: 2995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2966 = !DILocation(line: 90, column: 13, scope: !2958)
!2967 = !DILocation(line: 2906, column: 14, scope: !2968, inlinedAt: !2970)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !27, line: 2905, column: 9)
!2969 = distinct !DISubprogram(name: "append_elements<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 2904, type: !12, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2970 = distinct !DILocation(line: 56, column: 23, scope: !2971, inlinedAt: !2976)
!2971 = distinct !DILexicalBlock(scope: !2973, file: !2972, line: 55, column: 9)
!2972 = !DIFile(filename: "library/alloc/src/vec/spec_extend.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "64fc232c5e502e0225698dc98d50caf8")
!2973 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhEE11spec_extendCs2c5WrizoNH7_11polars_json", scope: !2974, file: !2972, line: 54, type: !12, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2974 = !DINamespace(name: "{impl#4}", scope: !2975)
!2975 = !DINamespace(name: "spec_extend", scope: !29)
!2976 = !DILocation(line: 3527, column: 14, scope: !2977, inlinedAt: !2978)
!2977 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 3526, type: !12, scopeLine: 3526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2978 = !DILocation(line: 91, column: 13, scope: !2958)
!2979 = !DILocation(line: 3024, column: 19, scope: !2980, inlinedAt: !2981)
!2980 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 3023, type: !12, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2981 = distinct !DILocation(line: 2907, column: 24, scope: !2968, inlinedAt: !2970)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json: argument 0"}
!2984 = distinct !{!2984, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2c5WrizoNH7_11polars_json"}
!2985 = !DILocation(line: 3029, column: 37, scope: !2986, inlinedAt: !2981)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !27, line: 3024, column: 9)
!2987 = !DILocation(line: 3029, column: 18, scope: !2986, inlinedAt: !2981)
!2988 = !DILocation(line: 2908, column: 12, scope: !2989, inlinedAt: !2970)
!2989 = distinct !DILexicalBlock(scope: !2968, file: !27, line: 2907, column: 9)
!2990 = !DILocation(line: 614, column: 9, scope: !2991, inlinedAt: !2992)
!2991 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2c5WrizoNH7_11polars_json", scope: !58, file: !57, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2992 = distinct !DILocation(line: 609, column: 14, scope: !2993, inlinedAt: !2994)
!2993 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2c5WrizoNH7_11polars_json", scope: !58, file: !57, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2994 = distinct !DILocation(line: 296, column: 20, scope: !2995, inlinedAt: !2996)
!2995 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs2c5WrizoNH7_11polars_json", scope: !64, file: !57, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2996 = distinct !DILocation(line: 2026, column: 18, scope: !2997, inlinedAt: !2998)
!2997 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2998 = distinct !DILocation(line: 2910, column: 66, scope: !2989, inlinedAt: !2970)
!2999 = !DILocation(line: 961, column: 18, scope: !3000, inlinedAt: !3001)
!3000 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs2c5WrizoNH7_11polars_json", scope: !78, file: !77, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3001 = distinct !DILocation(line: 2910, column: 79, scope: !2989, inlinedAt: !2970)
!3002 = !DILocation(line: 552, column: 14, scope: !3003, inlinedAt: !3004)
!3003 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECs2c5WrizoNH7_11polars_json", scope: !80, file: !585, line: 531, type: !12, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3004 = distinct !DILocation(line: 2910, column: 17, scope: !2989, inlinedAt: !2970)
!3005 = !DILocation(line: 2913, column: 9, scope: !2989, inlinedAt: !2970)
!3006 = !DILocation(line: 2908, column: 9, scope: !2989, inlinedAt: !2970)
!3007 = !DILocation(line: 94, column: 5, scope: !2958)
!3008 = !DILocation(line: 614, column: 9, scope: !3009, inlinedAt: !3010)
!3009 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2c5WrizoNH7_11polars_json", scope: !58, file: !57, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3010 = !DILocation(line: 609, column: 14, scope: !3011, inlinedAt: !3013)
!3011 = !DILexicalBlockFile(scope: !3012, file: !57, discriminator: 2)
!3012 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2c5WrizoNH7_11polars_json", scope: !58, file: !57, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3013 = !DILocation(line: 296, column: 20, scope: !3014, inlinedAt: !3016)
!3014 = !DILexicalBlockFile(scope: !3015, file: !57, discriminator: 2)
!3015 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs2c5WrizoNH7_11polars_json", scope: !64, file: !57, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3016 = !DILocation(line: 2026, column: 18, scope: !3017, inlinedAt: !3019)
!3017 = !DILexicalBlockFile(scope: !3018, file: !27, discriminator: 2)
!3018 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3019 = !DILocation(line: 1877, column: 78, scope: !3020, inlinedAt: !3022)
!3020 = !DILexicalBlockFile(scope: !3021, file: !27, discriminator: 2)
!3021 = distinct !DISubprogram(name: "as_mut_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE12as_mut_sliceCs2c5WrizoNH7_11polars_json", scope: !28, file: !27, line: 1860, type: !12, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3022 = !DILocation(line: 3764, column: 14, scope: !3023, inlinedAt: !3025)
!3023 = distinct !DISubprogram(name: "deref_mut<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCs2c5WrizoNH7_11polars_json", scope: !3024, file: !27, line: 3763, type: !12, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3024 = !DINamespace(name: "{impl#10}", scope: !29)
!3025 = !DILocation(line: 94, column: 34, scope: !2958)
!3026 = !DILocation(line: 966, column: 15, scope: !3027, inlinedAt: !3028)
!3027 = distinct !DISubprogram(name: "map_err<simd_json::value::borrowed::Value, simd_json::error::Error, polars_error::PolarsError, polars_json::ndjson::file::parse_value::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueNtNtBO_5error5ErrorE7map_errNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0EB2O_", scope: !2440, file: !237, line: 962, type: !12, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3028 = !DILocation(line: 95, column: 10, scope: !2958)
!3029 = !{i32 0, i32 1114114}
!3030 = !DILocation(line: 966, column: 9, scope: !3027, inlinedAt: !3028)
!3031 = !DILocation(line: 968, column: 27, scope: !3032, inlinedAt: !3028)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !237, line: 968, column: 13)
!3033 = !DILocation(line: 968, column: 17, scope: !3027, inlinedAt: !3028)
!3034 = !{!3035}
!3035 = distinct !{!3035, !3036, !"_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_: argument 1"}
!3036 = distinct !{!3036, !"_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_"}
!3037 = !DILocation(line: 95, column: 48, scope: !3038, inlinedAt: !3040)
!3038 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_", scope: !3039, file: !2959, line: 95, type: !12, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3039 = !DINamespace(name: "parse_value", scope: !2960)
!3040 = distinct !DILocation(line: 968, column: 27, scope: !3032, inlinedAt: !3028)
!3041 = !{!3042, !3035}
!3042 = distinct !{!3042, !3036, !"_RNCNvNtNtCs2c5WrizoNH7_11polars_json6ndjson4file11parse_value0B7_: argument 0"}
!3043 = !DILocation(line: 95, column: 48, scope: !3044, inlinedAt: !3040)
!3044 = !DILexicalBlockFile(scope: !3045, file: !2959, discriminator: 0)
!3045 = distinct !DILexicalBlock(scope: !3038, file: !3046, line: 114, column: 33)
!3046 = !DIFile(filename: "library/alloc/src/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c06fded2c893c2cc0e8ea200156f1086")
!3047 = !DILocation(line: 659, column: 34, scope: !3048, inlinedAt: !3052)
!3048 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgZ49sUHp3tW_5alloc3fmt6format0Cs2c5WrizoNH7_11polars_json", scope: !3050, file: !3049, line: 659, type: !589, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3049 = !DIFile(filename: "library/alloc/src/fmt.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "ff238ed6a2e10a790bec34161252a63b")
!3050 = !DINamespace(name: "format", scope: !3051)
!3051 = !DINamespace(name: "fmt", scope: !30)
!3052 = distinct !DILocation(line: 1278, column: 21, scope: !3053, inlinedAt: !3054)
!3053 = distinct !DISubprogram(name: "map_or_else<&str, alloc::string::String, alloc::fmt::format::{closure_env#0}, fn(&str) -> alloc::string::String>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2c5WrizoNH7_11polars_json", scope: !640, file: !639, line: 1271, type: !589, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3054 = distinct !DILocation(line: 659, column: 19, scope: !3055, inlinedAt: !3056)
!3055 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !3051, file: !3049, line: 649, type: !12, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3056 = distinct !DILocation(line: 95, column: 48, scope: !3057, inlinedAt: !3040)
!3057 = !DILexicalBlockFile(scope: !3038, file: !2959, discriminator: 4)
!3058 = !{!3042}
!3059 = !DILocation(line: 95, column: 69, scope: !3038, inlinedAt: !3040)
!3060 = !DILocation(line: 778, column: 9, scope: !3061, inlinedAt: !3064)
!3061 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCs2c5WrizoNH7_11polars_json", scope: !3063, file: !3062, line: 777, type: !12, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3062 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!3063 = !DINamespace(name: "{impl#3}", scope: !2570)
!3064 = distinct !DILocation(line: 95, column: 63, scope: !3038, inlinedAt: !3040)
!3065 = !DILocation(line: 95, column: 22, scope: !3038, inlinedAt: !3040)
!3066 = !{!3067}
!3067 = distinct !{!3067, !3068, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshSReUCO0YaO_9simd_json5error5ErrorECs2c5WrizoNH7_11polars_json: argument 0"}
!3068 = distinct !{!3068, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshSReUCO0YaO_9simd_json5error5ErrorECs2c5WrizoNH7_11polars_json"}
!3069 = !{!3070}
!3070 = distinct !{!3070, !3071, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshSReUCO0YaO_9simd_json5error9ErrorTypeECs2c5WrizoNH7_11polars_json: argument 0"}
!3071 = distinct !{!3071, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshSReUCO0YaO_9simd_json5error9ErrorTypeECs2c5WrizoNH7_11polars_json"}
!3072 = !DILocation(line: 810, column: 1, scope: !601, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 95, column: 69, scope: !3038, inlinedAt: !3040)
!3074 = !DILocation(line: 810, column: 1, scope: !607, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 810, column: 1, scope: !601, inlinedAt: !3073)
!3076 = !{!3070, !3067, !3035}
!3077 = !{!3070, !3067, !3042}
!3078 = !DILocation(line: 810, column: 1, scope: !593, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 810, column: 1, scope: !591, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 810, column: 1, scope: !607, inlinedAt: !3075)
!3081 = !DILocation(line: 810, column: 1, scope: !596, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 810, column: 1, scope: !593, inlinedAt: !3079)
!3083 = !DILocation(line: 95, scope: !3038, inlinedAt: !3040)
!3084 = !DILocation(line: 810, column: 1, scope: !596, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 810, column: 1, scope: !593, inlinedAt: !3079)
!3086 = !DILocation(line: 95, column: 18, scope: !3038, inlinedAt: !3040)
!3087 = !DILocation(line: 95, column: 70, scope: !3038, inlinedAt: !3040)
!3088 = !DILocation(line: 968, column: 31, scope: !3032, inlinedAt: !3028)
!3089 = !DILocation(line: 968, column: 23, scope: !3032, inlinedAt: !3028)
!3090 = !DILocation(line: 968, column: 32, scope: !3027, inlinedAt: !3028)
!3091 = !DILocation(line: 967, column: 22, scope: !3092, inlinedAt: !3028)
!3092 = distinct !DILexicalBlock(scope: !3027, file: !237, line: 967, column: 13)
!3093 = !DILocation(line: 967, column: 16, scope: !3027, inlinedAt: !3028)
!3094 = !DILocation(line: 970, column: 5, scope: !3027, inlinedAt: !3028)
!3095 = !DILocation(line: 0, scope: !3027, inlinedAt: !3028)
!3096 = !DILocation(line: 95, column: 70, scope: !2958)
!3097 = !DILocation(line: 96, column: 2, scope: !2958)
!3098 = !DILocation(line: 18, column: 13, scope: !1784)
!3099 = !DILocation(line: 18, column: 5, scope: !1784)
!3100 = !DILocation(line: 24, column: 8, scope: !1783)
!3101 = !DILocation(line: 961, column: 18, scope: !1770, inlinedAt: !3102)
!3102 = !DILocation(line: 102, column: 78, scope: !1772, inlinedAt: !3103)
!3103 = !DILocation(line: 1041, column: 9, scope: !1779, inlinedAt: !3104)
!3104 = !DILocation(line: 29, column: 25, scope: !1781)
!3105 = !DILocation(line: 29, column: 19, scope: !1781)
!3106 = !DILocation(line: 80, column: 27, scope: !1791, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 29, column: 19, scope: !1798)
!3108 = !{!3109}
!3109 = distinct !{!3109, !3110, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json: argument 0"}
!3110 = distinct !{!3110, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json"}
!3111 = !DILocation(line: 2778, column: 9, scope: !1800, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 80, column: 17, scope: !1791, inlinedAt: !3107)
!3113 = !DILocation(line: 25, column: 16, scope: !1783)
!3114 = !DILocation(line: 0, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !1783, file: !1460, discriminator: 0)
!3116 = !DILocation(line: 81, column: 17, scope: !1804, inlinedAt: !3107)
!3117 = !{!3118}
!3118 = distinct !{!3118, !3110, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json: argument 1"}
!3119 = !DILocation(line: 82, column: 9, scope: !1811, inlinedAt: !3107)
!3120 = !DILocation(line: 917, column: 25, scope: !1813, inlinedAt: !3121)
!3121 = !DILocation(line: 31, column: 15, scope: !1817)
!3122 = !DILocation(line: 0, scope: !1783)
!3123 = !DILocation(line: 43, column: 5, scope: !1781)
!3124 = !DILocation(line: 1077, column: 12, scope: !3125, inlinedAt: !3127)
!3125 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCs2c5WrizoNH7_11polars_json", scope: !3126, file: !114, line: 1073, type: !12, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3126 = !DINamespace(name: "Ord", scope: !116)
!3127 = distinct !DILocation(line: 1576, column: 8, scope: !3128, inlinedAt: !3129)
!3128 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECs2c5WrizoNH7_11polars_json", scope: !116, file: !114, line: 1575, type: !12, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3129 = !DILocation(line: 45, column: 12, scope: !1781)
!3130 = !DILocation(line: 382, column: 12, scope: !1570, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 508, column: 18, scope: !1572, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 541, column: 20, scope: !3133, inlinedAt: !3134)
!3133 = distinct !DILexicalBlock(scope: !1838, file: !1573, line: 540, column: 9)
!3134 = !DILocation(line: 63, column: 15, scope: !3135, inlinedAt: !3136)
!3135 = !DILexicalBlockFile(scope: !1840, file: !1573, discriminator: 2)
!3136 = !DILocation(line: 45, column: 11, scope: !1781)
!3137 = !DILocation(line: 394, column: 13, scope: !1570, inlinedAt: !3131)
!3138 = !{!3139}
!3139 = distinct !{!3139, !3140, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!3140 = distinct !{!3140, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!3141 = !DILocation(line: 1178, column: 9, scope: !1588, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 394, column: 36, scope: !1570, inlinedAt: !3131)
!3143 = !DILocation(line: 508, column: 12, scope: !1572, inlinedAt: !3132)
!3144 = !DILocation(line: 211, column: 27, scope: !1611, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 530, column: 36, scope: !1615, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 511, column: 34, scope: !1572, inlinedAt: !3132)
!3147 = !DILocation(line: 863, column: 18, scope: !1619, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 212, column: 54, scope: !1624, inlinedAt: !3145)
!3149 = !DILocation(line: 45, column: 5, scope: !1781)
!3150 = !DILocation(line: 46, column: 2, scope: !1784)
!3151 = !DILocation(line: 543, column: 21, scope: !3133, inlinedAt: !3134)
!3152 = !DILocation(line: 32, column: 16, scope: !1817)
!3153 = !DILocation(line: 2711, column: 26, scope: !1822, inlinedAt: !3154)
!3154 = !DILocation(line: 804, column: 31, scope: !1826, inlinedAt: !3155)
!3155 = !DILocation(line: 39, column: 21, scope: !1817)
!3156 = !DILocation(line: 457, column: 8, scope: !1829, inlinedAt: !3157)
!3157 = !DILocation(line: 805, column: 16, scope: !1833, inlinedAt: !3155)
!3158 = !DILocation(line: 382, column: 12, scope: !1570, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 508, column: 18, scope: !1572, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 541, column: 20, scope: !1837, inlinedAt: !3161)
!3161 = !DILocation(line: 63, column: 15, scope: !1840, inlinedAt: !3162)
!3162 = !DILocation(line: 35, column: 30, scope: !1817)
!3163 = !DILocation(line: 392, column: 13, scope: !1570, inlinedAt: !3159)
!3164 = !DILocation(line: 508, column: 12, scope: !1572, inlinedAt: !3160)
!3165 = !DILocation(line: 394, column: 13, scope: !1570, inlinedAt: !3159)
!3166 = !{!3167}
!3167 = distinct !{!3167, !3168, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!3168 = distinct !{!3168, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!3169 = !DILocation(line: 1178, column: 9, scope: !1588, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 394, column: 36, scope: !1570, inlinedAt: !3159)
!3171 = !DILocation(line: 33, column: 24, scope: !1817)
!3172 = !DILocation(line: 33, column: 17, scope: !1817)
!3173 = !DILocation(line: 211, column: 27, scope: !1611, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 530, column: 36, scope: !1615, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 511, column: 34, scope: !1572, inlinedAt: !3160)
!3176 = !DILocation(line: 863, column: 18, scope: !1619, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 212, column: 54, scope: !1624, inlinedAt: !3174)
!3178 = !DILocation(line: 35, column: 24, scope: !1817)
!3179 = !DILocation(line: 0, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !1817, file: !1460, discriminator: 0)
!3181 = !DILocation(line: 543, column: 21, scope: !1837, inlinedAt: !3161)
!3182 = !DILocation(line: 39, column: 64, scope: !1856, inlinedAt: !3183)
!3183 = !DILocation(line: 1546, column: 24, scope: !1859, inlinedAt: !3184)
!3184 = !DILocation(line: 39, column: 37, scope: !1817)
!3185 = !DILocation(line: 2499, column: 26, scope: !1863, inlinedAt: !3186)
!3186 = !DILocation(line: 524, column: 31, scope: !1865, inlinedAt: !3187)
!3187 = !DILocation(line: 39, column: 52, scope: !1856, inlinedAt: !3183)
!3188 = !DILocation(line: 457, column: 8, scope: !1829, inlinedAt: !3189)
!3189 = !DILocation(line: 525, column: 16, scope: !1869, inlinedAt: !3187)
!3190 = !DILocation(line: 41, column: 28, scope: !1817)
!3191 = distinct !DISubprogram(name: "write_str<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCs2c5WrizoNH7_11polars_json", scope: !3192, file: !739, line: 627, type: !12, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3192 = !DINamespace(name: "{impl#0}", scope: !3193)
!3193 = !DINamespace(name: "default_write_fmt", scope: !625)
!3194 = !DILocation(line: 628, column: 19, scope: !3191)
!3195 = !DILocation(line: 504, column: 14, scope: !3196, inlinedAt: !3200)
!3196 = distinct !DISubprogram(name: "write_all<alloc::alloc::Global>", linkageName: "_RNvXs9_NtNtCsh8eZTKRCwoO_3std2io5implsINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB7_5Write9write_allCs2c5WrizoNH7_11polars_json", scope: !3198, file: !3197, line: 503, type: !12, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3197 = !DIFile(filename: "library/std/src/io/impls.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b287ac5f768de998a49d76ac3bf305d5")
!3198 = !DINamespace(name: "{impl#11}", scope: !3199)
!3199 = !DINamespace(name: "impls", scope: !625)
!3200 = distinct !DILocation(line: 628, column: 30, scope: !3191)
!3201 = !DILocation(line: 635, column: 10, scope: !3191)
!3202 = distinct !DISubprogram(name: "fmt<alloc::borrow::Cow<str>>", linkageName: "_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json", scope: !3203, file: !819, line: 2866, type: !12, scopeLine: 2866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3203 = !DINamespace(name: "{impl#80}", scope: !823)
!3204 = !DILocation(line: 2866, column: 71, scope: !3202)
!3205 = !{!3206}
!3206 = distinct !{!3206, !3207, !"_RNvXsa_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2c5WrizoNH7_11polars_json: argument 0"}
!3207 = distinct !{!3207, !"_RNvXsa_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2c5WrizoNH7_11polars_json"}
!3208 = !DILocation(line: 2866, column: 62, scope: !3202)
!3209 = !DILocation(line: 0, scope: !3210, inlinedAt: !3214)
!3210 = distinct !DISubprogram(name: "fmt<str>", linkageName: "_RNvXsa_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2c5WrizoNH7_11polars_json", scope: !3212, file: !3211, line: 412, type: !12, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3211 = !DIFile(filename: "library/alloc/src/borrow.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "51fe27f1151c44bdbc8f0d9c1cf10699")
!3212 = !DINamespace(name: "{impl#12}", scope: !3213)
!3213 = !DINamespace(name: "borrow", scope: !30)
!3214 = distinct !DILocation(line: 2866, column: 62, scope: !3202)
!3215 = !{!3216}
!3216 = distinct !{!3216, !3207, !"_RNvXsa_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2c5WrizoNH7_11polars_json: argument 1"}
!3217 = !DILocation(line: 2866, column: 84, scope: !3202)
!3218 = distinct !DISubprogram(name: "fmt<value_trait::node::StaticNode>", linkageName: "_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCskvxhC2XdrPP_11value_trait4node10StaticNodeNtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json", scope: !3203, file: !819, line: 2866, type: !12, scopeLine: 2866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3219 = !DILocation(line: 2866, column: 71, scope: !3218)
!3220 = !{i64 16}
!3221 = !{!3222}
!3222 = distinct !{!3222, !3223, !"_RNvXs7_NtCskvxhC2XdrPP_11value_trait4nodeNtB5_10StaticNodeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt: argument 0"}
!3223 = distinct !{!3223, !"_RNvXs7_NtCskvxhC2XdrPP_11value_trait4nodeNtB5_10StaticNodeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt"}
!3224 = !DILocation(line: 2866, column: 62, scope: !3218)
!3225 = !DILocation(line: 17, column: 10, scope: !3226, inlinedAt: !3231)
!3226 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs7_NtCskvxhC2XdrPP_11value_trait4nodeNtB5_10StaticNodeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt", scope: !3228, file: !3227, line: 17, type: !12, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3227 = !DIFile(filename: "src/node.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/value-trait-0.12.1", checksumkind: CSK_MD5, checksum: "d9ebd62f06216fe5b1152ff0752a5ddc")
!3228 = !DINamespace(name: "{impl#9}", scope: !3229)
!3229 = !DINamespace(name: "node", scope: !3230)
!3230 = !DINamespace(name: "value_trait", scope: null)
!3231 = distinct !DILocation(line: 2866, column: 62, scope: !3218)
!3232 = !{i8 0, i8 7}
!3233 = !{!3234}
!3234 = distinct !{!3234, !3223, !"_RNvXs7_NtCskvxhC2XdrPP_11value_trait4nodeNtB5_10StaticNodeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt: argument 1"}
!3235 = !DILocation(line: 23, column: 9, scope: !3226, inlinedAt: !3231)
!3236 = !{!3222, !3234}
!3237 = !DILocation(line: 17, column: 10, scope: !3238, inlinedAt: !3231)
!3238 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3239 = !DILocation(line: 17, column: 14, scope: !3226, inlinedAt: !3231)
!3240 = !DILocation(line: 26, column: 10, scope: !3226, inlinedAt: !3231)
!3241 = !DILocation(line: 17, column: 10, scope: !3242, inlinedAt: !3231)
!3242 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3243 = !DILocation(line: 28, column: 9, scope: !3226, inlinedAt: !3231)
!3244 = !DILocation(line: 17, column: 10, scope: !3245, inlinedAt: !3231)
!3245 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3246 = !DILocation(line: 31, column: 10, scope: !3226, inlinedAt: !3231)
!3247 = !DILocation(line: 17, column: 10, scope: !3248, inlinedAt: !3231)
!3248 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3249 = !DILocation(line: 34, column: 9, scope: !3226, inlinedAt: !3231)
!3250 = !DILocation(line: 17, column: 10, scope: !3251, inlinedAt: !3231)
!3251 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3252 = !DILocation(line: 39, column: 10, scope: !3226, inlinedAt: !3231)
!3253 = !DILocation(line: 17, column: 10, scope: !3254, inlinedAt: !3231)
!3254 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 17, column: 10)
!3255 = !DILocation(line: 2866, column: 84, scope: !3218)
!3256 = distinct !DISubprogram(name: "fmt<value_trait::node::StaticNode>", linkageName: "_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCskvxhC2XdrPP_11value_trait4node10StaticNodeNtB6_7Display3fmtCs2c5WrizoNH7_11polars_json", scope: !3257, file: !819, line: 2866, type: !12, scopeLine: 2866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3257 = !DINamespace(name: "{impl#82}", scope: !823)
!3258 = !DILocation(line: 2866, column: 71, scope: !3256)
!3259 = !DILocation(line: 2866, column: 62, scope: !3256)
!3260 = !DILocation(line: 2866, column: 84, scope: !3256)
!3261 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt", scope: !3262, file: !819, line: 108, type: !12, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3262 = !DINamespace(name: "{impl#48}", scope: !823)
!3263 = !DILocation(line: 108, column: 23, scope: !3261)
!3264 = !DILocation(line: 108, column: 28, scope: !3261)
!3265 = !DILocation(line: 3024, column: 19, scope: !26, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1861, column: 18, scope: !32, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1417, column: 24, scope: !37, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 3351, column: 14, scope: !39)
!3269 = !{!3270}
!3270 = distinct !{!3270, !3271, !"_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push: argument 0"}
!3271 = distinct !{!3271, !"_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push"}
!3272 = !DILocation(line: 3029, column: 37, scope: !48, inlinedAt: !3266)
!3273 = !DILocation(line: 3029, column: 18, scope: !48, inlinedAt: !3266)
!3274 = !DILocation(line: 2040, column: 9, scope: !3275, inlinedAt: !3276)
!3275 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods8len_utf8", scope: !87, file: !85, line: 2038, type: !12, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3276 = distinct !DILocation(line: 646, column: 9, scope: !3277, inlinedAt: !3279)
!3277 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc8len_utf8", scope: !3278, file: !85, line: 645, type: !12, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!3278 = !DINamespace(name: "{impl#0}", scope: !87)
!3279 = distinct !DILocation(line: 1418, column: 25, scope: !54, inlinedAt: !3268)
!3280 = !DILocation(line: 2041, column: 9, scope: !3275, inlinedAt: !3276)
!3281 = !DILocation(line: 2042, column: 9, scope: !3275, inlinedAt: !3276)
!3282 = !DILocation(line: 0, scope: !3275, inlinedAt: !3276)
!3283 = !DILocation(line: 1220, column: 18, scope: !51, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1419, column: 14, scope: !53, inlinedAt: !3268)
!3285 = !DILocation(line: 614, column: 9, scope: !56, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 609, column: 14, scope: !61, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 296, column: 20, scope: !63, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 2026, column: 18, scope: !66, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1423, column: 71, scope: !53, inlinedAt: !3268)
!3290 = !DILocation(line: 3024, column: 19, scope: !26, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1861, column: 18, scope: !70, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1423, column: 93, scope: !53, inlinedAt: !3268)
!3293 = !DILocation(line: 3029, column: 37, scope: !73, inlinedAt: !3291)
!3294 = !DILocation(line: 3029, column: 18, scope: !73, inlinedAt: !3291)
!3295 = !DILocation(line: 961, column: 18, scope: !76, inlinedAt: !3296)
end_hunk_1
