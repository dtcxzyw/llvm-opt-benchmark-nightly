Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex-9ce8876e423090b4.regex.6a0fe4e1bbca0ee6-cgu.0?download=true
inline.NumInlined: 417
inline.NumDeleted: 202
begin_hunk_0_@_RINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB6_7Builder10build_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex:bb.a
    #dbg_value(ptr %i.s, !2148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2931)
    #dbg_value(i64 %i.an, !2148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2931)
    #dbg_value(i64 %i.ao, !2148, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2931)
    #dbg_value(ptr %i.ap, !2148, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2931)
    #dbg_value(ptr %i.ar, !2148, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !2931)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.au = load i8, ptr %i.as, align 8, !range !2932
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 151
  %i.aw = load i8, ptr %i.av, align 1
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %.sroa.459.sroa.4.0..sroa.459.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %.sroa.459.sroa.5.0..sroa.459.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 39
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.f, !dbg !2933

bb.f:                                             ; preds = %bb.bm, %bb.e
  %.sroa.13.0 = phi ptr [ %i.ap, %bb.e ], [ %.sroa.13.1, %bb.bm ], !dbg !2934 ; 5 uses
  %.sroa.8173.0 = phi i64 [ %i.an, %bb.e ], [ %.sroa.8173.1, %bb.bm ], !dbg !2934 ; 4 uses
  %.sroa.0171.0 = phi ptr [ %2, %bb.e ], [ %.sroa.0171.1, %bb.bm ], !dbg !2934 ; 3 uses
    #dbg_value(ptr %.sroa.0171.0, !2148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2931)
    #dbg_value(i64 %.sroa.8173.0, !2148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2931)
    #dbg_value(ptr %.sroa.13.0, !2148, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2931)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6179), !dbg !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11181), !dbg !2935
    #dbg_value(ptr undef, !2571, !DIExpression(), !2576)
    #dbg_value(ptr undef, !2554, !DIExpression(), !2575)
    #dbg_value(ptr undef, !2509, !DIExpression(), !2574)
    #dbg_value(ptr undef, !2458, !DIExpression(), !2483)
    #dbg_value(i64 1, !2776, !DIExpression(), !2936)
    #dbg_value(ptr %.sroa.0171.0, !2477, !DIExpression(), !2938)
    #dbg_value(ptr %.sroa.0171.0, !2783, !DIExpression(), !2936)
    #dbg_value(ptr %i.s, !2479, !DIExpression(), !2939)
    #dbg_value(ptr poison, !2788, !DIExpression(), !2940)
    #dbg_value(ptr poison, !2795, !DIExpression(), !2942)
  %i.bb = icmp eq ptr %.sroa.0171.0, %i.s, !dbg !2943
  br i1 %i.bb, label %bb.j, label %bb.g, !dbg !2944

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0171.0, i64 24, !dbg !2945 ; 2 uses
    #dbg_value(ptr %i.bc, !2148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2931)
    #dbg_value(ptr %.sroa.0171.0, !2510, !DIExpression(), !2946)
    #dbg_value(ptr undef, !2803, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2947)
    #dbg_value(ptr undef, !2812, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2949)
  %.not14.i.i = icmp ult i64 %.sroa.8173.0, %i.ao, !dbg !2951
  br i1 %.not14.i.i, label %bb.h, label %.invoke, !dbg !2951, !prof !2952

.invoke:                                          ; preds = %bb.d, %bb.g
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.cont unwind label %bb.b, !dbg !2953

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = add nuw i64 %.sroa.8173.0, 1, !dbg !2954 ; 2 uses
    #dbg_value(i64 %i.bd, !2832, !DIExpression(), !2955)
    #dbg_value(i64 %.sroa.8173.0, !2834, !DIExpression(), !2956)
    #dbg_value(i64 %.sroa.8173.0, !2957, !DIExpression(), !2963)
    #dbg_value(i64 %i.bd, !2148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2931)
    #dbg_value(i64 %.sroa.8173.0, !2965, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !2974)
    #dbg_value(i32 1, !2965, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2974)
    #dbg_value(i64 %.sroa.8173.0, !2555, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !2976)
    #dbg_value(ptr %.sroa.0171.0, !2555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2976)
    #dbg_value(ptr undef, !2977, !DIExpression(), !3000)
    #dbg_value(i64 1, !3002, !DIExpression(), !3009)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0) ]
    #dbg_value(ptr %.sroa.13.0, !2994, !DIExpression(), !3011)
    #dbg_value(ptr %.sroa.13.0, !3008, !DIExpression(), !3009)
    #dbg_value(ptr %i.ar, !2996, !DIExpression(), !3012)
    #dbg_value(ptr poison, !3013, !DIExpression(), !3020)
    #dbg_value(ptr poison, !3019, !DIExpression(), !3022)
  %i.be = icmp eq ptr %.sroa.13.0, %i.ar, !dbg !3023
  br i1 %i.be, label %bb.j, label %bb.i, !dbg !3024

