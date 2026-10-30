Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.06?download=true
inline.NumInlined: 116
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_:bb.a
    #dbg_value(i64 %2, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %2, !3119, !DIExpression(), !3124)
    #dbg_value(ptr %3, !3112, !DIExpression(), !3118)
    #dbg_value(i64 1, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3119, !DIExpression(), !3129)
  %i.a = add i64 %2, -1, !dbg !3134
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !3134
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !3134

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !3135
  unreachable, !dbg !3135

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3114, !DIExpression(), !3130)
    #dbg_value(ptr %0, !3120, !DIExpression(), !3129)
    #dbg_value(ptr %0, !3120, !DIExpression(), !3124)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !3136
    #dbg_value(ptr %i.b, !3115, !DIExpression(), !3131)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !3116, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3132)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !3120, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3126)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !3137
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !3137

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2, !dbg !3138
    #dbg_value(ptr %i.c, !3116, !DIExpression(), !3132)
    #dbg_value(ptr %i.c, !3120, !DIExpression(), !3126)
  br label %.lr.ph, !dbg !3139

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.c
  ret void, !dbg !3140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.0.012 = phi ptr [ %i.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !3120, !DIExpression(), !3126)
    #dbg_value(ptr poison, !1160, !DIExpression(), !3065)
    #dbg_value(ptr poison, !1164, !DIExpression(), !3066)
    #dbg_value(ptr poison, !1160, !DIExpression(), !3069)
    #dbg_value(ptr poison, !1164, !DIExpression(), !3070)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3071)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3071)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3073)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3073)
    #dbg_value(ptr undef, !1170, !DIExpression(), !3073)
    #dbg_value(ptr undef, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3071)
    #dbg_value(ptr %0, !1142, !DIExpression(), !3074)
    #dbg_value(ptr %.sroa.0.012, !1143, !DIExpression(), !3074)
    #dbg_value(ptr %.sroa.0.012, !1174, !DIExpression(), !3076)
    #dbg_value(ptr poison, !1144, !DIExpression(), !3074)
    #dbg_value(i64 1, !1175, !DIExpression(), !3076)
    #dbg_value(i64 1, !1177, !DIExpression(), !3078)
    #dbg_value(i64 1, !1175, !DIExpression(), !3080)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -8, !dbg !3141 ; 4 uses
    #dbg_value(ptr %i.d, !1145, !DIExpression(), !3081)
    #dbg_value(ptr %i.d, !1174, !DIExpression(), !3080)
  %.val20.i = load i64, ptr %.sroa.0.012, align 4, !dbg !3139 ; 3 uses
  %i.e = trunc i64 %.val20.i to i32, !dbg !3139   ; 4 uses
  %i.f = lshr i64 %.val20.i, 32, !dbg !3139
  %i.g = trunc nuw i64 %i.f to i32, !dbg !3139    ; 2 uses
  %.val22.i = load i32, ptr %i.d, align 4, !dbg !3139, !range !813, !noundef !484 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.012, i64 -4, !dbg !3139
  %.val23.i = load i32, ptr %i.h, align 4, !dbg !3139
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3083)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3083)
    #dbg_value(ptr poison, !820, !DIExpression(), !3083)
    #dbg_value(ptr poison, !825, !DIExpression(), !3085)
    #dbg_value(ptr poison, !827, !DIExpression(), !3085)
    #dbg_declare(ptr poison, !832, !DIExpression(), !3087)
    #dbg_value(ptr poison, !836, !DIExpression(), !3089)
    #dbg_value(ptr poison, !840, !DIExpression(), !3089)
    #dbg_value(ptr poison, !842, !DIExpression(), !3091)
    #dbg_value(ptr poison, !846, !DIExpression(), !3091)
  %i.i = icmp eq i32 %.val22.i, %i.e, !dbg !3142
    #dbg_value(i8 poison, !833, !DIExpression(), !3092)
  %i.j = icmp ugt i32 %.val23.i, %i.g, !dbg !3143
  %i.k = icmp samesign ugt i32 %.val22.i, %i.e, !dbg !3143
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k, !dbg !3142
  br i1 %i.l, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !3139

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %.sroa.0.012, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3071)
    #dbg_value(ptr %i.d, !1174, !DIExpression(), !3080)
    #dbg_value(ptr %i.d, !1145, !DIExpression(), !3081)
    #dbg_value(ptr %i.d, !1178, !DIExpression(), !3078)
    #dbg_value(ptr %.sroa.0.012, !1179, !DIExpression(), !3078)
  %i.m = load i64, ptr %i.d, align 4, !dbg !3144
  store i64 %i.m, ptr %.sroa.0.012, align 4, !dbg !3144
  %i.n = icmp eq ptr %i.d, %0, !dbg !3145
  br i1 %i.n, label %._crit_edge17, label %.lr.ph16, !dbg !3145

.preheader:                                       ; preds = %.lr.ph16
    #dbg_value(ptr %.sroa.0.0.i15, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3071)
    #dbg_value(ptr %i.q, !1174, !DIExpression(), !3080)
    #dbg_value(ptr %i.q, !1145, !DIExpression(), !3081)
    #dbg_value(ptr %i.q, !1178, !DIExpression(), !3078)
    #dbg_value(ptr %.sroa.0.0.i15, !1179, !DIExpression(), !3078)
  %i.o = load i64, ptr %i.q, align 4, !dbg !3144
  store i64 %i.o, ptr %.sroa.0.0.i15, align 4, !dbg !3144
    #dbg_value(ptr %i.q, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3071)
  %i.p = icmp eq ptr %i.q, %0, !dbg !3145
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !3145

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !1174, !DIExpression(), !3080)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -8, !dbg !3146 ; 4 uses
    #dbg_value(ptr %i.q, !1145, !DIExpression(), !3081)
    #dbg_value(ptr %i.q, !1174, !DIExpression(), !3080)
  %.val18.i = load i32, ptr %i.q, align 4, !dbg !3147, !range !813, !noundef !484 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -4, !dbg !3147
  %.val19.i = load i32, ptr %i.r, align 4, !dbg !3147
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3094)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3094)
    #dbg_value(ptr poison, !820, !DIExpression(), !3094)
    #dbg_value(ptr poison, !825, !DIExpression(), !3096)
    #dbg_value(ptr poison, !827, !DIExpression(), !3096)
    #dbg_declare(ptr poison, !832, !DIExpression(), !3098)
    #dbg_value(ptr poison, !836, !DIExpression(), !3100)
    #dbg_value(ptr poison, !840, !DIExpression(), !3100)
    #dbg_value(ptr poison, !842, !DIExpression(), !3102)
    #dbg_value(ptr poison, !846, !DIExpression(), !3102)
  %i.s = icmp eq i32 %.val18.i, %i.e, !dbg !3148
    #dbg_value(i8 poison, !833, !DIExpression(), !3103)
  %i.t = icmp ugt i32 %.val19.i, %i.g, !dbg !3149
  %i.u = icmp samesign ugt i32 %.val18.i, %i.e, !dbg !3149
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !3148
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !3147

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !3150
    #dbg_value(ptr undef, !1164, !DIExpression(), !3066)
    #dbg_value(ptr undef, !1160, !DIExpression(), !3065)
    #dbg_value(ptr undef, !1170, !DIExpression(), !3073)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !1171, !DIExpression(), !3073)
    #dbg_value(i64 1, !1172, !DIExpression(), !3073)
  store i64 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 4, !dbg !3151, !noalias !3133
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !3152

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !3153 ; 2 uses
    #dbg_value(ptr %i.w, !3120, !DIExpression(), !3126)
    #dbg_value(ptr %i.w, !3116, !DIExpression(), !3132)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !3137
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !3137
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3167 {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 8 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 8 uses
    #dbg_value(ptr poison, !1008, !DIExpression(), !3170)
    #dbg_value(ptr poison, !1013, !DIExpression(), !3171)
    #dbg_value(ptr poison, !3825, !DIExpression(), !3832)
    #dbg_value(ptr poison, !3835, !DIExpression(), !3838)
    #dbg_value(ptr poison, !3833, !DIExpression(), !3839)
    #dbg_value(ptr %0, !3808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3840)
    #dbg_value(i64 %1, !3808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3840)
    #dbg_value(ptr %2, !3809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3840)
    #dbg_value(i64 %3, !3809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3840)
    #dbg_value(ptr %4, !3810, !DIExpression(), !3840)
    #dbg_value(i64 1, !3841, !DIExpression(), !3846)
    #dbg_value(i64 1, !3841, !DIExpression(), !3848)
    #dbg_value(i64 1, !3849, !DIExpression(), !3853)
    #dbg_value(i64 1, !3854, !DIExpression(), !3858)
    #dbg_value(i64 1, !3841, !DIExpression(), !3860)
    #dbg_value(i64 %1, !3811, !DIExpression(), !3861)
    #dbg_value(i64 %1, !3862, !DIExpression(), !3866)
  %i.a = icmp samesign ult i64 %1, 2, !dbg !4078
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b, !dbg !4078

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !4079
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !4080
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !4080

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !3812, !DIExpression(), !3867)
    #dbg_value(ptr %0, !3863, !DIExpression(), !3869)
    #dbg_value(ptr %0, !3863, !DIExpression(), !3871)
    #dbg_value(ptr %0, !3863, !DIExpression(), !3873)
    #dbg_value(ptr %0, !3863, !DIExpression(), !3875)
  %i.d = lshr i64 %1, 1, !dbg !4081               ; 10 uses
    #dbg_value(i64 %i.d, !3813, !DIExpression(), !3876)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3869)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3878)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3871)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3880)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3873)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3882)
    #dbg_value(ptr %2, !3814, !DIExpression(), !3883)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3866)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3878)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3885)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3880)
    #dbg_value(ptr %2, !3843, !DIExpression(), !3846)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3882)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3887)
  %5 = icmp samesign ult i64 %1, 8, !dbg !4082    ; 3 uses
  br i1 %5, label %bb.e, label %bb.f, !dbg !4082

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !4083
  unreachable, !dbg !4083

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !3842, !DIExpression(), !3846)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !dbg !4084
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d, !dbg !4085
    #dbg_value(ptr %i.e, !3842, !DIExpression(), !3848)
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.d, !dbg !4086
    #dbg_value(ptr %i.f, !3843, !DIExpression(), !3848)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !4087
    #dbg_value(i64 1, !3815, !DIExpression(), !3888)
  br label %bb.g, !dbg !4088

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !3889, !DIExpression(), !3197)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3200)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3202)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3204)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3206)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3208)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3210)
    #dbg_value(ptr %0, !3910, !DIExpression(), !3212)
    #dbg_value(ptr %2, !3892, !DIExpression(), !3197)
    #dbg_value(ptr %2, !3914, !DIExpression(), !3215)
    #dbg_value(ptr %2, !3918, !DIExpression(), !3218)
    #dbg_value(ptr %2, !3918, !DIExpression(), !3220)
    #dbg_value(ptr %2, !3918, !DIExpression(), !3222)
    #dbg_value(ptr poison, !3893, !DIExpression(), !3197)
    #dbg_value(i64 1, !3911, !DIExpression(), !3200)
    #dbg_value(i64 3, !3911, !DIExpression(), !3202)
    #dbg_value(i64 2, !3911, !DIExpression(), !3204)
    #dbg_value(i64 1, !3916, !DIExpression(), !3215)
    #dbg_value(i64 1, !3919, !DIExpression(), !3218)
    #dbg_value(i64 1, !3916, !DIExpression(), !3224)
    #dbg_value(i64 2, !3919, !DIExpression(), !3220)
    #dbg_value(i64 1, !3916, !DIExpression(), !3226)
    #dbg_value(i64 3, !3919, !DIExpression(), !3222)
    #dbg_value(i64 1, !3916, !DIExpression(), !3228)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4089
  %.val50.i = load i64, ptr %i.g, align 8, !dbg !4090, !noundef !484 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 72, !dbg !4090
  %.val51.i = load i64, ptr %i.h, align 8, !dbg !4090
  %.val52.i = load i64, ptr %0, align 8, !dbg !4090, !noundef !484 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 24, !dbg !4090
  %.val53.i = load i64, ptr %i.i, align 8, !dbg !4090
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3230)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3230)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3230)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3232)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3232)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3234)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3236)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3238)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3236)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3238)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3240)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3241)
  %i.j = icmp eq i64 %.val50.i, %.val52.i, !dbg !4091
    #dbg_value(i8 poison, !1055, !DIExpression(), !3242)
  %i.k = icmp ult i64 %.val51.i, %.val53.i, !dbg !4092
  %i.l = icmp ult i64 %.val50.i, %.val52.i, !dbg !4092
  %i.m = select i1 %i.j, i1 %i.k, i1 %i.l, !dbg !4091 ; 2 uses
    #dbg_value(i1 %i.m, !3894, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3243)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4093
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4094
  %.val46.i = load i64, ptr %i.n, align 8, !dbg !4095, !noundef !484 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 168, !dbg !4095
  %.val47.i = load i64, ptr %i.p, align 8, !dbg !4095
  %.val48.i = load i64, ptr %i.o, align 8, !dbg !4095, !noundef !484 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 120, !dbg !4095
  %.val49.i = load i64, ptr %i.q, align 8, !dbg !4095
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3245)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3245)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3245)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3247)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3247)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3249)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3251)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3253)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3251)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3253)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3255)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3256)
  %i.r = icmp eq i64 %.val46.i, %.val48.i, !dbg !4096
    #dbg_value(i8 poison, !1055, !DIExpression(), !3257)
  %i.s = icmp ult i64 %.val47.i, %.val49.i, !dbg !4097
  %i.t = icmp ult i64 %.val46.i, %.val48.i, !dbg !4097
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t, !dbg !4096 ; 2 uses
    #dbg_value(i1 %i.u, !3895, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3258)
  %i.v = zext i1 %i.m to i64, !dbg !4098
    #dbg_value(i64 %i.v, !3912, !DIExpression(), !3206)
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.v, !dbg !4099 ; 4 uses
    #dbg_value(ptr %i.w, !3896, !DIExpression(), !3259)
  %i.x = xor i1 %i.m, true, !dbg !4100
  %i.y = zext i1 %i.x to i64, !dbg !4100
    #dbg_value(i64 %i.y, !3912, !DIExpression(), !3208)
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.y, !dbg !4101 ; 5 uses
    #dbg_value(ptr %i.z, !3897, !DIExpression(), !3260)
  %i.aa = select i1 %i.u, i64 3, i64 2, !dbg !4102
    #dbg_value(i64 %i.aa, !3912, !DIExpression(), !3210)
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.aa, !dbg !4103 ; 5 uses
    #dbg_value(ptr %i.ab, !3898, !DIExpression(), !3261)
  %i.ac = select i1 %i.u, i64 2, i64 3, !dbg !4104
    #dbg_value(i64 %i.ac, !3912, !DIExpression(), !3212)
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ac, !dbg !4105 ; 4 uses
    #dbg_value(ptr %i.ad, !3899, !DIExpression(), !3262)
  %.val42.i = load i64, ptr %i.ab, align 8, !dbg !4106, !noundef !484 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 24, !dbg !4106
  %.val43.i = load i64, ptr %i.ae, align 8, !dbg !4106
  %.val44.i = load i64, ptr %i.w, align 8, !dbg !4106, !noundef !484 ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 24, !dbg !4106
  %.val45.i = load i64, ptr %i.af, align 8, !dbg !4106
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3264)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3264)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3264)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3266)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3266)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3268)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3270)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3272)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3270)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3272)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3274)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3275)
  %i.ag = icmp eq i64 %.val42.i, %.val44.i, !dbg !4107
    #dbg_value(i8 poison, !1055, !DIExpression(), !3276)
  %i.ah = icmp ult i64 %.val43.i, %.val45.i, !dbg !4108
  %i.ai = icmp ult i64 %.val42.i, %.val44.i, !dbg !4108
  %i.aj = select i1 %i.ag, i1 %i.ah, i1 %i.ai, !dbg !4107 ; 3 uses
    #dbg_value(i1 %i.aj, !3900, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3277)
  %.val38.i = load i64, ptr %i.ad, align 8, !dbg !4109, !noundef !484 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ad, i64 24, !dbg !4109
  %.val39.i = load i64, ptr %i.ak, align 8, !dbg !4109
  %.val40.i = load i64, ptr %i.z, align 8, !dbg !4109, !noundef !484 ; 2 uses
  %i.al = getelementptr i8, ptr %i.z, i64 24, !dbg !4109
  %.val41.i = load i64, ptr %i.al, align 8, !dbg !4109
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3279)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3279)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3279)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3281)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3281)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3283)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3285)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3287)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3285)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3287)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3289)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3290)
  %i.am = icmp eq i64 %.val38.i, %.val40.i, !dbg !4110
    #dbg_value(i8 poison, !1055, !DIExpression(), !3291)
  %i.an = icmp ult i64 %.val39.i, %.val41.i, !dbg !4111
  %i.ao = icmp ult i64 %.val38.i, %.val40.i, !dbg !4111
  %i.ap = select i1 %i.am, i1 %i.an, i1 %i.ao, !dbg !4110 ; 3 uses
    #dbg_value(i1 %i.ap, !3901, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3292)
    #dbg_value(i1 %i.aj, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3306)
    #dbg_value(ptr %i.ab, !3924, !DIExpression(), !3306)
    #dbg_value(ptr %i.w, !3925, !DIExpression(), !3306)
    #dbg_value(ptr %i.ab, !3926, !DIExpression(), !3307)
    #dbg_value(ptr %i.w, !3927, !DIExpression(), !3308)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3309)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3310)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3311)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3312)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3313)
  %i.aq = select i1 %i.aj, ptr %i.ab, ptr %i.w, !dbg !4112, !unpredictable !484
    #dbg_value(ptr %i.aq, !3902, !DIExpression(), !3314)
    #dbg_value(ptr %i.aq, !3915, !DIExpression(), !3215)
    #dbg_value(i1 %i.ap, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3316)
    #dbg_value(ptr %i.z, !3924, !DIExpression(), !3316)
    #dbg_value(ptr %i.ad, !3925, !DIExpression(), !3316)
    #dbg_value(ptr %i.z, !3926, !DIExpression(), !3317)
    #dbg_value(ptr %i.ad, !3927, !DIExpression(), !3318)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3319)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3320)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3321)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3322)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3323)
  %i.ar = select i1 %i.ap, ptr %i.z, ptr %i.ad, !dbg !4113, !unpredictable !484
    #dbg_value(ptr %i.ar, !3903, !DIExpression(), !3324)
    #dbg_value(ptr %i.ar, !3915, !DIExpression(), !3228)
    #dbg_value(i1 %i.ap, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3326)
    #dbg_value(ptr %i.ab, !3924, !DIExpression(), !3326)
    #dbg_value(ptr %i.z, !3925, !DIExpression(), !3326)
    #dbg_value(ptr %i.ab, !3926, !DIExpression(), !3327)
    #dbg_value(ptr %i.z, !3927, !DIExpression(), !3328)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3329)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3330)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3331)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3332)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3333)
  %i.as = select i1 %i.ap, ptr %i.ab, ptr %i.z, !dbg !4114, !unpredictable !484
    #dbg_value(i1 %i.aj, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3335)
    #dbg_value(ptr %i.w, !3924, !DIExpression(), !3335)
    #dbg_value(ptr %i.as, !3925, !DIExpression(), !3335)
    #dbg_value(ptr %i.w, !3926, !DIExpression(), !3336)
    #dbg_value(ptr %i.as, !3927, !DIExpression(), !3337)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3338)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3478)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3478)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3480)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3480)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3482)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3484)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3486)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3484)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3486)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3488)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3489)
  %i.cp = icmp eq i64 %.val38.i70, %.val40.i72, !dbg !4153
    #dbg_value(i8 poison, !1055, !DIExpression(), !3490)
  %i.cq = icmp ult i64 %.val39.i71, %.val41.i73, !dbg !4154
  %i.cr = icmp ult i64 %.val38.i70, %.val40.i72, !dbg !4154
  %i.cs = select i1 %i.cp, i1 %i.cq, i1 %i.cr, !dbg !4153 ; 3 uses
    #dbg_value(i1 %i.cs, !3901, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3491)
    #dbg_value(i1 %i.cm, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3493)
    #dbg_value(ptr %i.ce, !3924, !DIExpression(), !3493)
    #dbg_value(ptr %i.bz, !3925, !DIExpression(), !3493)
    #dbg_value(ptr %i.ce, !3926, !DIExpression(), !3494)
    #dbg_value(ptr %i.bz, !3927, !DIExpression(), !3495)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3496)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3497)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3498)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3499)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3500)
  %i.ct = select i1 %i.cm, ptr %i.ce, ptr %i.bz, !dbg !4155, !unpredictable !484
    #dbg_value(ptr %i.ct, !3902, !DIExpression(), !3501)
    #dbg_value(ptr %i.ct, !3915, !DIExpression(), !3415)
    #dbg_value(i1 %i.cs, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3503)
    #dbg_value(ptr %i.cc, !3924, !DIExpression(), !3503)
    #dbg_value(ptr %i.cg, !3925, !DIExpression(), !3503)
    #dbg_value(ptr %i.cc, !3926, !DIExpression(), !3504)
    #dbg_value(ptr %i.cg, !3927, !DIExpression(), !3505)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3506)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3507)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3508)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3509)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3510)
  %i.cu = select i1 %i.cs, ptr %i.cc, ptr %i.cg, !dbg !4156, !unpredictable !484
    #dbg_value(ptr %i.cu, !3903, !DIExpression(), !3511)
    #dbg_value(ptr %i.cu, !3915, !DIExpression(), !3427)
    #dbg_value(i1 %i.cs, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3513)
    #dbg_value(ptr %i.ce, !3924, !DIExpression(), !3513)
    #dbg_value(ptr %i.cc, !3925, !DIExpression(), !3513)
    #dbg_value(ptr %i.ce, !3926, !DIExpression(), !3514)
    #dbg_value(ptr %i.cc, !3927, !DIExpression(), !3515)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3516)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3517)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3518)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3519)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3520)
  %i.cv = select i1 %i.cs, ptr %i.ce, ptr %i.cc, !dbg !4157, !unpredictable !484
    #dbg_value(i1 %i.cm, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3522)
    #dbg_value(ptr %i.bz, !3924, !DIExpression(), !3522)
    #dbg_value(ptr %i.cv, !3925, !DIExpression(), !3522)
    #dbg_value(ptr %i.bz, !3926, !DIExpression(), !3523)
    #dbg_value(ptr %i.cv, !3927, !DIExpression(), !3524)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3525)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3526)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3527)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3528)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3529)
  %i.cw = select i1 %i.cm, ptr %i.bz, ptr %i.cv, !dbg !4158, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.cw, !3904, !DIExpression(), !3530)
    #dbg_value(i1 %i.cm, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3532)
    #dbg_value(ptr %i.cc, !3924, !DIExpression(), !3532)
    #dbg_value(ptr %i.ce, !3925, !DIExpression(), !3532)
    #dbg_value(ptr %i.cc, !3926, !DIExpression(), !3533)
    #dbg_value(ptr %i.ce, !3927, !DIExpression(), !3534)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3535)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3536)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3537)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3538)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3539)
  %i.cx = select i1 %i.cm, ptr %i.cc, ptr %i.ce, !dbg !4159, !unpredictable !484
    #dbg_value(i1 %i.cs, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3541)
    #dbg_value(ptr %i.cg, !3924, !DIExpression(), !3541)
    #dbg_value(ptr %i.cx, !3925, !DIExpression(), !3541)
    #dbg_value(ptr %i.cg, !3926, !DIExpression(), !3542)
    #dbg_value(ptr %i.cx, !3927, !DIExpression(), !3543)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3544)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3545)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3546)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3547)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3548)
  %i.cy = select i1 %i.cs, ptr %i.cg, ptr %i.cx, !dbg !4160, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.cy, !3905, !DIExpression(), !3549)
  %.val.i74 = load i64, ptr %i.cy, align 8, !dbg !4161, !noundef !484 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 24, !dbg !4161
  %.val35.i75 = load i64, ptr %i.cz, align 8, !dbg !4161
  %.val36.i76 = load i64, ptr %i.cw, align 8, !dbg !4161, !noundef !484 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 24, !dbg !4161
  %.val37.i77 = load i64, ptr %i.da, align 8, !dbg !4161
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3551)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3551)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3551)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3553)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3553)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3555)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3557)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3559)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3557)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3559)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3561)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3562)
  %i.db = icmp eq i64 %.val.i74, %.val36.i76, !dbg !4162
    #dbg_value(i8 poison, !1055, !DIExpression(), !3563)
  %i.dc = icmp ult i64 %.val35.i75, %.val37.i77, !dbg !4163
  %i.dd = icmp ult i64 %.val.i74, %.val36.i76, !dbg !4163
  %i.de = select i1 %i.db, i1 %i.dc, i1 %i.dd, !dbg !4162 ; 2 uses
    #dbg_value(i1 %i.de, !3906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3564)
    #dbg_value(i1 %i.de, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3566)
    #dbg_value(ptr %i.cy, !3924, !DIExpression(), !3566)
    #dbg_value(ptr %i.cw, !3925, !DIExpression(), !3566)
    #dbg_value(ptr %i.cy, !3926, !DIExpression(), !3567)
    #dbg_value(ptr %i.cw, !3927, !DIExpression(), !3568)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3569)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3570)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3571)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3572)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3573)
  %i.df = select i1 %i.de, ptr %i.cy, ptr %i.cw, !dbg !4164, !unpredictable !484
    #dbg_value(ptr %i.df, !3907, !DIExpression(), !3574)
    #dbg_value(ptr %i.df, !3915, !DIExpression(), !3423)
    #dbg_value(i1 %i.de, !3921, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3576)
    #dbg_value(ptr %i.cw, !3924, !DIExpression(), !3576)
    #dbg_value(ptr %i.cy, !3925, !DIExpression(), !3576)
    #dbg_value(ptr %i.cw, !3926, !DIExpression(), !3577)
    #dbg_value(ptr %i.cy, !3927, !DIExpression(), !3578)
    #dbg_value(ptr undef, !3929, !DIExpression(), !3579)
    #dbg_value(ptr undef, !3930, !DIExpression(), !3580)
    #dbg_value(ptr poison, !3931, !DIExpression(), !3581)
    #dbg_value(ptr poison, !3932, !DIExpression(), !3582)
    #dbg_value(ptr poison, !3933, !DIExpression(), !3583)
  %i.dg = select i1 %i.de, ptr %i.cw, ptr %i.cy, !dbg !4165, !unpredictable !484
    #dbg_value(ptr %i.dg, !3908, !DIExpression(), !3584)
    #dbg_value(ptr %i.dg, !3915, !DIExpression(), !3425)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false), !dbg !4166
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bi, i64 48, !dbg !4167
    #dbg_value(ptr %i.dh, !3914, !DIExpression(), !3423)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 8 dereferenceable(48) %i.df, i64 48, i1 false), !dbg !4168
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 96, !dbg !4169
    #dbg_value(ptr %i.di, !3914, !DIExpression(), !3425)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false), !dbg !4170
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144, !dbg !4171
    #dbg_value(ptr %i.dj, !3914, !DIExpression(), !3427)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 48, i1 false), !dbg !4172
    #dbg_value(i64 4, !3815, !DIExpression(), !3888)
  br label %bb.g, !dbg !4088

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], !dbg !3883 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !3815, !DIExpression(), !3888)
    #dbg_value(i64 0, !3816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3948)
    #dbg_value(i64 2, !3816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3948)
    #dbg_value(i64 0, !3816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3948)
    #dbg_value(i64 %i.d, !3816, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3948)
  %i.dk = sub nuw nsw i64 %1, %i.d                ; 2 uses
    #dbg_value(i64 0, !3817, !DIExpression(), !3949)
    #dbg_value(i64 0, !3862, !DIExpression(), !3875)
    #dbg_value(i64 0, !3862, !DIExpression(), !3887)
    #dbg_value(ptr %0, !3818, !DIExpression(), !3950)
    #dbg_value(ptr %0, !3863, !DIExpression(), !3952)
    #dbg_value(ptr %2, !3819, !DIExpression(), !3953)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3955)
    #dbg_value(ptr %2, !3863, !DIExpression(), !3957)
    #dbg_value(i64 %i.d, !3820, !DIExpression(), !3958)
    #dbg_value(i64 %.sroa.0.0, !3821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(i64 %i.d, !3821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3959)
    #dbg_value(ptr undef, !3833, !DIExpression(), !3839)
    #dbg_value(ptr undef, !3835, !DIExpression(), !3838)
    #dbg_value(ptr undef, !3825, !DIExpression(), !3832)
    #dbg_value(ptr undef, !3826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3960)
  %i.dl = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !4173
  br i1 %i.dl, label %.lr.ph, label %.loopexit, !dbg !3831

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.g
    #dbg_value(i64 %i.d, !3817, !DIExpression(), !3949)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3875)
    #dbg_value(i64 %i.d, !3862, !DIExpression(), !3887)
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d, !dbg !4174
    #dbg_value(ptr %i.dm, !3818, !DIExpression(), !3950)
    #dbg_value(ptr %i.dm, !3863, !DIExpression(), !3952)
  %i.dn = getelementptr [48 x i8], ptr %2, i64 %i.d, !dbg !4175 ; 6 uses
    #dbg_value(ptr %i.dn, !3819, !DIExpression(), !3953)
    #dbg_value(ptr %i.dn, !3863, !DIExpression(), !3955)
    #dbg_value(ptr %i.dn, !3863, !DIExpression(), !3957)
    #dbg_value(i64 %i.dk, !3820, !DIExpression(), !3958)
    #dbg_value(i64 %.sroa.0.0, !3821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(i64 %i.dk, !3821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3959)
    #dbg_value(ptr undef, !3833, !DIExpression(), !3839)
    #dbg_value(ptr undef, !3835, !DIExpression(), !3838)
    #dbg_value(ptr undef, !3825, !DIExpression(), !3832)
    #dbg_value(ptr undef, !3826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3960)
  %i.do = icmp samesign ult i64 %.sroa.0.0, %i.dk, !dbg !4173
  br i1 %i.do, label %.lr.ph.1, label %.loopexit.1, !dbg !3831

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1
  %.sroa.05.086.1 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %5, %.loopexit ]
  %.sroa.05.086.1.a = phi i64 [ %i.eh, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
    #dbg_value(i64 %.sroa.05.086.1.a, !3836, !DIExpression(), !3961)
    #dbg_value(i64 %.sroa.05.086.1.a, !3850, !DIExpression(), !3853)
    #dbg_value(i64 %.sroa.05.086.1.a, !3855, !DIExpression(), !3858)
    #dbg_value(i64 %.sroa.05.086.1.a, !3821, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(i64 %.sroa.05.086.1.a, !3822, !DIExpression(), !3962)
    #dbg_value(i64 %.sroa.05.086.1.a, !3862, !DIExpression(), !3952)
    #dbg_value(i64 %.sroa.05.086.1.a, !3862, !DIExpression(), !3955)
    #dbg_value(i64 %.sroa.05.086.1.a, !3862, !DIExpression(), !3957)
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dm, i64 %.sroa.05.086.1.a, !dbg !4176 ; 3 uses
    #dbg_value(ptr %i.dp, !3842, !DIExpression(), !3860)
  %.idx118 = mul nuw nsw i64 %.sroa.05.086.1.a, 48, !dbg !4177
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx118, !dbg !4177 ; 6 uses
    #dbg_value(ptr %i.dq, !3843, !DIExpression(), !3860)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i64 48, i1 false), !dbg !4178
    #dbg_value(ptr poison, !1008, !DIExpression(), !3588)
    #dbg_value(ptr poison, !1013, !DIExpression(), !3589)
    #dbg_value(ptr poison, !1008, !DIExpression(), !3592)
    #dbg_value(ptr poison, !1013, !DIExpression(), !3593)
    #dbg_declare(ptr %.sroa.5.i, !993, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !3594)
    #dbg_declare(ptr %.sroa.6.i, !993, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !3594)
    #dbg_value(ptr poison, !1019, !DIExpression(), !3596)
    #dbg_value(ptr poison, !994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3597)
    #dbg_value(ptr %i.dn, !989, !DIExpression(), !3598)
    #dbg_value(ptr %i.dq, !990, !DIExpression(), !3598)
    #dbg_value(ptr %i.dq, !1025, !DIExpression(), !3600)
    #dbg_value(ptr %i.dq, !1028, !DIExpression(), !3602)
    #dbg_value(ptr poison, !991, !DIExpression(), !3598)
    #dbg_value(i64 1, !1026, !DIExpression(), !3600)
    #dbg_value(i64 1, !1032, !DIExpression(), !3604)
    #dbg_value(i64 1, !1026, !DIExpression(), !3606)
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -48, !dbg !4179 ; 3 uses
    #dbg_value(ptr %i.dr, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.dr, !1025, !DIExpression(), !3606)
  %.val19.i.1 = load i64, ptr %i.dq, align 8, !dbg !4180, !noundef !484 ; 5 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 24, !dbg !4180
  %.val20.i.1 = load i64, ptr %i.ds, align 8, !dbg !4180 ; 3 uses
  %.val21.i.1 = load i64, ptr %i.dr, align 8, !dbg !4180, !noundef !484 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dq, i64 -24, !dbg !4180
  %.val22.i.1 = load i64, ptr %i.dt, align 8, !dbg !4180
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3609)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3609)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3609)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3611)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3611)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3613)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3615)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3617)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3615)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3617)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3619)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3620)
  %i.du = icmp eq i64 %.val19.i.1, %.val21.i.1, !dbg !4181
    #dbg_value(i8 poison, !1055, !DIExpression(), !3621)
  %i.dv = icmp ult i64 %.val20.i.1, %.val22.i.1, !dbg !4182
  %i.dw = icmp ult i64 %.val19.i.1, %.val21.i.1, !dbg !4182
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw, !dbg !4181
  br i1 %i.dx, label %bb.h, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !4180

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !4183
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !4183
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !dbg !4184
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 32, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !dbg !4184
    #dbg_value(i64 %.val19.i.1, !993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3623)
    #dbg_value(i64 %.val20.i.1, !993, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3623)
    #dbg_value(ptr undef, !994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3597)
    #dbg_value(ptr %i.dq, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
    #dbg_value(i64 1, !994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3597)
    #dbg_value(ptr %i.dr, !1025, !DIExpression(), !3606)
    #dbg_value(ptr %i.dr, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.dr, !1033, !DIExpression(), !3604)
    #dbg_value(ptr %i.dq, !1034, !DIExpression(), !3604)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull align 8 dereferenceable(48) %i.dr, i64 48, i1 false), !dbg !4185
  br i1 %.sroa.05.086.1, label %._crit_edge114, label %.lr.ph113, !dbg !4186

