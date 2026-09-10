Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.15?download=true
inline.NumInlined: 312
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjfnSKV9Rz3v_3h3i:bb.a
  br label %bb.g, !dbg !9027

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !8892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8989)
    #dbg_value(i64 %i.b, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8990)
    #dbg_value(ptr %.pn810, !8933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9010)
    #dbg_value(i64 %i.b, !8933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9010)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9028
  store ptr %.pn810, ptr %i.n, align 8, !dbg !9028
  br label %bb.g, !dbg !9029

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !8896
  store i64 %.sink11, ptr %i.o, align 8, !dbg !8896
  store i64 %.sink, ptr %0, align 8, !dbg !8896
  ret void, !dbg !9030
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !615 {
bb.a:
    #dbg_value(i64 %1, !3467, !DIExpression(), !9053)
    #dbg_value(i64 %1, !3477, !DIExpression(), !9055)
    #dbg_value(i64 %1, !3480, !DIExpression(), !9057)
    #dbg_value(i64 %1, !3484, !DIExpression(), !9059)
    #dbg_value(i64 %1, !9060, !DIExpression(), !9064)
    #dbg_value(i64 %1, !9065, !DIExpression(), !9068)
    #dbg_value(i1 %2, !3468, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9053)
    #dbg_declare(ptr poison, !3469, !DIExpression(), !9069)
    #dbg_value(i64 %3, !3470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9053)
    #dbg_value(i64 %4, !3470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9053)
    #dbg_declare(ptr poison, !9070, !DIExpression(), !9077)
    #dbg_value(i64 %4, !3478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9055)
    #dbg_value(i64 %4, !3485, !DIExpression(), !9059)
    #dbg_value(i64 %4, !9061, !DIExpression(), !9064)
    #dbg_value(i64 %3, !3478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9055)
    #dbg_value(i64 %3, !9074, !DIExpression(), !9078)
    #dbg_value(ptr poison, !3481, !DIExpression(), !9079)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !9093 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !9093 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !9093
    #dbg_value(i1 %i.c, !3487, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9080)
    #dbg_value(i1 %i.c, !3489, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9082)
    #dbg_value(i64 %i.b, !3482, !DIExpression(), !9083)
    #dbg_value(i64 %i.b, !3486, !DIExpression(), !9080)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !9094, !prof !3440
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !9094, !prof !3440

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !3471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9084)
    #dbg_value(i64 %i.b, !3471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9084)
  %i.e = icmp eq i64 %i.b, 0, !dbg !9095
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !9095

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9096
  store i64 0, ptr %i.f, align 8, !dbg !9096
  br label %bb.f, !dbg !9097

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !9098
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9099
  store i64 0, ptr %i.h, align 8, !dbg !9099
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9099
  store ptr %i.g, ptr %i.i, align 8, !dbg !9099
  br label %bb.f, !dbg !9100

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9038)
    #dbg_value(i64 %3, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9042)
    #dbg_value(i64 %i.b, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9038)
    #dbg_value(i64 %i.b, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9042)
    #dbg_value(i64 %i.b, !2377, !DIExpression(), !9043)
    #dbg_value(i64 %i.b, !2377, !DIExpression(), !9044)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !9084
    #dbg_value(ptr poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9090)
    #dbg_value(ptr poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9090)
    #dbg_value(i64 poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9090)
    #dbg_value(i64 poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9090)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9101

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !9053
  ret void, !dbg !9102

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !3500, !DIExpression(), !9045)
    #dbg_value(ptr poison, !3496, !DIExpression(), !9046)
    #dbg_value(i64 %3, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9045)
    #dbg_value(i64 %3, !3497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9046)
    #dbg_value(i64 %i.b, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9045)
    #dbg_value(i64 %i.b, !3497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9046)
    #dbg_value(i8 1, !3498, !DIExpression(), !9046)
    #dbg_value(i64 %3, !3503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9048)
    #dbg_value(i64 %i.b, !3503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9048)
    #dbg_value(i1 true, !2376, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9038)
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #30, !dbg !9103
  br label %bb.h, !dbg !9104

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !3445, !DIExpression(), !9049)
    #dbg_value(ptr poison, !3449, !DIExpression(), !9050)
    #dbg_value(i64 %3, !3447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9049)
    #dbg_value(i64 %3, !3450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9050)
    #dbg_value(i64 %i.b, !3447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9049)
    #dbg_value(i64 %i.b, !3450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9050)
    #dbg_value(i8 0, !3451, !DIExpression(), !9050)
    #dbg_value(i64 %3, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9052)
    #dbg_value(i64 %i.b, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9052)
    #dbg_value(i1 false, !2376, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9042)
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #30, !dbg !9105
  br label %bb.h, !dbg !9106

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn29 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
    #dbg_value(ptr %.pn29, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9090)
    #dbg_value(i64 poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9090)
  %i.l = icmp eq ptr %.pn29, null, !dbg !9107
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !9108

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9109
  store i64 %3, ptr %i.m, align 8, !dbg !9109
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9109
  store i64 %i.b, ptr %i.n, align 8, !dbg !9109
  br label %bb.f, !dbg !9110

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.pn29, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9092)
    #dbg_value(i64 poison, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9092)
  %i.o = icmp sgt i64 %1, -1, !dbg !9111
  tail call void @llvm.assume(i1 %i.o), !dbg !9111
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9112
  store i64 %1, ptr %i.p, align 8, !dbg !9112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9112
  store ptr %.pn29, ptr %i.q, align 8, !dbg !9112
  br label %bb.f, !dbg !9100
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB4_8Prompter11with_config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 !dbg !9118 {
bb.a:
    #dbg_value(ptr %1, !9151, !DIExpression(), !9153)
  tail call void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellyEE4withNCNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB1J_8Prompter11with_config0uEB1N_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @34, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1), !dbg !9154
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !9155
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9156
  store i64 0, ptr %i.a, align 8, !dbg !9156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9156
  store i64 2, ptr %i.b, align 8, !dbg !9156
  ret void, !dbg !9157
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB4_8Prompter6prompt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9166 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !10443, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9201)
    #dbg_declare(ptr poison, !10459, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !9202)
    #dbg_declare(ptr poison, !10444, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9203)
    #dbg_declare(ptr poison, !10457, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9204)
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [616 x i8], align 8               ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !10488, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9220)
    #dbg_declare(ptr poison, !10501, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !9221)
    #dbg_declare(ptr poison, !10489, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9222)
    #dbg_declare(ptr poison, !10499, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9223)
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [616 x i8], align 8               ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [616 x i8], align 8               ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.58.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [208 x i8], align 8              ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [208 x i8], align 8              ; 5 uses
  %i.ag = alloca [208 x i8], align 8              ; 46 uses
  %i.ah = alloca [16 x i8], align 8               ; 9 uses
  %i.ai = alloca [616 x i8], align 8              ; 7 uses
  %i.aj = alloca [616 x i8], align 8              ; 5 uses
  %i.ak = alloca [208 x i8], align 8              ; 5 uses
    #dbg_value(ptr poison, !10504, !DIExpression(), !10517)
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 22 uses
  %i.ap = alloca [24 x i8], align 8               ; 14 uses
    #dbg_value(ptr %1, !10428, !DIExpression(), !10518)
    #dbg_declare(ptr %i.ap, !10429, !DIExpression(), !10519)
    #dbg_declare(ptr %i.ao, !10430, !DIExpression(), !10520)
    #dbg_declare(ptr poison, !10431, !DIExpression(), !10521)
    #dbg_declare(ptr %i.am, !10432, !DIExpression(), !10522)
    #dbg_declare(ptr %i.ak, !10523, !DIExpression(), !10530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !11067
  store i64 0, ptr %i.ap, align 8, !dbg !11068
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !11068 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8, !dbg !11068
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !11068 ; 3 uses
  store i64 0, ptr %i.ar, align 8, !dbg !11068
  %.sink411.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11069 ; 2 uses
  %.sink411.i.sroa.gep121 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !11069 ; 2 uses
  %.sink411.i.sroa.gep122 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !11069 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 592 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 600 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 608
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 24 uses
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 22 uses
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 17 ; 6 uses
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 160 ; 6 uses
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 176 ; 6 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 184 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.543.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.552.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.460.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.561.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.543.0..sroa_idx.i294.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.561.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 584
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.b, !dbg !11069

bb.b:                                             ; preds = %.backedge, %bb.a
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @61, ptr noundef nonnull inttoptr (i64 3 to ptr))
          to label %bb.c unwind label %.thread143, !dbg !11070

.thread143:                                       ; preds = %_RINvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB5_4Text17with_autocompleteRNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316action_suggesterEB1i_.exit.i, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread127, !dbg !11071

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !11072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !11074
    #dbg_declare(ptr %i.aj, !10539, !DIExpression(), !9236)
    #dbg_value(i64 18, !10543, !DIExpression(), !9237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !11074, !noalias !10545
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB4_4Text3new(ptr noalias nofree noundef nonnull sret([616 x i8]) align 8 captures(none) dereferenceable(616) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 69)
          to label %.noexc unwind label %.thread143, !dbg !11074

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !10546), !dbg !11075
  call void @llvm.experimental.noalias.scope.decl(metadata !10547), !dbg !11075
    #dbg_declare(ptr %i.ai, !10548, !DIExpression(), !9245)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !10550, !DIExpression(), !9246)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !3574, !DIExpression(), !9248)
    #dbg_value(i64 8, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9250)
    #dbg_value(i64 8, !2346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9252)
    #dbg_value(i64 8, !2365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9254)
    #dbg_value(i64 8, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9250)
    #dbg_value(i64 8, !2346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9252)
    #dbg_value(i64 8, !2365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9254)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2363, !DIExpression(), !9252)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2369, !DIExpression(), !9254)
    #dbg_value(i8 0, !2370, !DIExpression(), !9254)
    #dbg_value(i64 8, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9256)
    #dbg_value(i64 8, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9258)
    #dbg_value(i64 8, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9256)
    #dbg_value(i64 8, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9258)
    #dbg_value(i1 false, !2376, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9256)
    #dbg_value(i64 8, !2377, !DIExpression(), !9259)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !11076, !noalias !10552
  %i.bx = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !11077, !noalias !10552 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null, !dbg !11078
  br i1 %i.by, label %bb.d, label %bb.g, !dbg !11079, !prof !2397

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #31
          to label %.noexc.i.i unwind label %bb.f, !dbg !11080, !noalias !10552

.noexc.i.i:                                       ; preds = %bb.d
  unreachable, !dbg !11080

bb.e:                                             ; preds = %.body.i.i, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.ch, %.body.i.i ], [ %i.bz, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire7prompts4text4TextECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %i.ai) #28
          to label %.thread127 unwind label %bb.l, !dbg !11081, !noalias !10553

bb.f:                                             ; preds = %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc
    #dbg_value(ptr %i.bx, !3575, !DIExpression(), !9260)
  store ptr inttoptr (i64 1 to ptr), ptr %i.bx, align 8, !dbg !11082, !noalias !10554, !captures !2017
  %.val.i.i = load ptr, ptr %i.as, align 8, !dbg !11083, !alias.scope !10547, !noalias !10553, !noundef !1445 ; 4 uses
  %.val3.i.i = load ptr, ptr %i.at, align 8, !dbg !11083, !alias.scope !10547, !noalias !10553 ; 6 uses
    #dbg_value(ptr poison, !2399, !DIExpression(), !9264)
  %i.ca = icmp eq ptr %.val.i.i, null, !dbg !11084
  br i1 %i.ca, label %_RINvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB5_4Text17with_autocompleteRNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316action_suggesterEB1i_.exit.i, label %bb.h, !dbg !11084

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !2406, !DIExpression(), !9266)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  %i.cb = load ptr, ptr %.val3.i.i, align 8, !dbg !11085, !invariant.load !1445, !noalias !10552 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null, !dbg !11085
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i, !dbg !11085