bb.i:                                             ; preds = %bb.h
  %i.bf = trunc i64 %.sroa.8173.0 to i32, !dbg !3025
    #dbg_value(i32 %i.bf, !2965, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2974)
    #dbg_value(i32 %i.bf, !2555, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2976)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 16, !dbg !3026
    #dbg_value(ptr %i.bg, !2148, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2931)
    #dbg_value(ptr %.sroa.13.0, !2561, !DIExpression(), !3027)
  %i.bh = ptrtoint ptr %.sroa.0171.0 to i64, !dbg !3028
  store i64 %i.bh, ptr %.sroa.6179, align 8, !dbg !3028, !alias.scope !3029, !noalias !3032
  br label %bb.j, !dbg !3034

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.sroa.0177.0 = phi i32 [ undef, %bb.f ], [ undef, %bb.h ], [ %i.bf, %bb.i ], !dbg !2935
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.f ], [ %i.ar, %bb.h ], [ %i.bg, %bb.i ], !dbg !2934
  %.sroa.8173.1 = phi i64 [ %.sroa.8173.0, %bb.f ], [ %i.bd, %bb.h ], [ %i.bd, %bb.i ], !dbg !2934
  %.sroa.0171.1 = phi ptr [ %i.s, %bb.f ], [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], !dbg !2934
  %.sink30.i.sroa.phi = phi ptr [ %.sroa.6179, %bb.f ], [ %.sroa.6179, %bb.h ], [ %.sroa.11181, %bb.i ]
  %.sink.i = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %.sroa.13.0, %bb.i ]
    #dbg_value(ptr %.sroa.0171.1, !2148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2931)
    #dbg_value(i64 %.sroa.8173.1, !2148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2931)
    #dbg_value(ptr %.sroa.13.1, !2148, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2931)
  store ptr %.sink.i, ptr %.sink30.i.sroa.phi, align 8, !dbg !2575, !alias.scope !3029, !noalias !3032
  %.sroa.6179.0..sroa.6179.0..sroa.6179.0..sroa.6179.8. = load i64, ptr %.sroa.6179, align 8, !dbg !2935, !noundef !46 ; 2 uses
  %.not111 = icmp eq i64 %.sroa.6179.0..sroa.6179.0..sroa.6179.0..sroa.6179.8., 0, !dbg !2935
  br i1 %.not111, label %bb.k, label %bb.bc, !dbg !2935

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6179), !dbg !3035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11181), !dbg !3035
    #dbg_value(ptr %i.q, !3036, !DIExpression(), !3042)
    #dbg_value(ptr %i.q, !3044, !DIExpression(), !3048)
    #dbg_value(ptr %i.q, !3051, !DIExpression(), !3058)
  %i.bi = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !3061, !nonnull !46, !noundef !46 ; 2 uses
  %i.bj = load i64, ptr %.sroa.33.0..sroa_idx, align 8, !dbg !3086, !noundef !46
  call void @llvm.experimental.noalias.scope.decl(metadata !3087), !dbg !3090
  call void @llvm.experimental.noalias.scope.decl(metadata !3091), !dbg !3090
    #dbg_value(ptr %1, !2238, !DIExpression(), !3093)
    #dbg_value(ptr %i.bi, !2239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3093)
    #dbg_value(ptr %i.bi, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3104)
    #dbg_value(ptr %i.bi, !3106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3116)
    #dbg_value(i64 %i.bj, !2239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3093)
    #dbg_value(i64 %i.bj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3104)
    #dbg_value(i64 %i.bj, !3106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3116)
    #dbg_declare(ptr %i.i, !2240, !DIExpression(), !3118)
    #dbg_declare(ptr %i.h, !2241, !DIExpression(), !3119)
    #dbg_declare(ptr %i.g, !2255, !DIExpression(), !3120)
    #dbg_declare(ptr %i.e, !2256, !DIExpression(), !3121)
    #dbg_declare(ptr %i.d, !3122, !DIExpression(), !3161)
    #dbg_value(i64 1, !3163, !DIExpression(), !3173)
    #dbg_value(i8 0, !3172, !DIExpression(), !3173)
    #dbg_value(i64 1, !3186, !DIExpression(), !3196)
    #dbg_value(i8 0, !3193, !DIExpression(), !3196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !3198, !noalias !3199
  call void @llvm.experimental.noalias.scope.decl(metadata !3201), !dbg !3204
  call void @llvm.experimental.noalias.scope.decl(metadata !3205), !dbg !3204
    #dbg_value(ptr %1, !3207, !DIExpression(), !3214)
    #dbg_value(ptr %1, !3216, !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value), !3226)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 130, !dbg !3228
  %i.bl = load i8, ptr %i.bk, align 2, !dbg !3228, !range !3229, !alias.scope !3230, !noalias !3231, !noundef !46
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 131, DW_OP_stack_value), !3253)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 131, !dbg !3255
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !3255, !range !3229, !alias.scope !3230, !noalias !3231, !noundef !46
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !3256)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 132, !dbg !3258
  %i.bp = load i8, ptr %i.bo, align 4, !dbg !3258, !range !3229, !alias.scope !3230, !noalias !3231, !noundef !46
    #dbg_value(ptr %1, !3259, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !3268)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !3270
  %i.br = load i8, ptr %i.bq, align 8, !dbg !3270, !range !3271, !alias.scope !3230, !noalias !3231, !noundef !46 ; 3 uses
  %.not31.i.i = icmp eq i8 %i.br, -1, !dbg !3270
  br i1 %.not31.i.i, label %_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.l, !dbg !3272

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !3265, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !3273)
  call void @llvm.experimental.noalias.scope.decl(metadata !3274), !dbg !3277
    #dbg_value(ptr %1, !3278, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !3286)
  %.not.i.i.i = icmp eq i8 %i.br, 2, !dbg !3288
  br i1 %.not.i.i.i, label %_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.m, !dbg !3289

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !3270
    #dbg_value(ptr %i.bs, !3265, !DIExpression(), !3273)
    #dbg_value(ptr %i.bs, !3278, !DIExpression(), !3286)
    #dbg_value(ptr %i.bs, !3283, !DIExpression(), !3290)
  call void @llvm.experimental.noalias.scope.decl(metadata !3291), !dbg !3294
    #dbg_value(ptr %i.bs, !3295, !DIExpression(), !3302)
    #dbg_value(i64 1, !3304, !DIExpression(), !3309)
    #dbg_value(i8 0, !3308, !DIExpression(), !3309)
    #dbg_value(i64 1, !3320, !DIExpression(), !3325)
    #dbg_value(i8 0, !3324, !DIExpression(), !3325)
    #dbg_value(ptr %i.bs, !3316, !DIExpression(), !3327)
    #dbg_value(ptr %i.bs, !3328, !DIExpression(), !3338)
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !3340, !alias.scope !3347, !noalias !3348, !nonnull !46, !noundef !46 ; 2 uses
    #dbg_value(ptr %i.bt, !3307, !DIExpression(), !3351)
    #dbg_value(ptr %i.bt, !3323, !DIExpression(), !3325)
  %i.bu = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8, !dbg !3352, !noalias !3353
    #dbg_value(i64 %i.bu, !3317, !DIExpression(), !3354)
  %i.bv = icmp slt i64 %i.bu, 0, !dbg !3355
  br i1 %i.bv, label %bb.n, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, !dbg !3355

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap(), !dbg !3356
  unreachable, !dbg !3356

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !3340
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !3357, !alias.scope !3347, !noalias !3348, !nonnull !46, !align !3358, !noundef !46
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !3359
  %i.bz = load i64, ptr %i.by, align 8, !dbg !3359, !alias.scope !3347, !noalias !3348, !noundef !46
  br label %_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !3360