bb.i:                                             ; preds = %.lr.ph113
    #dbg_value(ptr %.sroa.0.0.i78.1111, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
    #dbg_value(ptr %i.eb, !1025, !DIExpression(), !3606)
    #dbg_value(ptr %i.eb, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.eb, !1033, !DIExpression(), !3604)
    #dbg_value(ptr %.sroa.0.0.i78.1111, !1034, !DIExpression(), !3604)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i78.1111, ptr noundef nonnull align 8 dereferenceable(48) %i.eb, i64 48, i1 false), !dbg !4185
    #dbg_value(ptr %i.eb, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
  %i.ea = icmp eq ptr %i.eb, %i.dn, !dbg !4186
  br i1 %i.ea, label %._crit_edge114, label %.lr.ph113, !dbg !4186

.lr.ph113:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i78.1111 = phi ptr [ %i.eb, %bb.i ], [ %i.dr, %bb.h ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i78.1111, !1025, !DIExpression(), !3606)
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i78.1111, i64 -48, !dbg !4187 ; 4 uses
    #dbg_value(ptr %i.eb, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.eb, !1025, !DIExpression(), !3606)
  %.val17.i.1 = load i64, ptr %i.eb, align 8, !dbg !4188, !noundef !484 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.0.0.i78.1111, i64 -24, !dbg !4188
  %.val18.i.1 = load i64, ptr %i.ec, align 8, !dbg !4188
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3625)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3625)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3625)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3627)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3627)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3629)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3631)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3633)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3631)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3633)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3635)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3636)
  %i.ed = icmp eq i64 %.val19.i.1, %.val17.i.1, !dbg !4189
    #dbg_value(i8 poison, !1055, !DIExpression(), !3637)
  %i.ee = icmp ult i64 %.val20.i.1, %.val18.i.1, !dbg !4190
  %i.ef = icmp ult i64 %.val19.i.1, %.val17.i.1, !dbg !4190
  %i.eg = select i1 %i.ed, i1 %i.ee, i1 %i.ef, !dbg !4189
  br i1 %i.eg, label %bb.i, label %._crit_edge114, !dbg !4188

._crit_edge114:                                   ; preds = %bb.i, %.lr.ph113, %bb.h
  %.sroa.0.0.i78.lcssa.1 = phi ptr [ %i.dn, %bb.h ], [ %i.dn, %bb.i ], [ %.sroa.0.0.i78.1111, %.lr.ph113 ], !dbg !4191 ; 4 uses
    #dbg_value(ptr undef, !1013, !DIExpression(), !3589)
    #dbg_value(ptr undef, !1008, !DIExpression(), !3588)
    #dbg_value(ptr undef, !1019, !DIExpression(), !3596)
    #dbg_value(ptr %.sroa.0.0.i78.lcssa.1, !1022, !DIExpression(), !3596)
    #dbg_value(i64 1, !1023, !DIExpression(), !3596)
  store i64 %.val19.i.1, ptr %.sroa.0.0.i78.lcssa.1, align 8, !dbg !4192, !noalias !3963
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa.1, i64 8, !dbg !4192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !dbg !4192, !noalias !3963
  %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa.1, i64 24, !dbg !4192
  store i64 %.val20.i.1, ptr %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !dbg !4192, !noalias !3963
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa.1, i64 32, !dbg !4192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !dbg !4192, !noalias !3963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !4193
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !4194

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1: ; preds = %._crit_edge114, %.lr.ph.1
  %i.eh = add nuw nsw i64 %.sroa.05.086.1.a, 1, !dbg !4195 ; 2 uses
    #dbg_value(i64 %i.eh, !3821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(ptr undef, !3833, !DIExpression(), !3839)
    #dbg_value(ptr undef, !3835, !DIExpression(), !3838)
    #dbg_value(ptr undef, !3825, !DIExpression(), !3832)
    #dbg_value(ptr undef, !3826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3960)
  %exitcond.1.not = icmp eq i64 %i.eh, %i.dk, !dbg !4173
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !3831

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, %.loopexit
    #dbg_value(i64 2, !3816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3948)
    #dbg_value(ptr %2, !3823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3964)
    #dbg_value(ptr %0, !3823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3964)
    #dbg_value(i64 %1, !3823, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3964)
    #dbg_value(ptr %0, !3965, !DIExpression(), !3659)
    #dbg_value(ptr %0, !3978, !DIExpression(), !3660)
    #dbg_value(ptr %0, !3988, !DIExpression(), !3663)
    #dbg_value(ptr %2, !3971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3659)
    #dbg_value(i64 %1, !3971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3659)
    #dbg_value(ptr poison, !3972, !DIExpression(), !3659)
    #dbg_value(i64 1, !3992, !DIExpression(), !3671)
    #dbg_value(i64 1, !4001, !DIExpression(), !3674)
    #dbg_value(i64 1, !4004, !DIExpression(), !3677)
    #dbg_value(i64 1, !4009, !DIExpression(), !3680)
    #dbg_value(i64 1, !4004, !DIExpression(), !3682)
    #dbg_value(i64 1, !4009, !DIExpression(), !3684)
    #dbg_value(i64 2, !4015, !DIExpression(), !3687)
    #dbg_value(i64 1, !3990, !DIExpression(), !3663)
    #dbg_value(i64 %1, !3973, !DIExpression(), !3688)
    #dbg_value(i64 %1, !4016, !DIExpression(), !3687)
    #dbg_value(ptr %2, !3974, !DIExpression(), !3689)
    #dbg_value(ptr %2, !4018, !DIExpression(), !3692)
    #dbg_value(ptr %2, !4018, !DIExpression(), !3694)
    #dbg_value(ptr %2, !4018, !DIExpression(), !3696)
    #dbg_value(i64 %i.d, !3975, !DIExpression(), !3697)
    #dbg_value(i64 %i.d, !4019, !DIExpression(), !3692)
    #dbg_value(i64 %i.d, !4019, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3694)
    #dbg_value(i64 %1, !4019, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3696)
    #dbg_value(i64 %1, !4021, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3700)
    #dbg_value(ptr %0, !4022, !DIExpression(), !3700)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3701)
    #dbg_value(i64 0, !3982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3702)
    #dbg_value(i64 %i.d, !3982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3702)
    #dbg_value(ptr %2, !4018, !DIExpression(), !3704)
    #dbg_value(ptr %2, !3976, !DIExpression(), !3705)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !4018, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3707)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3708)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !4012, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3680)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !4007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3677)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !3979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3709)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !4012, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3684)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !4007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3682)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3710)
    #dbg_value(ptr undef, !3998, !DIExpression(), !3711)
    #dbg_value(ptr undef, !3995, !DIExpression(), !3712)
    #dbg_value(ptr undef, !4026, !DIExpression(), !3715)
    #dbg_value(ptr undef, !4027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3716)
  %i.ei = add nsw i64 %1, -1, !dbg !4196          ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %i.ei), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3701)
    #dbg_value(!DIArgList(ptr %2, i64 %i.ei), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3710)
    #dbg_value(!DIArgList(ptr %2, i64 %i.ei), !4007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3682)
    #dbg_value(!DIArgList(ptr %2, i64 %i.ei), !4012, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3684)
    #dbg_value(i64 %i.ei, !4019, !DIExpression(), !3696)
    #dbg_value(i64 %i.ei, !4021, !DIExpression(), !3700)
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ei, !dbg !4197
    #dbg_value(ptr %i.ej, !3981, !DIExpression(), !3701)
  %i.ek = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.ei, !dbg !4198
    #dbg_value(ptr %i.ek, !4012, !DIExpression(), !3684)
    #dbg_value(ptr %i.ek, !4007, !DIExpression(), !3682)
    #dbg_value(ptr %i.ek, !3980, !DIExpression(), !3710)
    #dbg_value(ptr %i.dn, !4018, !DIExpression(), !3707)
    #dbg_value(ptr %i.dn, !3977, !DIExpression(), !3708)
    #dbg_value(ptr %i.dn, !3979, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3709)
    #dbg_value(ptr %i.dn, !4007, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3677)
    #dbg_value(ptr %i.dn, !4012, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !3680)
  %i.el = getelementptr i8, ptr %i.dn, i64 -48, !dbg !4199
    #dbg_value(ptr %i.el, !4012, !DIExpression(), !3680)
    #dbg_value(ptr %i.el, !4007, !DIExpression(), !3677)
    #dbg_value(ptr %i.el, !3979, !DIExpression(), !3709)
  br label %.lr.ph.i, !dbg !4200

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.em = getelementptr i8, ptr %i.fl, i64 48, !dbg !4201 ; 2 uses
    #dbg_value(ptr %i.em, !3983, !DIExpression(), !3717)
  %i.en = getelementptr i8, ptr %i.fk, i64 48, !dbg !4202
    #dbg_value(ptr %i.en, !3984, !DIExpression(), !3718)
  %i.eo = and i64 %1, 1, !dbg !4203
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !4203
  br i1 %i.ep, label %bb.k, label %bb.j, !dbg !4204

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.eq, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ez, %.lr.ph.i ], [ %i.dn, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %i.el, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %i.ek, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.fm, %.lr.ph.i ], [ %i.ej, %.loopexit.1 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i, !3988, !DIExpression(), !3663)
    #dbg_value(ptr %.sroa.06.08.i, !4018, !DIExpression(), !3704)
    #dbg_value(ptr %.sroa.011.07.i, !4018, !DIExpression(), !3707)
    #dbg_value(ptr %.sroa.015.06.i, !4012, !DIExpression(), !3680)
    #dbg_value(ptr %.sroa.017.05.i, !4012, !DIExpression(), !3684)
    #dbg_value(ptr %.sroa.019.04.i, !3981, !DIExpression(), !3701)
    #dbg_value(i64 %.sroa.04.09.i, !3996, !DIExpression(), !3719)
    #dbg_value(i64 %.sroa.04.09.i, !3993, !DIExpression(), !3671)
    #dbg_value(i64 %.sroa.04.09.i, !4002, !DIExpression(), !3674)
  %i.eq = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !4205 ; 2 uses
    #dbg_value(i64 %i.eq, !3982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3702)
    #dbg_value(ptr %.sroa.06.08.i, !4030, !DIExpression(), !3725)
    #dbg_value(ptr %.sroa.06.08.i, !4043, !DIExpression(), !3728)
    #dbg_value(ptr %.sroa.011.07.i, !4037, !DIExpression(), !3725)
    #dbg_value(ptr %.sroa.011.07.i, !4043, !DIExpression(), !3730)
    #dbg_value(ptr %.sroa.0.010.i, !4038, !DIExpression(), !3725)
    #dbg_value(ptr %.sroa.0.010.i, !4046, !DIExpression(), !3733)
    #dbg_value(ptr poison, !4039, !DIExpression(), !3725)
    #dbg_value(i64 1, !4049, !DIExpression(), !3736)
    #dbg_value(i64 1, !4047, !DIExpression(), !3733)
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.07.i, align 8, !dbg !4206, !alias.scope !4053, !noundef !484 ; 2 uses
  %i.er = getelementptr i8, ptr %.sroa.011.07.i, i64 24, !dbg !4206
  %.sroa.011.0.val44.i = load i64, ptr %i.er, align 8, !dbg !4206, !alias.scope !4053
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.08.i, align 8, !dbg !4206, !alias.scope !4053, !noundef !484 ; 2 uses
  %i.es = getelementptr i8, ptr %.sroa.06.08.i, i64 24, !dbg !4206
  %.sroa.06.0.val45.i = load i64, ptr %i.es, align 8, !dbg !4206, !alias.scope !4053
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3740)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3740)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3740)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3742)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3742)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3744)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3746)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3748)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3746)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3748)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3750)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3751)
  %i.et = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !4207
    #dbg_value(i8 poison, !1055, !DIExpression(), !3752)
  %i.eu = icmp ult i64 %.sroa.011.0.val44.i, %.sroa.06.0.val45.i, !dbg !4208
  %i.ev = icmp ult i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !4208
  %i.ew = select i1 %i.et, i1 %i.eu, i1 %i.ev, !dbg !4207 ; 3 uses
    #dbg_value(i1 %i.ew, !4040, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3753)
  %..i43.i = select i1 %i.ew, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !4209
  %i.ex = xor i1 %i.ew, true, !dbg !4210
    #dbg_value(i1 %i.ex, !4040, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3753)
    #dbg_value(ptr %..i43.i, !4050, !DIExpression(), !3736)
    #dbg_value(ptr %..i43.i, !4041, !DIExpression(), !3754)
    #dbg_value(ptr %.sroa.0.010.i, !4051, !DIExpression(), !3736)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(48) %..i43.i, i64 48, i1 false), !dbg !4211, !noalias !4054
  %i.ey = zext i1 %i.ew to i64, !dbg !4212
    #dbg_value(i64 %i.ey, !4044, !DIExpression(), !3730)
  %i.ez = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.07.i, i64 %i.ey, !dbg !4213 ; 4 uses
    #dbg_value(ptr %i.ez, !4037, !DIExpression(), !3725)
    #dbg_value(ptr %i.ez, !4043, !DIExpression(), !3730)
  %i.fa = zext i1 %i.ex to i64, !dbg !4214
    #dbg_value(i64 %i.fa, !4044, !DIExpression(), !3728)
  %i.fb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.08.i, i64 %i.fa, !dbg !4215 ; 5 uses
    #dbg_value(ptr %i.fb, !4030, !DIExpression(), !3725)
    #dbg_value(ptr %i.fb, !4043, !DIExpression(), !3728)
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48, !dbg !4216 ; 2 uses
    #dbg_value(ptr %i.fc, !4038, !DIExpression(), !3725)
    #dbg_value(ptr %i.fc, !4046, !DIExpression(), !3733)
    #dbg_value(ptr %i.fb, !3976, !DIExpression(), !3705)
    #dbg_value(ptr %i.fb, !4018, !DIExpression(), !3704)
    #dbg_value(ptr %i.ez, !3977, !DIExpression(), !3708)
    #dbg_value(ptr %i.ez, !4018, !DIExpression(), !3707)
    #dbg_value(ptr %i.fc, !3965, !DIExpression(), !3659)
    #dbg_value(ptr %i.fc, !3978, !DIExpression(), !3660)
    #dbg_value(ptr %i.fc, !3988, !DIExpression(), !3663)
    #dbg_value(ptr %.sroa.015.06.i, !4055, !DIExpression(), !3762)
    #dbg_value(ptr %.sroa.015.06.i, !4062, !DIExpression(), !3765)
    #dbg_value(ptr %.sroa.015.06.i, !4065, !DIExpression(), !3768)
    #dbg_value(ptr %.sroa.017.05.i, !4056, !DIExpression(), !3762)
    #dbg_value(ptr %.sroa.017.05.i, !4062, !DIExpression(), !3770)
    #dbg_value(ptr %.sroa.017.05.i, !4065, !DIExpression(), !3772)
    #dbg_value(ptr %.sroa.019.04.i, !4057, !DIExpression(), !3762)
    #dbg_value(ptr %.sroa.019.04.i, !4069, !DIExpression(), !3775)
    #dbg_value(ptr poison, !4058, !DIExpression(), !3762)
    #dbg_value(i64 1, !4072, !DIExpression(), !3778)
    #dbg_value(i64 1, !4070, !DIExpression(), !3775)
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.05.i, align 8, !dbg !4217, !alias.scope !4053, !noundef !484 ; 2 uses
  %i.fd = getelementptr i8, ptr %.sroa.017.05.i, i64 24, !dbg !4217
  %.sroa.017.0.val46.i = load i64, ptr %i.fd, align 8, !dbg !4217, !alias.scope !4053
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.06.i, align 8, !dbg !4217, !alias.scope !4053, !noundef !484 ; 2 uses
  %i.fe = getelementptr i8, ptr %.sroa.015.06.i, i64 24, !dbg !4217
  %.sroa.015.0.val47.i = load i64, ptr %i.fe, align 8, !dbg !4217, !alias.scope !4053
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3780)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3780)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3780)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3782)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3782)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3784)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3786)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3788)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3786)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3788)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3790)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3791)
  %i.ff = icmp eq i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !4218
    #dbg_value(i8 poison, !1055, !DIExpression(), !3792)
  %i.fg = icmp ult i64 %.sroa.017.0.val46.i, %.sroa.015.0.val47.i, !dbg !4219
  %i.fh = icmp ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !4219
  %i.fi = select i1 %i.ff, i1 %i.fg, i1 %i.fh, !dbg !4218 ; 3 uses
    #dbg_value(i1 %i.fi, !4059, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3793)
  %..i.i = select i1 %i.fi, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !4220
  %i.fj = xor i1 %i.fi, true, !dbg !4221
    #dbg_value(i1 %i.fj, !4059, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3793)
    #dbg_value(ptr %..i.i, !4073, !DIExpression(), !3778)
    #dbg_value(ptr %..i.i, !4060, !DIExpression(), !3794)
    #dbg_value(ptr %.sroa.019.04.i, !4074, !DIExpression(), !3778)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !dbg !4222, !noalias !4076
  %.neg.i.i = sext i1 %i.fj to i64, !dbg !4223
    #dbg_value(i1 %i.fj, !4063, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3770)
    #dbg_value(i64 %.neg.i.i, !4066, !DIExpression(), !3772)
  %i.fk = getelementptr [48 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !4224 ; 2 uses
    #dbg_value(ptr %i.fk, !4056, !DIExpression(), !3762)
    #dbg_value(ptr %i.fk, !4062, !DIExpression(), !3770)
    #dbg_value(ptr %i.fk, !4065, !DIExpression(), !3772)
  %.neg24.i.i = sext i1 %i.fi to i64, !dbg !4225
    #dbg_value(i1 %i.fi, !4063, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3765)
    #dbg_value(i64 %.neg24.i.i, !4066, !DIExpression(), !3768)
  %i.fl = getelementptr [48 x i8], ptr %.sroa.015.06.i, i64 %.neg24.i.i, !dbg !4226 ; 2 uses
    #dbg_value(ptr %i.fl, !4055, !DIExpression(), !3762)
    #dbg_value(ptr %i.fl, !4062, !DIExpression(), !3765)
    #dbg_value(ptr %i.fl, !4065, !DIExpression(), !3768)
  %i.fm = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -48, !dbg !4227
    #dbg_value(ptr %i.fm, !4057, !DIExpression(), !3762)
    #dbg_value(ptr %i.fm, !4069, !DIExpression(), !3775)
    #dbg_value(ptr %i.fl, !4012, !DIExpression(), !3680)
    #dbg_value(ptr %i.fl, !4007, !DIExpression(), !3677)
    #dbg_value(ptr %i.fl, !3979, !DIExpression(), !3709)
    #dbg_value(ptr %i.fk, !4012, !DIExpression(), !3684)
    #dbg_value(ptr %i.fk, !4007, !DIExpression(), !3682)
    #dbg_value(ptr %i.fk, !3980, !DIExpression(), !3710)
    #dbg_value(ptr %i.fm, !3981, !DIExpression(), !3701)
    #dbg_value(ptr undef, !3998, !DIExpression(), !3711)
    #dbg_value(ptr undef, !3995, !DIExpression(), !3712)
    #dbg_value(ptr undef, !4026, !DIExpression(), !3715)
    #dbg_value(ptr undef, !4027, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3716)
  %exitcond.not.i = icmp eq i64 %i.eq, %i.d, !dbg !4228
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !4200

bb.j:                                             ; preds = %._crit_edge.i
  %i.fn = icmp ult ptr %i.fb, %i.em, !dbg !4229   ; 3 uses
    #dbg_value(i1 %i.fn, !3985, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3798)
  %.sroa.06.0..sroa.011.0.i = select i1 %i.fn, ptr %i.fb, ptr %i.ez, !dbg !4230
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !3989, !DIExpression(), !3663)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !3986, !DIExpression(), !3799)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.0..sroa.011.0.i, i64 48, i1 false), !dbg !4231
  %i.fo = zext i1 %i.fn to i64, !dbg !4232
    #dbg_value(i64 %i.fo, !4019, !DIExpression(), !3704)
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fb, i64 %i.fo, !dbg !4233
    #dbg_value(ptr %i.fp, !3976, !DIExpression(), !3705)
    #dbg_value(ptr %i.fp, !4018, !DIExpression(), !3704)
  %i.fq = xor i1 %i.fn, true, !dbg !4234
  %i.fr = zext i1 %i.fq to i64, !dbg !4234
    #dbg_value(i64 %i.fr, !4019, !DIExpression(), !3707)
  %i.fs = getelementptr inbounds nuw [48 x i8], ptr %i.ez, i64 %i.fr, !dbg !4235
    #dbg_value(ptr %i.fs, !3977, !DIExpression(), !3708)
    #dbg_value(ptr %i.fs, !4018, !DIExpression(), !3707)
  br label %bb.k, !dbg !4236

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ez, %._crit_edge.i ], [ %i.fs, %bb.j ], !dbg !4237
  %.sroa.06.1.i = phi ptr [ %i.fb, %._crit_edge.i ], [ %i.fp, %bb.j ], !dbg !4238
    #dbg_value(ptr %.sroa.06.1.i, !4018, !DIExpression(), !3704)
    #dbg_value(ptr %.sroa.06.1.i, !3976, !DIExpression(), !3705)
    #dbg_value(ptr %.sroa.011.1.i, !4018, !DIExpression(), !3707)
    #dbg_value(ptr %.sroa.011.1.i, !3977, !DIExpression(), !3708)
  %i.ft = icmp ne ptr %.sroa.06.1.i, %i.em, !dbg !4239
  %i.fu = icmp ne ptr %.sroa.011.1.i, %i.en
  %or.cond.i = select i1 %i.ft, i1 true, i1 %i.fu, !dbg !4239, !prof !759
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, !dbg !4239, !prof !759

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc unwind label %bb.m, !dbg !4240

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !4240