bb.i:                                             ; preds = %bb.h
  invoke void %i.cb(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.k, !dbg !11085, !noalias !10552

bb.j:                                             ; preds = %bb.i, %bb.h
    #dbg_value(ptr poison, !2410, !DIExpression(), !9268)
    #dbg_value(ptr poison, !2412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9269)
    #dbg_value(ptr %.val3.i.i, !2412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9269)
    #dbg_value(ptr poison, !2427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9271)
    #dbg_value(ptr poison, !2435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9273)
    #dbg_value(ptr poison, !2440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9275)
    #dbg_value(ptr poison, !2446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9277)
    #dbg_value(ptr %.val3.i.i, !2427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9271)
    #dbg_value(ptr %.val3.i.i, !2435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9273)
    #dbg_value(ptr %.val3.i.i, !2440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9275)
    #dbg_value(ptr %.val3.i.i, !2446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9277)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8, !dbg !11086
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !11086, !range !2294, !invariant.load !1445, !noalias !10552 ; 2 uses
    #dbg_value(i64 poison, !2413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(i64 %i.cd, !2413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9278)
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !11087
  br i1 %i.ce, label %_RINvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB5_4Text17with_autocompleteRNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316action_suggesterEB1i_.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, !dbg !11087

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16, !dbg !11086
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !11088, !range !2448, !invariant.load !1445, !noalias !10552
    #dbg_value(i64 %i.cg, !2413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(ptr %.val.i.i, !2427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9271)
    #dbg_value(ptr %.val.i.i, !2435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9273)
    #dbg_value(ptr %.val.i.i, !2440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9275)
    #dbg_value(ptr %.val.i.i, !2446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9277)
    #dbg_value(ptr %.val.i.i, !2412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9269)
    #dbg_value(ptr poison, !2449, !DIExpression(), !9280)
    #dbg_value(ptr poison, !2455, !DIExpression(), !9282)
    #dbg_value(ptr %.val.i.i, !2452, !DIExpression(), !9280)
    #dbg_value(ptr %.val.i.i, !2458, !DIExpression(), !9282)
    #dbg_value(ptr %.val.i.i, !2461, !DIExpression(), !9284)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB4_8Prompter6prompt:bb.a
    #dbg_value(i64 7, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9444)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9530)
    #dbg_value(i64 %i.cu, !10585, !DIExpression(), !9531)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9563)
    #dbg_value(i64 %i.cu, !10677, !DIExpression(), !9564)
    #dbg_value(i64 %i.cu, !10586, !DIExpression(), !9565)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9567)
    #dbg_value(i64 %i.cu, !10678, !DIExpression(), !9568)
    #dbg_value(i64 %i.cu, !10587, !DIExpression(), !9569)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9571)
    #dbg_value(i64 %i.cu, !10679, !DIExpression(), !9572)
    #dbg_value(i64 %i.cu, !10588, !DIExpression(), !9573)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9575)
    #dbg_value(i64 %i.cu, !10680, !DIExpression(), !9576)
    #dbg_value(i64 %i.cu, !10589, !DIExpression(), !9577)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9579)
    #dbg_value(i64 %i.cu, !10681, !DIExpression(), !9580)
    #dbg_value(i64 %i.cu, !10590, !DIExpression(), !9581)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9583)
    #dbg_value(i64 %i.cu, !10682, !DIExpression(), !9584)
    #dbg_value(i64 %i.cu, !10591, !DIExpression(), !9585)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9587)
    #dbg_value(i64 %i.cu, !10683, !DIExpression(), !9588)
    #dbg_value(i64 %i.cu, !10592, !DIExpression(), !9589)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9591)
    #dbg_value(i64 %i.cu, !10684, !DIExpression(), !9592)
    #dbg_value(i64 %i.cu, !10593, !DIExpression(), !9593)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9595)
    #dbg_value(i64 %i.cu, !10685, !DIExpression(), !9596)
    #dbg_value(i64 %i.cu, !10594, !DIExpression(), !9597)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9599)
    #dbg_value(i64 %i.cu, !10686, !DIExpression(), !9600)
    #dbg_value(i64 %i.cu, !10595, !DIExpression(), !9601)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9603)
    #dbg_value(i64 %i.cu, !10687, !DIExpression(), !9604)
    #dbg_value(i64 %i.cu, !10596, !DIExpression(), !9605)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9607)
    #dbg_value(i64 %i.cu, !10688, !DIExpression(), !9608)
    #dbg_value(i64 %i.cu, !10597, !DIExpression(), !9609)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9611)
    #dbg_value(i64 %i.cu, !10689, !DIExpression(), !9612)
    #dbg_value(i64 %i.cu, !10598, !DIExpression(), !9613)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9615)
    #dbg_value(i64 %i.cu, !10690, !DIExpression(), !9616)
    #dbg_value(i64 %i.cu, !10599, !DIExpression(), !9617)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9619)
    #dbg_value(i64 %i.cu, !10691, !DIExpression(), !9620)
    #dbg_value(i64 %i.cu, !10600, !DIExpression(), !9621)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9623)
    #dbg_value(i64 %i.cu, !10692, !DIExpression(), !9624)
    #dbg_value(i64 %i.cu, !10601, !DIExpression(), !9625)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9627)
    #dbg_value(i64 %i.cu, !10693, !DIExpression(), !9628)
    #dbg_value(i64 %i.cu, !10602, !DIExpression(), !9629)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9631)
    #dbg_value(i64 %i.cu, !10694, !DIExpression(), !9632)
    #dbg_value(i64 %i.cu, !10603, !DIExpression(), !9633)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9635)
    #dbg_value(i64 %i.cu, !10695, !DIExpression(), !9636)
    #dbg_value(i64 %i.cu, !10604, !DIExpression(), !9637)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9639)
    #dbg_value(i64 %i.cu, !10696, !DIExpression(), !9640)
    #dbg_value(i64 %i.cu, !10605, !DIExpression(), !9641)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9643)
    #dbg_value(i64 %i.cu, !10697, !DIExpression(), !9644)
    #dbg_value(i64 %i.cu, !10606, !DIExpression(), !9645)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9647)
    #dbg_value(i64 %i.cu, !10698, !DIExpression(), !9648)
    #dbg_value(i64 %i.cu, !10607, !DIExpression(), !9649)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9651)
    #dbg_value(i64 %i.cu, !10699, !DIExpression(), !9652)
    #dbg_value(i64 %i.cu, !10608, !DIExpression(), !9653)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9655)
    #dbg_value(i64 %i.cu, !10700, !DIExpression(), !9656)
    #dbg_value(i64 %i.cu, !10609, !DIExpression(), !9657)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9659)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9661)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9663)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9665)
    #dbg_value(i64 %i.cu, !10674, !DIExpression(), !9667)
  switch i64 %i.cu, label %.critedge271.i [
    i64 7, label %bb.p
    i64 17, label %bb.q
    i64 15, label %bb.r
    i64 25, label %bb.s
    i64 4, label %bb.t
    i64 8, label %bb.ah
    i64 12, label %bb.al
    i64 6, label %bb.ap
    i64 11, label %bb.cf
    i64 16, label %bb.cy
    i64 26, label %bb.dc
    i64 20, label %bb.dd
    i64 13, label %bb.de
  ], !dbg !11109

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9563)
    #dbg_value(ptr @35, !10676, !DIExpression(), !9563)
  %i.cv = load i32, ptr %i.ct, align 1, !dbg !11110
  %i.cw = xor i32 %i.cv, 1684104552, !dbg !11110
  %i.cx = getelementptr i8, ptr %i.ct, i64 3, !dbg !11110
  %i.cy = load i32, ptr %i.cx, align 1, !dbg !11110
  %i.cz = xor i32 %i.cy, 1936876900, !dbg !11110
  %i.da = or i32 %i.cw, %i.cz, !dbg !11110
  %i.db = icmp ne i32 %i.da, 0, !dbg !11110
  %i.dc = zext i1 %i.db to i32, !dbg !11110
  %i.dd = icmp eq i32 %i.dc, 0, !dbg !11110
  br i1 %i.dd, label %.thread328.i, label %.critedge271.i, !dbg !11111

bb.q:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9567)
    #dbg_value(ptr @36, !10676, !DIExpression(), !9567)
  %i.de = load i128, ptr %i.ct, align 1, !dbg !11112
  %i.df = xor i128 %i.de, 133532355980326515353583866971655595368, !dbg !11112
  %i.dg = getelementptr i8, ptr %i.ct, i64 16, !dbg !11112
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !11112
  %i.di = zext i8 %i.dh to i128, !dbg !11112
  %i.dj = xor i128 %i.di, 111, !dbg !11112
  %i.dk = or i128 %i.df, %i.dj, !dbg !11112
  %i.dl = icmp ne i128 %i.dk, 0, !dbg !11112
  %i.dm = zext i1 %i.dl to i32, !dbg !11112
  %i.dn = icmp eq i32 %i.dm, 0, !dbg !11112
  br i1 %i.dn, label %.thread328.i, label %.critedge271.i, !dbg !11113

bb.r:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9571)
    #dbg_value(ptr @37, !10676, !DIExpression(), !9571)
  %i.do = load i64, ptr %i.ct, align 1, !dbg !11114
  %i.dp = xor i64 %i.do, 6877966835726247272, !dbg !11114
  %i.dq = getelementptr i8, ptr %i.ct, i64 7, !dbg !11114
  %i.dr = load i64, ptr %i.dq, align 1, !dbg !11114
  %i.ds = xor i64 %i.dr, 7809649008907480159, !dbg !11114
  %i.dt = or i64 %i.dp, %i.ds, !dbg !11114
  %i.du = icmp ne i64 %i.dt, 0, !dbg !11114
  %i.dv = zext i1 %i.du to i32, !dbg !11114
  %i.dw = icmp eq i32 %i.dv, 0, !dbg !11114
  br i1 %i.dw, label %.thread328.i, label %bb.aj, !dbg !11115

bb.s:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9575)
    #dbg_value(ptr @38, !10676, !DIExpression(), !9575)
  %i.dx = load i128, ptr %i.ct, align 1, !dbg !11116
  %i.dy = xor i128 %i.dx, 133532355980326515353583866971655595368, !dbg !11116
  %i.dz = getelementptr i8, ptr %i.ct, i64 9, !dbg !11116
  %i.ea = load i128, ptr %i.dz, align 1, !dbg !11116
  %i.eb = xor i128 %i.ea, 144062596572815732911088118062776344431, !dbg !11116
  %i.ec = or i128 %i.dy, %i.eb, !dbg !11116
  %i.ed = icmp ne i128 %i.ec, 0, !dbg !11116
  %i.ee = zext i1 %i.ed to i32, !dbg !11116
  %i.ef = icmp eq i32 %i.ee, 0, !dbg !11116
  br i1 %i.ef, label %.thread328.i, label %.critedge271.i, !dbg !11117

bb.t:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9579)
    #dbg_value(ptr @39, !10676, !DIExpression(), !9579)
  %i.eg = load i32, ptr %i.ct, align 1, !dbg !11118
  %i.eh = icmp ne i32 %i.eg, 1635017060, !dbg !11118
  %i.ei = zext i1 %i.eh to i32, !dbg !11118
  %i.ej = icmp eq i32 %i.ei, 0, !dbg !11118
  br i1 %i.ej, label %bb.u, label %.thread344.i, !dbg !11119

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !10735), !dbg !11120
    #dbg_declare(ptr poison, !10736, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9687)
    #dbg_declare(ptr poison, !10751, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !9688)
    #dbg_declare(ptr poison, !10737, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9689)
    #dbg_declare(ptr poison, !10749, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9690)
    #dbg_declare(ptr %i.ab, !10753, !DIExpression(), !9695)
    #dbg_declare(ptr %i.aa, !10745, !DIExpression(), !9696)
    #dbg_declare(ptr %i.z, !10757, !DIExpression(), !9701)
    #dbg_declare(ptr poison, !10746, !DIExpression(), !9702)
    #dbg_declare(ptr poison, !10737, !DIExpression(), !9704)
    #dbg_declare(ptr %i.x, !10762, !DIExpression(), !9709)
    #dbg_declare(ptr poison, !10739, !DIExpression(), !9710)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !11121, !noalias !10766
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 10)
          to label %.noexc28 unwind label %bb.dv, !dbg !11122

.noexc28:                                         ; preds = %bb.u
  %i.ek = load i64, ptr %i.ab, align 8, !dbg !11123, !range !3687, !noalias !10766, !noundef !1445 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ek, -1, !dbg !11123
  %i.el = load i64, ptr %i.bk, align 8, !dbg !11124, !noalias !10766 ; 2 uses
  br i1 %.not.i.i, label %bb.w, label %bb.v, !dbg !11125

bb.v:                                             ; preds = %.noexc28
  %.sroa.534.0.copyload.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !11126, !noalias !10766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !11127, !noalias !10766
    #dbg_value(i64 %i.ek, !10743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9712)
    #dbg_value(i64 %i.ek, !10737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9714)
    #dbg_value(i64 %i.el, !10743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9712)
    #dbg_value(i64 %i.el, !10737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9714)
    #dbg_value(i64 %.sroa.534.0.copyload.i.i, !10743, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9712)
    #dbg_value(i64 %.sroa.534.0.copyload.i.i, !10737, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9714)
    #dbg_value(i64 %i.ek, !10738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9715)
    #dbg_value(i64 %i.el, !10738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9715)
    #dbg_value(i64 %.sroa.534.0.copyload.i.i, !10738, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9715)
  store i64 %i.ek, ptr %i.ba, align 8, !dbg !11128, !alias.scope !10735, !noalias !10570
  store i64 %i.el, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11128, !alias.scope !10735, !noalias !10570
  store i64 %.sroa.534.0.copyload.i.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11128, !alias.scope !10735, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11129

bb.w:                                             ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !11127, !noalias !10766
    #dbg_value(i64 %i.el, !10742, !DIExpression(), !9716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !11130, !noalias !10766
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.i.i), !dbg !11131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !11131, !noalias !10766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !11131, !noalias !10766
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB4_4Text3new(ptr noalias nofree noundef nonnull sret([616 x i8]) align 8 captures(none) dereferenceable(616) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8)
          to label %.noexc29 unwind label %bb.dv, !dbg !11131

.noexc29:                                         ; preds = %bb.w
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB4_4Text6prompt(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(616) %i.y)
          to label %.noexc30 unwind label %bb.dv, !dbg !11132

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !11133, !noalias !10766
  %i.em = load i64, ptr %i.z, align 8, !dbg !11134, !range !2946, !noalias !10766, !noundef !1445
  %i.en = trunc nuw i64 %i.em to i1, !dbg !11135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !dbg !11136, !noalias !10766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !11137, !noalias !10766
  br i1 %i.en, label %bb.x, label %bb.y, !dbg !11135

bb.x:                                             ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.i.i, i64 24, i1 false), !dbg !11137, !noalias !10570
  store i64 -1, ptr %i.ag, align 8, !dbg !11138, !alias.scope !10735, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58.i.i), !dbg !11139
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i.i, !dbg !11140

bb.y:                                             ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.i.i, i64 24, i1 false), !dbg !11131, !noalias !10766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58.i.i), !dbg !11139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !11141, !noalias !10766
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.aa unwind label %bb.z, !dbg !11141, !noalias !10770

bb.z:                                             ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #28
          to label %.body31 unwind label %bb.ag, !dbg !11142, !noalias !10770