_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.l, %bb.k
  %.sroa.5.060.i.i = phi i64 [ %i.bz, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.l ], [ undef, %bb.k ], !dbg !3361
  %.sroa.4.059.i.i = phi ptr [ %i.bx, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.l ], [ undef, %bb.k ], !dbg !3361
  %.sroa.0.058.i.i = phi ptr [ %i.bt, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.l ], [ undef, %bb.k ], !dbg !3361
    #dbg_value(ptr %1, !3362, !DIExpression(DW_OP_plus_uconst, 138, DW_OP_stack_value), !3371)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 138, !dbg !3373
  %i.cb = load i8, ptr %i.ca, align 2, !dbg !3373, !range !3271, !alias.scope !3230, !noalias !3231, !noundef !46
    #dbg_value(ptr %1, !3374, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !3389)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !3391
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !3391, !range !3392, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3393
  %.val50.i.i = load i64, ptr %i.ce, align 8, !dbg !3393, !alias.scope !3230, !noalias !3231
  %4 = trunc i64 %i.cd to i1, !dbg !3393
  %.sroa.5.0.i.i = select i1 %4, i64 %.val50.i.i, i64 undef, !dbg !3393
    #dbg_value(ptr %1, !3374, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !3394)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !3396
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !3396, !range !3392, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3397
  %.val48.i.i = load i64, ptr %i.ch, align 8, !dbg !3397, !alias.scope !3230, !noalias !3231
  %5 = trunc i64 %i.cg to i1, !dbg !3397
  %.sroa.56.0.i.i = select i1 %5, i64 %.val48.i.i, i64 undef, !dbg !3397
    #dbg_value(ptr %1, !3398, !DIExpression(), !3408)
  %i.ci = load i64, ptr %1, align 8, !dbg !3410, !range !3411, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3412
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !3412, !alias.scope !3230, !noalias !3231
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 133, DW_OP_stack_value), !3413)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 133, !dbg !3415
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 134, DW_OP_stack_value), !3416)
    #dbg_value(ptr %1, !3374, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !3418)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !3420
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !3420, !range !3392, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !3421
  %.val46.i.i = load i64, ptr %i.co, align 8, !dbg !3421, !alias.scope !3230, !noalias !3231
  %6 = trunc i64 %i.cn to i1, !dbg !3421
  %.sroa.512.0.i.i = select i1 %6, i64 %.val46.i.i, i64 undef, !dbg !3421
    #dbg_value(ptr %1, !3374, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !3422)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !3424
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !3424, !range !3392, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !3425
  %.val44.i.i = load i64, ptr %i.cr, align 8, !dbg !3425, !alias.scope !3230, !noalias !3231
  %7 = trunc i64 %i.cq to i1, !dbg !3425
  %.sroa.514.0.i.i = select i1 %7, i64 %.val44.i.i, i64 undef, !dbg !3425
  %i.cs = trunc nuw i64 %i.ci to i1, !dbg !3412
  %.sroa.58.0.i.i = select i1 %i.cs, i64 %i.ck, i64 undef, !dbg !3412
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 135, DW_OP_stack_value), !3426)
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !3428)
    #dbg_value(ptr %1, !3232, !DIExpression(DW_OP_plus_uconst, 137, DW_OP_stack_value), !3430)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 137, !dbg !3432
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !3432, !range !3229, !alias.scope !3230, !noalias !3231, !noundef !46
    #dbg_value(ptr %1, !3433, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !3442)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !3444
  %i.cw = load i8, ptr %i.cv, align 8, !dbg !3444, !range !2932, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.cx = trunc nuw i8 %i.cw to i1, !dbg !3444
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 129, !dbg !3445
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !3445, !alias.scope !3230, !noalias !3231
  %.sroa.519.0.i.i = select i1 %i.cx, i8 %i.cz, i8 undef, !dbg !3445
    #dbg_value(ptr %1, !3398, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3446)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3448
  %i.db = load i64, ptr %i.da, align 8, !dbg !3448, !range !3411, !alias.scope !3230, !noalias !3231, !noundef !46 ; 2 uses
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !3449
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3449
  %i.de = load i64, ptr %i.dd, align 8, !dbg !3449, !alias.scope !3230, !noalias !3231
  %.sroa.521.0.i.i = select i1 %i.dc, i64 %i.de, i64 undef, !dbg !3449
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 130, !dbg !3450
  store i8 %i.bl, ptr %i.df, align 2, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 131, !dbg !3450
  store i8 %i.bn, ptr %i.dg, align 1, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 132, !dbg !3450
  store i8 %i.bp, ptr %i.dh, align 4, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 96, !dbg !3450
  store ptr %.sroa.0.058.i.i, ptr %i.di, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %.sroa.4.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104, !dbg !3450
  store ptr %.sroa.4.059.i.i, ptr %.sroa.4.0..sroa_idx55.i.i, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %.sroa.5.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112, !dbg !3450
  store i64 %.sroa.5.060.i.i, ptr %.sroa.5.0..sroa_idx56.i.i, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %.sroa.6.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 120, !dbg !3450
  store i8 %i.br, ptr %.sroa.6.0..sroa_idx57.i.i, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 138, !dbg !3450
  store i8 %i.cb, ptr %i.dj, align 2, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !3450
  store i64 %i.cd, ptr %i.dk, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !3450
  store i64 %.sroa.5.0.i.i, ptr %i.dl, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !3450
  store i64 %i.cg, ptr %i.dm, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 56, !dbg !3450
  store i64 %.sroa.56.0.i.i, ptr %i.dn, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  store i64 %i.ci, ptr %i.i, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !3450
  store i64 %.sroa.58.0.i.i, ptr %i.do, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 133, !dbg !3450
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 64, !dbg !3450
  store i64 %i.cn, ptr %i.dq, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 72, !dbg !3450
  store i64 %.sroa.512.0.i.i, ptr %i.dr, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 80, !dbg !3450
  store i64 %i.cq, ptr %i.ds, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 88, !dbg !3450
  store i64 %.sroa.514.0.i.i, ptr %i.dt, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.du = load <4 x i8>, ptr %i.cl, align 1, !dbg !3415, !alias.scope !3230, !noalias !3231
  store <4 x i8> %i.du, ptr %i.dp, align 1, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 137, !dbg !3450
  store i8 %i.cu, ptr %i.dv, align 1, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 128, !dbg !3450
  store i8 %i.cw, ptr %i.dw, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 129, !dbg !3450
  store i8 %.sroa.519.0.i.i, ptr %i.dx, align 1, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !3450
  store i64 %i.db, ptr %i.dy, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !3450
  store i64 %.sroa.521.0.i.i, ptr %i.dz, align 8, !dbg !3450, !alias.scope !3201, !noalias !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3452, !noalias !3199
    #dbg_value(i64 %i.bj, !3110, !DIExpression(), !3453)
    #dbg_value(i64 %i.bj, !3454, !DIExpression(), !3460)
    #dbg_value(ptr %i.bi, !3112, !DIExpression(), !3462)
    #dbg_value(ptr %i.bi, !3459, !DIExpression(), !3460)
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %i.bj, !dbg !3463
    #dbg_value(ptr %i.bi, !3464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3570)
    #dbg_value(ptr %i.bi, !3572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3578)
    #dbg_value(ptr %i.ea, !3464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3570)
    #dbg_value(ptr %i.ea, !3572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3578)
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterBV_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3p_7Builder19build_many_from_hirBV_E0EE9from_iterCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 %i.bi, ptr noundef nonnull readonly %i.ea)
          to label %bb.o unwind label %bb.au, !dbg !3580, !noalias !3581