bb.m:                                             ; preds = %bb.l
  %i.fv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !1013, !DIExpression(), !3171)
    #dbg_value(ptr undef, !1008, !DIExpression(), !3170)
    #dbg_value(ptr %2, !1019, !DIExpression(), !3801)
    #dbg_value(ptr %0, !1022, !DIExpression(), !3801)
    #dbg_value(i64 %1, !1023, !DIExpression(), !3801)
  %i.fw = mul nuw nsw i64 %1, 48, !dbg !4241
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.fw, i1 false), !dbg !4241, !noalias !4077
  resume { ptr, i32 } %i.fv, !dbg !4242

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !4243

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.05.086 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %5, %bb.g ]
  %.sroa.05.086.a = phi i64 [ %i.gp, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.g ] ; 3 uses
    #dbg_value(i64 %.sroa.05.086.a, !3836, !DIExpression(), !3961)
    #dbg_value(i64 %.sroa.05.086.a, !3850, !DIExpression(), !3853)
    #dbg_value(i64 %.sroa.05.086.a, !3855, !DIExpression(), !3858)
    #dbg_value(i64 %.sroa.05.086.a, !3821, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(i64 %.sroa.05.086.a, !3822, !DIExpression(), !3962)
    #dbg_value(i64 %.sroa.05.086.a, !3862, !DIExpression(), !3952)
    #dbg_value(i64 %.sroa.05.086.a, !3862, !DIExpression(), !3955)
    #dbg_value(i64 %.sroa.05.086.a, !3862, !DIExpression(), !3957)
  %i.fx = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.086.a, !dbg !4176 ; 3 uses
    #dbg_value(ptr %i.fx, !3842, !DIExpression(), !3860)
  %.idx = mul nuw nsw i64 %.sroa.05.086.a, 48, !dbg !4177
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !4177 ; 6 uses
    #dbg_value(ptr %i.fy, !3843, !DIExpression(), !3860)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 48, i1 false), !dbg !4178
    #dbg_value(ptr poison, !1008, !DIExpression(), !3588)
    #dbg_value(ptr poison, !1013, !DIExpression(), !3589)
    #dbg_value(ptr poison, !1008, !DIExpression(), !3592)
    #dbg_value(ptr poison, !1013, !DIExpression(), !3593)
    #dbg_declare(ptr %.sroa.5.i, !993, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !3594)
    #dbg_declare(ptr %.sroa.6.i, !993, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !3594)
    #dbg_value(ptr poison, !1019, !DIExpression(), !3596)
    #dbg_value(ptr poison, !994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3597)
    #dbg_value(ptr %2, !989, !DIExpression(), !3598)
    #dbg_value(ptr %i.fy, !990, !DIExpression(), !3598)
    #dbg_value(ptr %i.fy, !1025, !DIExpression(), !3600)
    #dbg_value(ptr %i.fy, !1028, !DIExpression(), !3602)
    #dbg_value(ptr poison, !991, !DIExpression(), !3598)
    #dbg_value(i64 1, !1026, !DIExpression(), !3600)
    #dbg_value(i64 1, !1032, !DIExpression(), !3604)
    #dbg_value(i64 1, !1026, !DIExpression(), !3606)
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -48, !dbg !4179 ; 3 uses
    #dbg_value(ptr %i.fz, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.fz, !1025, !DIExpression(), !3606)
  %.val19.i = load i64, ptr %i.fy, align 8, !dbg !4180, !noundef !484 ; 5 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 24, !dbg !4180
  %.val20.i = load i64, ptr %i.ga, align 8, !dbg !4180 ; 3 uses
  %.val21.i = load i64, ptr %i.fz, align 8, !dbg !4180, !noundef !484 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fy, i64 -24, !dbg !4180
  %.val22.i = load i64, ptr %i.gb, align 8, !dbg !4180
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3609)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3609)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3609)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3611)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3611)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3613)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3615)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3617)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3615)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3617)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3619)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3620)
  %i.gc = icmp eq i64 %.val19.i, %.val21.i, !dbg !4181
    #dbg_value(i8 poison, !1055, !DIExpression(), !3621)
  %i.gd = icmp ult i64 %.val20.i, %.val22.i, !dbg !4182
  %i.ge = icmp ult i64 %.val19.i, %.val21.i, !dbg !4182
  %i.gf = select i1 %i.gc, i1 %i.gd, i1 %i.ge, !dbg !4181
  br i1 %i.gf, label %bb.n, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !4180

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !4183
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !4183
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !dbg !4184
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 32, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !dbg !4184
    #dbg_value(i64 %.val19.i, !993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3623)
    #dbg_value(i64 %.val20.i, !993, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3623)
    #dbg_value(ptr undef, !994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3597)
    #dbg_value(ptr %i.fy, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
    #dbg_value(i64 1, !994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3597)
    #dbg_value(ptr %i.fz, !1025, !DIExpression(), !3606)
    #dbg_value(ptr %i.fz, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.fz, !1033, !DIExpression(), !3604)
    #dbg_value(ptr %i.fy, !1034, !DIExpression(), !3604)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i64 48, i1 false), !dbg !4185
  br i1 %.sroa.05.086, label %._crit_edge, label %.lr.ph108, !dbg !4186

bb.o:                                             ; preds = %.lr.ph108
    #dbg_value(ptr %.sroa.0.0.i78107, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
    #dbg_value(ptr %i.gj, !1025, !DIExpression(), !3606)
    #dbg_value(ptr %i.gj, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.gj, !1033, !DIExpression(), !3604)
    #dbg_value(ptr %.sroa.0.0.i78107, !1034, !DIExpression(), !3604)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i78107, ptr noundef nonnull align 8 dereferenceable(48) %i.gj, i64 48, i1 false), !dbg !4185
    #dbg_value(ptr %i.gj, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
  %i.gi = icmp eq ptr %i.gj, %2, !dbg !4186
  br i1 %i.gi, label %._crit_edge, label %.lr.ph108, !dbg !4186

.lr.ph108:                                        ; preds = %bb.n, %bb.o
  %.sroa.0.0.i78107 = phi ptr [ %i.gj, %bb.o ], [ %i.fz, %bb.n ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i78107, !1025, !DIExpression(), !3606)
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0.i78107, i64 -48, !dbg !4187 ; 4 uses
    #dbg_value(ptr %i.gj, !992, !DIExpression(), !3607)
    #dbg_value(ptr %i.gj, !1025, !DIExpression(), !3606)
  %.val17.i = load i64, ptr %i.gj, align 8, !dbg !4188, !noundef !484 ; 2 uses
  %i.gk = getelementptr i8, ptr %.sroa.0.0.i78107, i64 -24, !dbg !4188
  %.val18.i = load i64, ptr %i.gk, align 8, !dbg !4188
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3625)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3625)
    #dbg_value(ptr poison, !1042, !DIExpression(), !3625)
    #dbg_value(ptr poison, !1047, !DIExpression(), !3627)
    #dbg_value(ptr poison, !1049, !DIExpression(), !3627)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !3629)
    #dbg_value(ptr poison, !1059, !DIExpression(), !3631)
    #dbg_value(ptr poison, !1065, !DIExpression(), !3633)
    #dbg_value(ptr poison, !1063, !DIExpression(), !3631)
    #dbg_value(ptr poison, !1069, !DIExpression(), !3633)
    #dbg_value(ptr poison, !1073, !DIExpression(), !3635)
    #dbg_value(ptr poison, !1082, !DIExpression(), !3636)
  %i.gl = icmp eq i64 %.val19.i, %.val17.i, !dbg !4189
    #dbg_value(i8 poison, !1055, !DIExpression(), !3637)
  %i.gm = icmp ult i64 %.val20.i, %.val18.i, !dbg !4190
  %i.gn = icmp ult i64 %.val19.i, %.val17.i, !dbg !4190
  %i.go = select i1 %i.gl, i1 %i.gm, i1 %i.gn, !dbg !4189
  br i1 %i.go, label %bb.o, label %._crit_edge, !dbg !4188