bb.aa:                                            ; preds = %bb.y
  %i.ep = load i64, ptr %i.x, align 8, !dbg !11143, !range !3687, !noalias !10766, !noundef !1445 ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ep, -1, !dbg !11143
  %i.eq = load i8, ptr %i.bm, align 8, !dbg !11144, !noalias !10766 ; 2 uses
  br i1 %.not54.i.i, label %bb.af, label %bb.ab, !dbg !11145

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.543.0..sroa_idx.i.i, i64 15, i1 false), !dbg !11146, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11147, !noalias !10766
    #dbg_value(i64 %i.ep, !10749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9717)
    #dbg_value(i64 %i.ep, !10737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9718)
    #dbg_value(i8 %i.eq, !10749, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9717)
    #dbg_value(i8 %i.eq, !10737, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9718)
    #dbg_value(i64 %i.ep, !10736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9719)
    #dbg_value(i8 %i.eq, !10736, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9719)
  store i64 %i.ep, ptr %i.ba, align 8, !dbg !11148, !alias.scope !10735, !noalias !10570
  store i8 %i.eq, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11148, !alias.scope !10735, !noalias !10570
  store i64 -1, ptr %i.ag, align 8, !dbg !11148, !alias.scope !10735, !noalias !10570
    #dbg_value(ptr %i.aa, !2820, !DIExpression(), !9721)
    #dbg_value(ptr %i.aa, !2805, !DIExpression(), !9723)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ad unwind label %bb.ac, !dbg !11149, !noalias !10770

bb.ac:                                            ; preds = %bb.ab
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.aa, align 8, !dbg !11149, !range !2294, !alias.scope !10771, !noalias !10766, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9731)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9733)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9735)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9735)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9735)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9737)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
  %i.es = icmp eq i64 %.val3.i.i.i.i, 0, !dbg !11150
  br i1 %i.es, label %.body31, label %common.resume.sink.split.i, !dbg !11150

bb.ad:                                            ; preds = %bb.ab
  %.val.i.i.i.i = load i64, ptr %i.aa, align 8, !dbg !11149, !range !2294, !alias.scope !10771, !noalias !10766, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9739)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9741)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9743)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9743)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9743)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9745)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9745)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9745)
  %i.et = icmp eq i64 %.val.i.i.i.i, 0, !dbg !11151
  br i1 %i.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i.i, label %bb.ae, !dbg !11151

bb.ae:                                            ; preds = %bb.ad
  %.val2.i.i.i.i = load ptr, ptr %.sink411.i.sroa.gep122, align 8, !dbg !11149, !alias.scope !10772, !noalias !10766, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val2.i.i.i.i, !2564, !DIExpression(), !9746)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9746)
    #dbg_value(i64 %.val.i.i.i.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9746)
    #dbg_value(ptr poison, !2449, !DIExpression(), !9748)
    #dbg_value(ptr poison, !2455, !DIExpression(), !9750)
    #dbg_value(ptr %.val2.i.i.i.i, !2452, !DIExpression(), !9748)
    #dbg_value(ptr %.val2.i.i.i.i, !2458, !DIExpression(), !9750)
    #dbg_value(ptr %.val2.i.i.i.i, !2461, !DIExpression(), !9752)
    #dbg_value(ptr %.val2.i.i.i.i, !2467, !DIExpression(), !9754)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9748)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9750)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9752)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9754)
    #dbg_value(i64 %.val.i.i.i.i, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9748)
    #dbg_value(i64 %.val.i.i.i.i, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9750)
    #dbg_value(i64 %.val.i.i.i.i, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9752)
    #dbg_value(i64 %.val.i.i.i.i, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9754)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11152, !noalias !10773
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i.i, !dbg !11153

common.resume.sink.split.i:                       ; preds = %bb.bs, %bb.ba, %bb.ac
  %.sink411.i.sroa.phi = phi ptr [ %.sink411.i.sroa.gep, %bb.ba ], [ %.sink411.i.sroa.gep121, %bb.bs ], [ %.sink411.i.sroa.gep122, %bb.ac ]
  %.val3.i.i.i287.sink.i = phi i64 [ %.val3.i.i.i277.i, %bb.ba ], [ %.val3.i.i.i287.i, %bb.bs ], [ %.val3.i.i.i.i, %bb.ac ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.gw, %bb.ba ], [ %i.hu, %bb.bs ], [ %i.er, %bb.ac ]
  %.val4.i.i.i288.i = load ptr, ptr %.sink411.i.sroa.phi, align 8, !dbg !11154, !noalias !10570, !nonnull !1445, !noundef !1445
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i288.i, i64 noundef %.val3.i.i.i287.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11154, !noalias !10569
  br label %.body31, !dbg !11154

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11147, !noalias !10766
    #dbg_value(i8 %i.eq, !10748, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9757)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.445.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !11155, !noalias !10570
    #dbg_value(i64 %i.el, !10751, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !9758)
    #dbg_value(i8 %i.eq, !10751, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !9758)
    #dbg_value(i64 2, !10751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9758)
    #dbg_value(i64 23, !10751, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !9758)
    #dbg_value(i64 undef, !10751, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !9758)
    #dbg_value(i64 12, !10751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9758)
  store i64 12, ptr %i.ag, align 8, !dbg !11156, !alias.scope !10735, !noalias !10570
  store i64 2, ptr %i.ba, align 8, !dbg !11156, !alias.scope !10735, !noalias !10570
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11156, !alias.scope !10735, !noalias !10570
  store i64 %i.el, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11156, !alias.scope !10735, !noalias !10570
  store i8 %i.eq, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11156, !alias.scope !10735, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !11142, !noalias !10766
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !11142, !noalias !10766
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11140

bb.ag:                                            ; preds = %bb.z
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11158, !noalias !10770
  unreachable, !dbg !11158

bb.ah:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9583)
    #dbg_value(ptr @40, !10676, !DIExpression(), !9583)
  %i.ev = load i64, ptr %i.ct, align 1, !dbg !11159
  %i.ew = icmp ne i64 %i.ev, 8315736636167316851, !dbg !11159
  %i.ex = zext i1 %i.ew to i32, !dbg !11159
  %i.ey = icmp eq i32 %i.ex, 0, !dbg !11159
  br i1 %i.ey, label %bb.ai, label %.critedge271.i, !dbg !11160

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h38settings15prompt_settings(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11161

bb.aj:                                            ; preds = %bb.r
    #dbg_value(ptr poison, !10615, !DIExpression(), !9759)
    #dbg_value(ptr @40, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9459)
    #dbg_value(i64 8, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9459)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9760)
    #dbg_value(ptr poison, !10615, !DIExpression(), !9761)
    #dbg_value(ptr @41, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9462)
    #dbg_value(i64 15, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9462)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9762)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9587)
    #dbg_value(ptr @41, !10676, !DIExpression(), !9587)
  %i.ez = load i64, ptr %i.ct, align 1, !dbg !11162
  %i.fa = xor i64 %i.ez, 7597138674155090031, !dbg !11162
  %i.fb = getelementptr i8, ptr %i.ct, i64 7, !dbg !11162
  %i.fc = load i64, ptr %i.fb, align 1, !dbg !11162
  %i.fd = xor i64 %i.fc, 7881692365129473897, !dbg !11162
  %i.fe = or i64 %i.fa, %i.fd, !dbg !11162
  %i.ff = icmp ne i64 %i.fe, 0, !dbg !11162
  %i.fg = zext i1 %i.ff to i32, !dbg !11162
  %i.fh = icmp eq i32 %i.fg, 0, !dbg !11162
  br i1 %i.fh, label %bb.ak, label %bb.bf, !dbg !11163

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream22prompt_open_uni_stream(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11164

bb.al:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9591)
    #dbg_value(ptr @42, !10676, !DIExpression(), !9591)
  %i.fi = load i64, ptr %i.ct, align 1, !dbg !11165
  %i.fj = xor i64 %i.fi, 8391155484244272498, !dbg !11165
  %i.fk = getelementptr i8, ptr %i.ct, i64 8, !dbg !11165
  %i.fl = load i32, ptr %i.fk, align 1, !dbg !11165
  %i.fm = zext i32 %i.fl to i64, !dbg !11165
  %i.fn = xor i64 %i.fm, 1835099506, !dbg !11165
  %i.fo = or i64 %i.fj, %i.fn, !dbg !11165
  %i.fp = icmp ne i64 %i.fo, 0, !dbg !11165
  %i.fq = zext i1 %i.fp to i32, !dbg !11165
  %i.fr = icmp eq i32 %i.fq, 0, !dbg !11165
  br i1 %i.fr, label %bb.am, label %bb.an, !dbg !11166

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream19prompt_reset_stream(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11167

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr poison, !10615, !DIExpression(), !9763)
    #dbg_value(ptr @43, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9468)
    #dbg_value(i64 12, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9468)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9764)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9595)
    #dbg_value(ptr @43, !10676, !DIExpression(), !9595)
  %i.fs = load i64, ptr %i.ct, align 1, !dbg !11168
  %i.ft = xor i64 %i.fs, 7954891170565289075, !dbg !11168
  %i.fu = getelementptr i8, ptr %i.ct, i64 8, !dbg !11168
  %i.fv = load i32, ptr %i.fu, align 1, !dbg !11168
  %i.fw = zext i32 %i.fv to i64, !dbg !11168
  %i.fx = xor i64 %i.fw, 1735289188, !dbg !11168
  %i.fy = or i64 %i.ft, %i.fx, !dbg !11168
  %i.fz = icmp ne i64 %i.fy, 0, !dbg !11168
  %i.ga = zext i1 %i.fz to i32, !dbg !11168
  %i.gb = icmp eq i32 %i.ga, 0, !dbg !11168
  br i1 %i.gb, label %bb.ao, label %bb.cv, !dbg !11169

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream19prompt_stop_sending(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11170

bb.ap:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9599)
    #dbg_value(ptr @44, !10676, !DIExpression(), !9599)
  %i.gc = load i32, ptr %i.ct, align 1, !dbg !11171
  %i.gd = xor i32 %i.gc, 1634038375, !dbg !11171
  %i.ge = getelementptr i8, ptr %i.ct, i64 4, !dbg !11171
  %i.gf = load i16, ptr %i.ge, align 1, !dbg !11171
  %i.gg = zext i16 %i.gf to i32, !dbg !11171
  %i.gh = xor i32 %i.gg, 25971, !dbg !11171
  %i.gi = or i32 %i.gd, %i.gh, !dbg !11171
  %i.gj = icmp ne i32 %i.gi, 0, !dbg !11171
  %i.gk = zext i1 %i.gj to i32, !dbg !11171
  %i.gl = icmp eq i32 %i.gk, 0, !dbg !11171
  br i1 %i.gl, label %bb.aq, label %bb.bx, !dbg !11172

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !10778), !dbg !11173
    #dbg_declare(ptr %i.w, !10779, !DIExpression(), !9771)
    #dbg_declare(ptr %i.v, !10497, !DIExpression(), !9772)
    #dbg_declare(ptr %i.s, !10783, !DIExpression(), !9777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11174, !noalias !10787
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324prompt_control_stream_id(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc37 unwind label %bb.dv, !dbg !11174

.noexc37:                                         ; preds = %bb.aq
  %i.gm = load i64, ptr %i.w, align 8, !dbg !11175, !range !3687, !noalias !10787, !noundef !1445 ; 2 uses
  %.not.i273.i = icmp eq i64 %i.gm, -1, !dbg !11175
  %i.gn = load i64, ptr %i.bh, align 8, !dbg !11176, !noalias !10787 ; 2 uses
  br i1 %.not.i273.i, label %bb.as, label %bb.ar, !dbg !11177

bb.ar:                                            ; preds = %.noexc37
  %.sroa.533.0.copyload.i.i = load i64, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !dbg !11178, !noalias !10787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11179, !noalias !10787
    #dbg_value(i64 %i.gm, !10494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9778)
    #dbg_value(i64 %i.gm, !10489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9780)
    #dbg_value(i64 %i.gn, !10494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(i64 %i.gn, !10489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9780)
    #dbg_value(i64 %.sroa.533.0.copyload.i.i, !10494, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9778)
    #dbg_value(i64 %.sroa.533.0.copyload.i.i, !10489, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9780)
    #dbg_value(i64 %i.gm, !10490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9781)
    #dbg_value(i64 %i.gn, !10490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9781)
    #dbg_value(i64 %.sroa.533.0.copyload.i.i, !10490, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9781)
  store i64 %i.gm, ptr %i.ba, align 8, !dbg !11180, !alias.scope !10778, !noalias !10570
  store i64 %i.gn, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11180, !alias.scope !10778, !noalias !10570
  store i64 %.sroa.533.0.copyload.i.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11180, !alias.scope !10778, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11181

bb.as:                                            ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11179, !noalias !10787
    #dbg_value(i64 %i.gn, !10493, !DIExpression(), !9782)
  %i.go = invoke noundef i64 @_RNvNtCs3f36owOmepS_6quiche2h312grease_value()
          to label %.noexc38 unwind label %bb.dv, !dbg !11182

.noexc38:                                         ; preds = %bb.as
    #dbg_value(i64 %i.go, !10496, !DIExpression(), !9783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11183, !noalias !10787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !11184, !noalias !10787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11184, !noalias !10787
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB4_4Text3new(ptr noalias nofree noundef nonnull sret([616 x i8]) align 8 captures(none) dereferenceable(616) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8)
          to label %.noexc39 unwind label %bb.dv, !dbg !11184

.noexc39:                                         ; preds = %.noexc38
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB4_4Text6prompt(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(616) %i.t)
          to label %.noexc40 unwind label %bb.dv, !dbg !11185

.noexc40:                                         ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !11186, !noalias !10787
  call void @llvm.experimental.noalias.scope.decl(metadata !10790), !dbg !11187
  call void @llvm.experimental.noalias.scope.decl(metadata !10791), !dbg !11187
    #dbg_declare(ptr %i.u, !10792, !DIExpression(), !9791)
    #dbg_value(ptr @65, !10797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9792)
    #dbg_value(i64 59, !10797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9792)
    #dbg_declare(ptr %i.r, !10799, !DIExpression(), !9793)
  %i.gp = load i64, ptr %i.u, align 8, !dbg !11188, !range !2946, !alias.scope !10791, !noalias !10801, !noundef !1445
  %i.gq = trunc nuw i64 %i.gp to i1, !dbg !11189
  br i1 %i.gq, label %bb.at, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i.i, !dbg !11189, !prof !3690

bb.at:                                            ; preds = %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11190, !noalias !10802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !dbg !11190, !noalias !10801
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 59, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #31
          to label %bb.av unwind label %bb.au, !dbg !11191, !noalias !10803

bb.au:                                            ; preds = %bb.at
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #28
          to label %.body31 unwind label %bb.aw, !dbg !11192, !noalias !10803

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11193, !noalias !10803
  unreachable, !dbg !11193

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i.i: ; preds = %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !dbg !11194, !alias.scope !10804, !noalias !10805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !11195, !noalias !10787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11196, !noalias !10787
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.ay unwind label %bb.ax, !dbg !11196, !noalias !10806

bb.ax:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #28
          to label %.body31 unwind label %bb.be, !dbg !11197, !noalias !10806

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i.i
  %i.gu = load i64, ptr %i.s, align 8, !dbg !11198, !range !3687, !noalias !10787, !noundef !1445 ; 2 uses
  %.not54.i276.i = icmp eq i64 %i.gu, -1, !dbg !11198
  %i.gv = load i8, ptr %i.bj, align 8, !dbg !11199, !noalias !10787 ; 2 uses
  br i1 %.not54.i276.i, label %bb.bd, label %bb.az, !dbg !11200

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.542.0..sroa_idx.i.i, i64 15, i1 false), !dbg !11201, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11202, !noalias !10787
    #dbg_value(i64 %i.gu, !10499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9795)
    #dbg_value(i64 %i.gu, !10489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9796)
    #dbg_value(i8 %i.gv, !10499, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9795)
    #dbg_value(i8 %i.gv, !10489, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9796)
    #dbg_value(i64 %i.gu, !10488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9797)
    #dbg_value(i8 %i.gv, !10488, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9797)
  store i64 %i.gu, ptr %i.ba, align 8, !dbg !11203, !alias.scope !10778, !noalias !10570
  store i8 %i.gv, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11203, !alias.scope !10778, !noalias !10570
  store i64 -1, ptr %i.ag, align 8, !dbg !11203, !alias.scope !10778, !noalias !10570
    #dbg_value(ptr %i.v, !2820, !DIExpression(), !9799)
    #dbg_value(ptr %i.v, !2805, !DIExpression(), !9801)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bb unwind label %bb.ba, !dbg !11204, !noalias !10806

