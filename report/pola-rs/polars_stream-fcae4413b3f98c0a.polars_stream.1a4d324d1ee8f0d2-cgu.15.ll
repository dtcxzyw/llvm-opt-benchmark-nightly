Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.15?download=true
inline.NumInlined: 9921
inline.NumDeleted: 5523
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB1w_13SortedGroupBy12evaluate_one00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callAmj2_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecB45_E14extend_trustedBN_E0E0EB1A_:bb.a
  %i.j = lshr exact i64 %i.i, 2, !dbg !85009      ; 2 uses
  %i.k = icmp eq i64 %i.i, 4, !dbg !85010
  br i1 %i.k, label %.epil.preheader, label %.new, !dbg !85010

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.j, 4611686018427387902, !dbg !85010
  br label %bb.c, !dbg !85010

bb.c:                                             ; preds = %bb.c, %.new
  %i.l = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !85011 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !85012 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !85011
  %.val16.i = load i32, ptr %i.m, align 4, !dbg !85013, !noalias !84990, !noundef !1880 ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !dbg !85014, !noalias !84991, !noundef !1880 ; 2 uses
  %i.o = add i32 %i.n, %.val16.i, !dbg !85015
  store i32 %i.o, ptr %i.e, align 4, !dbg !85015, !noalias !84991
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.val16.i to i64, !dbg !85016
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32, !dbg !85016
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.n to i64, !dbg !85016
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i, !dbg !85016
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !85017
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.p, align 4, !dbg !85018, !noalias !84998
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !85011
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4, !dbg !85011
  %.val16.i.1 = load i32, ptr %i.r, align 4, !dbg !85013, !noalias !84990, !noundef !1880 ; 2 uses
  %i.s = load i32, ptr %i.e, align 4, !dbg !85014, !noalias !84991, !noundef !1880 ; 2 uses
  %i.t = add i32 %i.s, %.val16.i.1, !dbg !85015
  store i32 %i.t, ptr %i.e, align 4, !dbg !85015, !noalias !84991
  %.sroa.2.0.insert.ext.i.i.i.1 = zext i32 %.val16.i.1 to i64, !dbg !85016
  %.sroa.2.0.insert.shift.i.i.i.1 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.1, 32, !dbg !85016
  %.sroa.0.0.insert.ext.i.i.i.1 = zext i32 %i.s to i64, !dbg !85016
  %.sroa.0.0.insert.insert.i.i.i.1 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.1, %.sroa.0.0.insert.ext.i.i.i.1, !dbg !85016
  %i.u = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !85017
  %i.v = getelementptr i8, ptr %i.u, i64 8, !dbg !85017
  store i64 %.sroa.0.0.insert.insert.i.i.i.1, ptr %i.v, align 4, !dbg !85018, !noalias !84998
  %i.w = add i64 %i.l, 2, !dbg !85019             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !85020 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !85021  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !85021
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !85021

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.i, 4, !dbg !85021
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !85021
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit, label %.epil.preheader, !dbg !85021

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !85021
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !85021
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !85011
  %.val16.i.epil = load i32, ptr %i.z, align 4, !dbg !85013, !noalias !84990, !noundef !1880 ; 2 uses
  %i.aa = load i32, ptr %i.e, align 4, !dbg !85014, !noalias !84991, !noundef !1880 ; 2 uses
  %i.ab = add i32 %i.aa, %.val16.i.epil, !dbg !85015
  store i32 %i.ab, ptr %i.e, align 4, !dbg !85015, !noalias !84991
  %.sroa.2.0.insert.ext.i.i.i.epil = zext i32 %.val16.i.epil to i64, !dbg !85016
  %.sroa.2.0.insert.shift.i.i.i.epil = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.epil, 32, !dbg !85016
  %.sroa.0.0.insert.ext.i.i.i.epil = zext i32 %i.aa to i64, !dbg !85016
  %.sroa.0.0.insert.insert.i.i.i.epil = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.epil, %.sroa.0.0.insert.ext.i.i.i.epil, !dbg !85016
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !85017
  store i64 %.sroa.0.0.insert.insert.i.i.i.epil, ptr %i.ac, align 4, !dbg !85018, !noalias !84998
  %i.ad = add i64 %.epil.init, 1, !dbg !85019
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmAmj2_uNCNCNvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes15sorted_group_byNtB2q_13SortedGroupBy12evaluate_one00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2u_.exit.loopexit.unr-lcssa ], [ %i.ad, %.epil.preheader ], !dbg !85022
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !85022, !noalias !84990
  ret void, !dbg !85023
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB1x_10ProbeState17ordered_unmatched0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callTmmmENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4m_3VecB48_E14extend_trustedBN_E0E0EB1D_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #15 personality ptr @rust_eh_personality !dbg !85024 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !85102, !nonnull !1880, !noundef !1880 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85102
  %i.c = load ptr, ptr %i.b, align 8, !dbg !85102, !nonnull !1880, !noundef !1880 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !85103
  %i.e = load ptr, ptr %i.d, align 8, !dbg !85103, !nonnull !1880, !align !2262, !noundef !1880 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !85104 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !85104
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !85104 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !85104
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !85104 ; 3 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !85105
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit, label %bb.b, !dbg !85106

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !85103
  %i.h = load ptr, ptr %i.g, align 8, !dbg !85103, !nonnull !1880, !align !2089, !noundef !1880 ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64, !dbg !85107
  %i.j = ptrtoint ptr %i.a to i64, !dbg !85107
  %i.k = sub nuw i64 %i.i, %i.j, !dbg !85107      ; 3 uses
  %i.l = lshr exact i64 %i.k, 2, !dbg !85107      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %i.o = icmp eq i64 %i.k, 4, !dbg !85108
  br i1 %i.o, label %.epil.preheader, label %.new, !dbg !85108

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.l, 4611686018427387902, !dbg !85108
  br label %bb.c, !dbg !85108