._crit_edge:                                      ; preds = %bb.o, %.lr.ph108, %bb.n
  %.sroa.0.0.i78.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i78107, %.lr.ph108 ], !dbg !4191 ; 4 uses
    #dbg_value(ptr undef, !1013, !DIExpression(), !3589)
    #dbg_value(ptr undef, !1008, !DIExpression(), !3588)
    #dbg_value(ptr undef, !1019, !DIExpression(), !3596)
    #dbg_value(ptr %.sroa.0.0.i78.lcssa, !1022, !DIExpression(), !3596)
    #dbg_value(i64 1, !1023, !DIExpression(), !3596)
  store i64 %.val19.i, ptr %.sroa.0.0.i78.lcssa, align 8, !dbg !4192, !noalias !3963
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa, i64 8, !dbg !4192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !dbg !4192, !noalias !3963
  %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa, i64 24, !dbg !4192
  store i64 %.val20.i, ptr %.sroa.56.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !4192, !noalias !3963
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78.lcssa, i64 32, !dbg !4192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !dbg !4192, !noalias !3963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !4193
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !4194

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.gp = add nuw nsw i64 %.sroa.05.086.a, 1, !dbg !4195 ; 2 uses
    #dbg_value(i64 %i.gp, !3821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3959)
    #dbg_value(ptr undef, !3833, !DIExpression(), !3839)
    #dbg_value(ptr undef, !3835, !DIExpression(), !3838)
    #dbg_value(ptr undef, !3825, !DIExpression(), !3832)
    #dbg_value(ptr undef, !3826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3960)
  %exitcond.not = icmp eq i64 %i.gp, %i.d, !dbg !4173
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !3831
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4257 {
bb.a:
    #dbg_value(ptr poison, !1115, !DIExpression(), !4260)
    #dbg_value(ptr poison, !1119, !DIExpression(), !4261)
    #dbg_value(ptr poison, !4804, !DIExpression(), !4811)
    #dbg_value(ptr poison, !4814, !DIExpression(), !4817)
    #dbg_value(ptr poison, !4812, !DIExpression(), !4818)
    #dbg_value(ptr %0, !4787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4819)
    #dbg_value(i64 %1, !4787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4819)
    #dbg_value(ptr %2, !4788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4819)
    #dbg_value(i64 %3, !4788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4819)
    #dbg_value(ptr %4, !4789, !DIExpression(), !4819)
    #dbg_value(i64 1, !4820, !DIExpression(), !4825)
    #dbg_value(i64 1, !4820, !DIExpression(), !4827)
    #dbg_value(i64 1, !4828, !DIExpression(), !4832)
    #dbg_value(i64 1, !4833, !DIExpression(), !4837)
    #dbg_value(i64 1, !4820, !DIExpression(), !4839)
    #dbg_value(i64 %1, !4790, !DIExpression(), !4840)
    #dbg_value(i64 %1, !4841, !DIExpression(), !4845)
  %i.a = icmp samesign ult i64 %1, 2, !dbg !4916
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b, !dbg !4916

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !4917
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !4918
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !4918

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !4791, !DIExpression(), !4846)
    #dbg_value(ptr %0, !4842, !DIExpression(), !4848)
    #dbg_value(ptr %0, !4842, !DIExpression(), !4850)
    #dbg_value(ptr %0, !4842, !DIExpression(), !4852)
    #dbg_value(ptr %0, !4842, !DIExpression(), !4854)
  %i.d = lshr i64 %1, 1, !dbg !4919               ; 12 uses
    #dbg_value(i64 %i.d, !4792, !DIExpression(), !4855)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4848)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4857)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4850)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4859)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4852)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4861)
    #dbg_value(ptr %2, !4793, !DIExpression(), !4862)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4845)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4857)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4864)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4859)
    #dbg_value(ptr %2, !4822, !DIExpression(), !4825)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4861)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4866)
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !4920
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !4920

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !4921
  unreachable, !dbg !4921

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !4922
  br i1 %i.f, label %bb.h, label %bb.g, !dbg !4922

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %1, !dbg !4923 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !4924
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d, !dbg !4925
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d, !dbg !4926
    #dbg_value(i64 %1, !4841, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4864)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4927
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !4928
    #dbg_value(i64 8, !4794, !DIExpression(), !4867)
  br label %bb.i, !dbg !4929

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !4821, !DIExpression(), !4825)
  %i.k = load i16, ptr %0, align 1, !dbg !4930
  store i16 %i.k, ptr %2, align 1, !dbg !4930
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d, !dbg !4931
    #dbg_value(ptr %i.l, !4821, !DIExpression(), !4827)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d, !dbg !4932
    #dbg_value(ptr %i.m, !4822, !DIExpression(), !4827)
  %i.n = load i16, ptr %i.l, align 1, !dbg !4933
  store i16 %i.n, ptr %i.m, align 1, !dbg !4933
    #dbg_value(i64 1, !4794, !DIExpression(), !4867)
  br label %bb.i, !dbg !4934

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !524, !DIExpression(), !4271)
    #dbg_value(ptr %0, !546, !DIExpression(), !4273)
    #dbg_value(ptr %0, !546, !DIExpression(), !4275)
    #dbg_value(ptr %0, !546, !DIExpression(), !4277)
    #dbg_value(ptr %0, !546, !DIExpression(), !4279)
    #dbg_value(ptr %0, !546, !DIExpression(), !4281)
    #dbg_value(ptr %0, !546, !DIExpression(), !4283)
    #dbg_value(ptr %0, !546, !DIExpression(), !4285)
    #dbg_value(ptr %2, !527, !DIExpression(), !4271)
    #dbg_value(ptr %2, !555, !DIExpression(), !4287)
    #dbg_value(ptr %2, !561, !DIExpression(), !4289)
    #dbg_value(ptr %2, !561, !DIExpression(), !4291)
    #dbg_value(ptr %2, !561, !DIExpression(), !4293)
    #dbg_value(ptr poison, !528, !DIExpression(), !4271)
    #dbg_value(i64 1, !551, !DIExpression(), !4273)
    #dbg_value(i64 3, !551, !DIExpression(), !4275)
    #dbg_value(i64 2, !551, !DIExpression(), !4277)
    #dbg_value(i64 1, !559, !DIExpression(), !4287)
    #dbg_value(i64 1, !562, !DIExpression(), !4289)
    #dbg_value(i64 1, !559, !DIExpression(), !4295)
    #dbg_value(i64 2, !562, !DIExpression(), !4291)
    #dbg_value(i64 1, !559, !DIExpression(), !4297)
    #dbg_value(i64 3, !562, !DIExpression(), !4293)
    #dbg_value(i64 1, !559, !DIExpression(), !4299)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !4935
  %.val50.i = load i8, ptr %i.o, align 1, !dbg !4936, !noundef !484 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 3, !dbg !4936
  %.val51.i = load i8, ptr %i.p, align 1, !dbg !4936
  %.val52.i = load i8, ptr %0, align 1, !dbg !4936, !noundef !484 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 1, !dbg !4936
  %.val53.i = load i8, ptr %i.q, align 1, !dbg !4936
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4301)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4301)
    #dbg_value(ptr poison, !575, !DIExpression(), !4301)
    #dbg_value(ptr poison, !582, !DIExpression(), !4303)
    #dbg_value(ptr poison, !585, !DIExpression(), !4303)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4305)
    #dbg_value(ptr poison, !614, !DIExpression(), !4307)
    #dbg_value(ptr poison, !618, !DIExpression(), !4307)
    #dbg_value(ptr poison, !620, !DIExpression(), !4309)
    #dbg_value(ptr poison, !624, !DIExpression(), !4309)
  %i.r = icmp eq i8 %.val50.i, %.val52.i, !dbg !4937
    #dbg_value(i8 poison, !610, !DIExpression(), !4310)
  %i.s = icmp ult i8 %.val51.i, %.val53.i, !dbg !4938
  %i.t = icmp ult i8 %.val50.i, %.val52.i, !dbg !4938
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
    #dbg_value(i1 %i.cj, !530, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4495)
  %i.ck = zext i1 %i.cb to i64, !dbg !4987
    #dbg_value(i64 %i.ck, !552, !DIExpression(), !4451)
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ck, !dbg !4988 ; 4 uses
    #dbg_value(ptr %i.cl, !531, !DIExpression(), !4496)
  %i.cm = xor i1 %i.cb, true, !dbg !4989
  %i.cn = zext i1 %i.cm to i64, !dbg !4989
    #dbg_value(i64 %i.cn, !552, !DIExpression(), !4453)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.cn, !dbg !4990 ; 5 uses
    #dbg_value(ptr %i.co, !532, !DIExpression(), !4497)
  %i.cp = select i1 %i.cj, i64 3, i64 2, !dbg !4991
    #dbg_value(i64 %i.cp, !552, !DIExpression(), !4455)
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.cp, !dbg !4992 ; 5 uses
    #dbg_value(ptr %i.cq, !533, !DIExpression(), !4498)
  %i.cr = select i1 %i.cj, i64 2, i64 3, !dbg !4993
    #dbg_value(i64 %i.cr, !552, !DIExpression(), !4457)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.cr, !dbg !4994 ; 4 uses
    #dbg_value(ptr %i.cs, !534, !DIExpression(), !4499)
  %.val42.i67 = load i8, ptr %i.cq, align 1, !dbg !4995, !noundef !484 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cq, i64 1, !dbg !4995
  %.val43.i68 = load i8, ptr %i.ct, align 1, !dbg !4995
  %.val44.i69 = load i8, ptr %i.cl, align 1, !dbg !4995, !noundef !484 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 1, !dbg !4995
  %.val45.i70 = load i8, ptr %i.cu, align 1, !dbg !4995
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4501)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4501)
    #dbg_value(ptr poison, !575, !DIExpression(), !4501)
    #dbg_value(ptr poison, !582, !DIExpression(), !4503)
    #dbg_value(ptr poison, !585, !DIExpression(), !4503)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4505)
    #dbg_value(ptr poison, !614, !DIExpression(), !4507)
    #dbg_value(ptr poison, !618, !DIExpression(), !4507)
    #dbg_value(ptr poison, !620, !DIExpression(), !4509)
    #dbg_value(ptr poison, !624, !DIExpression(), !4509)
  %i.cv = icmp eq i8 %.val42.i67, %.val44.i69, !dbg !4996
    #dbg_value(i8 poison, !610, !DIExpression(), !4510)
  %i.cw = icmp ult i8 %.val43.i68, %.val45.i70, !dbg !4997
  %i.cx = icmp ult i8 %.val42.i67, %.val44.i69, !dbg !4997
  %i.cy = select i1 %i.cv, i1 %i.cw, i1 %i.cx, !dbg !4996 ; 3 uses
    #dbg_value(i1 %i.cy, !535, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4511)
  %.val38.i71 = load i8, ptr %i.cs, align 1, !dbg !4998, !noundef !484 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 1, !dbg !4998
  %.val39.i72 = load i8, ptr %i.cz, align 1, !dbg !4998
  %.val40.i73 = load i8, ptr %i.co, align 1, !dbg !4998, !noundef !484 ; 2 uses
  %i.da = getelementptr i8, ptr %i.co, i64 1, !dbg !4998
  %.val41.i74 = load i8, ptr %i.da, align 1, !dbg !4998
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4513)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4513)
    #dbg_value(ptr poison, !575, !DIExpression(), !4513)
    #dbg_value(ptr poison, !582, !DIExpression(), !4515)
    #dbg_value(ptr poison, !585, !DIExpression(), !4515)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4517)
    #dbg_value(ptr poison, !614, !DIExpression(), !4519)
    #dbg_value(ptr poison, !618, !DIExpression(), !4519)
    #dbg_value(ptr poison, !620, !DIExpression(), !4521)
    #dbg_value(ptr poison, !624, !DIExpression(), !4521)
  %i.db = icmp eq i8 %.val38.i71, %.val40.i73, !dbg !4999
    #dbg_value(i8 poison, !610, !DIExpression(), !4522)
  %i.dc = icmp ult i8 %.val39.i72, %.val41.i74, !dbg !5000
  %i.dd = icmp ult i8 %.val38.i71, %.val40.i73, !dbg !5000
  %i.de = select i1 %i.db, i1 %i.dc, i1 %i.dd, !dbg !4999 ; 3 uses
    #dbg_value(i1 %i.de, !536, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4523)
    #dbg_value(i1 %i.cy, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4525)
    #dbg_value(ptr %i.cq, !635, !DIExpression(), !4525)
    #dbg_value(ptr %i.cl, !636, !DIExpression(), !4525)
    #dbg_value(ptr %i.cq, !637, !DIExpression(), !4526)
    #dbg_value(ptr %i.cl, !638, !DIExpression(), !4527)
    #dbg_value(ptr undef, !639, !DIExpression(), !4528)
    #dbg_value(ptr undef, !630, !DIExpression(), !4529)
    #dbg_value(ptr poison, !640, !DIExpression(), !4530)
    #dbg_value(ptr poison, !641, !DIExpression(), !4531)
    #dbg_value(ptr poison, !642, !DIExpression(), !4532)
  %i.df = select i1 %i.cy, ptr %i.cq, ptr %i.cl, !dbg !5001, !unpredictable !484
    #dbg_value(ptr %i.df, !537, !DIExpression(), !4533)
    #dbg_value(ptr %i.df, !558, !DIExpression(), !4459)
    #dbg_value(i1 %i.de, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4535)
    #dbg_value(ptr %i.co, !635, !DIExpression(), !4535)
    #dbg_value(ptr %i.cs, !636, !DIExpression(), !4535)
    #dbg_value(ptr %i.co, !637, !DIExpression(), !4536)
    #dbg_value(ptr %i.cs, !638, !DIExpression(), !4537)
    #dbg_value(ptr undef, !639, !DIExpression(), !4538)
    #dbg_value(ptr undef, !630, !DIExpression(), !4539)
    #dbg_value(ptr poison, !640, !DIExpression(), !4540)
    #dbg_value(ptr poison, !641, !DIExpression(), !4541)
    #dbg_value(ptr poison, !642, !DIExpression(), !4542)
  %i.dg = select i1 %i.de, ptr %i.co, ptr %i.cs, !dbg !5002, !unpredictable !484
    #dbg_value(ptr %i.dg, !538, !DIExpression(), !4543)
    #dbg_value(ptr %i.dg, !558, !DIExpression(), !4471)
    #dbg_value(i1 %i.de, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4545)
    #dbg_value(ptr %i.cq, !635, !DIExpression(), !4545)
    #dbg_value(ptr %i.co, !636, !DIExpression(), !4545)
    #dbg_value(ptr %i.cq, !637, !DIExpression(), !4546)
    #dbg_value(ptr %i.co, !638, !DIExpression(), !4547)
    #dbg_value(ptr undef, !639, !DIExpression(), !4548)
    #dbg_value(ptr undef, !630, !DIExpression(), !4549)
    #dbg_value(ptr poison, !640, !DIExpression(), !4550)
    #dbg_value(ptr poison, !641, !DIExpression(), !4551)
    #dbg_value(ptr poison, !642, !DIExpression(), !4552)
  %i.dh = select i1 %i.de, ptr %i.cq, ptr %i.co, !dbg !5003, !unpredictable !484
    #dbg_value(i1 %i.cy, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4554)
    #dbg_value(ptr %i.cl, !635, !DIExpression(), !4554)
    #dbg_value(ptr %i.dh, !636, !DIExpression(), !4554)
    #dbg_value(ptr %i.cl, !637, !DIExpression(), !4555)
    #dbg_value(ptr %i.dh, !638, !DIExpression(), !4556)
    #dbg_value(ptr undef, !639, !DIExpression(), !4557)
    #dbg_value(ptr undef, !630, !DIExpression(), !4558)
    #dbg_value(ptr poison, !640, !DIExpression(), !4559)
    #dbg_value(ptr poison, !641, !DIExpression(), !4560)
    #dbg_value(ptr poison, !642, !DIExpression(), !4561)
  %i.di = select i1 %i.cy, ptr %i.cl, ptr %i.dh, !dbg !5004, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.di, !539, !DIExpression(), !4562)
    #dbg_value(i1 %i.cy, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4564)
    #dbg_value(ptr %i.co, !635, !DIExpression(), !4564)
    #dbg_value(ptr %i.cq, !636, !DIExpression(), !4564)
    #dbg_value(ptr %i.co, !637, !DIExpression(), !4565)
    #dbg_value(ptr %i.cq, !638, !DIExpression(), !4566)
    #dbg_value(ptr undef, !639, !DIExpression(), !4567)
    #dbg_value(ptr undef, !630, !DIExpression(), !4568)
    #dbg_value(ptr poison, !640, !DIExpression(), !4569)
    #dbg_value(ptr poison, !641, !DIExpression(), !4570)
    #dbg_value(ptr poison, !642, !DIExpression(), !4571)
  %i.dj = select i1 %i.cy, ptr %i.co, ptr %i.cq, !dbg !5005, !unpredictable !484
    #dbg_value(i1 %i.de, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4573)
    #dbg_value(ptr %i.cs, !635, !DIExpression(), !4573)
    #dbg_value(ptr %i.dj, !636, !DIExpression(), !4573)
    #dbg_value(ptr %i.cs, !637, !DIExpression(), !4574)
    #dbg_value(ptr %i.dj, !638, !DIExpression(), !4575)
    #dbg_value(ptr undef, !639, !DIExpression(), !4576)
    #dbg_value(ptr undef, !630, !DIExpression(), !4577)
    #dbg_value(ptr poison, !640, !DIExpression(), !4578)
    #dbg_value(ptr poison, !641, !DIExpression(), !4579)
    #dbg_value(ptr poison, !642, !DIExpression(), !4580)
  %i.dk = select i1 %i.de, ptr %i.cs, ptr %i.dj, !dbg !5006, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.dk, !540, !DIExpression(), !4581)
  %.val.i75 = load i8, ptr %i.dk, align 1, !dbg !5007, !noundef !484 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 1, !dbg !5007
  %.val35.i76 = load i8, ptr %i.dl, align 1, !dbg !5007
  %.val36.i77 = load i8, ptr %i.di, align 1, !dbg !5007, !noundef !484 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 1, !dbg !5007
  %.val37.i78 = load i8, ptr %i.dm, align 1, !dbg !5007
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4583)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4583)
    #dbg_value(ptr poison, !575, !DIExpression(), !4583)
    #dbg_value(ptr poison, !582, !DIExpression(), !4585)
    #dbg_value(ptr poison, !585, !DIExpression(), !4585)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4587)
    #dbg_value(ptr poison, !614, !DIExpression(), !4589)
    #dbg_value(ptr poison, !618, !DIExpression(), !4589)
    #dbg_value(ptr poison, !620, !DIExpression(), !4591)
    #dbg_value(ptr poison, !624, !DIExpression(), !4591)
  %i.dn = icmp eq i8 %.val.i75, %.val36.i77, !dbg !5008
    #dbg_value(i8 poison, !610, !DIExpression(), !4592)
  %i.do = icmp ult i8 %.val35.i76, %.val37.i78, !dbg !5009
  %i.dp = icmp ult i8 %.val.i75, %.val36.i77, !dbg !5009
  %i.dq = select i1 %i.dn, i1 %i.do, i1 %i.dp, !dbg !5008 ; 2 uses
    #dbg_value(i1 %i.dq, !541, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4593)
    #dbg_value(i1 %i.dq, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4595)
    #dbg_value(ptr %i.dk, !635, !DIExpression(), !4595)
    #dbg_value(ptr %i.di, !636, !DIExpression(), !4595)
    #dbg_value(ptr %i.dk, !637, !DIExpression(), !4596)
    #dbg_value(ptr %i.di, !638, !DIExpression(), !4597)
    #dbg_value(ptr undef, !639, !DIExpression(), !4598)
    #dbg_value(ptr undef, !630, !DIExpression(), !4599)
    #dbg_value(ptr poison, !640, !DIExpression(), !4600)
    #dbg_value(ptr poison, !641, !DIExpression(), !4601)
    #dbg_value(ptr poison, !642, !DIExpression(), !4602)
  %i.dr = select i1 %i.dq, ptr %i.dk, ptr %i.di, !dbg !5010, !unpredictable !484
    #dbg_value(ptr %i.dr, !542, !DIExpression(), !4603)
    #dbg_value(ptr %i.dr, !558, !DIExpression(), !4467)
    #dbg_value(i1 %i.dq, !634, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4605)
    #dbg_value(ptr %i.di, !635, !DIExpression(), !4605)
    #dbg_value(ptr %i.dk, !636, !DIExpression(), !4605)
    #dbg_value(ptr %i.di, !637, !DIExpression(), !4606)
    #dbg_value(ptr %i.dk, !638, !DIExpression(), !4607)
    #dbg_value(ptr undef, !639, !DIExpression(), !4608)
    #dbg_value(ptr undef, !630, !DIExpression(), !4609)
    #dbg_value(ptr poison, !640, !DIExpression(), !4610)
    #dbg_value(ptr poison, !641, !DIExpression(), !4611)
    #dbg_value(ptr poison, !642, !DIExpression(), !4612)
  %i.ds = select i1 %i.dq, ptr %i.di, ptr %i.dk, !dbg !5011, !unpredictable !484
    #dbg_value(ptr %i.ds, !543, !DIExpression(), !4613)
    #dbg_value(ptr %i.ds, !558, !DIExpression(), !4469)
  %i.dt = load i16, ptr %i.df, align 1, !dbg !5012
  store i16 %i.dt, ptr %i.bu, align 1, !dbg !5012
  %i.du = getelementptr inbounds nuw i8, ptr %i.bu, i64 2, !dbg !5013
    #dbg_value(ptr %i.du, !555, !DIExpression(), !4467)
  %i.dv = load i16, ptr %i.dr, align 1, !dbg !5014
  store i16 %i.dv, ptr %i.du, align 1, !dbg !5014
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4, !dbg !5015
    #dbg_value(ptr %i.dw, !555, !DIExpression(), !4469)
  %i.dx = load i16, ptr %i.ds, align 1, !dbg !5016
  store i16 %i.dx, ptr %i.dw, align 1, !dbg !5016
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 6, !dbg !5017
    #dbg_value(ptr %i.dy, !555, !DIExpression(), !4471)
  %i.dz = load i16, ptr %i.dg, align 1, !dbg !5018
  store i16 %i.dz, ptr %i.dy, align 1, !dbg !5018
    #dbg_value(i64 4, !4794, !DIExpression(), !4867)
  br label %bb.i, !dbg !4934

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %5 = phi i1 [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ], !dbg !4862 ; 2 uses
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.h ], [ 1, %bb.g ], !dbg !4862 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !4794, !DIExpression(), !4867)
    #dbg_value(i64 0, !4795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4868)
    #dbg_value(i64 2, !4795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4868)
    #dbg_value(i64 0, !4795, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4868)
    #dbg_value(i64 %i.d, !4795, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4868)
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
    #dbg_value(i64 1, !4795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4868)
    #dbg_value(i64 0, !4796, !DIExpression(), !4869)
    #dbg_value(i64 0, !4841, !DIExpression(), !4854)
    #dbg_value(i64 0, !4841, !DIExpression(), !4866)
    #dbg_value(ptr %0, !4797, !DIExpression(), !4870)
    #dbg_value(ptr %0, !4842, !DIExpression(), !4872)
    #dbg_value(ptr %2, !4798, !DIExpression(), !4873)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4875)
    #dbg_value(ptr %2, !4842, !DIExpression(), !4877)
    #dbg_value(i64 %i.d, !4799, !DIExpression(), !4878)
    #dbg_value(i64 %.sroa.0.0, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(i64 %i.d, !4800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4879)
    #dbg_value(ptr undef, !4812, !DIExpression(), !4818)
    #dbg_value(ptr undef, !4814, !DIExpression(), !4817)
    #dbg_value(ptr undef, !4804, !DIExpression(), !4811)
    #dbg_value(ptr undef, !4805, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4880)
  %i.eb = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !5019
  br i1 %i.eb, label %.lr.ph, label %.loopexit, !dbg !4810

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.i
    #dbg_value(i64 2, !4795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4868)
    #dbg_value(i64 %i.d, !4796, !DIExpression(), !4869)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4854)
    #dbg_value(i64 %i.d, !4841, !DIExpression(), !4866)
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d, !dbg !5020
    #dbg_value(ptr %i.ec, !4797, !DIExpression(), !4870)
    #dbg_value(ptr %i.ec, !4842, !DIExpression(), !4872)
  %i.ed = getelementptr [2 x i8], ptr %2, i64 %i.d, !dbg !5021 ; 6 uses
    #dbg_value(ptr %i.ed, !4798, !DIExpression(), !4873)
    #dbg_value(ptr %i.ed, !4842, !DIExpression(), !4875)
    #dbg_value(ptr %i.ed, !4842, !DIExpression(), !4877)
    #dbg_value(i64 %i.ea, !4799, !DIExpression(), !4878)
    #dbg_value(i64 %.sroa.0.0, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(i64 %i.ea, !4800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4879)
    #dbg_value(ptr undef, !4812, !DIExpression(), !4818)
    #dbg_value(ptr undef, !4814, !DIExpression(), !4817)
    #dbg_value(ptr undef, !4804, !DIExpression(), !4811)
    #dbg_value(ptr undef, !4805, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4880)
  %i.ee = icmp samesign ult i64 %.sroa.0.0, %i.ea, !dbg !5019
  br i1 %i.ee, label %.lr.ph.1, label %.loopexit.1, !dbg !4810

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1
  %.sroa.05.087.1 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %5, %.loopexit ]
  %.sroa.05.087.1.a = phi i64 [ %i.fa, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
    #dbg_value(i64 %.sroa.05.087.1.a, !4815, !DIExpression(), !4881)
    #dbg_value(i64 %.sroa.05.087.1.a, !4829, !DIExpression(), !4832)
    #dbg_value(i64 %.sroa.05.087.1.a, !4834, !DIExpression(), !4837)
    #dbg_value(i64 %.sroa.05.087.1.a, !4800, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(i64 %.sroa.05.087.1.a, !4801, !DIExpression(), !4882)
    #dbg_value(i64 %.sroa.05.087.1.a, !4841, !DIExpression(), !4872)
    #dbg_value(i64 %.sroa.05.087.1.a, !4841, !DIExpression(), !4875)
    #dbg_value(i64 %.sroa.05.087.1.a, !4841, !DIExpression(), !4877)
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %.sroa.05.087.1.a, !dbg !5022
    #dbg_value(ptr %i.ef, !4821, !DIExpression(), !4839)
  %.idx114 = shl nuw nsw i64 %.sroa.05.087.1.a, 1, !dbg !5023
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx114, !dbg !5023 ; 4 uses
    #dbg_value(ptr %i.eg, !4822, !DIExpression(), !4839)
  %i.eh = load i16, ptr %i.ef, align 1, !dbg !5024 ; 4 uses
  store i16 %i.eh, ptr %i.eg, align 1, !dbg !5024
    #dbg_value(ptr poison, !1115, !DIExpression(), !4617)
    #dbg_value(ptr poison, !1119, !DIExpression(), !4618)
    #dbg_value(ptr poison, !1115, !DIExpression(), !4621)
    #dbg_value(ptr poison, !1119, !DIExpression(), !4622)
    #dbg_value(ptr poison, !1102, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4623)
    #dbg_value(ptr poison, !1102, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4623)
    #dbg_value(ptr poison, !1125, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4625)
    #dbg_value(ptr poison, !1125, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4625)
    #dbg_value(ptr undef, !1125, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4625)
    #dbg_value(ptr undef, !1102, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4623)
    #dbg_value(ptr %i.ed, !1097, !DIExpression(), !4626)
    #dbg_value(ptr %i.eg, !1098, !DIExpression(), !4626)
    #dbg_value(ptr %i.eg, !1130, !DIExpression(), !4628)
    #dbg_value(ptr poison, !1099, !DIExpression(), !4626)
    #dbg_value(i64 1, !1131, !DIExpression(), !4628)
    #dbg_value(i64 1, !1133, !DIExpression(), !4630)
    #dbg_value(i64 1, !1131, !DIExpression(), !4632)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -2, !dbg !5025 ; 3 uses
    #dbg_value(ptr %i.ei, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.ei, !1130, !DIExpression(), !4632)
  %i.ej = trunc i16 %i.eh to i8, !dbg !5026       ; 4 uses
  %i.ek = lshr i16 %i.eh, 8, !dbg !5026
  %i.el = trunc nuw i16 %i.ek to i8, !dbg !5026   ; 2 uses
  %.val22.i.1 = load i8, ptr %i.ei, align 1, !dbg !5026, !noundef !484 ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 -1, !dbg !5026
  %.val23.i.1 = load i8, ptr %i.em, align 1, !dbg !5026
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4635)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4635)
    #dbg_value(ptr poison, !575, !DIExpression(), !4635)
    #dbg_value(ptr poison, !582, !DIExpression(), !4637)
    #dbg_value(ptr poison, !585, !DIExpression(), !4637)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4639)
    #dbg_value(ptr poison, !614, !DIExpression(), !4641)
    #dbg_value(ptr poison, !618, !DIExpression(), !4641)
    #dbg_value(ptr poison, !620, !DIExpression(), !4643)
    #dbg_value(ptr poison, !624, !DIExpression(), !4643)
  %i.en = icmp eq i8 %.val22.i.1, %i.ej, !dbg !5027
    #dbg_value(i8 poison, !610, !DIExpression(), !4644)
  %i.eo = icmp ugt i8 %.val23.i.1, %i.el, !dbg !5028
  %i.ep = icmp ugt i8 %.val22.i.1, %i.ej, !dbg !5028
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep, !dbg !5027
  br i1 %i.eq, label %.preheader.1.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5026

.preheader.1.preheader:                           ; preds = %.lr.ph.1
    #dbg_value(ptr %i.eg, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
    #dbg_value(ptr %i.ei, !1130, !DIExpression(), !4632)
    #dbg_value(ptr %i.ei, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.ei, !1134, !DIExpression(), !4630)
    #dbg_value(ptr %i.eg, !1135, !DIExpression(), !4630)
  %i.er = load i16, ptr %i.ei, align 1, !dbg !5029
  store i16 %i.er, ptr %i.eg, align 1, !dbg !5029
  br i1 %.sroa.05.087.1, label %._crit_edge111, label %.lr.ph110, !dbg !5030

.preheader.1:                                     ; preds = %.lr.ph110
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
    #dbg_value(ptr %i.eu, !1130, !DIExpression(), !4632)
    #dbg_value(ptr %i.eu, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.eu, !1134, !DIExpression(), !4630)
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1135, !DIExpression(), !4630)
  %i.es = load i16, ptr %i.eu, align 1, !dbg !5029
  store i16 %i.es, ptr %.sroa.0.0.i79.1109, align 1, !dbg !5029
    #dbg_value(ptr %i.eu, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
  %i.et = icmp eq ptr %i.eu, %i.ed, !dbg !5030
  br i1 %i.et, label %._crit_edge111, label %.lr.ph110, !dbg !5030

.lr.ph110:                                        ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i79.1109 = phi ptr [ %i.eu, %.preheader.1 ], [ %i.ei, %.preheader.1.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1130, !DIExpression(), !4632)
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.0.i79.1109, i64 -2, !dbg !5031 ; 4 uses
    #dbg_value(ptr %i.eu, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.eu, !1130, !DIExpression(), !4632)
  %.val18.i.1 = load i8, ptr %i.eu, align 1, !dbg !5032, !noundef !484 ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.0.0.i79.1109, i64 -1, !dbg !5032
  %.val19.i.1 = load i8, ptr %i.ev, align 1, !dbg !5032
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4646)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4646)
    #dbg_value(ptr poison, !575, !DIExpression(), !4646)
    #dbg_value(ptr poison, !582, !DIExpression(), !4648)
    #dbg_value(ptr poison, !585, !DIExpression(), !4648)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4650)
    #dbg_value(ptr poison, !614, !DIExpression(), !4652)
    #dbg_value(ptr poison, !618, !DIExpression(), !4652)
    #dbg_value(ptr poison, !620, !DIExpression(), !4654)
    #dbg_value(ptr poison, !624, !DIExpression(), !4654)
  %i.ew = icmp eq i8 %.val18.i.1, %i.ej, !dbg !5033
    #dbg_value(i8 poison, !610, !DIExpression(), !4655)
  %i.ex = icmp ugt i8 %.val19.i.1, %i.el, !dbg !5034
  %i.ey = icmp ugt i8 %.val18.i.1, %i.ej, !dbg !5034
  %i.ez = select i1 %i.ew, i1 %i.ex, i1 %i.ey, !dbg !5033
  br i1 %i.ez, label %.preheader.1, label %._crit_edge111, !dbg !5032