bb.ba:                                            ; preds = %bb.az
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i277.i = load i64, ptr %i.v, align 8, !dbg !11204, !range !2294, !alias.scope !10807, !noalias !10787, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9809)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9811)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9813)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9813)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9813)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9815)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9815)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9815)
  %i.gx = icmp eq i64 %.val3.i.i.i277.i, 0, !dbg !11205
  br i1 %i.gx, label %.body31, label %common.resume.sink.split.i, !dbg !11205

bb.bb:                                            ; preds = %bb.az
  %.val.i.i.i279.i = load i64, ptr %i.v, align 8, !dbg !11204, !range !2294, !alias.scope !10807, !noalias !10787, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9817)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9819)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9821)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9821)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9821)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9823)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9823)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9823)
  %i.gy = icmp eq i64 %.val.i.i.i279.i, 0, !dbg !11206
  br i1 %i.gy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i281.i, label %bb.bc, !dbg !11206

bb.bc:                                            ; preds = %bb.bb
  %.val2.i.i.i280.i = load ptr, ptr %.sink411.i.sroa.gep, align 8, !dbg !11204, !alias.scope !10808, !noalias !10787, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val2.i.i.i280.i, !2564, !DIExpression(), !9824)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9824)
    #dbg_value(i64 %.val.i.i.i279.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9824)
    #dbg_value(ptr poison, !2449, !DIExpression(), !9826)
    #dbg_value(ptr poison, !2455, !DIExpression(), !9828)
    #dbg_value(ptr %.val2.i.i.i280.i, !2452, !DIExpression(), !9826)
    #dbg_value(ptr %.val2.i.i.i280.i, !2458, !DIExpression(), !9828)
    #dbg_value(ptr %.val2.i.i.i280.i, !2461, !DIExpression(), !9830)
    #dbg_value(ptr %.val2.i.i.i280.i, !2467, !DIExpression(), !9832)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9826)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9828)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9830)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9832)
    #dbg_value(i64 %.val.i.i.i279.i, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9826)
    #dbg_value(i64 %.val.i.i.i279.i, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9828)
    #dbg_value(i64 %.val.i.i.i279.i, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9830)
    #dbg_value(i64 %.val.i.i.i279.i, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9832)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i280.i, i64 noundef %.val.i.i.i279.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11207, !noalias !10809
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i281.i, !dbg !11208

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i281.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11197, !noalias !10787
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11209

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11202, !noalias !10787
    #dbg_value(i8 %i.gv, !10498, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9835)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.445.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !11210, !noalias !10570
    #dbg_value(i64 %i.gn, !10501, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !9836)
    #dbg_value(i8 %i.gv, !10501, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !9836)
    #dbg_value(i64 11, !10501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9836)
    #dbg_value(i64 %i.go, !10501, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9836)
    #dbg_value(i64 23, !10501, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !9836)
    #dbg_value(i64 undef, !10501, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !9836)
    #dbg_value(i64 12, !10501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9836)
  store i64 12, ptr %i.ag, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  store i64 11, ptr %i.ba, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  store i64 %i.go, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  store i64 %i.gn, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  store i8 %i.gv, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11211, !alias.scope !10778, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !11197, !noalias !10787
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11212

bb.be:                                            ; preds = %bb.ax
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11213, !noalias !10806
  unreachable, !dbg !11213

bb.bf:                                            ; preds = %bb.aj
    #dbg_value(ptr poison, !10615, !DIExpression(), !9837)
    #dbg_value(ptr @42, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9465)
    #dbg_value(i64 12, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9465)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9838)
    #dbg_value(ptr poison, !10615, !DIExpression(), !9839)
    #dbg_value(ptr @45, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9474)
    #dbg_value(i64 15, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9474)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9840)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9603)
    #dbg_value(ptr @45, !10676, !DIExpression(), !9603)
  %i.ha = load i64, ptr %i.ct, align 1, !dbg !11214
  %i.hb = xor i64 %i.ha, 8028074728750348389, !dbg !11214
  %i.hc = getelementptr i8, ptr %i.ct, i64 7, !dbg !11214
  %i.hd = load i64, ptr %i.hc, align 1, !dbg !11214
  %i.he = xor i64 %i.hd, 7308604914263879279, !dbg !11214
  %i.hf = or i64 %i.hb, %i.he, !dbg !11214
  %i.hg = icmp ne i64 %i.hf, 0, !dbg !11214
  %i.hh = zext i1 %i.hg to i32, !dbg !11214
  %i.hi = icmp eq i32 %i.hh, 0, !dbg !11214
  br i1 %i.hi, label %bb.bg, label %.critedge269.i, !dbg !11215

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !10811), !dbg !11216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11217, !noalias !10570
    #dbg_declare(ptr %i.q, !10812, !DIExpression(), !9849)
    #dbg_declare(ptr %i.p, !10812, !DIExpression(), !9851)
    #dbg_declare(ptr %i.o, !10455, !DIExpression(), !9852)
    #dbg_declare(ptr %i.m, !10818, !DIExpression(), !9855)
    #dbg_declare(ptr %i.l, !10821, !DIExpression(), !9860)
    #dbg_value(ptr @69, !10819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9861)
    #dbg_value(i64 24, !10819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9861)
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB4_8Prompter6prompt:bb.a
  %i.ho = trunc nuw i64 %i.hn to i1, !dbg !11239
  br i1 %i.ho, label %bb.bl, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i284.i, !dbg !11239, !prof !3690

bb.bl:                                            ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11240, !noalias !10833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.br, i64 24, i1 false), !dbg !11240, !noalias !10832
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 59, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #31
          to label %bb.bn unwind label %bb.bm, !dbg !11241, !noalias !10834

bb.bm:                                            ; preds = %bb.bl
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #28
          to label %.body31 unwind label %bb.bo, !dbg !11242, !noalias !10834

bb.bn:                                            ; preds = %bb.bl
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11243, !noalias !10834
  unreachable, !dbg !11243

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i284.i: ; preds = %.noexc44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.br, i64 24, i1 false), !dbg !11244, !alias.scope !10835, !noalias !10836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11245, !noalias !10825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !11246, !noalias !10825
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.bq unwind label %bb.bp, !dbg !11246, !noalias !10837

bb.bp:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i284.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #28
          to label %.body31 unwind label %bb.bw, !dbg !11247, !noalias !10837

bb.bq:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorE6expectCsjfnSKV9Rz3v_3h3i.exit.i284.i
  %i.hs = load i64, ptr %i.l, align 8, !dbg !11248, !range !3687, !noalias !10825, !noundef !1445 ; 2 uses
  %.not77.i.i = icmp eq i64 %i.hs, -1, !dbg !11248
  %i.ht = load i8, ptr %i.bs, align 8, !dbg !11249, !noalias !10825 ; 2 uses
  br i1 %.not77.i.i, label %bb.bv, label %bb.br, !dbg !11250

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.562.0..sroa_idx.i.i, i64 15, i1 false), !dbg !11251, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11252, !noalias !10825
    #dbg_value(i64 %i.hs, !10457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9880)
    #dbg_value(i64 %i.hs, !10444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9881)
    #dbg_value(i8 %i.ht, !10457, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9880)
    #dbg_value(i8 %i.ht, !10444, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9881)
    #dbg_value(i64 %i.hs, !10443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9882)
    #dbg_value(i8 %i.ht, !10443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9882)
  store i64 %i.hs, ptr %i.ba, align 8, !dbg !11253, !alias.scope !10811, !noalias !10570
  store i8 %i.ht, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11253, !alias.scope !10811, !noalias !10570
  store i64 -1, ptr %i.ag, align 8, !dbg !11253, !alias.scope !10811, !noalias !10570
    #dbg_value(ptr %i.o, !2820, !DIExpression(), !9884)
    #dbg_value(ptr %i.o, !2805, !DIExpression(), !9886)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bt unwind label %bb.bs, !dbg !11254, !noalias !10837

bb.bs:                                            ; preds = %bb.br
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i287.i = load i64, ptr %i.o, align 8, !dbg !11254, !range !2294, !alias.scope !10838, !noalias !10825, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9894)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9896)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9898)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9898)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9898)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9900)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9900)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9900)
  %i.hv = icmp eq i64 %.val3.i.i.i287.i, 0, !dbg !11255
  br i1 %i.hv, label %.body31, label %common.resume.sink.split.i, !dbg !11255

bb.bt:                                            ; preds = %bb.br
  %.val.i.i.i289.i = load i64, ptr %i.o, align 8, !dbg !11254, !range !2294, !alias.scope !10838, !noalias !10825, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !9902)
    #dbg_value(ptr poison, !2814, !DIExpression(), !9904)
    #dbg_value(ptr poison, !2558, !DIExpression(), !9906)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9906)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9906)
    #dbg_value(ptr poison, !2567, !DIExpression(), !9908)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9908)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9908)
  %i.hw = icmp eq i64 %.val.i.i.i289.i, 0, !dbg !11256
  br i1 %i.hw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i291.i, label %bb.bu, !dbg !11256

bb.bu:                                            ; preds = %bb.bt
  %.val2.i.i.i290.i = load ptr, ptr %.sink411.i.sroa.gep121, align 8, !dbg !11254, !alias.scope !10839, !noalias !10825, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val2.i.i.i290.i, !2564, !DIExpression(), !9909)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9909)
    #dbg_value(i64 %.val.i.i.i289.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9909)
    #dbg_value(ptr poison, !2449, !DIExpression(), !9911)
    #dbg_value(ptr poison, !2455, !DIExpression(), !9913)
    #dbg_value(ptr %.val2.i.i.i290.i, !2452, !DIExpression(), !9911)
    #dbg_value(ptr %.val2.i.i.i290.i, !2458, !DIExpression(), !9913)
    #dbg_value(ptr %.val2.i.i.i290.i, !2461, !DIExpression(), !9915)
    #dbg_value(ptr %.val2.i.i.i290.i, !2467, !DIExpression(), !9917)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9911)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9913)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9915)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9917)
    #dbg_value(i64 %.val.i.i.i289.i, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
    #dbg_value(i64 %.val.i.i.i289.i, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9913)
    #dbg_value(i64 %.val.i.i.i289.i, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9915)
    #dbg_value(i64 %.val.i.i.i289.i, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9917)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i290.i, i64 noundef %.val.i.i.i289.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11257, !noalias !10840
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i291.i, !dbg !11258

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i291.i: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !11247, !noalias !10825
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316prompt_extension.exit.i, !dbg !11259