bb.o:                                             ; preds = %_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3582, !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3583, !noalias !3199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false), !dbg !3583, !noalias !3199
    #dbg_value(ptr %i.h, !3584, !DIExpression(), !3595)
    #dbg_value(ptr %i.h, !3597, !DIExpression(), !3601)
    #dbg_value(ptr %i.h, !3603, !DIExpression(), !3610)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !3612 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !3612, !noalias !3199, !nonnull !46, !noundef !46
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !3634 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !3634, !noalias !3199, !noundef !46
  %i.ef = invoke noundef nonnull ptr @_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfo3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee)
          to label %bb.q unwind label %bb.p, !dbg !3635, !noalias !3581

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex9RegexInfoECs96z5GJ9HwjO_5regex.exit90.i: ; preds = %bb.at, %bb.as, %.body.i, %bb.p
  %.pn65.i = phi { ptr, i32 } [ %i.eg, %bb.p ], [ %i.fl, %.body.i ], [ %.pn.pn.ph.i, %bb.at ], [ %.pn.pn.ph.i, %bb.as ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #20
          to label %.body unwind label %bb.am, !dbg !3636, !noalias !3087

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex9RegexInfoECs96z5GJ9HwjO_5regex.exit90.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.ef, ptr %i.g, align 8, !dbg !3635, !noalias !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3637, !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3638, !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3639, !noalias !3199
    #dbg_value(ptr %i.h, !3584, !DIExpression(), !3640)
    #dbg_value(ptr %i.h, !3597, !DIExpression(), !3642)
    #dbg_value(ptr %i.h, !3603, !DIExpression(), !3645)
  %i.eh = load ptr, ptr %i.eb, align 8, !dbg !3648, !noalias !3199, !nonnull !46, !noundef !46
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !3655, !noalias !3199, !noundef !46
  invoke void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
          to label %bb.s unwind label %bb.r, !dbg !3639, !noalias !3581

bb.r:                                             ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.s:                                             ; preds = %bb.q
  %i.ek = load i64, ptr %i.d, align 8, !dbg !3656, !range !3657, !noalias !3199, !noundef !46 ; 2 uses
  %.not.i = icmp eq i64 %i.ek, -3, !dbg !3656
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3658
  %i.em = load ptr, ptr %i.el, align 8, !dbg !3658, !noalias !3199 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !3658
  %i.eo = load ptr, ptr %i.en, align 8, !dbg !3658, !noalias !3199 ; 5 uses
  br i1 %.not.i, label %bb.v, label %bb.t, !dbg !3659

bb.t:                                             ; preds = %bb.s
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !3660
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.628.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.624.0..sroa_idx.i, i64 112, i1 false), !dbg !3660, !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3663, !noalias !3199
    #dbg_value(i64 %i.ek, !2258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3664)
    #dbg_value(i64 %i.ek, !2216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3665)
    #dbg_value(ptr %i.em, !2258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3664)
    #dbg_value(ptr %i.em, !2216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3665)
    #dbg_value(ptr %i.eo, !2258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3664)
    #dbg_value(ptr %i.eo, !2216, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3665)
    #dbg_value(i64 %i.ek, !2185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3666)
    #dbg_value(ptr %i.em, !2185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3666)
    #dbg_value(ptr %i.eo, !2185, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3666)
  store i64 %i.ek, ptr %0, align 8, !dbg !3661, !alias.scope !3087, !noalias !3662
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3661
  store ptr %i.em, ptr %.sroa.426.0..sroa_idx.i, align 8, !dbg !3661, !alias.scope !3087, !noalias !3662
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3661
  store ptr %i.eo, ptr %.sroa.527.0..sroa_idx.i, align 8, !dbg !3661, !alias.scope !3087, !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3667, !noalias !3199
  call void @llvm.experimental.noalias.scope.decl(metadata !3668), !dbg !3671
    #dbg_value(ptr %i.g, !3672, !DIExpression(), !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3683), !dbg !3686
    #dbg_value(ptr %i.g, !3687, !DIExpression(), !3695)
  call void @llvm.experimental.noalias.scope.decl(metadata !3697), !dbg !3700
    #dbg_value(ptr %i.g, !3701, !DIExpression(), !3705)
    #dbg_value(ptr %i.g, !3707, !DIExpression(), !3715)
    #dbg_value(i64 1, !3717, !DIExpression(), !3723)
    #dbg_value(i8 1, !3722, !DIExpression(), !3723)
    #dbg_value(i64 1, !3725, !DIExpression(), !3730)
    #dbg_value(i8 1, !3729, !DIExpression(), !3730)
  %i.ep = load ptr, ptr %i.g, align 8, !dbg !3732, !alias.scope !3739, !noalias !3199, !nonnull !46, !noundef !46
    #dbg_value(ptr %i.ep, !3721, !DIExpression(), !3740)
    #dbg_value(ptr %i.ep, !3728, !DIExpression(), !3730)
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !dbg !3741, !noalias !3742
  %i.er = icmp eq i64 %i.eq, 1, !dbg !3743
  br i1 %i.er, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex9RegexInfoECs96z5GJ9HwjO_5regex.exit.i, !dbg !3743