._crit_edge111:                                   ; preds = %.preheader.1, %.lr.ph110, %.preheader.1.preheader
  %.sroa.0.0.i79.lcssa.1 = phi ptr [ %i.ed, %.preheader.1.preheader ], [ %i.ed, %.preheader.1 ], [ %.sroa.0.0.i79.1109, %.lr.ph110 ], !dbg !5035
    #dbg_value(ptr undef, !1119, !DIExpression(), !4618)
    #dbg_value(ptr undef, !1115, !DIExpression(), !4617)
    #dbg_value(ptr undef, !1125, !DIExpression(), !4625)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa.1, !1126, !DIExpression(), !4625)
    #dbg_value(i64 1, !1127, !DIExpression(), !4625)
  store i16 %i.eh, ptr %.sroa.0.0.i79.lcssa.1, align 1, !dbg !5036, !noalias !4883
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5037

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1: ; preds = %._crit_edge111, %.lr.ph.1
  %i.fa = add nuw nsw i64 %.sroa.05.087.1.a, 1, !dbg !5038 ; 2 uses
    #dbg_value(i64 %i.fa, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(ptr undef, !4812, !DIExpression(), !4818)
    #dbg_value(ptr undef, !4814, !DIExpression(), !4817)
    #dbg_value(ptr undef, !4804, !DIExpression(), !4811)
    #dbg_value(ptr undef, !4805, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4880)
  %exitcond.1.not = icmp eq i64 %i.fa, %i.ea, !dbg !5019
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !4810

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, %.loopexit
    #dbg_value(ptr %2, !4802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4884)
    #dbg_value(ptr %0, !4802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4884)
    #dbg_value(i64 %1, !4802, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885), !dbg !5039
    #dbg_value(ptr %0, !663, !DIExpression(), !4663)
    #dbg_value(ptr %0, !677, !DIExpression(), !4664)
    #dbg_value(ptr %0, !4886, !DIExpression(), !4667)
    #dbg_value(ptr %2, !670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4663)
    #dbg_value(i64 %1, !670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4663)
    #dbg_value(ptr poison, !671, !DIExpression(), !4663)
    #dbg_value(i64 1, !4890, !DIExpression(), !4675)
    #dbg_value(i64 1, !4899, !DIExpression(), !4678)
    #dbg_value(i64 1, !693, !DIExpression(), !4680)
    #dbg_value(i64 1, !699, !DIExpression(), !4682)
    #dbg_value(i64 1, !693, !DIExpression(), !4684)
    #dbg_value(i64 1, !699, !DIExpression(), !4686)
    #dbg_value(i64 2, !4902, !DIExpression(), !4689)
    #dbg_value(i64 1, !4888, !DIExpression(), !4667)
    #dbg_value(i64 %1, !672, !DIExpression(), !4690)
    #dbg_value(i64 %1, !4903, !DIExpression(), !4689)
    #dbg_value(ptr %2, !673, !DIExpression(), !4691)
    #dbg_value(ptr %2, !4905, !DIExpression(), !4694)
    #dbg_value(ptr %2, !4905, !DIExpression(), !4696)
    #dbg_value(ptr %2, !4905, !DIExpression(), !4698)
    #dbg_value(i64 %i.d, !674, !DIExpression(), !4699)
    #dbg_value(i64 %i.d, !4906, !DIExpression(), !4694)
    #dbg_value(i64 %i.d, !4906, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4696)
    #dbg_value(i64 %1, !4906, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4698)
    #dbg_value(i64 %1, !706, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4701)
    #dbg_value(ptr %0, !707, !DIExpression(), !4701)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !680, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4702)
    #dbg_value(i64 0, !681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4703)
    #dbg_value(i64 %i.d, !681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4703)
    #dbg_value(ptr %2, !4905, !DIExpression(), !4705)
    #dbg_value(ptr %2, !675, !DIExpression(), !4706)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !4905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4708)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4709)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !702, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4682)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4680)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !678, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4710)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !702, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4686)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4684)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4711)
    #dbg_value(ptr undef, !4896, !DIExpression(), !4712)
    #dbg_value(ptr undef, !4893, !DIExpression(), !4713)
    #dbg_value(ptr undef, !4908, !DIExpression(), !4716)
    #dbg_value(ptr undef, !4909, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4717)
  %i.fb = add nsw i64 %1, -1, !dbg !5040          ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %i.fb), !680, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4702)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4711)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4684)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !702, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4686)
    #dbg_value(i64 %i.fb, !4906, !DIExpression(), !4698)
    #dbg_value(i64 %i.fb, !706, !DIExpression(), !4701)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fb, !dbg !5041
    #dbg_value(ptr %i.fc, !680, !DIExpression(), !4702)
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fb, !dbg !5042
    #dbg_value(ptr %i.fd, !702, !DIExpression(), !4686)
    #dbg_value(ptr %i.fd, !696, !DIExpression(), !4684)
    #dbg_value(ptr %i.fd, !679, !DIExpression(), !4711)
    #dbg_value(ptr %i.ed, !4905, !DIExpression(), !4708)
    #dbg_value(ptr %i.ed, !676, !DIExpression(), !4709)
    #dbg_value(ptr %i.ed, !678, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4710)
    #dbg_value(ptr %i.ed, !696, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4680)
    #dbg_value(ptr %i.ed, !702, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4682)
  %i.fe = getelementptr i8, ptr %i.ed, i64 -2, !dbg !5043
    #dbg_value(ptr %i.fe, !702, !DIExpression(), !4682)
    #dbg_value(ptr %i.fe, !696, !DIExpression(), !4680)
    #dbg_value(ptr %i.fe, !678, !DIExpression(), !4710)
  br label %.lr.ph.i, !dbg !5044

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ff = getelementptr i8, ptr %i.gg, i64 2, !dbg !5045 ; 2 uses
    #dbg_value(ptr %i.ff, !682, !DIExpression(), !4718)
  %i.fg = getelementptr i8, ptr %i.gf, i64 2, !dbg !5046
    #dbg_value(ptr %i.fg, !683, !DIExpression(), !4719)
  %i.fh = and i64 %1, 1, !dbg !5047
  %i.fi = icmp eq i64 %i.fh, 0, !dbg !5047
  br i1 %i.fi, label %bb.k, label %bb.j, !dbg !5048

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.fj, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.ed, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.fe, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.fd, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.fc, %.loopexit.1 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i, !4886, !DIExpression(), !4667)
    #dbg_value(ptr %.sroa.06.08.i, !4905, !DIExpression(), !4705)
    #dbg_value(ptr %.sroa.011.07.i, !4905, !DIExpression(), !4708)
    #dbg_value(ptr %.sroa.015.06.i, !702, !DIExpression(), !4682)
    #dbg_value(ptr %.sroa.017.05.i, !702, !DIExpression(), !4686)
    #dbg_value(ptr %.sroa.019.04.i, !680, !DIExpression(), !4702)
    #dbg_value(i64 %.sroa.04.09.i, !4894, !DIExpression(), !4720)
    #dbg_value(i64 %.sroa.04.09.i, !4891, !DIExpression(), !4675)
    #dbg_value(i64 %.sroa.04.09.i, !4900, !DIExpression(), !4678)
  %i.fj = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !5049 ; 2 uses
    #dbg_value(i64 %i.fj, !681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4703)
    #dbg_value(ptr %.sroa.06.08.i, !713, !DIExpression(), !4722)
    #dbg_value(ptr %.sroa.06.08.i, !726, !DIExpression(), !4724)
    #dbg_value(ptr %.sroa.011.07.i, !720, !DIExpression(), !4722)
    #dbg_value(ptr %.sroa.011.07.i, !726, !DIExpression(), !4726)
    #dbg_value(ptr %.sroa.0.010.i, !721, !DIExpression(), !4722)
    #dbg_value(ptr %.sroa.0.010.i, !729, !DIExpression(), !4728)
    #dbg_value(ptr poison, !722, !DIExpression(), !4722)
    #dbg_value(i64 1, !732, !DIExpression(), !4730)
    #dbg_value(i64 1, !730, !DIExpression(), !4728)
  %.sroa.011.0.val.i = load i8, ptr %.sroa.011.07.i, align 1, !dbg !5050, !alias.scope !4885, !noundef !484 ; 2 uses
  %i.fk = getelementptr i8, ptr %.sroa.011.07.i, i64 1, !dbg !5050
  %.sroa.011.0.val44.i = load i8, ptr %i.fk, align 1, !dbg !5050, !alias.scope !4885
  %.sroa.06.0.val.i = load i8, ptr %.sroa.06.08.i, align 1, !dbg !5050, !alias.scope !4885, !noundef !484 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.06.08.i, i64 1, !dbg !5050
  %.sroa.06.0.val45.i = load i8, ptr %i.fl, align 1, !dbg !5050, !alias.scope !4885
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4732)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4732)
    #dbg_value(ptr poison, !575, !DIExpression(), !4732)
    #dbg_value(ptr poison, !582, !DIExpression(), !4734)
    #dbg_value(ptr poison, !585, !DIExpression(), !4734)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4736)
    #dbg_value(ptr poison, !614, !DIExpression(), !4738)
    #dbg_value(ptr poison, !618, !DIExpression(), !4738)
    #dbg_value(ptr poison, !620, !DIExpression(), !4740)
    #dbg_value(ptr poison, !624, !DIExpression(), !4740)
  %i.fm = icmp eq i8 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5051
    #dbg_value(i8 poison, !610, !DIExpression(), !4741)
  %i.fn = icmp ult i8 %.sroa.011.0.val44.i, %.sroa.06.0.val45.i, !dbg !5052
  %i.fo = icmp ult i8 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5052
  %i.fp = select i1 %i.fm, i1 %i.fn, i1 %i.fo, !dbg !5051 ; 3 uses
    #dbg_value(i1 %i.fp, !723, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4742)
  %..i43.i = select i1 %i.fp, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !5053
  %i.fq = xor i1 %i.fp, true, !dbg !5054
    #dbg_value(i1 %i.fq, !723, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4742)
    #dbg_value(ptr %..i43.i, !733, !DIExpression(), !4730)
    #dbg_value(ptr %..i43.i, !724, !DIExpression(), !4743)
    #dbg_value(ptr %.sroa.0.010.i, !734, !DIExpression(), !4730)
  %i.fr = load i16, ptr %..i43.i, align 1, !dbg !5055, !alias.scope !4885, !noalias !4911
  store i16 %i.fr, ptr %.sroa.0.010.i, align 1, !dbg !5055, !noalias !4912
  %i.fs = zext i1 %i.fp to i64, !dbg !5056
    #dbg_value(i64 %i.fs, !727, !DIExpression(), !4726)
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.sroa.011.07.i, i64 %i.fs, !dbg !5057 ; 4 uses
    #dbg_value(ptr %i.ft, !720, !DIExpression(), !4722)
    #dbg_value(ptr %i.ft, !726, !DIExpression(), !4726)
  %i.fu = zext i1 %i.fq to i64, !dbg !5058
    #dbg_value(i64 %i.fu, !727, !DIExpression(), !4724)
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.08.i, i64 %i.fu, !dbg !5059 ; 5 uses
    #dbg_value(ptr %i.fv, !713, !DIExpression(), !4722)
    #dbg_value(ptr %i.fv, !726, !DIExpression(), !4724)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 2, !dbg !5060 ; 2 uses
    #dbg_value(ptr %i.fw, !721, !DIExpression(), !4722)
    #dbg_value(ptr %i.fw, !729, !DIExpression(), !4728)
    #dbg_value(ptr %i.fv, !675, !DIExpression(), !4706)
    #dbg_value(ptr %i.fv, !4905, !DIExpression(), !4705)
    #dbg_value(ptr %i.ft, !676, !DIExpression(), !4709)
    #dbg_value(ptr %i.ft, !4905, !DIExpression(), !4708)
    #dbg_value(ptr %i.fw, !663, !DIExpression(), !4663)
    #dbg_value(ptr %i.fw, !677, !DIExpression(), !4664)
    #dbg_value(ptr %i.fw, !4886, !DIExpression(), !4667)
    #dbg_value(ptr %.sroa.015.06.i, !737, !DIExpression(), !4748)
    #dbg_value(ptr %.sroa.015.06.i, !744, !DIExpression(), !4750)
    #dbg_value(ptr %.sroa.015.06.i, !747, !DIExpression(), !4752)
    #dbg_value(ptr %.sroa.017.05.i, !738, !DIExpression(), !4748)
    #dbg_value(ptr %.sroa.017.05.i, !744, !DIExpression(), !4754)
    #dbg_value(ptr %.sroa.017.05.i, !747, !DIExpression(), !4756)
    #dbg_value(ptr %.sroa.019.04.i, !739, !DIExpression(), !4748)
    #dbg_value(ptr %.sroa.019.04.i, !751, !DIExpression(), !4758)
    #dbg_value(ptr poison, !740, !DIExpression(), !4748)
    #dbg_value(i64 1, !754, !DIExpression(), !4760)
    #dbg_value(i64 1, !752, !DIExpression(), !4758)
  %.sroa.017.0.val.i = load i8, ptr %.sroa.017.05.i, align 1, !dbg !5061, !alias.scope !4885, !noundef !484 ; 2 uses
  %i.fx = getelementptr i8, ptr %.sroa.017.05.i, i64 1, !dbg !5061
  %.sroa.017.0.val46.i = load i8, ptr %i.fx, align 1, !dbg !5061, !alias.scope !4885
  %.sroa.015.0.val.i = load i8, ptr %.sroa.015.06.i, align 1, !dbg !5061, !alias.scope !4885, !noundef !484 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.015.06.i, i64 1, !dbg !5061
  %.sroa.015.0.val47.i = load i8, ptr %i.fy, align 1, !dbg !5061, !alias.scope !4885
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4762)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4762)
    #dbg_value(ptr poison, !575, !DIExpression(), !4762)
    #dbg_value(ptr poison, !582, !DIExpression(), !4764)
    #dbg_value(ptr poison, !585, !DIExpression(), !4764)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4766)
    #dbg_value(ptr poison, !614, !DIExpression(), !4768)
    #dbg_value(ptr poison, !618, !DIExpression(), !4768)
    #dbg_value(ptr poison, !620, !DIExpression(), !4770)
    #dbg_value(ptr poison, !624, !DIExpression(), !4770)
  %i.fz = icmp eq i8 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5062
    #dbg_value(i8 poison, !610, !DIExpression(), !4771)
  %i.ga = icmp ult i8 %.sroa.017.0.val46.i, %.sroa.015.0.val47.i, !dbg !5063
  %i.gb = icmp ult i8 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5063
  %i.gc = select i1 %i.fz, i1 %i.ga, i1 %i.gb, !dbg !5062 ; 3 uses
    #dbg_value(i1 %i.gc, !741, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4772)
  %..i.i = select i1 %i.gc, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !5064
  %i.gd = xor i1 %i.gc, true, !dbg !5065
    #dbg_value(i1 %i.gd, !741, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4772)
    #dbg_value(ptr %..i.i, !755, !DIExpression(), !4760)
    #dbg_value(ptr %..i.i, !742, !DIExpression(), !4773)
    #dbg_value(ptr %.sroa.019.04.i, !756, !DIExpression(), !4760)
  %i.ge = load i16, ptr %..i.i, align 1, !dbg !5066, !alias.scope !4885, !noalias !4913
  store i16 %i.ge, ptr %.sroa.019.04.i, align 1, !dbg !5066, !noalias !4914
  %.neg.i.i = sext i1 %i.gd to i64, !dbg !5067
    #dbg_value(i1 %i.gd, !745, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4754)
    #dbg_value(i64 %.neg.i.i, !748, !DIExpression(), !4756)
  %i.gf = getelementptr [2 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !5068 ; 2 uses
    #dbg_value(ptr %i.gf, !738, !DIExpression(), !4748)
    #dbg_value(ptr %i.gf, !744, !DIExpression(), !4754)
    #dbg_value(ptr %i.gf, !747, !DIExpression(), !4756)
  %.neg24.i.i = sext i1 %i.gc to i64, !dbg !5069
    #dbg_value(i1 %i.gc, !745, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4750)
    #dbg_value(i64 %.neg24.i.i, !748, !DIExpression(), !4752)
  %i.gg = getelementptr [2 x i8], ptr %.sroa.015.06.i, i64 %.neg24.i.i, !dbg !5070 ; 2 uses
    #dbg_value(ptr %i.gg, !737, !DIExpression(), !4748)
    #dbg_value(ptr %i.gg, !744, !DIExpression(), !4750)
    #dbg_value(ptr %i.gg, !747, !DIExpression(), !4752)
  %i.gh = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -2, !dbg !5071
    #dbg_value(ptr %i.gh, !739, !DIExpression(), !4748)
    #dbg_value(ptr %i.gh, !751, !DIExpression(), !4758)
    #dbg_value(ptr %i.gg, !702, !DIExpression(), !4682)
    #dbg_value(ptr %i.gg, !696, !DIExpression(), !4680)
    #dbg_value(ptr %i.gg, !678, !DIExpression(), !4710)
    #dbg_value(ptr %i.gf, !702, !DIExpression(), !4686)
    #dbg_value(ptr %i.gf, !696, !DIExpression(), !4684)
    #dbg_value(ptr %i.gf, !679, !DIExpression(), !4711)
    #dbg_value(ptr %i.gh, !680, !DIExpression(), !4702)
    #dbg_value(ptr undef, !4896, !DIExpression(), !4712)
    #dbg_value(ptr undef, !4893, !DIExpression(), !4713)
    #dbg_value(ptr undef, !4908, !DIExpression(), !4716)
    #dbg_value(ptr undef, !4909, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4717)
  %exitcond.not.i = icmp eq i64 %i.fj, %i.d, !dbg !5072
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !5044

bb.j:                                             ; preds = %._crit_edge.i
  %i.gi = icmp ult ptr %i.fv, %i.ff, !dbg !5073   ; 3 uses
    #dbg_value(i1 %i.gi, !684, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4777)
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gi, ptr %i.fv, ptr %i.ft, !dbg !5074
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !4887, !DIExpression(), !4667)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !685, !DIExpression(), !4778)
  %i.gj = load i16, ptr %.sroa.06.0..sroa.011.0.i, align 1, !dbg !5075, !alias.scope !4885
  store i16 %i.gj, ptr %i.fw, align 1, !dbg !5075, !noalias !4885
  %i.gk = zext i1 %i.gi to i64, !dbg !5076
    #dbg_value(i64 %i.gk, !4906, !DIExpression(), !4705)
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.gk, !dbg !5077
    #dbg_value(ptr %i.gl, !675, !DIExpression(), !4706)
    #dbg_value(ptr %i.gl, !4905, !DIExpression(), !4705)
  %i.gm = xor i1 %i.gi, true, !dbg !5078
  %i.gn = zext i1 %i.gm to i64, !dbg !5078
    #dbg_value(i64 %i.gn, !4906, !DIExpression(), !4708)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.gn, !dbg !5079
    #dbg_value(ptr %i.go, !676, !DIExpression(), !4709)
    #dbg_value(ptr %i.go, !4905, !DIExpression(), !4708)
  br label %bb.k, !dbg !5080

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ft, %._crit_edge.i ], [ %i.go, %bb.j ], !dbg !5081
  %.sroa.06.1.i = phi ptr [ %i.fv, %._crit_edge.i ], [ %i.gl, %bb.j ], !dbg !5082
    #dbg_value(ptr %.sroa.06.1.i, !4905, !DIExpression(), !4705)
    #dbg_value(ptr %.sroa.06.1.i, !675, !DIExpression(), !4706)
    #dbg_value(ptr %.sroa.011.1.i, !4905, !DIExpression(), !4708)
    #dbg_value(ptr %.sroa.011.1.i, !676, !DIExpression(), !4709)
  %i.gp = icmp ne ptr %.sroa.06.1.i, %i.ff, !dbg !5083
  %i.gq = icmp ne ptr %.sroa.011.1.i, %i.fg
  %or.cond.i = select i1 %i.gp, i1 true, i1 %i.gq, !dbg !5083, !prof !759
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, !dbg !5083, !prof !759

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc unwind label %bb.m, !dbg !5084

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !5084

bb.m:                                             ; preds = %bb.l
  %i.gr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !1119, !DIExpression(), !4261)
    #dbg_value(ptr undef, !1115, !DIExpression(), !4260)
    #dbg_value(ptr %2, !1125, !DIExpression(), !4780)
    #dbg_value(ptr %0, !1126, !DIExpression(), !4780)
    #dbg_value(i64 %1, !1127, !DIExpression(), !4780)
  %i.gs = shl nuw nsw i64 %1, 1, !dbg !5085
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %i.gs, i1 false), !dbg !5085, !noalias !4915
  resume { ptr, i32 } %i.gr, !dbg !5086

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !5087

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.05.087 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %5, %bb.i ]
  %.sroa.05.087.a = phi i64 [ %i.ho, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 3 uses
    #dbg_value(i64 %.sroa.05.087.a, !4815, !DIExpression(), !4881)
    #dbg_value(i64 %.sroa.05.087.a, !4829, !DIExpression(), !4832)
    #dbg_value(i64 %.sroa.05.087.a, !4834, !DIExpression(), !4837)
    #dbg_value(i64 %.sroa.05.087.a, !4800, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(i64 %.sroa.05.087.a, !4801, !DIExpression(), !4882)
    #dbg_value(i64 %.sroa.05.087.a, !4841, !DIExpression(), !4872)
    #dbg_value(i64 %.sroa.05.087.a, !4841, !DIExpression(), !4875)
    #dbg_value(i64 %.sroa.05.087.a, !4841, !DIExpression(), !4877)
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.087.a, !dbg !5022
    #dbg_value(ptr %i.gt, !4821, !DIExpression(), !4839)
  %.idx = shl nuw nsw i64 %.sroa.05.087.a, 1, !dbg !5023
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !5023 ; 4 uses
    #dbg_value(ptr %i.gu, !4822, !DIExpression(), !4839)
  %i.gv = load i16, ptr %i.gt, align 1, !dbg !5024 ; 4 uses
  store i16 %i.gv, ptr %i.gu, align 1, !dbg !5024
    #dbg_value(ptr poison, !1115, !DIExpression(), !4617)
    #dbg_value(ptr poison, !1119, !DIExpression(), !4618)
    #dbg_value(ptr poison, !1115, !DIExpression(), !4621)
    #dbg_value(ptr poison, !1119, !DIExpression(), !4622)
    #dbg_value(ptr poison, !1102, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4623)
    #dbg_value(ptr poison, !1102, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4623)
    #dbg_value(ptr poison, !1125, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4625)
    #dbg_value(ptr poison, !1125, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4625)
    #dbg_value(ptr undef, !1125, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4625)
    #dbg_value(ptr undef, !1102, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4623)
    #dbg_value(ptr %2, !1097, !DIExpression(), !4626)
    #dbg_value(ptr %i.gu, !1098, !DIExpression(), !4626)
    #dbg_value(ptr %i.gu, !1130, !DIExpression(), !4628)
    #dbg_value(ptr poison, !1099, !DIExpression(), !4626)
    #dbg_value(i64 1, !1131, !DIExpression(), !4628)
    #dbg_value(i64 1, !1133, !DIExpression(), !4630)
    #dbg_value(i64 1, !1131, !DIExpression(), !4632)
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -2, !dbg !5025 ; 3 uses
    #dbg_value(ptr %i.gw, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.gw, !1130, !DIExpression(), !4632)
  %i.gx = trunc i16 %i.gv to i8, !dbg !5026       ; 4 uses
  %i.gy = lshr i16 %i.gv, 8, !dbg !5026
  %i.gz = trunc nuw i16 %i.gy to i8, !dbg !5026   ; 2 uses
  %.val22.i = load i8, ptr %i.gw, align 1, !dbg !5026, !noundef !484 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gu, i64 -1, !dbg !5026
  %.val23.i = load i8, ptr %i.ha, align 1, !dbg !5026
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4635)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4635)
    #dbg_value(ptr poison, !575, !DIExpression(), !4635)
    #dbg_value(ptr poison, !582, !DIExpression(), !4637)
    #dbg_value(ptr poison, !585, !DIExpression(), !4637)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4639)
    #dbg_value(ptr poison, !614, !DIExpression(), !4641)
    #dbg_value(ptr poison, !618, !DIExpression(), !4641)
    #dbg_value(ptr poison, !620, !DIExpression(), !4643)
    #dbg_value(ptr poison, !624, !DIExpression(), !4643)
  %i.hb = icmp eq i8 %.val22.i, %i.gx, !dbg !5027
    #dbg_value(i8 poison, !610, !DIExpression(), !4644)
  %i.hc = icmp ugt i8 %.val23.i, %i.gz, !dbg !5028
  %i.hd = icmp ugt i8 %.val22.i, %i.gx, !dbg !5028
  %i.he = select i1 %i.hb, i1 %i.hc, i1 %i.hd, !dbg !5027
  br i1 %i.he, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5026

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %i.gu, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
    #dbg_value(ptr %i.gw, !1130, !DIExpression(), !4632)
    #dbg_value(ptr %i.gw, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.gw, !1134, !DIExpression(), !4630)
    #dbg_value(ptr %i.gu, !1135, !DIExpression(), !4630)
  %i.hf = load i16, ptr %i.gw, align 1, !dbg !5029
  store i16 %i.hf, ptr %i.gu, align 1, !dbg !5029
  br i1 %.sroa.05.087, label %._crit_edge, label %.lr.ph107, !dbg !5030