bb.bv:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11252, !noalias !10825
    #dbg_value(i8 %i.ht, !10456, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9920)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.445.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !11260, !noalias !10570
    #dbg_value(i64 %i.hk, !10459, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !9921)
    #dbg_value(i8 %i.ht, !10459, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !9921)
    #dbg_value(i64 11, !10459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9921)
    #dbg_value(i64 %i.hm, !10459, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9921)
    #dbg_value(i64 23, !10459, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !9921)
    #dbg_value(i64 undef, !10459, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !9921)
    #dbg_value(i64 12, !10459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9921)
  store i64 12, ptr %i.ag, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  store i64 11, ptr %i.ba, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  store i64 %i.hm, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  store i64 %i.hk, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  store i8 %i.ht, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11261, !alias.scope !10811, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !11247, !noalias !10825
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316prompt_extension.exit.i, !dbg !11262

bb.bw:                                            ; preds = %bb.bp
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11263, !noalias !10837
  unreachable, !dbg !11263

_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316prompt_extension.exit.i: ; preds = %bb.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i291.i, %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11262, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11216

bb.bx:                                            ; preds = %bb.ap
    #dbg_value(ptr poison, !10615, !DIExpression(), !9839)
    #dbg_value(ptr @45, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9474)
    #dbg_value(i64 15, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9474)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9840)
    #dbg_value(ptr poison, !10615, !DIExpression(), !9922)
    #dbg_value(ptr @46, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9477)
    #dbg_value(i64 6, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9477)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9923)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9607)
    #dbg_value(ptr @46, !10676, !DIExpression(), !9607)
  %i.hy = load i32, ptr %i.ct, align 1, !dbg !11264
  %i.hz = xor i32 %i.hy, 2002874215, !dbg !11264
  %i.ia = getelementptr i8, ptr %i.ct, i64 4, !dbg !11264
  %i.ib = load i16, ptr %i.ia, align 1, !dbg !11264
  %i.ic = zext i16 %i.ib to i32, !dbg !11264
  %i.id = xor i32 %i.ic, 31073, !dbg !11264
  %i.ie = or i32 %i.hz, %i.id, !dbg !11264
  %i.if = icmp ne i32 %i.ie, 0, !dbg !11264
  %i.ig = zext i1 %i.if to i32, !dbg !11264
  %i.ih = icmp eq i32 %i.ig, 0, !dbg !11264
  br i1 %i.ih, label %bb.by, label %bb.dj, !dbg !11265

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !10842), !dbg !11266
    #dbg_declare(ptr poison, !10843, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9943)
    #dbg_declare(ptr poison, !10844, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9944)
    #dbg_declare(ptr poison, !10856, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9945)
    #dbg_declare(ptr %i.j, !10860, !DIExpression(), !9952)
    #dbg_declare(ptr %i.i, !10860, !DIExpression(), !9954)
    #dbg_declare(ptr %i.h, !10866, !DIExpression(), !9959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11267, !noalias !10870
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 10)
          to label %.noexc45 unwind label %bb.dv, !dbg !11268

.noexc45:                                         ; preds = %bb.by
  %i.ii = load i64, ptr %i.j, align 8, !dbg !11269, !range !3687, !noalias !10870, !noundef !1445 ; 2 uses
  %.not.i293.i = icmp eq i64 %i.ii, -1, !dbg !11269
  %i.ij = load i64, ptr %i.be, align 8, !dbg !11270, !noalias !10870 ; 2 uses
  br i1 %.not.i293.i, label %bb.ca, label %bb.bz, !dbg !11271

bb.bz:                                            ; preds = %.noexc45
  %.sroa.543.0.copyload.i.i = load i64, ptr %.sroa.543.0..sroa_idx.i294.i, align 8, !dbg !11272, !noalias !10870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11273, !noalias !10870
    #dbg_value(i64 %i.ii, !10850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9961)
    #dbg_value(i64 %i.ii, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9963)
    #dbg_value(i64 %i.ij, !10850, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9961)
    #dbg_value(i64 %i.ij, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9963)
    #dbg_value(i64 %.sroa.543.0.copyload.i.i, !10850, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9961)
    #dbg_value(i64 %.sroa.543.0.copyload.i.i, !10844, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9963)
    #dbg_value(i64 %i.ii, !10845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9964)
    #dbg_value(i64 %i.ij, !10845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9964)
    #dbg_value(i64 %.sroa.543.0.copyload.i.i, !10845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9964)
  store i64 %i.ii, ptr %i.ba, align 8, !dbg !11274, !alias.scope !10842, !noalias !10570
  store i64 %i.ij, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11274, !alias.scope !10842, !noalias !10570
  store i64 %.sroa.543.0.copyload.i.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11274, !alias.scope !10842, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11275

bb.ca:                                            ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11273, !noalias !10870
    #dbg_value(i64 %i.ij, !10849, !DIExpression(), !9965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11276, !noalias !10870
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 3)
          to label %.noexc46 unwind label %bb.dv, !dbg !11276

.noexc46:                                         ; preds = %bb.ca
  %i.ik = load i64, ptr %i.i, align 8, !dbg !11277, !range !3687, !noalias !10870, !noundef !1445 ; 2 uses
  %.not71.i.i = icmp eq i64 %i.ik, -1, !dbg !11277
  %i.il = load i64, ptr %i.bf, align 8, !dbg !11278, !noalias !10870 ; 2 uses
  br i1 %.not71.i.i, label %bb.cc, label %bb.cb, !dbg !11279

bb.cb:                                            ; preds = %.noexc46
  %.sroa.552.0.copyload.i.i = load i64, ptr %.sroa.552.0..sroa_idx.i.i, align 8, !dbg !11280, !noalias !10870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11281, !noalias !10870
    #dbg_value(i64 %i.ik, !10853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(i64 %i.ik, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9968)
    #dbg_value(i64 %i.il, !10853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %i.il, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9968)
    #dbg_value(i64 %.sroa.552.0.copyload.i.i, !10853, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9966)
    #dbg_value(i64 %.sroa.552.0.copyload.i.i, !10844, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9968)
    #dbg_value(i64 %i.ik, !10846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9969)
    #dbg_value(i64 %i.il, !10846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9969)
    #dbg_value(i64 %.sroa.552.0.copyload.i.i, !10846, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9969)
  store i64 %i.ik, ptr %i.ba, align 8, !dbg !11282, !alias.scope !10842, !noalias !10570
  store i64 %i.il, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11282, !alias.scope !10842, !noalias !10570
  store i64 %.sroa.552.0.copyload.i.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11282, !alias.scope !10842, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11283

bb.cc:                                            ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11281, !noalias !10870
    #dbg_value(i64 %i.il, !10852, !DIExpression(), !9970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11284, !noalias !10870
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc47 unwind label %bb.dv, !dbg !11284

.noexc47:                                         ; preds = %bb.cc
  %i.im = load i64, ptr %i.h, align 8, !dbg !11285, !range !3687, !noalias !10870, !noundef !1445 ; 2 uses
  %.not72.i.i = icmp eq i64 %i.im, -1, !dbg !11285
  %i.in = load i8, ptr %i.bg, align 8, !dbg !11286, !noalias !10870 ; 2 uses
  br i1 %.not72.i.i, label %bb.ce, label %bb.cd, !dbg !11287

bb.cd:                                            ; preds = %.noexc47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.561.0..sroa_idx.i.i, i64 15, i1 false), !dbg !11288, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11289, !noalias !10870
    #dbg_value(i64 %i.im, !10856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9971)
    #dbg_value(i64 %i.im, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9972)
    #dbg_value(i8 %i.in, !10856, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9971)
    #dbg_value(i8 %i.in, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9972)
    #dbg_value(i64 %i.im, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9973)
    #dbg_value(i8 %i.in, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9973)
  store i64 %i.im, ptr %i.ba, align 8, !dbg !11290, !alias.scope !10842, !noalias !10570
  store i8 %i.in, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11290, !alias.scope !10842, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11291

bb.ce:                                            ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11289, !noalias !10870
    #dbg_value(i8 %i.in, !10855, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9974)
    #dbg_value(i64 %i.ij, !10858, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !9975)
    #dbg_value(i8 %i.in, !10858, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !9975)
    #dbg_value(i64 7, !10858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9975)
    #dbg_value(i64 %i.il, !10858, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9975)
    #dbg_value(i64 23, !10858, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !9975)
    #dbg_value(i64 undef, !10858, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !9975)
    #dbg_value(i64 12, !10858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9975)
  store i64 12, ptr %i.ag, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  store i64 7, ptr %i.ba, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  store i64 %i.il, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  store i64 %i.ij, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  store i8 %i.in, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !10842, !noalias !10570
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11293

bb.cf:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9611)
    #dbg_value(ptr @47, !10676, !DIExpression(), !9611)
  %i.io = load i64, ptr %i.ct, align 1, !dbg !11294
  %i.ip = xor i64 %i.io, 7526488527764742509, !dbg !11294
  %i.iq = getelementptr i8, ptr %i.ct, i64 3, !dbg !11294
  %i.ir = load i64, ptr %i.iq, align 1, !dbg !11294
  %i.is = xor i64 %i.ir, 7235419178565726303, !dbg !11294
  %i.it = or i64 %i.ip, %i.is, !dbg !11294
  %i.iu = icmp ne i64 %i.it, 0, !dbg !11294
  %i.iv = zext i1 %i.iu to i32, !dbg !11294
  %i.iw = icmp eq i32 %i.iv, 0, !dbg !11294
  br i1 %i.iw, label %bb.cg, label %bb.cn, !dbg !11295

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !10876), !dbg !11296
    #dbg_declare(ptr poison, !10877, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9995)
    #dbg_declare(ptr poison, !10878, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9996)
    #dbg_declare(ptr poison, !10890, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !9997)
    #dbg_declare(ptr %i.c, !10894, !DIExpression(), !10004)
    #dbg_declare(ptr %i.b, !10894, !DIExpression(), !10006)
    #dbg_declare(ptr %i.a, !10900, !DIExpression(), !10011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11297, !noalias !10876
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 10)
          to label %.noexc118 unwind label %bb.dv, !dbg !11298

.noexc118:                                        ; preds = %bb.cg
  %i.ix = load i64, ptr %i.c, align 8, !dbg !11299, !range !3687, !noalias !10876, !noundef !1445 ; 2 uses
  %.not.i97 = icmp eq i64 %i.ix, -1, !dbg !11299
  %i.iy = load i64, ptr %i.bc, align 8, !dbg !11300, !noalias !10876 ; 2 uses
  br i1 %.not.i97, label %bb.ci, label %bb.ch, !dbg !11301

bb.ch:                                            ; preds = %.noexc118
  %.sroa.543.0.copyload.i99 = load i64, ptr %.sroa.543.0..sroa_idx.i98, align 8, !dbg !11302, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11303, !noalias !10876
    #dbg_value(i64 %i.ix, !10884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10013)
    #dbg_value(i64 %i.ix, !10878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10015)
    #dbg_value(i64 %i.iy, !10884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10013)
    #dbg_value(i64 %i.iy, !10878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10015)
    #dbg_value(i64 %.sroa.543.0.copyload.i99, !10884, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10013)
    #dbg_value(i64 %.sroa.543.0.copyload.i99, !10878, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10015)
    #dbg_value(i64 %i.ix, !10879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10016)
    #dbg_value(i64 %i.iy, !10879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10016)
    #dbg_value(i64 %.sroa.543.0.copyload.i99, !10879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10016)
  store i64 %i.ix, ptr %i.ba, align 8, !dbg !11304, !alias.scope !10876
  store i64 %i.iy, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11304, !alias.scope !10876
  store i64 %.sroa.543.0.copyload.i99, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11304, !alias.scope !10876
  store i64 -1, ptr %i.ag, align 8, !dbg !11304, !alias.scope !10876
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11305

bb.ci:                                            ; preds = %.noexc118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11303, !noalias !10876
    #dbg_value(i64 %i.iy, !10883, !DIExpression(), !10017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11306, !noalias !10876
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 8)
          to label %.noexc119 unwind label %bb.dv, !dbg !11306

.noexc119:                                        ; preds = %bb.ci
  %i.iz = load i64, ptr %i.b, align 8, !dbg !11307, !range !3687, !noalias !10876, !noundef !1445 ; 2 uses
  %.not71.i102 = icmp eq i64 %i.iz, -1, !dbg !11307
  %i.ja = load i64, ptr %i.bd, align 8, !dbg !11308, !noalias !10876 ; 2 uses
  br i1 %.not71.i102, label %bb.ck, label %bb.cj, !dbg !11309

bb.cj:                                            ; preds = %.noexc119
  %.sroa.552.0.copyload.i104 = load i64, ptr %.sroa.552.0..sroa_idx.i103, align 8, !dbg !11310, !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11311, !noalias !10876
    #dbg_value(i64 %i.iz, !10887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10018)
    #dbg_value(i64 %i.iz, !10878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10020)
    #dbg_value(i64 %i.ja, !10887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10018)
    #dbg_value(i64 %i.ja, !10878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10020)
    #dbg_value(i64 %.sroa.552.0.copyload.i104, !10887, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10018)
    #dbg_value(i64 %.sroa.552.0.copyload.i104, !10878, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10020)
    #dbg_value(i64 %i.iz, !10880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10021)
    #dbg_value(i64 %i.ja, !10880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10021)
    #dbg_value(i64 %.sroa.552.0.copyload.i104, !10880, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10021)
  store i64 %i.iz, ptr %i.ba, align 8, !dbg !11312, !alias.scope !10876
  store i64 %i.ja, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11312, !alias.scope !10876
  store i64 %.sroa.552.0.copyload.i104, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11312, !alias.scope !10876
  store i64 -1, ptr %i.ag, align 8, !dbg !11312, !alias.scope !10876
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11313

bb.ck:                                            ; preds = %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11311, !noalias !10876
    #dbg_value(i64 %i.ja, !10886, !DIExpression(), !10022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11314, !noalias !10876
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc120 unwind label %bb.dv, !dbg !11314