bb.u:                                             ; preds = %bb.t
    #dbg_value(i8 2, !3744, !DIExpression(), !3749)
  fence acquire, !dbg !3751
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex9RegexInfoECs96z5GJ9HwjO_5regex.exit.i unwind label %bb.p, !dbg !3752, !noalias !3581

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3663, !noalias !3199
    #dbg_value(ptr %i.em, !2259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3753)
    #dbg_value(ptr %i.eo, !2259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3753)
  store ptr %i.em, ptr %i.e, align 8, !dbg !3754, !noalias !3199
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3754
  store ptr %i.eo, ptr %i.es, align 8, !dbg !3754, !noalias !3199
    #dbg_value(ptr %i.e, !3182, !DIExpression(), !3755)
    #dbg_value(ptr %i.em, !3171, !DIExpression(), !3756)
    #dbg_value(ptr %i.em, !3192, !DIExpression(), !3196)
  %i.et = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !dbg !3757, !noalias !3581
    #dbg_value(i64 %i.et, !3183, !DIExpression(), !3758)
  %i.eu = icmp slt i64 %i.et, 0, !dbg !3759
  br i1 %i.eu, label %bb.ab, label %bb.w, !dbg !3759

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %i.em, !2263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3760)
    #dbg_value(ptr %i.eo, !2263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3199
  store ptr %i.em, ptr %i.b, align 8, !noalias !3761
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.eo, ptr %i.ev, align 8, !noalias !3761
    #dbg_declare(ptr %i.b, !3764, !DIExpression(), !3778)