.preheader:                                       ; preds = %.lr.ph107
    #dbg_value(ptr %.sroa.0.0.i79106, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
    #dbg_value(ptr %i.hi, !1130, !DIExpression(), !4632)
    #dbg_value(ptr %i.hi, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.hi, !1134, !DIExpression(), !4630)
    #dbg_value(ptr %.sroa.0.0.i79106, !1135, !DIExpression(), !4630)
  %i.hg = load i16, ptr %i.hi, align 1, !dbg !5029
  store i16 %i.hg, ptr %.sroa.0.0.i79106, align 1, !dbg !5029
    #dbg_value(ptr %i.hi, !1102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4623)
  %i.hh = icmp eq ptr %i.hi, %2, !dbg !5030
  br i1 %i.hh, label %._crit_edge, label %.lr.ph107, !dbg !5030

.lr.ph107:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i79106 = phi ptr [ %i.hi, %.preheader ], [ %i.gw, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79106, !1130, !DIExpression(), !4632)
  %i.hi = getelementptr inbounds i8, ptr %.sroa.0.0.i79106, i64 -2, !dbg !5031 ; 4 uses
    #dbg_value(ptr %i.hi, !1100, !DIExpression(), !4633)
    #dbg_value(ptr %i.hi, !1130, !DIExpression(), !4632)
  %.val18.i = load i8, ptr %i.hi, align 1, !dbg !5032, !noundef !484 ; 2 uses
  %i.hj = getelementptr i8, ptr %.sroa.0.0.i79106, i64 -1, !dbg !5032
  %.val19.i = load i8, ptr %i.hj, align 1, !dbg !5032
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4646)
    #dbg_value(ptr poison, !566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4646)
    #dbg_value(ptr poison, !575, !DIExpression(), !4646)
    #dbg_value(ptr poison, !582, !DIExpression(), !4648)
    #dbg_value(ptr poison, !585, !DIExpression(), !4648)
    #dbg_declare(ptr poison, !594, !DIExpression(), !4650)
    #dbg_value(ptr poison, !614, !DIExpression(), !4652)
    #dbg_value(ptr poison, !618, !DIExpression(), !4652)
    #dbg_value(ptr poison, !620, !DIExpression(), !4654)
    #dbg_value(ptr poison, !624, !DIExpression(), !4654)
  %i.hk = icmp eq i8 %.val18.i, %i.gx, !dbg !5033
    #dbg_value(i8 poison, !610, !DIExpression(), !4655)
  %i.hl = icmp ugt i8 %.val19.i, %i.gz, !dbg !5034
  %i.hm = icmp ugt i8 %.val18.i, %i.gx, !dbg !5034
  %i.hn = select i1 %i.hk, i1 %i.hl, i1 %i.hm, !dbg !5033
  br i1 %i.hn, label %.preheader, label %._crit_edge, !dbg !5032

._crit_edge:                                      ; preds = %.preheader, %.lr.ph107, %.preheader.preheader
  %.sroa.0.0.i79.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i79106, %.lr.ph107 ], !dbg !5035
    #dbg_value(ptr undef, !1119, !DIExpression(), !4618)
    #dbg_value(ptr undef, !1115, !DIExpression(), !4617)
    #dbg_value(ptr undef, !1125, !DIExpression(), !4625)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa, !1126, !DIExpression(), !4625)
    #dbg_value(i64 1, !1127, !DIExpression(), !4625)
  store i16 %i.gv, ptr %.sroa.0.0.i79.lcssa, align 1, !dbg !5036, !noalias !4883
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5037

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ho = add nuw nsw i64 %.sroa.05.087.a, 1, !dbg !5038 ; 2 uses
    #dbg_value(i64 %i.ho, !4800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4879)
    #dbg_value(ptr undef, !4812, !DIExpression(), !4818)
    #dbg_value(ptr undef, !4814, !DIExpression(), !4817)
    #dbg_value(ptr undef, !4804, !DIExpression(), !4811)
    #dbg_value(ptr undef, !4805, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4880)
  %exitcond.not = icmp eq i64 %i.ho, %i.d, !dbg !5019
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !4810
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5101 {
bb.a:
    #dbg_value(ptr poison, !1160, !DIExpression(), !5104)
    #dbg_value(ptr poison, !1164, !DIExpression(), !5105)
    #dbg_value(ptr poison, !5648, !DIExpression(), !5655)
    #dbg_value(ptr poison, !5658, !DIExpression(), !5661)
    #dbg_value(ptr poison, !5656, !DIExpression(), !5662)
    #dbg_value(ptr %0, !5631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5663)
    #dbg_value(i64 %1, !5631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5663)
    #dbg_value(ptr %2, !5632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5663)
    #dbg_value(i64 %3, !5632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5663)
    #dbg_value(ptr %4, !5633, !DIExpression(), !5663)
    #dbg_value(i64 1, !5664, !DIExpression(), !5669)
    #dbg_value(i64 1, !5664, !DIExpression(), !5671)
    #dbg_value(i64 1, !5672, !DIExpression(), !5676)
    #dbg_value(i64 1, !5677, !DIExpression(), !5681)
    #dbg_value(i64 1, !5664, !DIExpression(), !5683)
    #dbg_value(i64 %1, !5634, !DIExpression(), !5684)
    #dbg_value(i64 %1, !5685, !DIExpression(), !5689)
  %i.a = icmp samesign ult i64 %1, 2, !dbg !5760
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b, !dbg !5760

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !5761
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !5762
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !5762

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !5635, !DIExpression(), !5690)
    #dbg_value(ptr %0, !5686, !DIExpression(), !5692)
    #dbg_value(ptr %0, !5686, !DIExpression(), !5694)
    #dbg_value(ptr %0, !5686, !DIExpression(), !5696)
    #dbg_value(ptr %0, !5686, !DIExpression(), !5698)
  %i.d = lshr i64 %1, 1, !dbg !5763               ; 12 uses
    #dbg_value(i64 %i.d, !5636, !DIExpression(), !5699)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5692)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5701)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5694)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5703)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5696)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5705)
    #dbg_value(ptr %2, !5637, !DIExpression(), !5706)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5689)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5701)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5708)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5703)
    #dbg_value(ptr %2, !5666, !DIExpression(), !5669)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5705)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5710)
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !5764
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !5764

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !5765
  unreachable, !dbg !5765

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !5766
  br i1 %i.f, label %bb.h, label %bb.g, !dbg !5766

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1, !dbg !5767 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !5768
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !5769
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !5770
    #dbg_value(i64 %1, !5685, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5708)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !5771
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !5772
    #dbg_value(i64 8, !5638, !DIExpression(), !5711)
  br label %bb.i, !dbg !5773

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !5665, !DIExpression(), !5669)
  %i.k = load i64, ptr %0, align 4, !dbg !5774
  store i64 %i.k, ptr %2, align 4, !dbg !5774
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !5775
    #dbg_value(ptr %i.l, !5665, !DIExpression(), !5671)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !5776
    #dbg_value(ptr %i.m, !5666, !DIExpression(), !5671)
  %i.n = load i64, ptr %i.l, align 4, !dbg !5777
  store i64 %i.n, ptr %i.m, align 4, !dbg !5777
    #dbg_value(i64 1, !5638, !DIExpression(), !5711)
  br label %bb.i, !dbg !5778

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !777, !DIExpression(), !5115)
    #dbg_value(ptr %0, !798, !DIExpression(), !5117)
    #dbg_value(ptr %0, !798, !DIExpression(), !5119)
    #dbg_value(ptr %0, !798, !DIExpression(), !5121)
    #dbg_value(ptr %0, !798, !DIExpression(), !5123)
    #dbg_value(ptr %0, !798, !DIExpression(), !5125)
    #dbg_value(ptr %0, !798, !DIExpression(), !5127)
    #dbg_value(ptr %0, !798, !DIExpression(), !5129)
    #dbg_value(ptr %2, !780, !DIExpression(), !5115)
    #dbg_value(ptr %2, !804, !DIExpression(), !5131)
    #dbg_value(ptr %2, !810, !DIExpression(), !5133)
    #dbg_value(ptr %2, !810, !DIExpression(), !5135)
    #dbg_value(ptr %2, !810, !DIExpression(), !5137)
    #dbg_value(ptr poison, !781, !DIExpression(), !5115)
    #dbg_value(i64 1, !801, !DIExpression(), !5117)
    #dbg_value(i64 3, !801, !DIExpression(), !5119)
    #dbg_value(i64 2, !801, !DIExpression(), !5121)
    #dbg_value(i64 1, !808, !DIExpression(), !5131)
    #dbg_value(i64 1, !811, !DIExpression(), !5133)
    #dbg_value(i64 1, !808, !DIExpression(), !5139)
    #dbg_value(i64 2, !811, !DIExpression(), !5135)
    #dbg_value(i64 1, !808, !DIExpression(), !5141)
    #dbg_value(i64 3, !811, !DIExpression(), !5137)
    #dbg_value(i64 1, !808, !DIExpression(), !5143)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5779
  %.val50.i = load i32, ptr %i.o, align 4, !dbg !5780, !range !813, !noundef !484 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 12, !dbg !5780
  %.val51.i = load i32, ptr %i.p, align 4, !dbg !5780
  %.val52.i = load i32, ptr %0, align 4, !dbg !5780, !range !813, !noundef !484 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 4, !dbg !5780
  %.val53.i = load i32, ptr %i.q, align 4, !dbg !5780
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5145)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5145)
    #dbg_value(ptr poison, !820, !DIExpression(), !5145)
    #dbg_value(ptr poison, !825, !DIExpression(), !5147)
    #dbg_value(ptr poison, !827, !DIExpression(), !5147)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5149)
    #dbg_value(ptr poison, !836, !DIExpression(), !5151)
    #dbg_value(ptr poison, !840, !DIExpression(), !5151)
    #dbg_value(ptr poison, !842, !DIExpression(), !5153)
    #dbg_value(ptr poison, !846, !DIExpression(), !5153)
  %i.r = icmp eq i32 %.val50.i, %.val52.i, !dbg !5781
    #dbg_value(i8 poison, !833, !DIExpression(), !5154)
  %i.s = icmp ult i32 %.val51.i, %.val53.i, !dbg !5782
  %i.t = icmp samesign ult i32 %.val50.i, %.val52.i, !dbg !5782
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t, !dbg !5781 ; 2 uses
    #dbg_value(i1 %i.u, !782, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5155)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5783
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5784
  %.val46.i = load i32, ptr %i.v, align 4, !dbg !5785, !range !813, !noundef !484 ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 28, !dbg !5785
  %.val47.i = load i32, ptr %i.x, align 4, !dbg !5785
  %.val48.i = load i32, ptr %i.w, align 4, !dbg !5785, !range !813, !noundef !484 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 20, !dbg !5785
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
    #dbg_value(i1 %i.cj, !783, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5339)
  %i.ck = zext i1 %i.cb to i64, !dbg !5831
    #dbg_value(i64 %i.ck, !802, !DIExpression(), !5295)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ck, !dbg !5832 ; 4 uses
    #dbg_value(ptr %i.cl, !784, !DIExpression(), !5340)
  %i.cm = xor i1 %i.cb, true, !dbg !5833
  %i.cn = zext i1 %i.cm to i64, !dbg !5833
    #dbg_value(i64 %i.cn, !802, !DIExpression(), !5297)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cn, !dbg !5834 ; 5 uses
    #dbg_value(ptr %i.co, !785, !DIExpression(), !5341)
  %i.cp = select i1 %i.cj, i64 3, i64 2, !dbg !5835
    #dbg_value(i64 %i.cp, !802, !DIExpression(), !5299)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cp, !dbg !5836 ; 5 uses
    #dbg_value(ptr %i.cq, !786, !DIExpression(), !5342)
  %i.cr = select i1 %i.cj, i64 2, i64 3, !dbg !5837
    #dbg_value(i64 %i.cr, !802, !DIExpression(), !5301)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cr, !dbg !5838 ; 4 uses
    #dbg_value(ptr %i.cs, !787, !DIExpression(), !5343)
  %.val42.i67 = load i32, ptr %i.cq, align 4, !dbg !5839, !range !813, !noundef !484 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cq, i64 4, !dbg !5839
  %.val43.i68 = load i32, ptr %i.ct, align 4, !dbg !5839
  %.val44.i69 = load i32, ptr %i.cl, align 4, !dbg !5839, !range !813, !noundef !484 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 4, !dbg !5839
  %.val45.i70 = load i32, ptr %i.cu, align 4, !dbg !5839
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5345)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5345)
    #dbg_value(ptr poison, !820, !DIExpression(), !5345)
    #dbg_value(ptr poison, !825, !DIExpression(), !5347)
    #dbg_value(ptr poison, !827, !DIExpression(), !5347)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5349)
    #dbg_value(ptr poison, !836, !DIExpression(), !5351)
    #dbg_value(ptr poison, !840, !DIExpression(), !5351)
    #dbg_value(ptr poison, !842, !DIExpression(), !5353)
    #dbg_value(ptr poison, !846, !DIExpression(), !5353)
  %i.cv = icmp eq i32 %.val42.i67, %.val44.i69, !dbg !5840
    #dbg_value(i8 poison, !833, !DIExpression(), !5354)
  %i.cw = icmp ult i32 %.val43.i68, %.val45.i70, !dbg !5841
  %i.cx = icmp samesign ult i32 %.val42.i67, %.val44.i69, !dbg !5841
  %i.cy = select i1 %i.cv, i1 %i.cw, i1 %i.cx, !dbg !5840 ; 3 uses
    #dbg_value(i1 %i.cy, !788, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5355)
  %.val38.i71 = load i32, ptr %i.cs, align 4, !dbg !5842, !range !813, !noundef !484 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 4, !dbg !5842
  %.val39.i72 = load i32, ptr %i.cz, align 4, !dbg !5842
  %.val40.i73 = load i32, ptr %i.co, align 4, !dbg !5842, !range !813, !noundef !484 ; 2 uses
  %i.da = getelementptr i8, ptr %i.co, i64 4, !dbg !5842
  %.val41.i74 = load i32, ptr %i.da, align 4, !dbg !5842
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5357)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5357)
    #dbg_value(ptr poison, !820, !DIExpression(), !5357)
    #dbg_value(ptr poison, !825, !DIExpression(), !5359)
    #dbg_value(ptr poison, !827, !DIExpression(), !5359)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5361)
    #dbg_value(ptr poison, !836, !DIExpression(), !5363)
    #dbg_value(ptr poison, !840, !DIExpression(), !5363)
    #dbg_value(ptr poison, !842, !DIExpression(), !5365)
    #dbg_value(ptr poison, !846, !DIExpression(), !5365)
  %i.db = icmp eq i32 %.val38.i71, %.val40.i73, !dbg !5843
    #dbg_value(i8 poison, !833, !DIExpression(), !5366)
  %i.dc = icmp ult i32 %.val39.i72, %.val41.i74, !dbg !5844
  %i.dd = icmp samesign ult i32 %.val38.i71, %.val40.i73, !dbg !5844
  %i.de = select i1 %i.db, i1 %i.dc, i1 %i.dd, !dbg !5843 ; 3 uses
    #dbg_value(i1 %i.de, !789, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5367)
    #dbg_value(i1 %i.cy, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5369)
    #dbg_value(ptr %i.cq, !854, !DIExpression(), !5369)
    #dbg_value(ptr %i.cl, !855, !DIExpression(), !5369)
    #dbg_value(ptr %i.cq, !856, !DIExpression(), !5370)
    #dbg_value(ptr %i.cl, !857, !DIExpression(), !5371)
    #dbg_value(ptr undef, !858, !DIExpression(), !5372)
    #dbg_value(ptr undef, !850, !DIExpression(), !5373)
    #dbg_value(ptr poison, !859, !DIExpression(), !5374)
    #dbg_value(ptr poison, !860, !DIExpression(), !5375)
    #dbg_value(ptr poison, !861, !DIExpression(), !5376)
  %i.df = select i1 %i.cy, ptr %i.cq, ptr %i.cl, !dbg !5845, !unpredictable !484
    #dbg_value(ptr %i.df, !790, !DIExpression(), !5377)
    #dbg_value(ptr %i.df, !807, !DIExpression(), !5303)
    #dbg_value(i1 %i.de, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5379)
    #dbg_value(ptr %i.co, !854, !DIExpression(), !5379)
    #dbg_value(ptr %i.cs, !855, !DIExpression(), !5379)
    #dbg_value(ptr %i.co, !856, !DIExpression(), !5380)
    #dbg_value(ptr %i.cs, !857, !DIExpression(), !5381)
    #dbg_value(ptr undef, !858, !DIExpression(), !5382)
    #dbg_value(ptr undef, !850, !DIExpression(), !5383)
    #dbg_value(ptr poison, !859, !DIExpression(), !5384)
    #dbg_value(ptr poison, !860, !DIExpression(), !5385)
    #dbg_value(ptr poison, !861, !DIExpression(), !5386)
  %i.dg = select i1 %i.de, ptr %i.co, ptr %i.cs, !dbg !5846, !unpredictable !484
    #dbg_value(ptr %i.dg, !791, !DIExpression(), !5387)
    #dbg_value(ptr %i.dg, !807, !DIExpression(), !5315)
    #dbg_value(i1 %i.de, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5389)
    #dbg_value(ptr %i.cq, !854, !DIExpression(), !5389)
    #dbg_value(ptr %i.co, !855, !DIExpression(), !5389)
    #dbg_value(ptr %i.cq, !856, !DIExpression(), !5390)
    #dbg_value(ptr %i.co, !857, !DIExpression(), !5391)
    #dbg_value(ptr undef, !858, !DIExpression(), !5392)
    #dbg_value(ptr undef, !850, !DIExpression(), !5393)
    #dbg_value(ptr poison, !859, !DIExpression(), !5394)
    #dbg_value(ptr poison, !860, !DIExpression(), !5395)
    #dbg_value(ptr poison, !861, !DIExpression(), !5396)
  %i.dh = select i1 %i.de, ptr %i.cq, ptr %i.co, !dbg !5847, !unpredictable !484
    #dbg_value(i1 %i.cy, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5398)
    #dbg_value(ptr %i.cl, !854, !DIExpression(), !5398)
    #dbg_value(ptr %i.dh, !855, !DIExpression(), !5398)
    #dbg_value(ptr %i.cl, !856, !DIExpression(), !5399)
    #dbg_value(ptr %i.dh, !857, !DIExpression(), !5400)
    #dbg_value(ptr undef, !858, !DIExpression(), !5401)
    #dbg_value(ptr undef, !850, !DIExpression(), !5402)
    #dbg_value(ptr poison, !859, !DIExpression(), !5403)
    #dbg_value(ptr poison, !860, !DIExpression(), !5404)
    #dbg_value(ptr poison, !861, !DIExpression(), !5405)
  %i.di = select i1 %i.cy, ptr %i.cl, ptr %i.dh, !dbg !5848, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.di, !792, !DIExpression(), !5406)
    #dbg_value(i1 %i.cy, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5408)
    #dbg_value(ptr %i.co, !854, !DIExpression(), !5408)
    #dbg_value(ptr %i.cq, !855, !DIExpression(), !5408)
    #dbg_value(ptr %i.co, !856, !DIExpression(), !5409)
    #dbg_value(ptr %i.cq, !857, !DIExpression(), !5410)
    #dbg_value(ptr undef, !858, !DIExpression(), !5411)
    #dbg_value(ptr undef, !850, !DIExpression(), !5412)
    #dbg_value(ptr poison, !859, !DIExpression(), !5413)
    #dbg_value(ptr poison, !860, !DIExpression(), !5414)
    #dbg_value(ptr poison, !861, !DIExpression(), !5415)
  %i.dj = select i1 %i.cy, ptr %i.co, ptr %i.cq, !dbg !5849, !unpredictable !484
    #dbg_value(i1 %i.de, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5417)
    #dbg_value(ptr %i.cs, !854, !DIExpression(), !5417)
    #dbg_value(ptr %i.dj, !855, !DIExpression(), !5417)
    #dbg_value(ptr %i.cs, !856, !DIExpression(), !5418)
    #dbg_value(ptr %i.dj, !857, !DIExpression(), !5419)
    #dbg_value(ptr undef, !858, !DIExpression(), !5420)
    #dbg_value(ptr undef, !850, !DIExpression(), !5421)
    #dbg_value(ptr poison, !859, !DIExpression(), !5422)
    #dbg_value(ptr poison, !860, !DIExpression(), !5423)
    #dbg_value(ptr poison, !861, !DIExpression(), !5424)
  %i.dk = select i1 %i.de, ptr %i.cs, ptr %i.dj, !dbg !5850, !unpredictable !484 ; 4 uses
    #dbg_value(ptr %i.dk, !793, !DIExpression(), !5425)
  %.val.i75 = load i32, ptr %i.dk, align 4, !dbg !5851, !range !813, !noundef !484 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4, !dbg !5851
  %.val35.i76 = load i32, ptr %i.dl, align 4, !dbg !5851
  %.val36.i77 = load i32, ptr %i.di, align 4, !dbg !5851, !range !813, !noundef !484 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 4, !dbg !5851
  %.val37.i78 = load i32, ptr %i.dm, align 4, !dbg !5851
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5427)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5427)
    #dbg_value(ptr poison, !820, !DIExpression(), !5427)
    #dbg_value(ptr poison, !825, !DIExpression(), !5429)
    #dbg_value(ptr poison, !827, !DIExpression(), !5429)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5431)
    #dbg_value(ptr poison, !836, !DIExpression(), !5433)
    #dbg_value(ptr poison, !840, !DIExpression(), !5433)
    #dbg_value(ptr poison, !842, !DIExpression(), !5435)
    #dbg_value(ptr poison, !846, !DIExpression(), !5435)
  %i.dn = icmp eq i32 %.val.i75, %.val36.i77, !dbg !5852
    #dbg_value(i8 poison, !833, !DIExpression(), !5436)
  %i.do = icmp ult i32 %.val35.i76, %.val37.i78, !dbg !5853
  %i.dp = icmp samesign ult i32 %.val.i75, %.val36.i77, !dbg !5853
  %i.dq = select i1 %i.dn, i1 %i.do, i1 %i.dp, !dbg !5852 ; 2 uses
    #dbg_value(i1 %i.dq, !794, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5437)
    #dbg_value(i1 %i.dq, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5439)
    #dbg_value(ptr %i.dk, !854, !DIExpression(), !5439)
    #dbg_value(ptr %i.di, !855, !DIExpression(), !5439)
    #dbg_value(ptr %i.dk, !856, !DIExpression(), !5440)
    #dbg_value(ptr %i.di, !857, !DIExpression(), !5441)
    #dbg_value(ptr undef, !858, !DIExpression(), !5442)
    #dbg_value(ptr undef, !850, !DIExpression(), !5443)
    #dbg_value(ptr poison, !859, !DIExpression(), !5444)
    #dbg_value(ptr poison, !860, !DIExpression(), !5445)
    #dbg_value(ptr poison, !861, !DIExpression(), !5446)
  %i.dr = select i1 %i.dq, ptr %i.dk, ptr %i.di, !dbg !5854, !unpredictable !484
    #dbg_value(ptr %i.dr, !795, !DIExpression(), !5447)
    #dbg_value(ptr %i.dr, !807, !DIExpression(), !5311)
    #dbg_value(i1 %i.dq, !853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5449)
    #dbg_value(ptr %i.di, !854, !DIExpression(), !5449)
    #dbg_value(ptr %i.dk, !855, !DIExpression(), !5449)
    #dbg_value(ptr %i.di, !856, !DIExpression(), !5450)
    #dbg_value(ptr %i.dk, !857, !DIExpression(), !5451)
    #dbg_value(ptr undef, !858, !DIExpression(), !5452)
    #dbg_value(ptr undef, !850, !DIExpression(), !5453)
    #dbg_value(ptr poison, !859, !DIExpression(), !5454)
    #dbg_value(ptr poison, !860, !DIExpression(), !5455)
    #dbg_value(ptr poison, !861, !DIExpression(), !5456)
  %i.ds = select i1 %i.dq, ptr %i.di, ptr %i.dk, !dbg !5855, !unpredictable !484
    #dbg_value(ptr %i.ds, !796, !DIExpression(), !5457)
    #dbg_value(ptr %i.ds, !807, !DIExpression(), !5313)
  %i.dt = load i64, ptr %i.df, align 4, !dbg !5856
  store i64 %i.dt, ptr %i.bu, align 4, !dbg !5856
  %i.du = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !5857
    #dbg_value(ptr %i.du, !804, !DIExpression(), !5311)
  %i.dv = load i64, ptr %i.dr, align 4, !dbg !5858
  store i64 %i.dv, ptr %i.du, align 4, !dbg !5858
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !5859
    #dbg_value(ptr %i.dw, !804, !DIExpression(), !5313)
  %i.dx = load i64, ptr %i.ds, align 4, !dbg !5860
  store i64 %i.dx, ptr %i.dw, align 4, !dbg !5860
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !5861
    #dbg_value(ptr %i.dy, !804, !DIExpression(), !5315)
  %i.dz = load i64, ptr %i.dg, align 4, !dbg !5862
  store i64 %i.dz, ptr %i.dy, align 4, !dbg !5862
    #dbg_value(i64 4, !5638, !DIExpression(), !5711)
  br label %bb.i, !dbg !5778

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %5 = phi i1 [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ], !dbg !5706 ; 2 uses
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.h ], [ 1, %bb.g ], !dbg !5706 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !5638, !DIExpression(), !5711)
    #dbg_value(i64 0, !5639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5712)
    #dbg_value(i64 2, !5639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5712)
    #dbg_value(i64 0, !5639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5712)
    #dbg_value(i64 %i.d, !5639, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5712)
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
    #dbg_value(i64 1, !5639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5712)
    #dbg_value(i64 0, !5640, !DIExpression(), !5713)
    #dbg_value(i64 0, !5685, !DIExpression(), !5698)
    #dbg_value(i64 0, !5685, !DIExpression(), !5710)
    #dbg_value(ptr %0, !5641, !DIExpression(), !5714)
    #dbg_value(ptr %0, !5686, !DIExpression(), !5716)
    #dbg_value(ptr %2, !5642, !DIExpression(), !5717)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5719)
    #dbg_value(ptr %2, !5686, !DIExpression(), !5721)
    #dbg_value(i64 %i.d, !5643, !DIExpression(), !5722)
    #dbg_value(i64 %.sroa.0.0, !5644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(i64 %i.d, !5644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5723)
    #dbg_value(ptr undef, !5656, !DIExpression(), !5662)
    #dbg_value(ptr undef, !5658, !DIExpression(), !5661)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5655)
    #dbg_value(ptr undef, !5649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5724)
  %i.eb = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !5863
  br i1 %i.eb, label %.lr.ph, label %.loopexit, !dbg !5654

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.i
    #dbg_value(i64 2, !5639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5712)
    #dbg_value(i64 %i.d, !5640, !DIExpression(), !5713)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5698)
    #dbg_value(i64 %i.d, !5685, !DIExpression(), !5710)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !5864
    #dbg_value(ptr %i.ec, !5641, !DIExpression(), !5714)
    #dbg_value(ptr %i.ec, !5686, !DIExpression(), !5716)
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %i.d, !dbg !5865 ; 6 uses
    #dbg_value(ptr %i.ed, !5642, !DIExpression(), !5717)
    #dbg_value(ptr %i.ed, !5686, !DIExpression(), !5719)
    #dbg_value(ptr %i.ed, !5686, !DIExpression(), !5721)
    #dbg_value(i64 %i.ea, !5643, !DIExpression(), !5722)
    #dbg_value(i64 %.sroa.0.0, !5644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(i64 %i.ea, !5644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5723)
    #dbg_value(ptr undef, !5656, !DIExpression(), !5662)
    #dbg_value(ptr undef, !5658, !DIExpression(), !5661)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5655)
    #dbg_value(ptr undef, !5649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5724)
  %i.ee = icmp samesign ult i64 %.sroa.0.0, %i.ea, !dbg !5863
  br i1 %i.ee, label %.lr.ph.1, label %.loopexit.1, !dbg !5654

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1
  %.sroa.05.087.1 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %5, %.loopexit ]
  %.sroa.05.087.1.a = phi i64 [ %i.fa, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
    #dbg_value(i64 %.sroa.05.087.1.a, !5659, !DIExpression(), !5725)
    #dbg_value(i64 %.sroa.05.087.1.a, !5673, !DIExpression(), !5676)
    #dbg_value(i64 %.sroa.05.087.1.a, !5678, !DIExpression(), !5681)
    #dbg_value(i64 %.sroa.05.087.1.a, !5644, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(i64 %.sroa.05.087.1.a, !5645, !DIExpression(), !5726)
    #dbg_value(i64 %.sroa.05.087.1.a, !5685, !DIExpression(), !5716)
    #dbg_value(i64 %.sroa.05.087.1.a, !5685, !DIExpression(), !5719)
    #dbg_value(i64 %.sroa.05.087.1.a, !5685, !DIExpression(), !5721)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.05.087.1.a, !dbg !5866
    #dbg_value(ptr %i.ef, !5665, !DIExpression(), !5683)
  %.idx114 = shl nuw nsw i64 %.sroa.05.087.1.a, 3, !dbg !5867
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx114, !dbg !5867 ; 4 uses
    #dbg_value(ptr %i.eg, !5666, !DIExpression(), !5683)
  %i.eh = load i64, ptr %i.ef, align 4, !dbg !5868 ; 4 uses
  store i64 %i.eh, ptr %i.eg, align 4, !dbg !5868
    #dbg_value(ptr poison, !1160, !DIExpression(), !5461)
    #dbg_value(ptr poison, !1164, !DIExpression(), !5462)
    #dbg_value(ptr poison, !1160, !DIExpression(), !5465)
    #dbg_value(ptr poison, !1164, !DIExpression(), !5466)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5467)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5467)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5469)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5469)
    #dbg_value(ptr undef, !1170, !DIExpression(), !5469)
    #dbg_value(ptr undef, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5467)
    #dbg_value(ptr %i.ed, !1142, !DIExpression(), !5470)
    #dbg_value(ptr %i.eg, !1143, !DIExpression(), !5470)
    #dbg_value(ptr %i.eg, !1174, !DIExpression(), !5472)
    #dbg_value(ptr poison, !1144, !DIExpression(), !5470)
    #dbg_value(i64 1, !1175, !DIExpression(), !5472)
    #dbg_value(i64 1, !1177, !DIExpression(), !5474)
    #dbg_value(i64 1, !1175, !DIExpression(), !5476)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -8, !dbg !5869 ; 3 uses
    #dbg_value(ptr %i.ei, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.ei, !1174, !DIExpression(), !5476)
  %i.ej = trunc i64 %i.eh to i32, !dbg !5870      ; 4 uses
  %i.ek = lshr i64 %i.eh, 32, !dbg !5870
  %i.el = trunc nuw i64 %i.ek to i32, !dbg !5870  ; 2 uses
  %.val22.i.1 = load i32, ptr %i.ei, align 4, !dbg !5870, !range !813, !noundef !484 ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 -4, !dbg !5870
  %.val23.i.1 = load i32, ptr %i.em, align 4, !dbg !5870
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5479)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5479)
    #dbg_value(ptr poison, !820, !DIExpression(), !5479)
    #dbg_value(ptr poison, !825, !DIExpression(), !5481)
    #dbg_value(ptr poison, !827, !DIExpression(), !5481)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5483)
    #dbg_value(ptr poison, !836, !DIExpression(), !5485)
    #dbg_value(ptr poison, !840, !DIExpression(), !5485)
    #dbg_value(ptr poison, !842, !DIExpression(), !5487)
    #dbg_value(ptr poison, !846, !DIExpression(), !5487)
  %i.en = icmp eq i32 %.val22.i.1, %i.ej, !dbg !5871
    #dbg_value(i8 poison, !833, !DIExpression(), !5488)
  %i.eo = icmp ugt i32 %.val23.i.1, %i.el, !dbg !5872
  %i.ep = icmp samesign ugt i32 %.val22.i.1, %i.ej, !dbg !5872
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep, !dbg !5871
  br i1 %i.eq, label %.preheader.1.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5870