.noexc120:                                        ; preds = %bb.ck
  %i.jb = load i64, ptr %i.a, align 8, !dbg !11315, !range !3687, !noalias !10876, !noundef !1445 ; 2 uses
  %.not72.i107 = icmp eq i64 %i.jb, -1, !dbg !11315
  %i.jc = load i8, ptr %.sroa.460.0..sroa_idx.i108, align 8, !dbg !11316, !noalias !10876 ; 2 uses
  br i1 %.not72.i107, label %bb.cm, label %bb.cl, !dbg !11317

bb.cl:                                            ; preds = %.noexc120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.561.0..sroa_idx.i110, i64 15, i1 false), !dbg !11318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11319, !noalias !10876
    #dbg_value(i64 %i.jb, !10890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10023)
    #dbg_value(i64 %i.jb, !10878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10024)
    #dbg_value(i8 %i.jc, !10890, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10023)
    #dbg_value(i8 %i.jc, !10878, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10024)
    #dbg_value(i64 %i.jb, !10877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(i8 %i.jc, !10877, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10025)
  store i64 %i.jb, ptr %i.ba, align 8, !dbg !11320, !alias.scope !10876
  store i8 %i.jc, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11320, !alias.scope !10876
  store i64 -1, ptr %i.ag, align 8, !dbg !11320, !alias.scope !10876
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11321

bb.cm:                                            ; preds = %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11319, !noalias !10876
    #dbg_value(i8 %i.jc, !10889, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10026)
    #dbg_value(i64 %i.iy, !10892, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !10027)
    #dbg_value(i8 %i.jc, !10892, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !10027)
    #dbg_value(i64 8, !10892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10027)
    #dbg_value(i64 %i.ja, !10892, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10027)
    #dbg_value(i64 23, !10892, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !10027)
    #dbg_value(i64 undef, !10892, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !10027)
    #dbg_value(i64 12, !10892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10027)
  store i64 12, ptr %i.ag, align 8, !dbg !11322, !alias.scope !10876
  store i64 8, ptr %i.ba, align 8, !dbg !11322, !alias.scope !10876
  store i64 %i.ja, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11322, !alias.scope !10876
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11322, !alias.scope !10876
  store i64 %i.iy, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11322, !alias.scope !10876
  store i8 %i.jc, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11322, !alias.scope !10876
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11323

bb.cn:                                            ; preds = %bb.cf
    #dbg_value(ptr poison, !10615, !DIExpression(), !10028)
    #dbg_value(ptr @48, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9483)
    #dbg_value(i64 11, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9483)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10029)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9615)
    #dbg_value(ptr @48, !10676, !DIExpression(), !9615)
  %i.jd = load i64, ptr %i.ct, align 1, !dbg !11324
  %i.je = xor i64 %i.jd, 8097309837751116131, !dbg !11324
  %i.jf = getelementptr i8, ptr %i.ct, i64 3, !dbg !11324
  %i.jg = load i64, ptr %i.jf, align 1, !dbg !11324
  %i.jh = xor i64 %i.jg, 7526488527763957091, !dbg !11324
  %i.ji = or i64 %i.je, %i.jh, !dbg !11324
  %i.jj = icmp ne i64 %i.ji, 0, !dbg !11324
  %i.jk = zext i1 %i.jj to i32, !dbg !11324
  %i.jl = icmp eq i32 %i.jk, 0, !dbg !11324
  br i1 %i.jl, label %bb.co, label %.critedge271.i, !dbg !11325

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !10909), !dbg !11326
    #dbg_declare(ptr poison, !10910, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !10049)
    #dbg_declare(ptr poison, !10911, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !10050)
    #dbg_declare(ptr poison, !10923, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !10051)
    #dbg_declare(ptr %i.f, !10927, !DIExpression(), !10058)
    #dbg_declare(ptr %i.e, !10927, !DIExpression(), !10060)
    #dbg_declare(ptr %i.d, !10933, !DIExpression(), !10065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11327, !noalias !10909
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 10)
          to label %.noexc94 unwind label %bb.dv, !dbg !11328

.noexc94:                                         ; preds = %bb.co
  %i.jm = load i64, ptr %i.f, align 8, !dbg !11329, !range !3687, !noalias !10909, !noundef !1445 ; 2 uses
  %.not.i = icmp eq i64 %i.jm, -1, !dbg !11329
  %i.jn = load i64, ptr %i.az, align 8, !dbg !11330, !noalias !10909 ; 2 uses
  br i1 %.not.i, label %bb.cq, label %bb.cp, !dbg !11331

bb.cp:                                            ; preds = %.noexc94
  %.sroa.543.0.copyload.i = load i64, ptr %.sroa.543.0..sroa_idx.i, align 8, !dbg !11332, !noalias !10909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11333, !noalias !10909
    #dbg_value(i64 %i.jm, !10917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10067)
    #dbg_value(i64 %i.jm, !10911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10069)
    #dbg_value(i64 %i.jn, !10917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10067)
    #dbg_value(i64 %i.jn, !10911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10069)
    #dbg_value(i64 %.sroa.543.0.copyload.i, !10917, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10067)
    #dbg_value(i64 %.sroa.543.0.copyload.i, !10911, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10069)
    #dbg_value(i64 %i.jm, !10912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10070)
    #dbg_value(i64 %i.jn, !10912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10070)
    #dbg_value(i64 %.sroa.543.0.copyload.i, !10912, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10070)
  store i64 %i.jm, ptr %i.ba, align 8, !dbg !11334, !alias.scope !10909
  store i64 %i.jn, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11334, !alias.scope !10909
  store i64 %.sroa.543.0.copyload.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11334, !alias.scope !10909
  store i64 -1, ptr %i.ag, align 8, !dbg !11334, !alias.scope !10909
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11335

bb.cq:                                            ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11333, !noalias !10909
    #dbg_value(i64 %i.jn, !10916, !DIExpression(), !10071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11336, !noalias !10909
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h313prompt_varint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 8)
          to label %.noexc95 unwind label %bb.dv, !dbg !11336

.noexc95:                                         ; preds = %bb.cq
  %i.jo = load i64, ptr %i.e, align 8, !dbg !11337, !range !3687, !noalias !10909, !noundef !1445 ; 2 uses
  %.not71.i = icmp eq i64 %i.jo, -1, !dbg !11337
  %i.jp = load i64, ptr %i.bb, align 8, !dbg !11338, !noalias !10909 ; 2 uses
  br i1 %.not71.i, label %bb.cs, label %bb.cr, !dbg !11339

bb.cr:                                            ; preds = %.noexc95
  %.sroa.552.0.copyload.i = load i64, ptr %.sroa.552.0..sroa_idx.i, align 8, !dbg !11340, !noalias !10909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11341, !noalias !10909
    #dbg_value(i64 %i.jo, !10920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10072)
    #dbg_value(i64 %i.jo, !10911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10074)
    #dbg_value(i64 %i.jp, !10920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10072)
    #dbg_value(i64 %i.jp, !10911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10074)
    #dbg_value(i64 %.sroa.552.0.copyload.i, !10920, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10072)
    #dbg_value(i64 %.sroa.552.0.copyload.i, !10911, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10074)
    #dbg_value(i64 %i.jo, !10913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10075)
    #dbg_value(i64 %i.jp, !10913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10075)
    #dbg_value(i64 %.sroa.552.0.copyload.i, !10913, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10075)
  store i64 %i.jo, ptr %i.ba, align 8, !dbg !11342, !alias.scope !10909
  store i64 %i.jp, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11342, !alias.scope !10909
  store i64 %.sroa.552.0.copyload.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !11342, !alias.scope !10909
  store i64 -1, ptr %i.ag, align 8, !dbg !11342, !alias.scope !10909
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11343

bb.cs:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11341, !noalias !10909
    #dbg_value(i64 %i.jp, !10919, !DIExpression(), !10076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11344, !noalias !10909
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h36stream17prompt_fin_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc96 unwind label %bb.dv, !dbg !11344

.noexc96:                                         ; preds = %bb.cs
  %i.jq = load i64, ptr %i.d, align 8, !dbg !11345, !range !3687, !noalias !10909, !noundef !1445 ; 2 uses
  %.not72.i = icmp eq i64 %i.jq, -1, !dbg !11345
  %i.jr = load i8, ptr %.sroa.460.0..sroa_idx.i, align 8, !dbg !11346, !noalias !10909 ; 2 uses
  br i1 %.not72.i, label %bb.cu, label %bb.ct, !dbg !11347

bb.ct:                                            ; preds = %.noexc96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.564.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.561.0..sroa_idx.i, i64 15, i1 false), !dbg !11348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11349, !noalias !10909
    #dbg_value(i64 %i.jq, !10923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10077)
    #dbg_value(i64 %i.jq, !10911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10078)
    #dbg_value(i8 %i.jr, !10923, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10077)
    #dbg_value(i8 %i.jr, !10911, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10078)
    #dbg_value(i64 %i.jq, !10910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10079)
    #dbg_value(i8 %i.jr, !10910, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10079)
  store i64 %i.jq, ptr %i.ba, align 8, !dbg !11350, !alias.scope !10909
  store i8 %i.jr, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11350, !alias.scope !10909
  store i64 -1, ptr %i.ag, align 8, !dbg !11350, !alias.scope !10909
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, !dbg !11351

bb.cu:                                            ; preds = %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11349, !noalias !10909
    #dbg_value(i8 %i.jr, !10922, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10080)
    #dbg_value(i64 %i.jn, !10925, !DIExpression(DW_OP_LLVM_fragment, 1408, 64), !10081)
    #dbg_value(i8 %i.jr, !10925, !DIExpression(DW_OP_LLVM_fragment, 1472, 8), !10081)
    #dbg_value(i64 4, !10925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10081)
    #dbg_value(i64 %i.jp, !10925, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10081)
    #dbg_value(i64 23, !10925, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !10081)
    #dbg_value(i64 undef, !10925, !DIExpression(DW_OP_LLVM_fragment, 1344, 64), !10081)
    #dbg_value(i64 12, !10925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10081)
  store i64 12, ptr %i.ag, align 8, !dbg !11352, !alias.scope !10909
  store i64 4, ptr %i.ba, align 8, !dbg !11352, !alias.scope !10909
  store i64 %i.jp, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !11352, !alias.scope !10909
  store i64 23, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11352, !alias.scope !10909
  store i64 %i.jn, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !11352, !alias.scope !10909
  store i8 %i.jr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !11352, !alias.scope !10909
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, !dbg !11353