end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs96z5GJ9HwjO_5regex:bb.a
    #dbg_value(ptr poison, !4143, !DIExpression(), !9220)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9222)
    #dbg_value(ptr %.val, !4144, !DIExpression(), !9220)
    #dbg_value(ptr %.val, !4137, !DIExpression(), !9222)
    #dbg_value(ptr %.val, !4128, !DIExpression(), !9224)
    #dbg_value(ptr %.val, !4122, !DIExpression(), !9226)
    #dbg_value(i64 8, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9220)
    #dbg_value(i64 8, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9222)
    #dbg_value(i64 8, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9224)
    #dbg_value(i64 8, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9226)
    #dbg_value(i64 80, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9220)
    #dbg_value(i64 80, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9222)
    #dbg_value(i64 80, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9224)
    #dbg_value(i64 80, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9226)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #23, !dbg !9228
  ret void, !dbg !9211

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !9211
  unreachable, !dbg !9211

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9211
  %.val3 = load ptr, ptr %i.e, align 8, !dbg !9211, !nonnull !46, !noundef !46
    #dbg_value(ptr poison, !7414, !DIExpression(), !9229)
    #dbg_value(ptr poison, !7422, !DIExpression(), !9231)
    #dbg_value(ptr poison, !7432, !DIExpression(), !9233)
    #dbg_value(ptr %.val3, !7435, !DIExpression(), !9235)
    #dbg_value(i64 8, !7448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9236)
    #dbg_value(i64 80, !7448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9236)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9237)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9239)
    #dbg_value(ptr %.val3, !4144, !DIExpression(), !9237)
    #dbg_value(ptr %.val3, !4137, !DIExpression(), !9239)
    #dbg_value(ptr %.val3, !4128, !DIExpression(), !9241)
    #dbg_value(ptr %.val3, !4122, !DIExpression(), !9243)
    #dbg_value(i64 8, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9237)
    #dbg_value(i64 8, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9239)
    #dbg_value(i64 8, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9241)
    #dbg_value(i64 8, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9243)
    #dbg_value(i64 80, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9237)
    #dbg_value(i64 80, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9239)
    #dbg_value(i64 80, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9241)
    #dbg_value(i64 80, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9243)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 80, i64 noundef 8) #23, !dbg !9245
  resume { ptr, i32 } %.pn, !dbg !9211
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9246 {
bb.a:
    #dbg_value(ptr %0, !9251, !DIExpression(), !9254)
  %i.a = load i64, ptr %0, align 8, !dbg !9255, !range !9256, !noundef !46 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !9255
  tail call void @llvm.assume(i1 %i.b), !dbg !9255
  %i.c = add nsw i64 %i.a, -2, !dbg !9255
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !9255
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !9255
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit
    i64 4, label %bb.s
    i64 5, label %bb.t
    i64 6, label %bb.u
  ], !dbg !9255

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9255 ; 3 uses
    #dbg_value(ptr %i.e, !4246, !DIExpression(), !9257)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.c, !dbg !9259

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i = load i64, ptr %i.e, align 8, !dbg !9259, !range !4019, !alias.scope !9260, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !4261, !DIExpression(), !9265)
    #dbg_value(ptr poison, !4271, !DIExpression(), !9267)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9269)
    #dbg_value(i64 8, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9269)
    #dbg_value(i64 48, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9269)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9271)
    #dbg_value(i64 8, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9271)
    #dbg_value(i64 48, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9271)
    #dbg_value(i64 48, !4087, !DIExpression(), !9273)
  %i.g = icmp eq i64 %.val3.i, 0, !dbg !9275
  br i1 %i.g, label %common.resume, label %bb.d, !dbg !9275

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9259
  %.val4.i = load ptr, ptr %i.h, align 8, !dbg !9259, !alias.scope !9276, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val3.i, !4094, !DIExpression(), !9273)
  %i.i = mul nuw i64 %.val3.i, 48, !dbg !9277
    #dbg_value(ptr %.val4.i, !4051, !DIExpression(), !9278)
    #dbg_value(i64 8, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(i64 %i.i, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9278)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9279)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9281)
    #dbg_value(ptr %.val4.i, !4144, !DIExpression(), !9279)
    #dbg_value(ptr %.val4.i, !4137, !DIExpression(), !9281)
    #dbg_value(ptr %.val4.i, !4128, !DIExpression(), !9283)
    #dbg_value(ptr %.val4.i, !4122, !DIExpression(), !9285)
    #dbg_value(i64 8, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9279)
    #dbg_value(i64 8, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9281)
    #dbg_value(i64 8, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9283)
    #dbg_value(i64 8, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9285)
    #dbg_value(i64 %i.i, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9279)
    #dbg_value(i64 %i.i, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9281)
    #dbg_value(i64 %i.i, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9283)
    #dbg_value(i64 %i.i, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9285)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !9287, !noalias !9288
  br label %common.resume, !dbg !9291

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.e, align 8, !dbg !9259, !range !4019, !alias.scope !9260, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !4261, !DIExpression(), !9292)
    #dbg_value(ptr poison, !4271, !DIExpression(), !9294)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9296)
    #dbg_value(i64 8, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9296)
    #dbg_value(i64 48, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9296)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9298)
    #dbg_value(i64 8, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9298)
    #dbg_value(i64 48, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9298)
    #dbg_value(i64 48, !4087, !DIExpression(), !9300)
  %i.j = icmp eq i64 %.val.i, 0, !dbg !9302
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, label %bb.f, !dbg !9302

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9259
  %.val2.i = load ptr, ptr %i.k, align 8, !dbg !9259, !alias.scope !9276, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val.i, !4094, !DIExpression(), !9300)
  %i.l = mul nuw i64 %.val.i, 48, !dbg !9303
    #dbg_value(ptr %.val2.i, !4051, !DIExpression(), !9304)
    #dbg_value(i64 8, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9304)
    #dbg_value(i64 %i.l, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9304)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9305)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9307)
    #dbg_value(ptr %.val2.i, !4144, !DIExpression(), !9305)
    #dbg_value(ptr %.val2.i, !4137, !DIExpression(), !9307)
    #dbg_value(ptr %.val2.i, !4128, !DIExpression(), !9309)
    #dbg_value(ptr %.val2.i, !4122, !DIExpression(), !9311)
    #dbg_value(i64 8, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9305)
    #dbg_value(i64 8, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9307)
    #dbg_value(i64 8, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9309)
    #dbg_value(i64 8, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9311)
    #dbg_value(i64 %i.l, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9305)
    #dbg_value(i64 %i.l, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9307)
    #dbg_value(i64 %i.l, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9309)
    #dbg_value(i64 %i.l, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9311)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !9313, !noalias !9314
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, !dbg !9317

common.resume:                                    ; preds = %bb.v, %bb.w, %bb.j, %bb.k, %bb.o, %bb.p, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.q, %bb.j ], [ %i.q, %bb.k ], [ %i.x, %bb.p ], [ %i.al, %bb.w ], [ %i.al, %bb.v ]
  resume { ptr, i32 } %common.resume.op, !dbg !9255

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit: ; preds = %bb.y, %bb.x, %bb.r, %bb.q, %bb.m, %bb.l, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.g, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs96z5GJ9HwjO_5regex.exit, %bb.s, %bb.a, %bb.a
  ret void, !dbg !9255

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9255
  %.val1 = load i64, ptr %i.m, align 8, !dbg !9255, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !9318, !DIExpression(), !9326)
    #dbg_value(ptr poison, !9328, !DIExpression(), !9336)
    #dbg_value(ptr poison, !9338, !DIExpression(), !9350)
    #dbg_value(ptr poison, !9341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9352)
    #dbg_value(i64 %.val1, !9341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9352)
    #dbg_value(i64 1, !9348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9353)
    #dbg_value(i64 %.val1, !9348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9353)
  %i.n = icmp eq i64 %.val1, 0, !dbg !9354
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !9354

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9255
  %.val = load ptr, ptr %i.o, align 8, !dbg !9255, !nonnull !46, !noundef !46
    #dbg_value(ptr %.val, !9341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9352)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9355)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9357)
    #dbg_value(ptr %.val, !4144, !DIExpression(), !9355)
    #dbg_value(ptr %.val, !4137, !DIExpression(), !9357)
    #dbg_value(ptr %.val, !4128, !DIExpression(), !9359)
    #dbg_value(ptr %.val, !4122, !DIExpression(), !9361)
    #dbg_value(i64 1, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9355)
    #dbg_value(i64 1, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9357)
    #dbg_value(i64 1, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9359)
    #dbg_value(i64 1, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9361)
    #dbg_value(i64 %.val1, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9355)
    #dbg_value(i64 %.val1, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9357)
    #dbg_value(i64 %.val1, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9359)
    #dbg_value(i64 %.val1, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9361)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #23, !dbg !9363
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, !dbg !9364