.preheader.1.preheader:                           ; preds = %.lr.ph.1
    #dbg_value(ptr %i.eg, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
    #dbg_value(ptr %i.ei, !1174, !DIExpression(), !5476)
    #dbg_value(ptr %i.ei, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.ei, !1178, !DIExpression(), !5474)
    #dbg_value(ptr %i.eg, !1179, !DIExpression(), !5474)
  %i.er = load i64, ptr %i.ei, align 4, !dbg !5873
  store i64 %i.er, ptr %i.eg, align 4, !dbg !5873
  br i1 %.sroa.05.087.1, label %._crit_edge111, label %.lr.ph110, !dbg !5874

.preheader.1:                                     ; preds = %.lr.ph110
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
    #dbg_value(ptr %i.eu, !1174, !DIExpression(), !5476)
    #dbg_value(ptr %i.eu, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.eu, !1178, !DIExpression(), !5474)
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1179, !DIExpression(), !5474)
  %i.es = load i64, ptr %i.eu, align 4, !dbg !5873
  store i64 %i.es, ptr %.sroa.0.0.i79.1109, align 4, !dbg !5873
    #dbg_value(ptr %i.eu, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
  %i.et = icmp eq ptr %i.eu, %i.ed, !dbg !5874
  br i1 %i.et, label %._crit_edge111, label %.lr.ph110, !dbg !5874

.lr.ph110:                                        ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i79.1109 = phi ptr [ %i.eu, %.preheader.1 ], [ %i.ei, %.preheader.1.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79.1109, !1174, !DIExpression(), !5476)
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.0.i79.1109, i64 -8, !dbg !5875 ; 4 uses
    #dbg_value(ptr %i.eu, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.eu, !1174, !DIExpression(), !5476)
  %.val18.i.1 = load i32, ptr %i.eu, align 4, !dbg !5876, !range !813, !noundef !484 ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.0.0.i79.1109, i64 -4, !dbg !5876
  %.val19.i.1 = load i32, ptr %i.ev, align 4, !dbg !5876
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5490)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5490)
    #dbg_value(ptr poison, !820, !DIExpression(), !5490)
    #dbg_value(ptr poison, !825, !DIExpression(), !5492)
    #dbg_value(ptr poison, !827, !DIExpression(), !5492)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5494)
    #dbg_value(ptr poison, !836, !DIExpression(), !5496)
    #dbg_value(ptr poison, !840, !DIExpression(), !5496)
    #dbg_value(ptr poison, !842, !DIExpression(), !5498)
    #dbg_value(ptr poison, !846, !DIExpression(), !5498)
  %i.ew = icmp eq i32 %.val18.i.1, %i.ej, !dbg !5877
    #dbg_value(i8 poison, !833, !DIExpression(), !5499)
  %i.ex = icmp ugt i32 %.val19.i.1, %i.el, !dbg !5878
  %i.ey = icmp samesign ugt i32 %.val18.i.1, %i.ej, !dbg !5878
  %i.ez = select i1 %i.ew, i1 %i.ex, i1 %i.ey, !dbg !5877
  br i1 %i.ez, label %.preheader.1, label %._crit_edge111, !dbg !5876

._crit_edge111:                                   ; preds = %.preheader.1, %.lr.ph110, %.preheader.1.preheader
  %.sroa.0.0.i79.lcssa.1 = phi ptr [ %i.ed, %.preheader.1.preheader ], [ %i.ed, %.preheader.1 ], [ %.sroa.0.0.i79.1109, %.lr.ph110 ], !dbg !5879
    #dbg_value(ptr undef, !1164, !DIExpression(), !5462)
    #dbg_value(ptr undef, !1160, !DIExpression(), !5461)
    #dbg_value(ptr undef, !1170, !DIExpression(), !5469)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa.1, !1171, !DIExpression(), !5469)
    #dbg_value(i64 1, !1172, !DIExpression(), !5469)
  store i64 %i.eh, ptr %.sroa.0.0.i79.lcssa.1, align 4, !dbg !5880, !noalias !5727
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, !dbg !5881

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1: ; preds = %._crit_edge111, %.lr.ph.1
  %i.fa = add nuw nsw i64 %.sroa.05.087.1.a, 1, !dbg !5882 ; 2 uses
    #dbg_value(i64 %i.fa, !5644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(ptr undef, !5656, !DIExpression(), !5662)
    #dbg_value(ptr undef, !5658, !DIExpression(), !5661)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5655)
    #dbg_value(ptr undef, !5649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5724)
  %exitcond.1.not = icmp eq i64 %i.fa, %i.ea, !dbg !5863
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !5654

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1, %.loopexit
    #dbg_value(ptr %2, !5646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5728)
    #dbg_value(ptr %0, !5646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5728)
    #dbg_value(i64 %1, !5646, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5729), !dbg !5883
    #dbg_value(ptr %0, !876, !DIExpression(), !5507)
    #dbg_value(ptr %0, !890, !DIExpression(), !5508)
    #dbg_value(ptr %0, !5730, !DIExpression(), !5511)
    #dbg_value(ptr %2, !883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5507)
    #dbg_value(i64 %1, !883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5507)
    #dbg_value(ptr poison, !884, !DIExpression(), !5507)
    #dbg_value(i64 1, !5734, !DIExpression(), !5519)
    #dbg_value(i64 1, !5743, !DIExpression(), !5522)
    #dbg_value(i64 1, !900, !DIExpression(), !5524)
    #dbg_value(i64 1, !905, !DIExpression(), !5526)
    #dbg_value(i64 1, !900, !DIExpression(), !5528)
    #dbg_value(i64 1, !905, !DIExpression(), !5530)
    #dbg_value(i64 2, !5746, !DIExpression(), !5533)
    #dbg_value(i64 1, !5732, !DIExpression(), !5511)
    #dbg_value(i64 %1, !885, !DIExpression(), !5534)
    #dbg_value(i64 %1, !5747, !DIExpression(), !5533)
    #dbg_value(ptr %2, !886, !DIExpression(), !5535)
    #dbg_value(ptr %2, !5749, !DIExpression(), !5538)
    #dbg_value(ptr %2, !5749, !DIExpression(), !5540)
    #dbg_value(ptr %2, !5749, !DIExpression(), !5542)
    #dbg_value(i64 %i.d, !887, !DIExpression(), !5543)
    #dbg_value(i64 %i.d, !5750, !DIExpression(), !5538)
    #dbg_value(i64 %i.d, !5750, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5540)
    #dbg_value(i64 %1, !5750, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5542)
    #dbg_value(i64 %1, !911, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5545)
    #dbg_value(ptr %0, !912, !DIExpression(), !5545)
    #dbg_value(!DIArgList(ptr %0, i64 %1), !893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5546)
    #dbg_value(i64 0, !894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5547)
    #dbg_value(i64 %i.d, !894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5547)
    #dbg_value(ptr %2, !5749, !DIExpression(), !5549)
    #dbg_value(ptr %2, !888, !DIExpression(), !5550)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !5749, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5552)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5553)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !908, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5526)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5524)
    #dbg_value(!DIArgList(ptr %2, i64 %i.d), !891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5554)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !908, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5530)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5528)
    #dbg_value(!DIArgList(ptr %2, i64 %1), !892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5555)
    #dbg_value(ptr undef, !5740, !DIExpression(), !5556)
    #dbg_value(ptr undef, !5737, !DIExpression(), !5557)
    #dbg_value(ptr undef, !5752, !DIExpression(), !5560)
    #dbg_value(ptr undef, !5753, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5561)
  %i.fb = add nsw i64 %1, -1, !dbg !5884          ; 2 uses
    #dbg_value(!DIArgList(ptr %0, i64 %i.fb), !893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5546)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5555)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5528)
    #dbg_value(!DIArgList(ptr %2, i64 %i.fb), !908, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !5530)
    #dbg_value(i64 %i.fb, !5750, !DIExpression(), !5542)
    #dbg_value(i64 %i.fb, !911, !DIExpression(), !5545)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fb, !dbg !5885
    #dbg_value(ptr %i.fc, !893, !DIExpression(), !5546)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fb, !dbg !5886
    #dbg_value(ptr %i.fd, !908, !DIExpression(), !5530)
    #dbg_value(ptr %i.fd, !903, !DIExpression(), !5528)
    #dbg_value(ptr %i.fd, !892, !DIExpression(), !5555)
    #dbg_value(ptr %i.ed, !5749, !DIExpression(), !5552)
    #dbg_value(ptr %i.ed, !889, !DIExpression(), !5553)
    #dbg_value(ptr %i.ed, !891, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5554)
    #dbg_value(ptr %i.ed, !903, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5524)
    #dbg_value(ptr %i.ed, !908, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5526)
  %i.fe = getelementptr i8, ptr %i.ed, i64 -8, !dbg !5887
    #dbg_value(ptr %i.fe, !908, !DIExpression(), !5526)
    #dbg_value(ptr %i.fe, !903, !DIExpression(), !5524)
    #dbg_value(ptr %i.fe, !891, !DIExpression(), !5554)
  br label %.lr.ph.i, !dbg !5888

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ff = getelementptr i8, ptr %i.gg, i64 8, !dbg !5889 ; 2 uses
    #dbg_value(ptr %i.ff, !895, !DIExpression(), !5562)
  %i.fg = getelementptr i8, ptr %i.gf, i64 8, !dbg !5890
    #dbg_value(ptr %i.fg, !896, !DIExpression(), !5563)
  %i.fh = and i64 %1, 1, !dbg !5891
  %i.fi = icmp eq i64 %i.fh, 0, !dbg !5891
  br i1 %i.fi, label %bb.k, label %bb.j, !dbg !5892

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.fj, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.ed, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.fe, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.fd, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.fc, %.loopexit.1 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i, !5730, !DIExpression(), !5511)
    #dbg_value(ptr %.sroa.06.08.i, !5749, !DIExpression(), !5549)
    #dbg_value(ptr %.sroa.011.07.i, !5749, !DIExpression(), !5552)
    #dbg_value(ptr %.sroa.015.06.i, !908, !DIExpression(), !5526)
    #dbg_value(ptr %.sroa.017.05.i, !908, !DIExpression(), !5530)
    #dbg_value(ptr %.sroa.019.04.i, !893, !DIExpression(), !5546)
    #dbg_value(i64 %.sroa.04.09.i, !5738, !DIExpression(), !5564)
    #dbg_value(i64 %.sroa.04.09.i, !5735, !DIExpression(), !5519)
    #dbg_value(i64 %.sroa.04.09.i, !5744, !DIExpression(), !5522)
  %i.fj = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !5893 ; 2 uses
    #dbg_value(i64 %i.fj, !894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5547)
    #dbg_value(ptr %.sroa.06.08.i, !918, !DIExpression(), !5566)
    #dbg_value(ptr %.sroa.06.08.i, !931, !DIExpression(), !5568)
    #dbg_value(ptr %.sroa.011.07.i, !925, !DIExpression(), !5566)
    #dbg_value(ptr %.sroa.011.07.i, !931, !DIExpression(), !5570)
    #dbg_value(ptr %.sroa.0.010.i, !926, !DIExpression(), !5566)
    #dbg_value(ptr %.sroa.0.010.i, !934, !DIExpression(), !5572)
    #dbg_value(ptr poison, !927, !DIExpression(), !5566)
    #dbg_value(i64 1, !937, !DIExpression(), !5574)
    #dbg_value(i64 1, !935, !DIExpression(), !5572)
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !dbg !5894, !range !813, !alias.scope !5729, !noundef !484 ; 2 uses
  %i.fk = getelementptr i8, ptr %.sroa.011.07.i, i64 4, !dbg !5894
  %.sroa.011.0.val44.i = load i32, ptr %i.fk, align 4, !dbg !5894, !alias.scope !5729
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !dbg !5894, !range !813, !alias.scope !5729, !noundef !484 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.06.08.i, i64 4, !dbg !5894
  %.sroa.06.0.val45.i = load i32, ptr %i.fl, align 4, !dbg !5894, !alias.scope !5729
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5576)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5576)
    #dbg_value(ptr poison, !820, !DIExpression(), !5576)
    #dbg_value(ptr poison, !825, !DIExpression(), !5578)
    #dbg_value(ptr poison, !827, !DIExpression(), !5578)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5580)
    #dbg_value(ptr poison, !836, !DIExpression(), !5582)
    #dbg_value(ptr poison, !840, !DIExpression(), !5582)
    #dbg_value(ptr poison, !842, !DIExpression(), !5584)
    #dbg_value(ptr poison, !846, !DIExpression(), !5584)
  %i.fm = icmp eq i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5895
    #dbg_value(i8 poison, !833, !DIExpression(), !5585)
  %i.fn = icmp ult i32 %.sroa.011.0.val44.i, %.sroa.06.0.val45.i, !dbg !5896
  %i.fo = icmp samesign ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i, !dbg !5896
  %i.fp = select i1 %i.fm, i1 %i.fn, i1 %i.fo, !dbg !5895 ; 3 uses
    #dbg_value(i1 %i.fp, !928, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5586)
  %..i43.i = select i1 %i.fp, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i, !dbg !5897
  %i.fq = xor i1 %i.fp, true, !dbg !5898
    #dbg_value(i1 %i.fq, !928, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5586)
    #dbg_value(ptr %..i43.i, !938, !DIExpression(), !5574)
    #dbg_value(ptr %..i43.i, !929, !DIExpression(), !5587)
    #dbg_value(ptr %.sroa.0.010.i, !939, !DIExpression(), !5574)
  %i.fr = load i64, ptr %..i43.i, align 4, !dbg !5899, !alias.scope !5729, !noalias !5755
  store i64 %i.fr, ptr %.sroa.0.010.i, align 4, !dbg !5899, !noalias !5756
  %i.fs = zext i1 %i.fp to i64, !dbg !5900
    #dbg_value(i64 %i.fs, !932, !DIExpression(), !5570)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i, i64 %i.fs, !dbg !5901 ; 4 uses
    #dbg_value(ptr %i.ft, !925, !DIExpression(), !5566)
    #dbg_value(ptr %i.ft, !931, !DIExpression(), !5570)
  %i.fu = zext i1 %i.fq to i64, !dbg !5902
    #dbg_value(i64 %i.fu, !932, !DIExpression(), !5568)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i, i64 %i.fu, !dbg !5903 ; 5 uses
    #dbg_value(ptr %i.fv, !918, !DIExpression(), !5566)
    #dbg_value(ptr %i.fv, !931, !DIExpression(), !5568)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8, !dbg !5904 ; 2 uses
    #dbg_value(ptr %i.fw, !926, !DIExpression(), !5566)
    #dbg_value(ptr %i.fw, !934, !DIExpression(), !5572)
    #dbg_value(ptr %i.fv, !888, !DIExpression(), !5550)
    #dbg_value(ptr %i.fv, !5749, !DIExpression(), !5549)
    #dbg_value(ptr %i.ft, !889, !DIExpression(), !5553)
    #dbg_value(ptr %i.ft, !5749, !DIExpression(), !5552)
    #dbg_value(ptr %i.fw, !876, !DIExpression(), !5507)
    #dbg_value(ptr %i.fw, !890, !DIExpression(), !5508)
    #dbg_value(ptr %i.fw, !5730, !DIExpression(), !5511)
    #dbg_value(ptr %.sroa.015.06.i, !941, !DIExpression(), !5592)
    #dbg_value(ptr %.sroa.015.06.i, !948, !DIExpression(), !5594)
    #dbg_value(ptr %.sroa.015.06.i, !951, !DIExpression(), !5596)
    #dbg_value(ptr %.sroa.017.05.i, !942, !DIExpression(), !5592)
    #dbg_value(ptr %.sroa.017.05.i, !948, !DIExpression(), !5598)
    #dbg_value(ptr %.sroa.017.05.i, !951, !DIExpression(), !5600)
    #dbg_value(ptr %.sroa.019.04.i, !943, !DIExpression(), !5592)
    #dbg_value(ptr %.sroa.019.04.i, !955, !DIExpression(), !5602)
    #dbg_value(ptr poison, !944, !DIExpression(), !5592)
    #dbg_value(i64 1, !958, !DIExpression(), !5604)
    #dbg_value(i64 1, !956, !DIExpression(), !5602)
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !dbg !5905, !range !813, !alias.scope !5729, !noundef !484 ; 2 uses
  %i.fx = getelementptr i8, ptr %.sroa.017.05.i, i64 4, !dbg !5905
  %.sroa.017.0.val46.i = load i32, ptr %i.fx, align 4, !dbg !5905, !alias.scope !5729
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !dbg !5905, !range !813, !alias.scope !5729, !noundef !484 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.015.06.i, i64 4, !dbg !5905
  %.sroa.015.0.val47.i = load i32, ptr %i.fy, align 4, !dbg !5905, !alias.scope !5729
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5606)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5606)
    #dbg_value(ptr poison, !820, !DIExpression(), !5606)
    #dbg_value(ptr poison, !825, !DIExpression(), !5608)
    #dbg_value(ptr poison, !827, !DIExpression(), !5608)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5610)
    #dbg_value(ptr poison, !836, !DIExpression(), !5612)
    #dbg_value(ptr poison, !840, !DIExpression(), !5612)
    #dbg_value(ptr poison, !842, !DIExpression(), !5614)
    #dbg_value(ptr poison, !846, !DIExpression(), !5614)
  %i.fz = icmp eq i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5906
    #dbg_value(i8 poison, !833, !DIExpression(), !5615)
  %i.ga = icmp ult i32 %.sroa.017.0.val46.i, %.sroa.015.0.val47.i, !dbg !5907
  %i.gb = icmp samesign ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i, !dbg !5907
  %i.gc = select i1 %i.fz, i1 %i.ga, i1 %i.gb, !dbg !5906 ; 3 uses
    #dbg_value(i1 %i.gc, !945, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5616)
  %..i.i = select i1 %i.gc, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i, !dbg !5908
  %i.gd = xor i1 %i.gc, true, !dbg !5909
    #dbg_value(i1 %i.gd, !945, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5616)
    #dbg_value(ptr %..i.i, !959, !DIExpression(), !5604)
    #dbg_value(ptr %..i.i, !946, !DIExpression(), !5617)
    #dbg_value(ptr %.sroa.019.04.i, !960, !DIExpression(), !5604)
  %i.ge = load i64, ptr %..i.i, align 4, !dbg !5910, !alias.scope !5729, !noalias !5757
  store i64 %i.ge, ptr %.sroa.019.04.i, align 4, !dbg !5910, !noalias !5758
  %.neg.i.i = sext i1 %i.gd to i64, !dbg !5911
    #dbg_value(i1 %i.gd, !949, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5598)
    #dbg_value(i64 %.neg.i.i, !952, !DIExpression(), !5600)
  %i.gf = getelementptr [8 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i, !dbg !5912 ; 2 uses
    #dbg_value(ptr %i.gf, !942, !DIExpression(), !5592)
    #dbg_value(ptr %i.gf, !948, !DIExpression(), !5598)
    #dbg_value(ptr %i.gf, !951, !DIExpression(), !5600)
  %.neg24.i.i = sext i1 %i.gc to i64, !dbg !5913
    #dbg_value(i1 %i.gc, !949, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5594)
    #dbg_value(i64 %.neg24.i.i, !952, !DIExpression(), !5596)
  %i.gg = getelementptr [8 x i8], ptr %.sroa.015.06.i, i64 %.neg24.i.i, !dbg !5914 ; 2 uses
    #dbg_value(ptr %i.gg, !941, !DIExpression(), !5592)
    #dbg_value(ptr %i.gg, !948, !DIExpression(), !5594)
    #dbg_value(ptr %i.gg, !951, !DIExpression(), !5596)
  %i.gh = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -8, !dbg !5915
    #dbg_value(ptr %i.gh, !943, !DIExpression(), !5592)
    #dbg_value(ptr %i.gh, !955, !DIExpression(), !5602)
    #dbg_value(ptr %i.gg, !908, !DIExpression(), !5526)
    #dbg_value(ptr %i.gg, !903, !DIExpression(), !5524)
    #dbg_value(ptr %i.gg, !891, !DIExpression(), !5554)
    #dbg_value(ptr %i.gf, !908, !DIExpression(), !5530)
    #dbg_value(ptr %i.gf, !903, !DIExpression(), !5528)
    #dbg_value(ptr %i.gf, !892, !DIExpression(), !5555)
    #dbg_value(ptr %i.gh, !893, !DIExpression(), !5546)
    #dbg_value(ptr undef, !5740, !DIExpression(), !5556)
    #dbg_value(ptr undef, !5737, !DIExpression(), !5557)
    #dbg_value(ptr undef, !5752, !DIExpression(), !5560)
    #dbg_value(ptr undef, !5753, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5561)
  %exitcond.not.i = icmp eq i64 %i.fj, %i.d, !dbg !5916
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !5888

bb.j:                                             ; preds = %._crit_edge.i
  %i.gi = icmp ult ptr %i.fv, %i.ff, !dbg !5917   ; 3 uses
    #dbg_value(i1 %i.gi, !897, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5621)
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gi, ptr %i.fv, ptr %i.ft, !dbg !5918
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !5731, !DIExpression(), !5511)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i, !898, !DIExpression(), !5622)
  %i.gj = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 4, !dbg !5919, !alias.scope !5729
  store i64 %i.gj, ptr %i.fw, align 4, !dbg !5919, !noalias !5729
  %i.gk = zext i1 %i.gi to i64, !dbg !5920
    #dbg_value(i64 %i.gk, !5750, !DIExpression(), !5549)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gk, !dbg !5921
    #dbg_value(ptr %i.gl, !888, !DIExpression(), !5550)
    #dbg_value(ptr %i.gl, !5749, !DIExpression(), !5549)
  %i.gm = xor i1 %i.gi, true, !dbg !5922
  %i.gn = zext i1 %i.gm to i64, !dbg !5922
    #dbg_value(i64 %i.gn, !5750, !DIExpression(), !5552)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gn, !dbg !5923
    #dbg_value(ptr %i.go, !889, !DIExpression(), !5553)
    #dbg_value(ptr %i.go, !5749, !DIExpression(), !5552)
  br label %bb.k, !dbg !5924

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ft, %._crit_edge.i ], [ %i.go, %bb.j ], !dbg !5925
  %.sroa.06.1.i = phi ptr [ %i.fv, %._crit_edge.i ], [ %i.gl, %bb.j ], !dbg !5926
    #dbg_value(ptr %.sroa.06.1.i, !5749, !DIExpression(), !5549)
    #dbg_value(ptr %.sroa.06.1.i, !888, !DIExpression(), !5550)
    #dbg_value(ptr %.sroa.011.1.i, !5749, !DIExpression(), !5552)
    #dbg_value(ptr %.sroa.011.1.i, !889, !DIExpression(), !5553)
  %i.gp = icmp ne ptr %.sroa.06.1.i, %i.ff, !dbg !5927
  %i.gq = icmp ne ptr %.sroa.011.1.i, %i.fg
  %or.cond.i = select i1 %i.gp, i1 true, i1 %i.gq, !dbg !5927, !prof !759
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, !dbg !5927, !prof !759

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc unwind label %bb.m, !dbg !5928

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !5928