bb.cv:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !10615, !DIExpression(), !9922)
    #dbg_value(ptr @46, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9477)
    #dbg_value(i64 6, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9477)
    #dbg_value(ptr poison, !10616, !DIExpression(), !9923)
    #dbg_value(ptr poison, !10615, !DIExpression(), !10082)
    #dbg_value(ptr @47, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9480)
    #dbg_value(i64 11, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9480)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10083)
    #dbg_value(ptr poison, !10615, !DIExpression(), !10084)
    #dbg_value(ptr @49, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9486)
    #dbg_value(i64 12, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9486)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10085)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9619)
    #dbg_value(ptr @49, !10676, !DIExpression(), !9619)
  %i.js = load i64, ptr %i.ct, align 1, !dbg !11354
  %i.jt = xor i64 %i.js, 8030604640631616880, !dbg !11354
  %i.ju = getelementptr i8, ptr %i.ct, i64 8, !dbg !11354
  %i.jv = load i32, ptr %i.ju, align 1, !dbg !11354
  %i.jw = zext i32 %i.jv to i64, !dbg !11354
  %i.jx = xor i64 %i.jw, 1702062445, !dbg !11354
  %i.jy = or i64 %i.jt, %i.jx, !dbg !11354
  %i.jz = icmp ne i64 %i.jy, 0, !dbg !11354
  %i.ka = zext i1 %i.jz to i32, !dbg !11354
  %i.kb = icmp eq i32 %i.ka, 0, !dbg !11354
  br i1 %i.kb, label %bb.cw, label %bb.da, !dbg !11355

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h37headers19prompt_push_promise(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11356

.critedge269.i:                                   ; preds = %bb.bf
    #dbg_value(ptr poison, !10615, !DIExpression(), !10086)
    #dbg_value(ptr @50, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9489)
    #dbg_value(i64 15, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9489)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10087)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9623)
    #dbg_value(ptr @50, !10676, !DIExpression(), !9623)
  %i.kc = load i64, ptr %i.ct, align 1, !dbg !11357
  %i.kd = xor i64 %i.kc, 8751735916104086128, !dbg !11357
  %i.ke = getelementptr i8, ptr %i.ct, i64 7, !dbg !11357
  %i.kf = load i64, ptr %i.ke, align 1, !dbg !11357
  %i.kg = xor i64 %i.kf, 7310575179140521849, !dbg !11357
  %i.kh = or i64 %i.kd, %i.kg, !dbg !11357
  %i.ki = icmp ne i64 %i.kh, 0, !dbg !11357
  %i.kj = zext i1 %i.ki to i32, !dbg !11357
  %i.kk = icmp eq i32 %i.kj, 0, !dbg !11357
  br i1 %i.kk, label %bb.cx, label %.critedge271.i, !dbg !11358

bb.cx:                                            ; preds = %.critedge269.i
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h38priority15prompt_priority(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11359

bb.cy:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9627)
    #dbg_value(ptr @51, !10676, !DIExpression(), !9627)
  %i.kl = load i128, ptr %i.ct, align 1, !dbg !11360
  %i.km = icmp ne i128 %i.kl, 134851401647869950657208105590475091811, !dbg !11360
  %i.kn = zext i1 %i.km to i32, !dbg !11360
  %i.ko = icmp eq i32 %i.kn, 0, !dbg !11360
  br i1 %i.ko, label %bb.cz, label %.critedge271.i, !dbg !11361

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h323prompt_connection_close(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11362

bb.da:                                            ; preds = %bb.cv
    #dbg_value(ptr poison, !10615, !DIExpression(), !10086)
    #dbg_value(ptr @50, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9489)
    #dbg_value(i64 15, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9489)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10087)
    #dbg_value(ptr poison, !10615, !DIExpression(), !10088)
    #dbg_value(ptr @51, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9492)
    #dbg_value(i64 16, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9492)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10089)
    #dbg_value(ptr poison, !10615, !DIExpression(), !10090)
    #dbg_value(ptr @52, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9495)
    #dbg_value(i64 12, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9495)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10091)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9631)
    #dbg_value(ptr @52, !10676, !DIExpression(), !9631)
  %i.kp = load i64, ptr %i.ct, align 1, !dbg !11363
  %i.kq = xor i64 %i.kp, 7088504603585705075, !dbg !11363
  %i.kr = getelementptr i8, ptr %i.ct, i64 8, !dbg !11363
  %i.ks = load i32, ptr %i.kr, align 1, !dbg !11363
  %i.kt = zext i32 %i.ks to i64, !dbg !11363
  %i.ku = xor i64 %i.kt, 1936028793, !dbg !11363
  %i.kv = or i64 %i.kq, %i.ku, !dbg !11363
  %i.kw = icmp ne i64 %i.kv, 0, !dbg !11363
  %i.kx = zext i1 %i.kw to i32, !dbg !11363
  %i.ky = icmp eq i32 %i.kx, 0, !dbg !11363
  br i1 %i.ky, label %bb.db, label %.critedge271.i, !dbg !11364

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h319prompt_stream_bytes(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11365

bb.dc:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9635)
    #dbg_value(ptr @53, !10676, !DIExpression(), !9635)
  %i.kz = load i128, ptr %i.ct, align 1, !dbg !11366
  %i.la = xor i128 %i.kz, 152058775323879002982719589709648257380, !dbg !11366
  %i.lb = getelementptr i8, ptr %i.ct, i64 10, !dbg !11366
  %i.lc = load i128, ptr %i.lb, align 1, !dbg !11366
  %i.ld = xor i128 %i.lc, 133469926243562493113245878947796902261, !dbg !11366
  %i.le = or i128 %i.la, %i.ld, !dbg !11366
  %i.lf = icmp ne i128 %i.le, 0, !dbg !11366
  %i.lg = zext i1 %i.lf to i32, !dbg !11366
  %i.lh = icmp eq i32 %i.lg, 0, !dbg !11366
  br i1 %i.lh, label %bb.dm, label %.critedge271.i, !dbg !11367

bb.dd:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9639)
    #dbg_value(ptr @54, !10676, !DIExpression(), !9639)
  %i.li = load i128, ptr %i.ct, align 1, !dbg !11368
  %i.lj = xor i128 %i.li, 161342519478750268826871788878049861988, !dbg !11368
  %i.lk = getelementptr i8, ptr %i.ct, i64 16, !dbg !11368
  %i.ll = load i32, ptr %i.lk, align 1, !dbg !11368
  %i.lm = zext i32 %i.ll to i128, !dbg !11368
  %i.ln = xor i128 %i.lm, 1684107116, !dbg !11368
  %i.lo = or i128 %i.lj, %i.ln, !dbg !11368
  %i.lp = icmp ne i128 %i.lo, 0, !dbg !11368
  %i.lq = zext i1 %i.lp to i32, !dbg !11368
  %i.lr = icmp eq i32 %i.lq, 0, !dbg !11368
  br i1 %i.lr, label %bb.dm, label %.critedge271.i, !dbg !11369

bb.de:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9643)
    #dbg_value(ptr @55, !10676, !DIExpression(), !9643)
  %i.ls = load i64, ptr %i.ct, align 1, !dbg !11370
  %i.lt = xor i64 %i.ls, 7021216721288916070, !dbg !11370
  %i.lu = getelementptr i8, ptr %i.ct, i64 5, !dbg !11370
  %i.lv = load i64, ptr %i.lu, align 1, !dbg !11370
  %i.lw = xor i64 %i.lv, 8319385923563384927, !dbg !11370
  %i.lx = or i64 %i.lt, %i.lw, !dbg !11370
  %i.ly = icmp ne i64 %i.lx, 0, !dbg !11370
  %i.lz = zext i1 %i.ly to i32, !dbg !11370
  %i.ma = icmp eq i32 %i.lz, 0, !dbg !11370
  br i1 %i.ma, label %bb.df, label %.critedge271.i, !dbg !11371

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !11372, !noalias !10570
  store i64 20, ptr %i.af, align 8, !dbg !11372, !noalias !10570
    #dbg_declare(ptr %i.af, !10942, !DIExpression(), !10095)
    #dbg_value(i64 8, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10097)
    #dbg_value(i64 8, !2346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10099)
    #dbg_value(i64 8, !2365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10101)
    #dbg_value(i64 208, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10097)
    #dbg_value(i64 208, !2346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(i64 208, !2365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10101)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2363, !DIExpression(), !10099)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2369, !DIExpression(), !10101)
    #dbg_value(i8 0, !2370, !DIExpression(), !10101)
    #dbg_value(i64 8, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10103)
    #dbg_value(i64 8, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 208, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10103)
    #dbg_value(i64 208, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i1 false, !2376, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10103)
    #dbg_value(i64 208, !2377, !DIExpression(), !10106)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !11373, !noalias !10948
  %i.mb = call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 208, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !11374, !noalias !10948 ; 3 uses
  %i.mc = icmp eq ptr %i.mb, null, !dbg !11375
  br i1 %i.mc, label %bb.dg, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit272.i, !dbg !11376, !prof !2397

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #31
          to label %.noexc93 unwind label %bb.dh, !dbg !11377

.noexc93:                                         ; preds = %bb.dg
  unreachable, !dbg !11377

bb.dh:                                            ; preds = %bb.dg
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.af) #28
          to label %.body31 unwind label %bb.di, !dbg !11378, !noalias !10569

bb.di:                                            ; preds = %bb.dh
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11379, !noalias !10569
  unreachable, !dbg !11379

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit272.i: ; preds = %bb.df
    #dbg_value(ptr %i.mb, !10946, !DIExpression(), !10109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.mb, ptr noundef nonnull align 8 dereferenceable(208) %i.af, i64 208, i1 false), !dbg !11380, !noalias !10569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !11381, !noalias !10570
  br label %.thread148, !dbg !11382

bb.dj:                                            ; preds = %bb.bx
    #dbg_value(ptr poison, !10615, !DIExpression(), !10110)
    #dbg_value(ptr @53, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9498)
    #dbg_value(i64 26, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9498)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10111)
    #dbg_value(ptr poison, !10615, !DIExpression(), !10112)
    #dbg_value(ptr @56, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9507)
    #dbg_value(i64 6, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9507)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10113)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9647)
    #dbg_value(ptr @56, !10676, !DIExpression(), !9647)
  %i.mf = load i32, ptr %i.ct, align 1, !dbg !11383
  %i.mg = xor i32 %i.mf, 1835888483, !dbg !11383
  %i.mh = getelementptr i8, ptr %i.ct, i64 4, !dbg !11383
  %i.mi = load i16, ptr %i.mh, align 1, !dbg !11383
  %i.mj = zext i16 %i.mi to i32, !dbg !11383
  %i.mk = xor i32 %i.mj, 29801, !dbg !11383
  %i.ml = or i32 %i.mg, %i.mk, !dbg !11383
  %i.mm = icmp ne i32 %i.ml, 0, !dbg !11383
  %i.mn = zext i1 %i.mm to i32, !dbg !11383
  %i.mo = icmp eq i32 %i.mn, 0, !dbg !11383
  br i1 %i.mo, label %.thread156, label %.critedge271.i, !dbg !11384

.thread156:                                       ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !11385, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !11386
  br label %.loopexit, !dbg !11387

.thread344.i:                                     ; preds = %bb.t
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9651)
    #dbg_value(ptr @57, !10676, !DIExpression(), !9651)
  %i.mp = load i32, ptr %i.ct, align 1, !dbg !11388
  %i.mq = icmp ne i32 %i.mp, 1953063287, !dbg !11388
  %i.mr = zext i1 %i.mq to i32, !dbg !11388
  %i.ms = icmp eq i32 %i.mr, 0, !dbg !11388
  br i1 %i.ms, label %bb.dk, label %bb.dl, !dbg !11389

bb.dk:                                            ; preds = %.thread344.i
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h34wait11prompt_wait(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11390

bb.dl:                                            ; preds = %.thread344.i
    #dbg_value(ptr poison, !10615, !DIExpression(), !10114)
    #dbg_value(ptr @58, !10584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9513)
    #dbg_value(i64 4, !10584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9513)
    #dbg_value(ptr poison, !10616, !DIExpression(), !10115)
    #dbg_value(ptr %i.ct, !10675, !DIExpression(), !9655)
    #dbg_value(ptr @58, !10676, !DIExpression(), !9655)
  %i.mt = load i32, ptr %i.ct, align 1, !dbg !11391
  %i.mu = icmp ne i32 %i.mt, 1953068401, !dbg !11391
  %i.mv = zext i1 %i.mu to i32, !dbg !11391
  %i.mw = icmp eq i32 %i.mv, 0, !dbg !11391
  br i1 %i.mw, label %.thread159, label %.critedge271.i, !dbg !11392

.thread159:                                       ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !11385, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !11386
  store i64 0, ptr %0, align 8, !dbg !11393
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11393
  store ptr inttoptr (i64 8 to ptr), ptr %i.mx, align 8, !dbg !11393
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11393
  store i64 0, ptr %i.my, align 8, !dbg !11393
    #dbg_value(ptr %i.ao, !2820, !DIExpression(), !10117)
    #dbg_value(ptr %i.ao, !2805, !DIExpression(), !10119)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ek unwind label %bb.ei, !dbg !11394

.critedge271.i:                                   ; preds = %bb.dl, %bb.dj, %bb.de, %bb.dd, %bb.dc, %bb.da, %bb.cy, %.critedge269.i, %bb.cn, %bb.ah, %bb.s, %bb.q, %bb.p, %bb.o
    #dbg_value(ptr %i.ah, !10479, !DIExpression(), !10120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !11395, !noalias !10570
  store ptr %i.ah, ptr %i.ae, align 8, !dbg !11395, !noalias !10570
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsjfnSKV9Rz3v_3h3i, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !11395, !noalias !10570
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @59, ptr noundef nonnull %i.ae)
          to label %.thread153 unwind label %bb.dv, !dbg !11396

.thread153:                                       ; preds = %.critedge271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !11396, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !11385, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !11386
  br label %bb.ea, !dbg !11387

_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i: ; preds = %.thread328.i, %bb.dm, %bb.dk, %bb.db, %bb.cz, %bb.cx, %bb.cw, %bb.cu, %bb.cm, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ce, %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316prompt_extension.exit.i, %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i281.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit.i.i, %bb.af
  %.pr.i.pr = load i64, ptr %i.ag, align 8, !dbg !11397, !noalias !10570
  %i.mz = icmp eq i64 %.pr.i.pr, -1, !dbg !11397
  br i1 %i.mz, label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i, label %bb.dr, !dbg !11398

bb.dm:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.03.0.i = phi i1 [ false, %bb.dd ], [ true, %bb.dc ], !dbg !11399
  invoke void @_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h320prompt_send_datagram(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag, i1 noundef zeroext %.sroa.03.0.i)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11400

.thread328.i:                                     ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.01.0324.i = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ true, %bb.s ]
  %.sroa.02.0.i = phi i1 [ false, %bb.r ], [ true, %bb.q ], [ false, %bb.p ], [ true, %bb.s ], !dbg !11401
    #dbg_value(i8 poison, !10477, !DIExpression(), !10121)
    #dbg_value(ptr %1, !10950, !DIExpression(), !10124)
    #dbg_value(ptr %1, !10952, !DIExpression(), !10127)
  %i.na = load ptr, ptr %i.bv, align 8, !dbg !11402, !alias.scope !10569, !noalias !10954, !nonnull !1445, !noundef !1445
  %i.nb = load i64, ptr %i.bw, align 8, !dbg !11403, !alias.scope !10569, !noalias !10954, !noundef !1445
  invoke void @_RNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h37headers14prompt_headers(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.na, i64 noundef %i.nb, i1 noundef zeroext %.sroa.02.0.i, i1 noundef zeroext %.sroa.01.0324.i)
          to label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i unwind label %bb.dv, !dbg !11404

_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i: ; preds = %bb.cl, %bb.cj, %bb.ch, %bb.ct, %bb.cr, %bb.cp, %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i, %bb.cd, %bb.cb, %bb.bz, %bb.ar, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !11405, !noalias !10570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !dbg !11405, !noalias !10570
  call void @llvm.experimental.noalias.scope.decl(metadata !10955), !dbg !11406
    #dbg_declare(ptr %i.ac, !10956, !DIExpression(), !10144)
  %i.nc = load i64, ptr %i.ac, align 8, !dbg !11407, !range !2817, !alias.scope !10955, !noalias !10570, !noundef !1445 ; 2 uses
  %i.nd = icmp ne i64 %i.nc, -9223372036854775807, !dbg !11407
  call void @llvm.assume(i1 %i.nd), !dbg !11407
  %i.ne = add i64 %i.nc, 9223372036854775803, !dbg !11407
  %switch.i.i = icmp ult i64 %i.ne, -2, !dbg !11407 ; 2 uses
  br i1 %switch.i.i, label %bb.dn, label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324handle_action_loop_error.exit.i, !dbg !11408