bb.h:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9365, !DIExpression(), !9373)
  %1 = trunc nuw i64 %i.a to i1, !dbg !9375
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9375 ; 6 uses
  br i1 %1, label %bb.n, label %bb.i, !dbg !9375

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !9376, !DIExpression(), !9384)
    #dbg_value(ptr %i.p, !9386, !DIExpression(), !9394)
    #dbg_value(ptr %i.p, !9396, !DIExpression(), !9404)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.l unwind label %bb.j, !dbg !9406

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.p, align 8, !dbg !9406, !range !4019, !alias.scope !9407, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !9418, !DIExpression(), !9426)
    #dbg_value(ptr poison, !9428, !DIExpression(), !9432)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9434)
    #dbg_value(i64 4, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9434)
    #dbg_value(i64 8, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9434)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9436)
    #dbg_value(i64 4, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9436)
    #dbg_value(i64 8, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9436)
    #dbg_value(i64 8, !4087, !DIExpression(), !9438)
  %i.r = icmp eq i64 %.val3.i.i.i.i, 0, !dbg !9440
  br i1 %i.r, label %common.resume, label %bb.k, !dbg !9440

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9406
  %.val4.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !9406, !alias.scope !9441, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val3.i.i.i.i, !4094, !DIExpression(), !9438)
  %i.t = shl nuw i64 %.val3.i.i.i.i, 3, !dbg !9442
    #dbg_value(ptr %.val4.i.i.i.i, !4051, !DIExpression(), !9443)
    #dbg_value(i64 4, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9443)
    #dbg_value(i64 %i.t, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9443)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9444)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9446)
    #dbg_value(ptr %.val4.i.i.i.i, !4144, !DIExpression(), !9444)
    #dbg_value(ptr %.val4.i.i.i.i, !4137, !DIExpression(), !9446)
    #dbg_value(ptr %.val4.i.i.i.i, !4128, !DIExpression(), !9448)
    #dbg_value(ptr %.val4.i.i.i.i, !4122, !DIExpression(), !9450)
    #dbg_value(i64 4, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9444)
    #dbg_value(i64 4, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9446)
    #dbg_value(i64 4, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9448)
    #dbg_value(i64 4, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(i64 %i.t, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9444)
    #dbg_value(i64 %i.t, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9446)
    #dbg_value(i64 %i.t, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9448)
    #dbg_value(i64 %i.t, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !dbg !9452, !noalias !9453
  br label %common.resume, !dbg !9456

bb.l:                                             ; preds = %bb.i
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !dbg !9406, !range !4019, !alias.scope !9407, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !9418, !DIExpression(), !9457)
    #dbg_value(ptr poison, !9428, !DIExpression(), !9459)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9461)
    #dbg_value(i64 4, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9461)
    #dbg_value(i64 8, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9461)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9463)
    #dbg_value(i64 4, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9463)
    #dbg_value(i64 8, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9463)
    #dbg_value(i64 8, !4087, !DIExpression(), !9465)
  %i.u = icmp eq i64 %.val.i.i.i.i, 0, !dbg !9467
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, label %bb.m, !dbg !9467

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9406
  %.val2.i.i.i.i = load ptr, ptr %i.v, align 8, !dbg !9406, !alias.scope !9441, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val.i.i.i.i, !4094, !DIExpression(), !9465)
  %i.w = shl nuw i64 %.val.i.i.i.i, 3, !dbg !9468
    #dbg_value(ptr %.val2.i.i.i.i, !4051, !DIExpression(), !9469)
    #dbg_value(i64 4, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9469)
    #dbg_value(i64 %i.w, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9469)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9470)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9472)
    #dbg_value(ptr %.val2.i.i.i.i, !4144, !DIExpression(), !9470)
    #dbg_value(ptr %.val2.i.i.i.i, !4137, !DIExpression(), !9472)
    #dbg_value(ptr %.val2.i.i.i.i, !4128, !DIExpression(), !9474)
    #dbg_value(ptr %.val2.i.i.i.i, !4122, !DIExpression(), !9476)
    #dbg_value(i64 4, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9470)
    #dbg_value(i64 4, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9472)
    #dbg_value(i64 4, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9474)
    #dbg_value(i64 4, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9476)
    #dbg_value(i64 %i.w, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9470)
    #dbg_value(i64 %i.w, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9472)
    #dbg_value(i64 %i.w, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9474)
    #dbg_value(i64 %i.w, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9476)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !dbg !9478, !noalias !9479
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, !dbg !9482