bb.m:                                             ; preds = %bb.l
  %i.gr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !1164, !DIExpression(), !5105)
    #dbg_value(ptr undef, !1160, !DIExpression(), !5104)
    #dbg_value(ptr %2, !1170, !DIExpression(), !5624)
    #dbg_value(ptr %0, !1171, !DIExpression(), !5624)
    #dbg_value(i64 %1, !1172, !DIExpression(), !5624)
  %i.gs = shl nuw nsw i64 %1, 3, !dbg !5929
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.gs, i1 false), !dbg !5929, !noalias !5759
  resume { ptr, i32 } %i.gr, !dbg !5930

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.k, %bb.a
  ret void, !dbg !5931

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.05.087 = phi i1 [ false, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %5, %bb.i ]
  %.sroa.05.087.a = phi i64 [ %i.ho, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 3 uses
    #dbg_value(i64 %.sroa.05.087.a, !5659, !DIExpression(), !5725)
    #dbg_value(i64 %.sroa.05.087.a, !5673, !DIExpression(), !5676)
    #dbg_value(i64 %.sroa.05.087.a, !5678, !DIExpression(), !5681)
    #dbg_value(i64 %.sroa.05.087.a, !5644, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(i64 %.sroa.05.087.a, !5645, !DIExpression(), !5726)
    #dbg_value(i64 %.sroa.05.087.a, !5685, !DIExpression(), !5716)
    #dbg_value(i64 %.sroa.05.087.a, !5685, !DIExpression(), !5719)
    #dbg_value(i64 %.sroa.05.087.a, !5685, !DIExpression(), !5721)
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.087.a, !dbg !5866
    #dbg_value(ptr %i.gt, !5665, !DIExpression(), !5683)
  %.idx = shl nuw nsw i64 %.sroa.05.087.a, 3, !dbg !5867
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !5867 ; 4 uses
    #dbg_value(ptr %i.gu, !5666, !DIExpression(), !5683)
  %i.gv = load i64, ptr %i.gt, align 4, !dbg !5868 ; 4 uses
  store i64 %i.gv, ptr %i.gu, align 4, !dbg !5868
    #dbg_value(ptr poison, !1160, !DIExpression(), !5461)
    #dbg_value(ptr poison, !1164, !DIExpression(), !5462)
    #dbg_value(ptr poison, !1160, !DIExpression(), !5465)
    #dbg_value(ptr poison, !1164, !DIExpression(), !5466)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5467)
    #dbg_value(ptr poison, !1147, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5467)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5469)
    #dbg_value(ptr poison, !1170, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5469)
    #dbg_value(ptr undef, !1170, !DIExpression(), !5469)
    #dbg_value(ptr undef, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5467)
    #dbg_value(ptr %2, !1142, !DIExpression(), !5470)
    #dbg_value(ptr %i.gu, !1143, !DIExpression(), !5470)
    #dbg_value(ptr %i.gu, !1174, !DIExpression(), !5472)
    #dbg_value(ptr poison, !1144, !DIExpression(), !5470)
    #dbg_value(i64 1, !1175, !DIExpression(), !5472)
    #dbg_value(i64 1, !1177, !DIExpression(), !5474)
    #dbg_value(i64 1, !1175, !DIExpression(), !5476)
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -8, !dbg !5869 ; 3 uses
    #dbg_value(ptr %i.gw, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.gw, !1174, !DIExpression(), !5476)
  %i.gx = trunc i64 %i.gv to i32, !dbg !5870      ; 4 uses
  %i.gy = lshr i64 %i.gv, 32, !dbg !5870
  %i.gz = trunc nuw i64 %i.gy to i32, !dbg !5870  ; 2 uses
  %.val22.i = load i32, ptr %i.gw, align 4, !dbg !5870, !range !813, !noundef !484 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gu, i64 -4, !dbg !5870
  %.val23.i = load i32, ptr %i.ha, align 4, !dbg !5870
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5479)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5479)
    #dbg_value(ptr poison, !820, !DIExpression(), !5479)
    #dbg_value(ptr poison, !825, !DIExpression(), !5481)
    #dbg_value(ptr poison, !827, !DIExpression(), !5481)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5483)
    #dbg_value(ptr poison, !836, !DIExpression(), !5485)
    #dbg_value(ptr poison, !840, !DIExpression(), !5485)
    #dbg_value(ptr poison, !842, !DIExpression(), !5487)
    #dbg_value(ptr poison, !846, !DIExpression(), !5487)
  %i.hb = icmp eq i32 %.val22.i, %i.gx, !dbg !5871
    #dbg_value(i8 poison, !833, !DIExpression(), !5488)
  %i.hc = icmp ugt i32 %.val23.i, %i.gz, !dbg !5872
  %i.hd = icmp samesign ugt i32 %.val22.i, %i.gx, !dbg !5872
  %i.he = select i1 %i.hb, i1 %i.hc, i1 %i.hd, !dbg !5871
  br i1 %i.he, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5870

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %i.gu, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
    #dbg_value(ptr %i.gw, !1174, !DIExpression(), !5476)
    #dbg_value(ptr %i.gw, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.gw, !1178, !DIExpression(), !5474)
    #dbg_value(ptr %i.gu, !1179, !DIExpression(), !5474)
  %i.hf = load i64, ptr %i.gw, align 4, !dbg !5873
  store i64 %i.hf, ptr %i.gu, align 4, !dbg !5873
  br i1 %.sroa.05.087, label %._crit_edge, label %.lr.ph107, !dbg !5874

.preheader:                                       ; preds = %.lr.ph107
    #dbg_value(ptr %.sroa.0.0.i79106, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
    #dbg_value(ptr %i.hi, !1174, !DIExpression(), !5476)
    #dbg_value(ptr %i.hi, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.hi, !1178, !DIExpression(), !5474)
    #dbg_value(ptr %.sroa.0.0.i79106, !1179, !DIExpression(), !5474)
  %i.hg = load i64, ptr %i.hi, align 4, !dbg !5873
  store i64 %i.hg, ptr %.sroa.0.0.i79106, align 4, !dbg !5873
    #dbg_value(ptr %i.hi, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5467)
  %i.hh = icmp eq ptr %i.hi, %2, !dbg !5874
  br i1 %i.hh, label %._crit_edge, label %.lr.ph107, !dbg !5874

.lr.ph107:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i79106 = phi ptr [ %i.hi, %.preheader ], [ %i.gw, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i79106, !1174, !DIExpression(), !5476)
  %i.hi = getelementptr inbounds i8, ptr %.sroa.0.0.i79106, i64 -8, !dbg !5875 ; 4 uses
    #dbg_value(ptr %i.hi, !1145, !DIExpression(), !5477)
    #dbg_value(ptr %i.hi, !1174, !DIExpression(), !5476)
  %.val18.i = load i32, ptr %i.hi, align 4, !dbg !5876, !range !813, !noundef !484 ; 2 uses
  %i.hj = getelementptr i8, ptr %.sroa.0.0.i79106, i64 -4, !dbg !5876
  %.val19.i = load i32, ptr %i.hj, align 4, !dbg !5876
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5490)
    #dbg_value(ptr poison, !814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5490)
    #dbg_value(ptr poison, !820, !DIExpression(), !5490)
    #dbg_value(ptr poison, !825, !DIExpression(), !5492)
    #dbg_value(ptr poison, !827, !DIExpression(), !5492)
    #dbg_declare(ptr poison, !832, !DIExpression(), !5494)
    #dbg_value(ptr poison, !836, !DIExpression(), !5496)
    #dbg_value(ptr poison, !840, !DIExpression(), !5496)
    #dbg_value(ptr poison, !842, !DIExpression(), !5498)
    #dbg_value(ptr poison, !846, !DIExpression(), !5498)
  %i.hk = icmp eq i32 %.val18.i, %i.gx, !dbg !5877
    #dbg_value(i8 poison, !833, !DIExpression(), !5499)
  %i.hl = icmp ugt i32 %.val19.i, %i.gz, !dbg !5878
  %i.hm = icmp samesign ugt i32 %.val18.i, %i.gx, !dbg !5878
  %i.hn = select i1 %i.hk, i1 %i.hl, i1 %i.hm, !dbg !5877
  br i1 %i.hn, label %.preheader, label %._crit_edge, !dbg !5876

._crit_edge:                                      ; preds = %.preheader, %.lr.ph107, %.preheader.preheader
  %.sroa.0.0.i79.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i79106, %.lr.ph107 ], !dbg !5879
    #dbg_value(ptr undef, !1164, !DIExpression(), !5462)
    #dbg_value(ptr undef, !1160, !DIExpression(), !5461)
    #dbg_value(ptr undef, !1170, !DIExpression(), !5469)
    #dbg_value(ptr %.sroa.0.0.i79.lcssa, !1171, !DIExpression(), !5469)
    #dbg_value(i64 1, !1172, !DIExpression(), !5469)
  store i64 %i.gv, ptr %.sroa.0.0.i79.lcssa, align 4, !dbg !5880, !noalias !5727
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, !dbg !5881

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ho = add nuw nsw i64 %.sroa.05.087.a, 1, !dbg !5882 ; 2 uses
    #dbg_value(i64 %i.ho, !5644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(ptr undef, !5656, !DIExpression(), !5662)
    #dbg_value(ptr undef, !5658, !DIExpression(), !5661)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5655)
    #dbg_value(ptr undef, !5649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5724)
  %exitcond.not = icmp eq i64 %i.ho, %i.d, !dbg !5863
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !5654
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5944 {
bb.a:
    #dbg_value(ptr poison, !6079, !DIExpression(), !5950)
    #dbg_value(ptr poison, !6084, !DIExpression(), !5951)
    #dbg_value(ptr poison, !6079, !DIExpression(), !5954)
    #dbg_value(ptr poison, !6084, !DIExpression(), !5955)
    #dbg_value(ptr poison, !6089, !DIExpression(), !5962)
    #dbg_value(ptr poison, !6094, !DIExpression(), !5963)
    #dbg_value(ptr poison, !6102, !DIExpression(), !5970)
    #dbg_value(i64 %4, !6060, !DIExpression(), !6116)
    #dbg_value(i64 %4, !6067, !DIExpression(), !6117)
    #dbg_value(i64 %4, !6071, !DIExpression(), !6118)
    #dbg_value(i64 %4, !6119, !DIExpression(), !6123)
    #dbg_value(i64 %4, !6124, !DIExpression(), !6128)
    #dbg_value(i64 %4, !6124, !DIExpression(), !6130)
    #dbg_value(ptr %0, !6058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6116)
    #dbg_value(i64 %1, !6058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6116)
    #dbg_value(ptr %2, !6059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6116)
    #dbg_value(i64 %3, !6059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6116)
    #dbg_value(ptr %5, !6061, !DIExpression(), !6116)
    #dbg_value(i64 %1, !6062, !DIExpression(), !6131)
    #dbg_value(i64 %1, !6124, !DIExpression(), !6133)
  %i.a = icmp eq i64 %4, 0, !dbg !6187
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !6187
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !6187

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !6188       ; 2 uses
    #dbg_value(i64 %i.c, !6068, !DIExpression(), !6134)
    #dbg_value(i64 %i.c, !6120, !DIExpression(), !6123)
    #dbg_value(ptr undef, !1279, !DIExpression(DW_OP_deref), !5974)
    #dbg_value(ptr undef, !1281, !DIExpression(DW_OP_deref), !5974)
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !6189 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i, !dbg !6190
  br i1 %i.d, label %bb.c, label %.critedge, !dbg !6190

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr %2, !6063, !DIExpression(), !6135)
    #dbg_value(ptr %2, !6136, !DIExpression(), !6141)
    #dbg_value(ptr %2, !6125, !DIExpression(), !6130)
    #dbg_value(ptr %0, !6064, !DIExpression(), !6142)
    #dbg_value(ptr %0, !6070, !DIExpression(), !6143)
    #dbg_value(ptr %0, !6125, !DIExpression(), !6128)
    #dbg_value(ptr %0, !6125, !DIExpression(), !6133)
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %4, !dbg !6191 ; 3 uses
    #dbg_value(ptr %i.e, !6065, !DIExpression(), !6144)
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !6192 ; 2 uses
    #dbg_value(ptr %i.f, !6066, !DIExpression(), !6145)
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !6193 ; 2 uses
    #dbg_value(i1 %.not, !6069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6146)
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !6194
    #dbg_value(i64 %..i, !6124, !DIExpression(), !6128)
    #dbg_value(i64 %..i, !6119, !DIExpression(), !6123)
    #dbg_value(i64 %..i, !6071, !DIExpression(), !6118)
    #dbg_value(i64 %..i, !6067, !DIExpression(), !6117)
    #dbg_value(i64 %..i, !6060, !DIExpression(), !6116)
    #dbg_value(ptr %spec.select, !6125, !DIExpression(), !6128)
    #dbg_value(ptr %spec.select, !6070, !DIExpression(), !6143)
    #dbg_value(ptr %spec.select, !6064, !DIExpression(), !6142)
    #dbg_value(ptr %spec.select, !6137, !DIExpression(), !6141)
    #dbg_value(i64 %..i, !6138, !DIExpression(), !6141)
  %i.g = mul nuw nsw i64 %..i, 48, !dbg !6195     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !6195
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !6196 ; 3 uses
    #dbg_value(ptr %2, !6072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6147)
    #dbg_value(ptr %i.h, !6072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6147)
    #dbg_value(ptr %spec.select, !6072, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6147)
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !6197

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ], !dbg !6198 ; 2 uses
  %i.j = phi ptr [ %i.v, %.preheader ], [ %i.e, %.critedge ], !dbg !6199 ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
    #dbg_value(ptr %.sroa.0.0.i, !6148, !DIExpression(), !5979)
    #dbg_value(ptr %.sroa.0.0.i, !6109, !DIExpression(), !5970)
    #dbg_value(ptr %i.j, !6148, !DIExpression(), !5980)
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -48, !dbg !6198 ; 3 uses
    #dbg_value(ptr %i.k, !6111, !DIExpression(), !5981)
    #dbg_value(ptr %i.k, !6151, !DIExpression(), !5984)
    #dbg_value(ptr %i.i, !6148, !DIExpression(), !5986)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -48, !dbg !6200 ; 3 uses
    #dbg_value(ptr %i.l, !6112, !DIExpression(), !5987)
    #dbg_value(ptr %i.l, !6151, !DIExpression(), !5989)
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48, !dbg !6201 ; 2 uses
    #dbg_value(ptr %i.m, !6109, !DIExpression(), !5970)
    #dbg_value(ptr %i.m, !6148, !DIExpression(), !5979)
  %.val.i = load i64, ptr %i.l, align 8, !dbg !6202, !noalias !6154, !noundef !484 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -24, !dbg !6202
  %.val27.i = load i64, ptr %i.n, align 8, !dbg !6202, !noalias !6154
  %.val28.i = load i64, ptr %i.k, align 8, !dbg !6202, !noalias !6154, !noundef !484 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -24, !dbg !6202
  %.val29.i = load i64, ptr %i.o, align 8, !dbg !6202, !noalias !6154
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5993)
    #dbg_value(ptr poison, !1036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5993)
    #dbg_value(ptr poison, !1042, !DIExpression(), !5993)
    #dbg_value(ptr poison, !1047, !DIExpression(), !5995)
    #dbg_value(ptr poison, !1049, !DIExpression(), !5995)
    #dbg_declare(ptr poison, !1054, !DIExpression(), !5997)
    #dbg_value(ptr poison, !1059, !DIExpression(), !5999)
    #dbg_value(ptr poison, !1065, !DIExpression(), !6001)
    #dbg_value(ptr poison, !1063, !DIExpression(), !5999)
    #dbg_value(ptr poison, !1069, !DIExpression(), !6001)
    #dbg_value(ptr poison, !1073, !DIExpression(), !6003)
    #dbg_value(ptr poison, !1082, !DIExpression(), !6004)
  %i.p = icmp eq i64 %.val.i, %.val28.i, !dbg !6203
    #dbg_value(i8 poison, !1055, !DIExpression(), !6005)
  %i.q = icmp ult i64 %.val27.i, %.val29.i, !dbg !6204
  %i.r = icmp ult i64 %.val.i, %.val28.i, !dbg !6204
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r, !dbg !6203 ; 3 uses
    #dbg_value(i1 %i.s, !6113, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6006)
  %..i30 = select i1 %i.s, ptr %i.k, ptr %i.l, !dbg !6205
    #dbg_value(ptr %..i30, !6114, !DIExpression(), !6007)
    #dbg_value(ptr %..i30, !6155, !DIExpression(), !6010)
    #dbg_value(ptr %i.m, !6156, !DIExpression(), !6010)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %..i30, i64 48, i1 false), !dbg !6206, !noalias !6154
  %i.t = xor i1 %i.s, true, !dbg !6207
  %i.u = zext i1 %i.t to i64, !dbg !6207
    #dbg_value(i64 %i.u, !6152, !DIExpression(), !5984)
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %i.u, !dbg !6208 ; 3 uses
  %i.w = zext i1 %i.s to i64, !dbg !6209
    #dbg_value(i64 %i.w, !6152, !DIExpression(), !5989)
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.w, !dbg !6210 ; 3 uses
  %i.y = icmp eq ptr %i.v, %0, !dbg !6211
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z, !dbg !6211
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit, label %.preheader, !dbg !6211

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %.critedge ], !dbg !6212 ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
    #dbg_value(ptr %.sroa.0.02.i, !6159, !DIExpression(), !6013)
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !dbg !6212, !noalias !6162, !noundef !484 ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 24, !dbg !6212
  %.sroa.0.0.val17.i = load i64, ptr %i.ac, align 8, !dbg !6212, !noalias !6162
  %.val.i32 = load i64, ptr %i.ab, align 8, !dbg !6212, !noalias !6162, !noundef !484 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 24, !dbg !6212
  %.val18.i = load i64, ptr %i.ad, align 8, !dbg !6212, !noalias !6162
end_hunk_3