bb.dn:                                            ; preds = %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i
    #dbg_value(ptr %i.ac, !10960, !DIExpression(), !10145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11409, !noalias !10964
  store ptr %i.ac, ptr %i.g, align 8, !dbg !11409, !noalias !10964
  store ptr @_RNvXs2_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !11409, !noalias !10964
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @86, ptr noundef nonnull %i.g)
          to label %bb.dp unwind label %bb.do, !dbg !11410

bb.do:                                            ; preds = %bb.dn
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #28
          to label %.body31 unwind label %bb.dq, !dbg !11411

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11410, !noalias !10964
  br label %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324handle_action_loop_error.exit.i, !dbg !11412

bb.dq:                                            ; preds = %bb.do
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11413
  unreachable, !dbg !11413

_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324handle_action_loop_error.exit.i: ; preds = %bb.dp, %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.thread.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8Nb2mar7w9E_7inquire5error12InquireErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dw unwind label %bb.dv, !dbg !11411

bb.dr:                                            ; preds = %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h311prompt_data.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !11414, !noalias !10570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %i.ag, i64 208, i1 false), !dbg !11414, !noalias !10570
    #dbg_declare(ptr %i.ad, !10942, !DIExpression(), !10147)
    #dbg_value(i64 8, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10149)
    #dbg_value(i64 8, !2346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10151)
    #dbg_value(i64 8, !2365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10153)
    #dbg_value(i64 208, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10149)
    #dbg_value(i64 208, !2346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10151)
    #dbg_value(i64 208, !2365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10153)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2363, !DIExpression(), !10151)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2369, !DIExpression(), !10153)
    #dbg_value(i8 0, !2370, !DIExpression(), !10153)
    #dbg_value(i64 8, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10155)
    #dbg_value(i64 8, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(i64 208, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10155)
    #dbg_value(i64 208, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10157)
    #dbg_value(i1 false, !2376, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10155)
    #dbg_value(i64 208, !2377, !DIExpression(), !10158)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !11415, !noalias !10965
  %i.nh = call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 208, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !11416, !noalias !10965 ; 3 uses
  %i.ni = icmp eq ptr %i.nh, null, !dbg !11417
  br i1 %i.ni, label %bb.ds, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit.i, !dbg !11418, !prof !2397

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #31
          to label %.noexc.i unwind label %bb.dt, !dbg !11419

.noexc.i:                                         ; preds = %bb.ds
  unreachable, !dbg !11419

bb.dt:                                            ; preds = %bb.ds
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ad) #28
          to label %.body31 unwind label %bb.du, !dbg !11420

bb.du:                                            ; preds = %bb.dt
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11421
  unreachable, !dbg !11421

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit.i: ; preds = %bb.dr
    #dbg_value(ptr %i.nh, !10946, !DIExpression(), !10161)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.nh, ptr noundef nonnull align 8 dereferenceable(208) %i.ag, i64 208, i1 false), !dbg !11422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !11423, !noalias !10570
  br label %.thread148, !dbg !11423

bb.dv:                                            ; preds = %bb.ck, %bb.ci, %bb.cg, %bb.cs, %bb.cq, %bb.co, %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324handle_action_loop_error.exit.i, %.thread328.i, %bb.dm, %.critedge271.i, %bb.dk, %bb.db, %bb.cz, %bb.cx, %bb.cw, %bb.cc, %bb.ca, %bb.by, %.noexc43, %bb.bk, %bb.bi, %bb.bg, %.noexc39, %.noexc38, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %.noexc29, %bb.w, %bb.u
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body31, !dbg !11047

.body31:                                          ; preds = %bb.z, %bb.ac, %common.resume.sink.split.i, %bb.au, %bb.ax, %bb.ba, %bb.bm, %bb.bp, %bb.bs, %bb.dh, %bb.do, %bb.dt, %bb.dv
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.nl, %bb.dv ], [ %i.nf, %bb.do ], [ %i.eo, %bb.z ], [ %i.gt, %bb.ax ], [ %i.hr, %bb.bp ], [ %i.md, %bb.dh ], [ %i.er, %bb.ac ], [ %i.hp, %bb.bm ], [ %i.gw, %bb.ba ], [ %i.gr, %bb.au ], [ %i.nj, %bb.dt ], [ %i.hu, %bb.bs ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #28
          to label %.thread127 unwind label %bb.eq, !dbg !11047

.thread148:                                       ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit272.i
  %.sroa.8.1.i.ph = phi ptr [ %i.mb, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit272.i ], [ %i.nh, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE3newBK_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !11385, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !11386
    #dbg_value(ptr %.sroa.8.1.i.ph, !10438, !DIExpression(), !10966)
    #dbg_value(ptr %i.ap, !10527, !DIExpression(), !10967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !11424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.8.1.i.ph, i64 208, i1 false), !dbg !11424
  call void @llvm.experimental.noalias.scope.decl(metadata !10968), !dbg !11425
    #dbg_value(ptr %i.ap, !10969, !DIExpression(), !10168)
    #dbg_value(ptr %i.ap, !10977, !DIExpression(), !10171)
    #dbg_declare(ptr %i.ak, !10973, !DIExpression(), !10172)
    #dbg_value(i64 208, !10982, !DIExpression(), !10177)
  %i.nm = load i64, ptr %i.ar, align 8, !dbg !11426, !alias.scope !10968, !noalias !10991, !noundef !1445 ; 3 uses
    #dbg_value(i64 %i.nm, !10974, !DIExpression(), !10179)
    #dbg_value(i64 %i.nm, !10992, !DIExpression(), !10182)
    #dbg_value(ptr %i.ap, !10989, !DIExpression(), !10183)
  %i.nn = load i64, ptr %i.ap, align 8, !dbg !11427, !range !2294, !alias.scope !10968, !noalias !10991, !noundef !1445
  %i.no = icmp eq i64 %i.nm, %i.nn, !dbg !11428
  br i1 %i.no, label %bb.dx, label %bb.em, !dbg !11428

bb.dw:                                            ; preds = %_RNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h324handle_action_loop_error.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !11429, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !11385, !noalias !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !11386
  br i1 %switch.i.i, label %.loopexit, label %bb.ea, !dbg !11387

bb.dx:                                            ; preds = %.thread148
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.em unwind label %bb.dy, !dbg !11430, !noalias !10991

bb.dy:                                            ; preds = %bb.dx
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak) #28
          to label %bb.er unwind label %bb.dz, !dbg !11431, !noalias !10968

bb.dz:                                            ; preds = %bb.dy
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !11432, !noalias !10968
  unreachable, !dbg !11432

bb.ea:                                            ; preds = %bb.dw, %.thread153
    #dbg_value(ptr %i.ao, !2820, !DIExpression(), !10185)
    #dbg_value(ptr %i.ao, !2805, !DIExpression(), !10187)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ed unwind label %bb.eb, !dbg !11433

bb.eb:                                            ; preds = %bb.ea
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i61 = load i64, ptr %i.ao, align 8, !dbg !11433, !range !2294, !alias.scope !10997, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !10195)
    #dbg_value(ptr poison, !2814, !DIExpression(), !10197)
    #dbg_value(ptr poison, !2558, !DIExpression(), !10199)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10199)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10199)
    #dbg_value(ptr poison, !2567, !DIExpression(), !10201)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10201)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10201)
  %i.ns = icmp eq i64 %.val3.i.i61, 0, !dbg !11434
  br i1 %i.ns, label %.thread127, label %bb.ec, !dbg !11434

bb.ec:                                            ; preds = %bb.eb
  %.val4.i.i = load ptr, ptr %i.aw, align 8, !dbg !11433, !alias.scope !10998, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val4.i.i, !2564, !DIExpression(), !10202)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10202)
    #dbg_value(i64 %.val3.i.i61, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10202)
    #dbg_value(ptr poison, !2449, !DIExpression(), !10204)
    #dbg_value(ptr poison, !2455, !DIExpression(), !10206)
    #dbg_value(ptr %.val4.i.i, !2452, !DIExpression(), !10204)
    #dbg_value(ptr %.val4.i.i, !2458, !DIExpression(), !10206)
    #dbg_value(ptr %.val4.i.i, !2461, !DIExpression(), !10208)
    #dbg_value(ptr %.val4.i.i, !2467, !DIExpression(), !10210)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10204)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10206)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10208)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10210)
    #dbg_value(i64 %.val3.i.i61, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10204)
    #dbg_value(i64 %.val3.i.i61, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10206)
    #dbg_value(i64 %.val3.i.i61, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10208)
    #dbg_value(i64 %.val3.i.i61, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10210)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11435, !noalias !10999
  br label %.thread127, !dbg !11436

bb.ed:                                            ; preds = %bb.ea
  %.val.i.i62 = load i64, ptr %i.ao, align 8, !dbg !11433, !range !2294, !alias.scope !10997, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !10214)
    #dbg_value(ptr poison, !2814, !DIExpression(), !10216)
    #dbg_value(ptr poison, !2558, !DIExpression(), !10218)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10218)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10218)
    #dbg_value(ptr poison, !2567, !DIExpression(), !10220)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10220)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10220)
  %i.nt = icmp eq i64 %.val.i.i62, 0, !dbg !11437
  br i1 %i.nt, label %.backedge, label %.backedge.sink.split, !dbg !11437

.loopexit:                                        ; preds = %bb.dw, %.thread156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !11438
    #dbg_value(ptr %i.ao, !2820, !DIExpression(), !10222)
    #dbg_value(ptr %i.ao, !2805, !DIExpression(), !10224)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.eg unwind label %bb.ee, !dbg !11439

bb.ee:                                            ; preds = %.loopexit
  %i.nu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i66 = load i64, ptr %i.ao, align 8, !dbg !11439, !range !2294, !alias.scope !11000, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !10232)
    #dbg_value(ptr poison, !2814, !DIExpression(), !10234)
    #dbg_value(ptr poison, !2558, !DIExpression(), !10236)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10236)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10236)
    #dbg_value(ptr poison, !2567, !DIExpression(), !10238)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10238)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10238)
  %i.nv = icmp eq i64 %.val3.i.i66, 0, !dbg !11440
  br i1 %i.nv, label %common.resume, label %bb.ef, !dbg !11440

bb.ef:                                            ; preds = %bb.ee
  %.val4.i.i67 = load ptr, ptr %i.aw, align 8, !dbg !11439, !alias.scope !11001, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val4.i.i67, !2564, !DIExpression(), !10239)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10239)
    #dbg_value(i64 %.val3.i.i66, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10239)
    #dbg_value(ptr poison, !2449, !DIExpression(), !10241)
    #dbg_value(ptr poison, !2455, !DIExpression(), !10243)
    #dbg_value(ptr %.val4.i.i67, !2452, !DIExpression(), !10241)
    #dbg_value(ptr %.val4.i.i67, !2458, !DIExpression(), !10243)
    #dbg_value(ptr %.val4.i.i67, !2461, !DIExpression(), !10245)
    #dbg_value(ptr %.val4.i.i67, !2467, !DIExpression(), !10247)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10241)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10243)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10245)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10247)
    #dbg_value(i64 %.val3.i.i66, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10241)
    #dbg_value(i64 %.val3.i.i66, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10243)
    #dbg_value(i64 %.val3.i.i66, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10245)
    #dbg_value(i64 %.val3.i.i66, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10247)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i67, i64 noundef %.val3.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11441, !noalias !11002
  br label %common.resume, !dbg !11442

bb.eg:                                            ; preds = %.loopexit
  %.val.i.i69 = load i64, ptr %i.ao, align 8, !dbg !11439, !range !2294, !alias.scope !11000, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !10251)
    #dbg_value(ptr poison, !2814, !DIExpression(), !10253)
    #dbg_value(ptr poison, !2558, !DIExpression(), !10255)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10255)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10255)
    #dbg_value(ptr poison, !2567, !DIExpression(), !10257)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10257)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10257)
  %i.nw = icmp eq i64 %.val.i.i69, 0, !dbg !11443
  br i1 %i.nw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit74, label %bb.eh, !dbg !11443

bb.eh:                                            ; preds = %bb.eg
  %.val2.i.i70 = load ptr, ptr %i.aw, align 8, !dbg !11439, !alias.scope !11001, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val2.i.i70, !2564, !DIExpression(), !10258)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10258)
    #dbg_value(i64 %.val.i.i69, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10258)
    #dbg_value(ptr poison, !2449, !DIExpression(), !10260)
    #dbg_value(ptr poison, !2455, !DIExpression(), !10262)
    #dbg_value(ptr %.val2.i.i70, !2452, !DIExpression(), !10260)
    #dbg_value(ptr %.val2.i.i70, !2458, !DIExpression(), !10262)
    #dbg_value(ptr %.val2.i.i70, !2461, !DIExpression(), !10264)
    #dbg_value(ptr %.val2.i.i70, !2467, !DIExpression(), !10266)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10260)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10262)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10264)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10266)
    #dbg_value(i64 %.val.i.i69, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10260)
    #dbg_value(i64 %.val.i.i69, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10262)
    #dbg_value(i64 %.val.i.i69, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10264)
    #dbg_value(i64 %.val.i.i69, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10266)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i70, i64 noundef %.val.i.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !11444, !noalias !11003
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i.exit74, !dbg !11445

bb.ei:                                            ; preds = %.thread159
  %i.nx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i75 = load i64, ptr %i.ao, align 8, !dbg !11394, !range !2294, !alias.scope !11004, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !10276)
    #dbg_value(ptr poison, !2814, !DIExpression(), !10278)
    #dbg_value(ptr poison, !2558, !DIExpression(), !10280)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10280)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10280)
end_hunk_2