bb.c:                                             ; preds = %bb.c, %.new
  %i.p = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ak, %bb.c ], !dbg !85109 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.al, %bb.c ], !dbg !85110 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !85109
  %.val16.i = load i32, ptr %i.q, align 4, !dbg !85111, !noalias !85092, !noundef !1880 ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !dbg !85112, !noalias !85093, !nonnull !1880, !noundef !1880
  %i.s = load i64, ptr %i.n, align 8, !dbg !85113, !noalias !85093, !noundef !1880
  %i.t = zext i32 %.val16.i to i64, !dbg !85114   ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !85115
  tail call void @llvm.assume(i1 %i.u), !dbg !85116
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t, !dbg !85117
  %i.w = load i32, ptr %i.v, align 4, !dbg !85118, !noalias !85093, !noundef !1880
  %i.x = load i32, ptr %i.e, align 4, !dbg !85119, !noalias !85093, !noundef !1880
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !85120 ; 3 uses
  store i32 %i.w, ptr %i.y, align 4, !dbg !85121, !noalias !85096
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4, !dbg !85121
  store i32 %i.x, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !dbg !85121, !noalias !85096
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !85121
  store i32 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !dbg !85121, !noalias !85096
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !85109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !85109
  %.val16.i.1 = load i32, ptr %i.aa, align 4, !dbg !85111, !noalias !85092, !noundef !1880 ; 2 uses
  %i.ab = load ptr, ptr %i.m, align 8, !dbg !85112, !noalias !85093, !nonnull !1880, !noundef !1880
  %i.ac = load i64, ptr %i.n, align 8, !dbg !85113, !noalias !85093, !noundef !1880
  %i.ad = zext i32 %.val16.i.1 to i64, !dbg !85114 ; 2 uses
  %i.ae = icmp ugt i64 %i.ac, %i.ad, !dbg !85115
  tail call void @llvm.assume(i1 %i.ae), !dbg !85116
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad, !dbg !85117
  %i.ag = load i32, ptr %i.af, align 4, !dbg !85118, !noalias !85093, !noundef !1880
  %i.ah = load i32, ptr %i.e, align 4, !dbg !85119, !noalias !85093, !noundef !1880
  %i.ai = getelementptr [12 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !85120 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 12, !dbg !85120
  store i32 %i.ag, ptr %i.aj, align 4, !dbg !85121, !noalias !85096
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.ai, i64 16, !dbg !85121
  store i32 %i.ah, ptr %.sroa.42.0..sroa_idx.i.i.1, align 4, !dbg !85121, !noalias !85096
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.ai, i64 20, !dbg !85121
  store i32 %.val16.i.1, ptr %.sroa.53.0..sroa_idx.i.i.1, align 4, !dbg !85121, !noalias !85096
  %i.ak = add i64 %i.p, 2, !dbg !85122            ; 3 uses
  %i.al = add nuw i64 %.sroa.01.0.i, 2, !dbg !85123 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !85124  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !85124
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !85124

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.am = and i64 %i.k, 4, !dbg !85124
  %lcmp.mod.not = icmp eq i64 %i.am, 0, !dbg !85124
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit, label %.epil.preheader, !dbg !85124

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ak, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.al, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.l to i1, !dbg !85124
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !85124
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !85109
  %.val16.i.epil = load i32, ptr %i.an, align 4, !dbg !85111, !noalias !85092, !noundef !1880 ; 2 uses
  %i.ao = load ptr, ptr %i.m, align 8, !dbg !85112, !noalias !85093, !nonnull !1880, !noundef !1880
  %i.ap = load i64, ptr %i.n, align 8, !dbg !85113, !noalias !85093, !noundef !1880
  %i.aq = zext i32 %.val16.i.epil to i64, !dbg !85114 ; 2 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq, !dbg !85115
  tail call void @llvm.assume(i1 %i.ar), !dbg !85116
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq, !dbg !85117
  %i.at = load i32, ptr %i.as, align 4, !dbg !85118, !noalias !85093, !noundef !1880
  %i.au = load i32, ptr %i.e, align 4, !dbg !85119, !noalias !85093, !noundef !1880
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !85120 ; 3 uses
  store i32 %i.at, ptr %i.av, align 4, !dbg !85121, !noalias !85096
  %.sroa.42.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !85121
  store i32 %i.au, ptr %.sroa.42.0..sroa_idx.i.i.epil, align 4, !dbg !85121, !noalias !85096
  %.sroa.53.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !85121
  store i32 %.val16.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.epil, align 4, !dbg !85121, !noalias !85096
  %i.aw = add i64 %.epil.init, 1, !dbg !85122
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ak, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmTmmmEuNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatched0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2j_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ], !dbg !85125
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !85125, !noalias !85092
  ret void, !dbg !85126
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callINtNtBc_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5H_3VecB42_E14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !85127 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !85208 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85208
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !85208 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85208
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !85208 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85209
  %i.a = icmp eq ptr %0, %1, !dbg !85210
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmINtNtBb_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsEuNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5U_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3K_EE0E0E0EB3W_.exit, label %bb.b, !dbg !85211

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85212
  %i.c = ptrtoint ptr %0 to i64, !dbg !85212
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85212      ; 4 uses
  %i.e = lshr i64 %i.d, 2, !dbg !85212            ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 40, !dbg !85213
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !85213

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !85213 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !85213
  %i.g = shl i64 %i.d, 1, !dbg !85213
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !85213
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.g, !dbg !85213
  %bound0 = icmp ult ptr %scevgep, %1, !dbg !85213
  %bound1 = icmp ult ptr %0, %scevgep3, !dbg !85213
  %found.conflict = and i1 %bound0, %bound1, !dbg !85213
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !85214

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  br label %vector.body, !dbg !85214

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !85214 ; 3 uses
  %i.i = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !85215 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !85216
  %wide.load = load <2 x i32>, ptr %i.j, align 4, !dbg !85216, !alias.scope !85189, !noalias !85190 ; 2 uses
  %wide.load4 = load <2 x i32>, ptr %i.k, align 4, !dbg !85216, !alias.scope !85189, !noalias !85190 ; 2 uses
  %i.l = icmp ult <2 x i32> %wide.load, splat (i32 32), !dbg !85217
  %i.m = icmp ult <2 x i32> %wide.load4, splat (i32 32), !dbg !85217
  %i.n = zext <2 x i1> %i.l to <2 x i32>, !dbg !85218
  %i.o = zext <2 x i1> %i.m to <2 x i32>, !dbg !85218
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !85219
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !85219
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !85219
  %interleaved.vec = shufflevector <2 x i32> %i.n, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !85220
  store <4 x i32> %interleaved.vec, ptr %i.p, align 4, !dbg !85220, !alias.scope !85201, !noalias !85202
  %interleaved.vec5 = shufflevector <2 x i32> %i.o, <2 x i32> %wide.load4, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !85220
  store <4 x i32> %interleaved.vec5, ptr %i.r, align 4, !dbg !85220, !alias.scope !85201, !noalias !85202
  %index.next = add nuw i64 %index, 4, !dbg !85214 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !85221
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !85221, !llvm.loop !85179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !85221
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmINtNtBb_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsEuNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5U_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3K_EE0E0E0EB3W_.exit, label %scalar.ph.preheader, !dbg !85221

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !85221
  %i.t = and i64 %i.d, 4, !dbg !85221
  %lcmp.mod.not = icmp eq i64 %i.t, 0, !dbg !85221
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !85221

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !85215
  %.val16.i.prol = load i32, ptr %i.u, align 4, !dbg !85216, !noalias !85190, !noundef !1880 ; 2 uses
  %i.v = icmp ult i32 %.val16.i.prol, 32, !dbg !85217
  %..i.i.i.prol = zext i1 %i.v to i32, !dbg !85218
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !85219 ; 2 uses
  store i32 %..i.i.i.prol, ptr %i.w, align 4, !dbg !85220, !noalias !85202
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4, !dbg !85220
  store i32 %.val16.i.prol, ptr %i.x, align 4, !dbg !85220, !noalias !85202
  %i.y = add i64 %.ph, 1, !dbg !85222             ; 2 uses
  %i.z = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !85223
  br label %scalar.ph.prol.loopexit, !dbg !85221

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %i.e, %.neg, !dbg !85221
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmINtNtBb_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsEuNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5U_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3K_EE0E0E0EB3W_.exit, label %scalar.ph, !dbg !85221

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !85215 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !85214 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85215
  %.val16.i = load i32, ptr %i.ac, align 4, !dbg !85216, !noalias !85190, !noundef !1880 ; 2 uses
  %i.ad = icmp ult i32 %.val16.i, 32, !dbg !85217
  %..i.i.i = zext i1 %i.ad to i32, !dbg !85218
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !85219 ; 2 uses
  store i32 %..i.i.i, ptr %i.ae, align 4, !dbg !85220, !noalias !85202
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !85220
  store i32 %.val16.i, ptr %i.af, align 4, !dbg !85220, !noalias !85202
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85215
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !85215
  %.val16.i.1 = load i32, ptr %i.ah, align 4, !dbg !85216, !noalias !85190, !noundef !1880 ; 2 uses
  %i.ai = icmp ult i32 %.val16.i.1, 32, !dbg !85217
  %..i.i.i.1 = zext i1 %i.ai to i32, !dbg !85218
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !85219 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8, !dbg !85219
  store i32 %..i.i.i.1, ptr %i.ak, align 4, !dbg !85220, !noalias !85202
  %i.al = getelementptr i8, ptr %i.aj, i64 12, !dbg !85220
  store i32 %.val16.i.1, ptr %i.al, align 4, !dbg !85220, !noalias !85202
  %i.am = add i64 %i.ab, 2, !dbg !85222           ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2, !dbg !85223 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e, !dbg !85221
  br i1 %i.ao, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmINtNtBb_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsEuNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5U_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3K_EE0E0E0EB3W_.exit, label %scalar.ph, !dbg !85221, !llvm.loop !85184

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmINtNtBb_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flags15StatisticsFlagsEuNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc19record_batch_decode9get_flagss_0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5U_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3K_EE0E0E0EB3W_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ], !dbg !85224
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !85224, !noalias !85190
  ret void, !dbg !85225
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IternENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckednEs_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB2Q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85226 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85275
  %i.d = icmp eq ptr %0, %1, !dbg !85276
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRnjjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckednEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !85277

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !85278
  %i.f = ptrtoint ptr %0 to i64, !dbg !85278
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !85278
  %i.h = lshr exact i64 %i.g, 4, !dbg !85278
  br label %bb.c, !dbg !85279

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ], !dbg !85280 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !85281 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !85282
  %.val.i = load i128, ptr %i.i, align 16, !dbg !85283, !noundef !1880 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i128 %.val.i, 18446744073709551616, !dbg !85284
  %i.j = trunc nuw i128 %.val.i to i64, !dbg !85284 ; 2 uses
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !dbg !85285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85273
  store i64 %.sroa.02.0.i, ptr %i.c, align 8, !noalias !85274
  store i64 %i.j, ptr %i.b, align 8, !noalias !85274
  %i.k = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !85286
  %i.l = icmp sgt i8 %i.k, 0, !dbg !85287
  %.sroa.0.0.i.i.i.i = select i1 %i.l, i64 %.sroa.02.0.i, i64 %i.j, !dbg !85286 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85288, !noalias !85273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85288, !noalias !85273
  %i.m = add nuw i64 %.sroa.04.0.i, 1, !dbg !85289 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h, !dbg !85290
  br i1 %i.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRnjjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckednEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.c, !dbg !85290

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRnjjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckednEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !85281
  ret i64 %.sroa.0.0.i, !dbg !85291
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteroENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedoEs_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB2Q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85292 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85339
  %i.d = icmp eq ptr %0, %1, !dbg !85340
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRojjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedoEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !85341

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !85342
  %i.f = ptrtoint ptr %0 to i64, !dbg !85342
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !85342
  %i.h = lshr exact i64 %i.g, 4, !dbg !85342
  br label %bb.c, !dbg !85343

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ], !dbg !85344 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !85345 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !85346
  %.val.i = load i128, ptr %i.i, align 16, !dbg !85347, !noundef !1880 ; 2 uses
  %i.j = icmp ult i128 %.val.i, 18446744073709551616, !dbg !85348
  %i.k = trunc nuw i128 %.val.i to i64, !dbg !85348 ; 2 uses
  call void @llvm.assume(i1 %i.j), !dbg !85349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85337
  store i64 %.sroa.02.0.i, ptr %i.c, align 8, !noalias !85338
  store i64 %i.k, ptr %i.b, align 8, !noalias !85338
  %i.l = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !85350
  %i.m = icmp sgt i8 %i.l, 0, !dbg !85351
  %.sroa.0.0.i.i.i.i = select i1 %i.m, i64 %.sroa.02.0.i, i64 %i.k, !dbg !85350 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85352, !noalias !85337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85352, !noalias !85337
  %i.n = add nuw i64 %.sroa.04.0.i, 1, !dbg !85353 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.h, !dbg !85354
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRojjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedoEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.c, !dbg !85354

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRojjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedoEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !85345
  ret i64 %.sroa.0.0.i, !dbg !85355
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedsEs_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB2Q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85356 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85403
  %i.d = icmp eq ptr %0, %1, !dbg !85404
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRsjjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedsEs_0NCINvNvBS_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !85405

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !85406
  %i.f = ptrtoint ptr %0 to i64, !dbg !85406
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !85406
  %i.h = lshr exact i64 %i.g, 1, !dbg !85406
  br label %bb.c, !dbg !85407

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ], !dbg !85408 ; 2 uses
end_hunk_0