bb.n:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !9483, !DIExpression(), !9491)
    #dbg_value(ptr %i.p, !9493, !DIExpression(), !9501)
    #dbg_value(ptr %i.p, !9503, !DIExpression(), !9511)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.q unwind label %bb.o, !dbg !9513

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i1.i = load i64, ptr %i.p, align 8, !dbg !9513, !range !4019, !alias.scope !9514, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !9523, !DIExpression(), !9531)
    #dbg_value(ptr poison, !9533, !DIExpression(), !9537)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9539)
    #dbg_value(i64 1, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9539)
    #dbg_value(i64 2, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9539)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9541)
    #dbg_value(i64 1, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9541)
    #dbg_value(i64 2, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9541)
    #dbg_value(i64 2, !4087, !DIExpression(), !9543)
  %i.y = icmp eq i64 %.val3.i.i.i1.i, 0, !dbg !9545
  br i1 %i.y, label %common.resume, label %bb.p, !dbg !9545

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9513
  %.val4.i.i.i2.i = load ptr, ptr %i.z, align 8, !dbg !9513, !alias.scope !9546, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val3.i.i.i1.i, !4094, !DIExpression(), !9543)
  %i.aa = shl nuw i64 %.val3.i.i.i1.i, 1, !dbg !9547
    #dbg_value(ptr %.val4.i.i.i2.i, !4051, !DIExpression(), !9548)
    #dbg_value(i64 1, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9548)
    #dbg_value(i64 %i.aa, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9548)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9549)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9551)
    #dbg_value(ptr %.val4.i.i.i2.i, !4144, !DIExpression(), !9549)
    #dbg_value(ptr %.val4.i.i.i2.i, !4137, !DIExpression(), !9551)
    #dbg_value(ptr %.val4.i.i.i2.i, !4128, !DIExpression(), !9553)
    #dbg_value(ptr %.val4.i.i.i2.i, !4122, !DIExpression(), !9555)
    #dbg_value(i64 1, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9549)
    #dbg_value(i64 1, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9551)
    #dbg_value(i64 1, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9553)
    #dbg_value(i64 1, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9555)
    #dbg_value(i64 %i.aa, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9549)
    #dbg_value(i64 %i.aa, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9551)
    #dbg_value(i64 %i.aa, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9553)
    #dbg_value(i64 %i.aa, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9555)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i2.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !9557, !noalias !9558
  br label %common.resume, !dbg !9561

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i3.i = load i64, ptr %i.p, align 8, !dbg !9513, !range !4019, !alias.scope !9514, !noundef !46 ; 2 uses
    #dbg_value(ptr poison, !9523, !DIExpression(), !9562)
    #dbg_value(ptr poison, !9533, !DIExpression(), !9564)
    #dbg_value(ptr poison, !4042, !DIExpression(), !9566)
    #dbg_value(i64 1, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9566)
    #dbg_value(i64 2, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9566)
    #dbg_value(ptr poison, !4056, !DIExpression(), !9568)
    #dbg_value(i64 1, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9568)
    #dbg_value(i64 2, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9568)
    #dbg_value(i64 2, !4087, !DIExpression(), !9570)
  %i.ab = icmp eq i64 %.val.i.i.i3.i, 0, !dbg !9572
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, label %bb.r, !dbg !9572

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9513
  %.val2.i.i.i4.i = load ptr, ptr %i.ac, align 8, !dbg !9513, !alias.scope !9546, !nonnull !46, !noundef !46
    #dbg_value(i64 %.val.i.i.i3.i, !4094, !DIExpression(), !9570)
  %i.ad = shl nuw i64 %.val.i.i.i3.i, 1, !dbg !9573
    #dbg_value(ptr %.val2.i.i.i4.i, !4051, !DIExpression(), !9574)
    #dbg_value(i64 1, !4053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9574)
    #dbg_value(i64 %i.ad, !4053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9574)
    #dbg_value(ptr poison, !4143, !DIExpression(), !9575)
    #dbg_value(ptr poison, !4136, !DIExpression(), !9577)
    #dbg_value(ptr %.val2.i.i.i4.i, !4144, !DIExpression(), !9575)
    #dbg_value(ptr %.val2.i.i.i4.i, !4137, !DIExpression(), !9577)
    #dbg_value(ptr %.val2.i.i.i4.i, !4128, !DIExpression(), !9579)
    #dbg_value(ptr %.val2.i.i.i4.i, !4122, !DIExpression(), !9581)
    #dbg_value(i64 1, !4145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9575)
    #dbg_value(i64 1, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9577)
    #dbg_value(i64 1, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9579)
    #dbg_value(i64 1, !4123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9581)
    #dbg_value(i64 %i.ad, !4145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9575)
    #dbg_value(i64 %i.ad, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9577)
    #dbg_value(i64 %i.ad, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9579)
    #dbg_value(i64 %i.ad, !4123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9581)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i4.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !9583, !noalias !9584
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, !dbg !9587

bb.s:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9588, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9596)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9598
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ae), !dbg !9598, !inline_history !9599
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs96z5GJ9HwjO_5regex.exit, !dbg !9255

bb.t:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9600), !dbg !9255
    #dbg_value(ptr %i.af, !9603, !DIExpression(), !9611)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9613
  %.val.i2 = load ptr, ptr %i.ag, align 8, !dbg !9613, !alias.scope !9600, !noundef !46 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9613
  %.val2.i3 = load i64, ptr %i.ah, align 8, !dbg !9613, !alias.scope !9600 ; 2 uses
    #dbg_value(ptr poison, !9614, !DIExpression(), !9622)
  %i.ai = icmp eq ptr %.val.i2, null, !dbg !9624
    #dbg_value(ptr poison, !9625, !DIExpression(), !9631)
    #dbg_value(ptr poison, !9633, !DIExpression(), !9645)
    #dbg_value(ptr poison, !9636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9647)
    #dbg_value(i64 %.val2.i3, !9636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9647)
    #dbg_value(i64 1, !9643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9648)
    #dbg_value(i64 %.val2.i3, !9643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9648)
  %i.aj = icmp eq i64 %.val2.i3, 0
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj, !dbg !9624
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs96z5GJ9HwjO_5regex.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i10, !dbg !9624
end_hunk_1
