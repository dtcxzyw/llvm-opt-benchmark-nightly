Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB19_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata:bb.a
    #dbg_value(ptr undef, !3751, !DIExpression(), !3816)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3822)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3823)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3824)
  %i.cn = select i1 %i.ck, ptr %i.au, ptr %i.as, !dbg !3825, !unpredictable !29
    #dbg_value(ptr poison, !3751, !DIExpression(), !3826)
    #dbg_value(ptr poison, !3782, !DIExpression(), !3828)
    #dbg_value(i1 %i.bq, !3762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3829)
    #dbg_value(ptr %i.ap, !3763, !DIExpression(), !3829)
    #dbg_value(ptr %i.cn, !3764, !DIExpression(), !3829)
    #dbg_value(ptr %i.ap, !3765, !DIExpression(), !3830)
    #dbg_value(ptr %i.cn, !3781, !DIExpression(), !3831)
    #dbg_value(ptr undef, !3782, !DIExpression(), !3828)
    #dbg_value(ptr undef, !3751, !DIExpression(), !3826)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3832)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3833)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3834)
  %i.co = select i1 %i.bq, ptr %i.ap, ptr %i.cn, !dbg !3835, !unpredictable !29 ; 5 uses
    #dbg_value(ptr %i.co, !3362, !DIExpression(), !3836)
    #dbg_value(ptr poison, !3751, !DIExpression(), !3837)
    #dbg_value(ptr poison, !3782, !DIExpression(), !3839)
    #dbg_value(i1 %i.bq, !3762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3840)
    #dbg_value(ptr %i.as, !3763, !DIExpression(), !3840)
    #dbg_value(ptr %i.au, !3764, !DIExpression(), !3840)
    #dbg_value(ptr %i.as, !3765, !DIExpression(), !3841)
    #dbg_value(ptr %i.au, !3781, !DIExpression(), !3842)
    #dbg_value(ptr undef, !3782, !DIExpression(), !3839)
    #dbg_value(ptr undef, !3751, !DIExpression(), !3837)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3843)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3844)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3845)
  %i.cp = select i1 %i.bq, ptr %i.as, ptr %i.au, !dbg !3846, !unpredictable !29
    #dbg_value(ptr poison, !3751, !DIExpression(), !3847)
    #dbg_value(ptr poison, !3782, !DIExpression(), !3849)
    #dbg_value(i1 %i.ck, !3762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3850)
    #dbg_value(ptr %i.aw, !3763, !DIExpression(), !3850)
    #dbg_value(ptr %i.cp, !3764, !DIExpression(), !3850)
    #dbg_value(ptr %i.aw, !3765, !DIExpression(), !3851)
    #dbg_value(ptr %i.cp, !3781, !DIExpression(), !3852)
    #dbg_value(ptr undef, !3782, !DIExpression(), !3849)
    #dbg_value(ptr undef, !3751, !DIExpression(), !3847)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3853)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3854)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3855)
  %i.cq = select i1 %i.ck, ptr %i.aw, ptr %i.cp, !dbg !3856, !unpredictable !29 ; 5 uses
    #dbg_value(ptr %i.cq, !3364, !DIExpression(), !3857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3858), !dbg !3861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862), !dbg !3861
    #dbg_value(ptr %i.cq, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3864)
    #dbg_value(ptr %i.co, !2705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3864)
    #dbg_value(ptr poison, !2714, !DIExpression(), !3864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3866), !dbg !3869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3870), !dbg !3869
    #dbg_value(ptr %i.cq, !2730, !DIExpression(), !3872)
    #dbg_value(ptr %i.co, !2735, !DIExpression(), !3872)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !3874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876), !dbg !3879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880), !dbg !3879
    #dbg_value(ptr %i.cq, !2777, !DIExpression(), !3882)
    #dbg_value(ptr %i.co, !2784, !DIExpression(), !3882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884), !dbg !3887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888), !dbg !3887
    #dbg_value(ptr %i.cq, !2793, !DIExpression(), !3890)
    #dbg_value(ptr %i.co, !2799, !DIExpression(), !3890)
    #dbg_value(ptr %i.cq, !2804, !DIExpression(), !3892)
    #dbg_value(ptr %i.cq, !2815, !DIExpression(), !3894)
    #dbg_value(ptr %i.cq, !2827, !DIExpression(), !3896)
    #dbg_value(ptr %i.cq, !2833, !DIExpression(), !3898)
    #dbg_value(ptr %i.co, !2812, !DIExpression(), !3900)
    #dbg_value(ptr %i.co, !2815, !DIExpression(), !3901)
    #dbg_value(ptr %i.co, !2827, !DIExpression(), !3903)
    #dbg_value(ptr %i.co, !2833, !DIExpression(), !3905)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !3907
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !3907, !alias.scope !3911, !noalias !3912, !nonnull !29, !noundef !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !3913
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !3913, !alias.scope !3911, !noalias !3912, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.cu, !2874, !DIExpression(), !3914)
    #dbg_value(ptr %i.cs, !2904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3917)
    #dbg_value(ptr %i.cs, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3918)
    #dbg_value(i64 %i.cu, !2904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3917)
    #dbg_value(i64 %i.cu, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3918)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !3919
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !3919, !alias.scope !3912, !noalias !3911, !nonnull !29, !noundef !29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !3923
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !3923, !alias.scope !3912, !noalias !3911, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.cw, !2905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3917)
    #dbg_value(ptr %i.cw, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3918)
    #dbg_value(i64 %i.cy, !2905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3917)
    #dbg_value(i64 %i.cy, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3918)
  %i.cz = sub i64 %i.cu, %i.cy, !dbg !3924
    #dbg_value(i64 %i.cz, !2890, !DIExpression(), !3925)
  %spec.store.select.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cy), !dbg !3926
    #dbg_value(i64 %spec.store.select.i.i.i.i41, !2874, !DIExpression(), !3914)
    #dbg_value(ptr %i.cs, !2891, !DIExpression(), !3927)
    #dbg_value(ptr %i.cw, !2893, !DIExpression(), !3928)
  %i.da = tail call i32 @memcmp(ptr nonnull %i.cs, ptr nonnull %i.cw, i64 %spec.store.select.i.i.i.i41), !dbg !3929, !noalias !3930 ; 2 uses
  %i.db = sext i32 %i.da to i64, !dbg !3929
    #dbg_value(i64 %i.db, !2895, !DIExpression(), !3931)
  %i.dc = icmp eq i32 %i.da, 0, !dbg !3932
  %spec.store.select1.i.i.i.i42 = select i1 %i.dc, i64 %i.cz, i64 %i.db, !dbg !3932 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i42, !2895, !DIExpression(), !3931)
  %i.dd = icmp eq i64 %spec.store.select1.i.i.i.i42, 0, !dbg !3933
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 24, !dbg !3933
  %i.df = load i8, ptr %i.de, align 8, !dbg !3933, !range !2927, !alias.scope !3934, !noalias !3935
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !3933
  %i.dh = load i8, ptr %i.dg, align 8, !dbg !3933, !range !2927, !alias.scope !3935, !noalias !3934
    #dbg_value(i8 poison, !2766, !DIExpression(), !3936)
  %i.di = icmp samesign ult i8 %i.df, %i.dh, !dbg !3937
  %i.dj = icmp slt i64 %spec.store.select1.i.i.i.i42, 0, !dbg !3937
  %i.dk = select i1 %i.dd, i1 %i.di, i1 %i.dj, !dbg !3933 ; 2 uses
    #dbg_value(i1 %i.dk, !3366, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3938)
    #dbg_value(ptr poison, !3751, !DIExpression(), !3939)
    #dbg_value(ptr poison, !3782, !DIExpression(), !3941)
    #dbg_value(i1 %i.dk, !3762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3942)
    #dbg_value(ptr %i.cq, !3763, !DIExpression(), !3942)
    #dbg_value(ptr %i.co, !3764, !DIExpression(), !3942)
    #dbg_value(ptr %i.cq, !3765, !DIExpression(), !3943)
    #dbg_value(ptr %i.co, !3781, !DIExpression(), !3944)
    #dbg_value(ptr undef, !3782, !DIExpression(), !3941)
    #dbg_value(ptr undef, !3751, !DIExpression(), !3939)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3945)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3946)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3947)
  %i.dl = select i1 %i.dk, ptr %i.cq, ptr %i.co, !dbg !3948, !unpredictable !29
    #dbg_value(ptr %i.dl, !3368, !DIExpression(), !3949)
    #dbg_value(ptr %i.dl, !3395, !DIExpression(), !3409)
    #dbg_value(ptr poison, !3751, !DIExpression(), !3950)
    #dbg_value(ptr poison, !3782, !DIExpression(), !3952)
    #dbg_value(i1 %i.dk, !3762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3953)
    #dbg_value(ptr %i.co, !3763, !DIExpression(), !3953)
    #dbg_value(ptr %i.cq, !3764, !DIExpression(), !3953)
    #dbg_value(ptr %i.co, !3765, !DIExpression(), !3954)
    #dbg_value(ptr %i.cq, !3781, !DIExpression(), !3955)
    #dbg_value(ptr undef, !3782, !DIExpression(), !3952)
    #dbg_value(ptr undef, !3751, !DIExpression(), !3950)
    #dbg_value(ptr poison, !3784, !DIExpression(), !3956)
    #dbg_value(ptr poison, !3786, !DIExpression(), !3957)
    #dbg_value(ptr poison, !3788, !DIExpression(), !3958)
  %i.dm = select i1 %i.dk, ptr %i.co, ptr %i.cq, !dbg !3959, !unpredictable !29
    #dbg_value(ptr %i.dm, !3370, !DIExpression(), !3960)
    #dbg_value(ptr %i.dm, !3395, !DIExpression(), !3411)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 32, i1 false), !dbg !3961
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !3962
    #dbg_value(ptr %i.dn, !3392, !DIExpression(), !3409)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 32, i1 false), !dbg !3963
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !3964
    #dbg_value(ptr %i.do, !3392, !DIExpression(), !3411)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 32, i1 false), !dbg !3965
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !3966
    #dbg_value(ptr %i.dp, !3392, !DIExpression(), !3413)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 32, i1 false), !dbg !3967
  ret void, !dbg !3968
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !3969 {
bb.a:
    #dbg_value(ptr %0, !3987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4002)
    #dbg_value(i64 %1, !3987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4002)
    #dbg_value(i64 %2, !3988, !DIExpression(), !4002)
    #dbg_value(i64 %2, !4003, !DIExpression(), !4011)
    #dbg_value(ptr %3, !3989, !DIExpression(), !4002)
    #dbg_value(i64 1, !4009, !DIExpression(), !4013)
    #dbg_value(i64 %1, !3990, !DIExpression(), !4015)
    #dbg_value(i64 %1, !4003, !DIExpression(), !4016)
  %i.a = add i64 %2, -1, !dbg !4018
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !4018
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !4018

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !4019
  unreachable, !dbg !4019

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3992, !DIExpression(), !4020)
    #dbg_value(ptr %0, !4008, !DIExpression(), !4016)
    #dbg_value(ptr %0, !4008, !DIExpression(), !4011)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !4021
    #dbg_value(ptr %i.b, !3995, !DIExpression(), !4022)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !3997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4023)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !4008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4013)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !4024
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !4024

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %2, !dbg !4025
    #dbg_value(ptr %i.c, !3997, !DIExpression(), !4023)
    #dbg_value(ptr %i.c, !4008, !DIExpression(), !4013)
  br label %.lr.ph, !dbg !4026

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, %bb.c
  ret void, !dbg !4055

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.012 = phi ptr [ %i.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !4008, !DIExpression(), !4013)
    #dbg_value(ptr poison, !4056, !DIExpression(), !4062)
    #dbg_value(ptr poison, !4066, !DIExpression(), !4070)
    #dbg_value(ptr poison, !4056, !DIExpression(), !4071)
    #dbg_value(ptr poison, !4066, !DIExpression(), !4074)
    #dbg_value(ptr poison, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4075)
    #dbg_value(ptr poison, !4046, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4075)
    #dbg_value(ptr poison, !4076, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4083)
    #dbg_value(ptr poison, !4076, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4083)
    #dbg_value(ptr undef, !4076, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4083)
    #dbg_value(ptr undef, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4075)
    #dbg_value(ptr %0, !4032, !DIExpression(), !4085)
    #dbg_value(ptr %.sroa.0.012, !4033, !DIExpression(), !4085)
    #dbg_value(ptr %.sroa.0.012, !4086, !DIExpression(), !4090)
    #dbg_value(ptr poison, !4034, !DIExpression(), !4085)
    #dbg_value(i64 1, !4089, !DIExpression(), !4090)
    #dbg_value(i64 1, !4092, !DIExpression(), !4097)
    #dbg_value(i64 1, !4089, !DIExpression(), !4099)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -2, !dbg !4101 ; 4 uses
    #dbg_value(ptr %i.d, !4035, !DIExpression(), !4102)
    #dbg_value(ptr %i.d, !4086, !DIExpression(), !4099)
  %.val20.i = load i16, ptr %.sroa.0.012, align 1, !dbg !4026 ; 3 uses
  %i.e = trunc i16 %.val20.i to i8, !dbg !4026    ; 4 uses
  %i.f = lshr i16 %.val20.i, 8, !dbg !4026
  %i.g = trunc nuw i16 %i.f to i8, !dbg !4026     ; 2 uses
  %.val22.i = load i8, ptr %i.d, align 1, !dbg !4026, !noundef !29 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.012, i64 -1, !dbg !4026
  %.val23.i = load i8, ptr %i.h, align 1, !dbg !4026
    #dbg_value(ptr poison, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4116)
    #dbg_value(ptr poison, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4116)
    #dbg_value(ptr poison, !4108, !DIExpression(), !4116)
    #dbg_value(ptr poison, !4118, !DIExpression(), !4126)
    #dbg_value(ptr poison, !4122, !DIExpression(), !4126)
    #dbg_declare(ptr poison, !4128, !DIExpression(), !4134)
    #dbg_value(ptr poison, !4136, !DIExpression(), !4144)
    #dbg_value(ptr poison, !4143, !DIExpression(), !4144)
    #dbg_value(ptr poison, !4146, !DIExpression(), !4155)
    #dbg_value(ptr poison, !4152, !DIExpression(), !4155)
  %i.i = icmp eq i8 %.val22.i, %i.e, !dbg !4157
    #dbg_value(i8 poison, !4131, !DIExpression(), !4158)
  %i.j = icmp ugt i8 %.val23.i, %i.g, !dbg !4159
  %i.k = icmp ugt i8 %.val22.i, %i.e, !dbg !4159
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k, !dbg !4157
  br i1 %i.l, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !4026

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %.sroa.0.012, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4075)
    #dbg_value(ptr %i.d, !4086, !DIExpression(), !4099)
    #dbg_value(ptr %i.d, !4035, !DIExpression(), !4102)
    #dbg_value(ptr %i.d, !4095, !DIExpression(), !4097)
    #dbg_value(ptr %.sroa.0.012, !4096, !DIExpression(), !4097)
  %i.m = load i16, ptr %i.d, align 1, !dbg !4160
  store i16 %i.m, ptr %.sroa.0.012, align 1, !dbg !4160
  %i.n = icmp eq ptr %i.d, %0, !dbg !4161
  br i1 %i.n, label %._crit_edge17, label %.lr.ph16, !dbg !4161

.preheader:                                       ; preds = %.lr.ph16
    #dbg_value(ptr %.sroa.0.0.i15, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4075)
    #dbg_value(ptr %i.q, !4086, !DIExpression(), !4099)
    #dbg_value(ptr %i.q, !4035, !DIExpression(), !4102)
    #dbg_value(ptr %i.q, !4095, !DIExpression(), !4097)
    #dbg_value(ptr %.sroa.0.0.i15, !4096, !DIExpression(), !4097)
  %i.o = load i16, ptr %i.q, align 1, !dbg !4160
  store i16 %i.o, ptr %.sroa.0.0.i15, align 1, !dbg !4160
    #dbg_value(ptr %i.q, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4075)
  %i.p = icmp eq ptr %i.q, %0, !dbg !4161
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !4161

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !4086, !DIExpression(), !4099)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -2, !dbg !4162 ; 4 uses
    #dbg_value(ptr %i.q, !4035, !DIExpression(), !4102)
    #dbg_value(ptr %i.q, !4086, !DIExpression(), !4099)
  %.val18.i = load i8, ptr %i.q, align 1, !dbg !4163, !noundef !29 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -1, !dbg !4163
  %.val19.i = load i8, ptr %i.r, align 1, !dbg !4163
    #dbg_value(ptr poison, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4164)
    #dbg_value(ptr poison, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4164)
    #dbg_value(ptr poison, !4108, !DIExpression(), !4164)
    #dbg_value(ptr poison, !4118, !DIExpression(), !4166)
    #dbg_value(ptr poison, !4122, !DIExpression(), !4166)
    #dbg_declare(ptr poison, !4128, !DIExpression(), !4168)
    #dbg_value(ptr poison, !4136, !DIExpression(), !4170)
    #dbg_value(ptr poison, !4143, !DIExpression(), !4170)
    #dbg_value(ptr poison, !4146, !DIExpression(), !4172)
    #dbg_value(ptr poison, !4152, !DIExpression(), !4172)
  %i.s = icmp eq i8 %.val18.i, %i.e, !dbg !4174
    #dbg_value(i8 poison, !4131, !DIExpression(), !4175)
  %i.t = icmp ugt i8 %.val19.i, %i.g, !dbg !4176
  %i.u = icmp ugt i8 %.val18.i, %i.e, !dbg !4176
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !4174
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !4163

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !4085
    #dbg_value(ptr undef, !4066, !DIExpression(), !4070)
    #dbg_value(ptr undef, !4056, !DIExpression(), !4062)
    #dbg_value(ptr undef, !4076, !DIExpression(), !4083)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !4081, !DIExpression(), !4083)
    #dbg_value(i64 1, !4082, !DIExpression(), !4083)
  store i16 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 1, !dbg !4177, !noalias !4178
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !4183

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 2, !dbg !4184 ; 2 uses
    #dbg_value(ptr %i.w, !4008, !DIExpression(), !4013)
    #dbg_value(ptr %i.w, !3997, !DIExpression(), !4023)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !4024
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !4024
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !4185 {
bb.a:
    #dbg_value(ptr %0, !4204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4219)
    #dbg_value(i64 %1, !4204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4219)
    #dbg_value(i64 %2, !4205, !DIExpression(), !4219)
    #dbg_value(i64 %2, !4220, !DIExpression(), !4228)
    #dbg_value(ptr %3, !4206, !DIExpression(), !4219)
    #dbg_value(i64 1, !4226, !DIExpression(), !4230)
    #dbg_value(i64 %1, !4207, !DIExpression(), !4232)
    #dbg_value(i64 %1, !4220, !DIExpression(), !4233)
  %i.a = add i64 %2, -1, !dbg !4235
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !4235
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !4235

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !4236
  unreachable, !dbg !4236

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4209, !DIExpression(), !4237)
    #dbg_value(ptr %0, !4225, !DIExpression(), !4233)
    #dbg_value(ptr %0, !4225, !DIExpression(), !4228)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !4238
    #dbg_value(ptr %i.b, !4212, !DIExpression(), !4239)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !4214, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4240)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !4225, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4230)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !4241
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !4241

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2, !dbg !4242
    #dbg_value(ptr %i.c, !4214, !DIExpression(), !4240)
    #dbg_value(ptr %i.c, !4225, !DIExpression(), !4230)
  br label %.lr.ph, !dbg !4243

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, %bb.c
  ret void, !dbg !4272

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.012 = phi ptr [ %i.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !4225, !DIExpression(), !4230)
    #dbg_value(ptr poison, !4273, !DIExpression(), !4279)
    #dbg_value(ptr poison, !4283, !DIExpression(), !4287)
    #dbg_value(ptr poison, !4273, !DIExpression(), !4288)
    #dbg_value(ptr poison, !4283, !DIExpression(), !4291)
    #dbg_value(ptr poison, !4263, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4292)
    #dbg_value(ptr poison, !4263, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4292)
    #dbg_value(ptr poison, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4300)
    #dbg_value(ptr poison, !4293, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4300)
    #dbg_value(ptr undef, !4293, !DIExpression(), !4300)
    #dbg_value(ptr undef, !4263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4292)
    #dbg_value(ptr %0, !4249, !DIExpression(), !4302)
    #dbg_value(ptr %.sroa.0.012, !4250, !DIExpression(), !4302)
    #dbg_value(ptr %.sroa.0.012, !4303, !DIExpression(), !4307)
    #dbg_value(ptr poison, !4251, !DIExpression(), !4302)
    #dbg_value(i64 1, !4306, !DIExpression(), !4307)
    #dbg_value(i64 1, !4309, !DIExpression(), !4314)
    #dbg_value(i64 1, !4306, !DIExpression(), !4316)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -8, !dbg !4318 ; 4 uses
    #dbg_value(ptr %i.d, !4252, !DIExpression(), !4319)
    #dbg_value(ptr %i.d, !4303, !DIExpression(), !4316)
  %.val20.i = load i64, ptr %.sroa.0.012, align 4, !dbg !4243 ; 3 uses
  %i.e = trunc i64 %.val20.i to i32, !dbg !4243   ; 4 uses
  %i.f = lshr i64 %.val20.i, 32, !dbg !4243
  %i.g = trunc nuw i64 %i.f to i32, !dbg !4243    ; 2 uses
  %.val22.i = load i32, ptr %i.d, align 4, !dbg !4243, !range !4320, !noundef !29 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.012, i64 -4, !dbg !4243
  %.val23.i = load i32, ptr %i.h, align 4, !dbg !4243
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4334)
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4334)
    #dbg_value(ptr poison, !4326, !DIExpression(), !4334)
    #dbg_value(ptr poison, !4336, !DIExpression(), !4344)
    #dbg_value(ptr poison, !4340, !DIExpression(), !4344)
    #dbg_declare(ptr poison, !4346, !DIExpression(), !4352)
    #dbg_value(ptr poison, !4354, !DIExpression(), !4361)
    #dbg_value(ptr poison, !4360, !DIExpression(), !4361)
    #dbg_value(ptr poison, !4363, !DIExpression(), !4372)
    #dbg_value(ptr poison, !4369, !DIExpression(), !4372)
  %i.i = icmp eq i32 %.val22.i, %i.e, !dbg !4374
    #dbg_value(i8 poison, !4349, !DIExpression(), !4375)
  %i.j = icmp ugt i32 %.val23.i, %i.g, !dbg !4376
  %i.k = icmp samesign ugt i32 %.val22.i, %i.e, !dbg !4376
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k, !dbg !4374
  br i1 %i.l, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !4243

.preheader.preheader:                             ; preds = %.lr.ph
    #dbg_value(ptr %.sroa.0.012, !4263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4292)
    #dbg_value(ptr %i.d, !4303, !DIExpression(), !4316)
    #dbg_value(ptr %i.d, !4252, !DIExpression(), !4319)
    #dbg_value(ptr %i.d, !4312, !DIExpression(), !4314)
    #dbg_value(ptr %.sroa.0.012, !4313, !DIExpression(), !4314)
  %i.m = load i64, ptr %i.d, align 4, !dbg !4377
  store i64 %i.m, ptr %.sroa.0.012, align 4, !dbg !4377
  %i.n = icmp eq ptr %i.d, %0, !dbg !4378
  br i1 %i.n, label %._crit_edge17, label %.lr.ph16, !dbg !4378

.preheader:                                       ; preds = %.lr.ph16
    #dbg_value(ptr %.sroa.0.0.i15, !4263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4292)
    #dbg_value(ptr %i.q, !4303, !DIExpression(), !4316)
    #dbg_value(ptr %i.q, !4252, !DIExpression(), !4319)
    #dbg_value(ptr %i.q, !4312, !DIExpression(), !4314)
    #dbg_value(ptr %.sroa.0.0.i15, !4313, !DIExpression(), !4314)
  %i.o = load i64, ptr %i.q, align 4, !dbg !4377
  store i64 %i.o, ptr %.sroa.0.0.i15, align 4, !dbg !4377
    #dbg_value(ptr %i.q, !4263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4292)
  %i.p = icmp eq ptr %i.q, %0, !dbg !4378
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !4378

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !4303, !DIExpression(), !4316)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -8, !dbg !4379 ; 4 uses
    #dbg_value(ptr %i.q, !4252, !DIExpression(), !4319)
    #dbg_value(ptr %i.q, !4303, !DIExpression(), !4316)
  %.val18.i = load i32, ptr %i.q, align 4, !dbg !4380, !range !4320, !noundef !29 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -4, !dbg !4380
  %.val19.i = load i32, ptr %i.r, align 4, !dbg !4380
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4381)
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4381)
    #dbg_value(ptr poison, !4326, !DIExpression(), !4381)
    #dbg_value(ptr poison, !4336, !DIExpression(), !4383)
    #dbg_value(ptr poison, !4340, !DIExpression(), !4383)
    #dbg_declare(ptr poison, !4346, !DIExpression(), !4385)
    #dbg_value(ptr poison, !4354, !DIExpression(), !4387)
    #dbg_value(ptr poison, !4360, !DIExpression(), !4387)
    #dbg_value(ptr poison, !4363, !DIExpression(), !4389)
    #dbg_value(ptr poison, !4369, !DIExpression(), !4389)
  %i.s = icmp eq i32 %.val18.i, %i.e, !dbg !4391
    #dbg_value(i8 poison, !4349, !DIExpression(), !4392)
  %i.t = icmp ugt i32 %.val19.i, %i.g, !dbg !4393
  %i.u = icmp samesign ugt i32 %.val18.i, %i.e, !dbg !4393
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !4391
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !4380

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !4302
    #dbg_value(ptr undef, !4283, !DIExpression(), !4287)
    #dbg_value(ptr undef, !4273, !DIExpression(), !4279)
    #dbg_value(ptr undef, !4293, !DIExpression(), !4300)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !4298, !DIExpression(), !4300)
    #dbg_value(i64 1, !4299, !DIExpression(), !4300)
  store i64 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 4, !dbg !4394, !noalias !4395
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !4400

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !4401 ; 2 uses
    #dbg_value(ptr %i.w, !4225, !DIExpression(), !4230)
    #dbg_value(ptr %i.w, !4214, !DIExpression(), !4240)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !4241
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !4241
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #7 !dbg !4402 {
bb.a:
    #dbg_value(ptr %0, !4411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4422)
    #dbg_value(i64 %1, !4411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4422)
    #dbg_value(i64 %2, !4412, !DIExpression(), !4422)
    #dbg_value(i64 %2, !4423, !DIExpression(), !4428)
    #dbg_value(ptr %3, !4413, !DIExpression(), !4422)
    #dbg_value(i64 1, !4427, !DIExpression(), !4430)
    #dbg_value(i64 %1, !4414, !DIExpression(), !4432)
    #dbg_value(i64 %1, !4423, !DIExpression(), !4433)
  %i.a = add i64 %2, -1, !dbg !4435
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !4435
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !4435

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !4436
  unreachable, !dbg !4436

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4416, !DIExpression(), !4437)
    #dbg_value(ptr %0, !4426, !DIExpression(), !4433)
    #dbg_value(ptr %0, !4426, !DIExpression(), !4428)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !4438
    #dbg_value(ptr %i.b, !4418, !DIExpression(), !4439)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !4420, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4440)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !4426, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4430)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !4441
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !4441

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2, !dbg !4442
    #dbg_value(ptr %i.c, !4420, !DIExpression(), !4440)
    #dbg_value(ptr %i.c, !4426, !DIExpression(), !4430)
  br label %.lr.ph, !dbg !4441

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void, !dbg !4443

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.012 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
    #dbg_value(ptr %.sroa.0.012, !4426, !DIExpression(), !4430)
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noundef %0, ptr noundef %.sroa.0.012), !dbg !4444
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 32, !dbg !4445 ; 2 uses
    #dbg_value(ptr %i.d, !4426, !DIExpression(), !4430)
    #dbg_value(ptr %i.d, !4420, !DIExpression(), !4440)
  %.not = icmp eq ptr %i.d, %i.b, !dbg !4441
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !4441
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYBW_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4446 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4533)
    #dbg_value(ptr %0, !4534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4551)
    #dbg_value(ptr %0, !4553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4562)
    #dbg_value(ptr %0, !4564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4578)
    #dbg_value(i64 %1, !4462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4533)
    #dbg_value(i64 %1, !4534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4551)
    #dbg_value(i64 %1, !4553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4562)
    #dbg_value(i64 %1, !4564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4578)
    #dbg_value(ptr %2, !4463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4533)
    #dbg_value(i64 %3, !4463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4533)
    #dbg_value(i1 %4, !4464, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4533)
    #dbg_value(ptr %5, !4465, !DIExpression(), !4533)
    #dbg_declare(ptr %i.b, !4474, !DIExpression(), !4580)
    #dbg_declare(ptr %i.a, !4499, !DIExpression(), !4581)
    #dbg_value(i64 4611686018427387904, !4582, !DIExpression(), !4594)
    #dbg_value(i64 64, !4602, !DIExpression(), !4608)
    #dbg_value(i64 %1, !4466, !DIExpression(), !4610)
    #dbg_value(i64 %1, !4600, !DIExpression(), !4611)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !4612
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !4612

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !4589, !DIExpression(), !4594)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !4613
    #dbg_value(i64 %i.d, !4590, !DIExpression(), !4614)
  %i.e = urem i64 4611686018427387904, %1, !dbg !4615
    #dbg_value(i64 %i.e, !4592, !DIExpression(), !4616)
  %.not = icmp ne i64 %i.e, 0, !dbg !4617
  %i.f = zext i1 %.not to i64, !dbg !4617
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !4617 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !4468, !DIExpression(), !4618)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !4619
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !4619

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !4620
    #dbg_value(i64 %i.h, !4470, !DIExpression(), !4621)
  br label %bb.e, !dbg !4620

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !4622
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !4623
    #dbg_value(i64 %i.j, !4607, !DIExpression(), !4608)
    #dbg_value(ptr undef, !4624, !DIExpression(DW_OP_deref), !4631)
    #dbg_value(ptr undef, !4628, !DIExpression(DW_OP_deref), !4631)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !4633
    #dbg_value(i64 %..i, !4470, !DIExpression(), !4621)
  br label %bb.e, !dbg !4634

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !4618 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !4470, !DIExpression(), !4621)
    #dbg_value(i64 0, !4472, !DIExpression(), !4635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4636
    #dbg_value(ptr %i.b, !4496, !DIExpression(), !4637)
    #dbg_value(ptr %i.b, !4638, !DIExpression(), !4646)
    #dbg_value(ptr %i.b, !4638, !DIExpression(), !4648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4650
    #dbg_value(ptr %i.a, !4516, !DIExpression(), !4651)
    #dbg_value(ptr %i.a, !4652, !DIExpression(), !4658)
    #dbg_value(ptr %i.a, !4652, !DIExpression(), !4660)
    #dbg_value(i64 0, !4518, !DIExpression(), !4662)
    #dbg_value(i64 1, !4520, !DIExpression(), !4663)
  %.not27.i80155 = icmp ugt i64 %.sroa.01.0, 2
  %.not27.i80160 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !4664

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !4662 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gu, %bb.aa ], !dbg !4651 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gs, %bb.aa ], !dbg !4621 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !4472, !DIExpression(), !4635)
    #dbg_value(i64 %.sroa.09.0, !4518, !DIExpression(), !4662)
    #dbg_value(i64 %.sroa.023.0, !4520, !DIExpression(), !4663)
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !4665 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !4665

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.021.0 = phi i8 [ %i.cs, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ 0, %bb.f ], !dbg !4666 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ 1, %bb.f ], !dbg !4666 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !4522, !DIExpression(), !4666)
    #dbg_value(i8 %.sroa.021.0, !4524, !DIExpression(), !4666)
    #dbg_value(i64 %.sroa.02.0, !4472, !DIExpression(), !4635)
    #dbg_value(i64 %.sroa.023.0, !4520, !DIExpression(), !4663)
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !4667
  br i1 %i.l, label %.lr.ph117, label %._crit_edge, !dbg !4667

.lr.ph117:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !4667

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !4548, !DIExpression(), !4551)
    #dbg_value(i64 %.sroa.09.0, !4559, !DIExpression(), !4562)
    #dbg_value(i64 %.sroa.09.0, !4668, !DIExpression(), !4679)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !4681 ; 11 uses
    #dbg_value(i64 %i.n, !4560, !DIExpression(), !4682)
    #dbg_value(i64 %i.n, !4678, !DIExpression(), !4679)
    #dbg_value(ptr %0, !4677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4679)
    #dbg_value(i64 %1, !4677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4679)
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0, !dbg !4683 ; 11 uses
    #dbg_value(ptr %i.o, !4684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4700)
    #dbg_value(i64 %i.n, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4700)
    #dbg_value(ptr %2, !4689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4700)
    #dbg_value(i64 %3, !4689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4700)
    #dbg_value(i64 %.sroa.01.0, !4690, !DIExpression(), !4700)
    #dbg_value(i64 %.sroa.01.0, !4702, !DIExpression(), !4706)
    #dbg_value(i1 %4, !4691, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4700)
    #dbg_value(ptr %5, !4692, !DIExpression(), !4700)
    #dbg_value(i64 %i.n, !4693, !DIExpression(), !4708)
    #dbg_value(i64 %i.n, !4705, !DIExpression(), !4709)
    #dbg_value(i64 %i.n, !4705, !DIExpression(), !4706)
  %.not.i79 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !4711
  br i1 %.not.i79, label %bb.i, label %bb.j, !dbg !4711

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !4712

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !4713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4734)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4745)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4759)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4761)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4766)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4768)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4771)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4773)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4776)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
    #dbg_value(ptr %i.o, !4736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4781)
    #dbg_value(ptr %i.o, !4747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4783)
    #dbg_value(i64 %i.n, !4713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4734)
    #dbg_value(i64 %i.n, !4736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4745)
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!3875 = distinct !DILocation(line: 1471, column: 33, scope: !2731, inlinedAt: !3873)
!3876 = !{!3877}
!3877 = distinct !{!3877, !3878, !"_RNvXsn_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!3878 = distinct !{!3878, !"_RNvXsn_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp"}
!3879 = !DILocation(line: 1471, column: 14, scope: !2731, inlinedAt: !3873)
!3880 = !{!3881}
!3881 = distinct !{!3881, !3878, !"_RNvXsn_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!3882 = !DILocation(line: 0, scope: !2778, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 1471, column: 14, scope: !2731, inlinedAt: !3873)
!3884 = !{!3885}
!3885 = distinct !{!3885, !3886, !"_RNvXso_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp: argument 0"}
!3886 = distinct !{!3886, !"_RNvXso_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp"}
!3887 = !DILocation(line: 2048, column: 32, scope: !2778, inlinedAt: !3883)
!3888 = !{!3889}
!3889 = distinct !{!3889, !3886, !"_RNvXso_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp: argument 1"}
!3890 = !DILocation(line: 0, scope: !2794, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 2048, column: 32, scope: !2778, inlinedAt: !3883)
!3892 = !DILocation(line: 4346, column: 12, scope: !2805, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 2050, column: 5, scope: !2794, inlinedAt: !3891)
!3894 = !DILocation(line: 3854, column: 14, scope: !2816, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 4347, column: 19, scope: !2805, inlinedAt: !3893)
!3896 = !DILocation(line: 1848, column: 27, scope: !2828, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 3855, column: 14, scope: !2816, inlinedAt: !3895)
!3898 = !DILocation(line: 1966, column: 25, scope: !2834, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1865, column: 76, scope: !2828, inlinedAt: !3897)
!3900 = !DILocation(line: 4346, column: 19, scope: !2805, inlinedAt: !3893)
!3901 = !DILocation(line: 3854, column: 14, scope: !2816, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 4347, column: 28, scope: !2805, inlinedAt: !3893)
!3903 = !DILocation(line: 1848, column: 27, scope: !2828, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 3855, column: 14, scope: !2846, inlinedAt: !3902)
!3905 = !DILocation(line: 1966, column: 25, scope: !2834, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 1865, column: 76, scope: !2849, inlinedAt: !3904)
!3907 = !DILocation(line: 611, column: 9, scope: !2851, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 606, column: 14, scope: !2859, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 296, column: 20, scope: !2865, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 1969, column: 18, scope: !2834, inlinedAt: !3899)
!3911 = !{!3885, !3877, !3867, !3859}
!3912 = !{!3889, !3881, !3871, !3863}
!3913 = !DILocation(line: 1865, column: 86, scope: !2828, inlinedAt: !3897)
!3914 = !DILocation(line: 0, scope: !2875, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 40, column: 9, scope: !2901, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 4347, column: 9, scope: !2805, inlinedAt: !3893)
!3917 = !DILocation(line: 0, scope: !2901, inlinedAt: !3916)
!3918 = !DILocation(line: 0, scope: !2878, inlinedAt: !3915)
!3919 = !DILocation(line: 611, column: 9, scope: !2851, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 606, column: 14, scope: !2911, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 296, column: 20, scope: !2913, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1969, column: 18, scope: !2915, inlinedAt: !3906)
!3923 = !DILocation(line: 1865, column: 86, scope: !2828, inlinedAt: !3904)
!3924 = !DILocation(line: 328, column: 20, scope: !2878, inlinedAt: !3915)
!3925 = !DILocation(line: 0, scope: !2877, inlinedAt: !3915)
!3926 = !DILocation(line: 331, column: 22, scope: !2877, inlinedAt: !3915)
!3927 = !DILocation(line: 0, scope: !2892, inlinedAt: !3915)
!3928 = !DILocation(line: 0, scope: !2894, inlinedAt: !3915)
!3929 = !DILocation(line: 339, column: 34, scope: !2894, inlinedAt: !3915)
!3930 = !{!3885, !3889, !3877, !3881, !3867, !3871, !3859, !3863}
!3931 = !DILocation(line: 0, scope: !2896, inlinedAt: !3915)
!3932 = !DILocation(line: 340, column: 12, scope: !2896, inlinedAt: !3915)
!3933 = !DILocation(line: 2050, column: 5, scope: !2794, inlinedAt: !3891)
!3934 = !{!3877, !3867, !3859}
!3935 = !{!3881, !3871, !3863}
!3936 = !DILocation(line: 0, scope: !2742, inlinedAt: !3875)
!3937 = !DILocation(line: 660, column: 9, scope: !2742, inlinedAt: !3875)
!3938 = !DILocation(line: 0, scope: !3367)
!3939 = !DILocation(line: 0, scope: !3752, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 644, column: 18, scope: !3367)
!3941 = !DILocation(line: 0, scope: !3754, inlinedAt: !3940)
!3942 = !DILocation(line: 0, scope: !3757, inlinedAt: !3940)
!3943 = !DILocation(line: 0, scope: !3756, inlinedAt: !3940)
!3944 = !DILocation(line: 0, scope: !3755, inlinedAt: !3940)
!3945 = !DILocation(line: 0, scope: !3785, inlinedAt: !3940)
!3946 = !DILocation(line: 0, scope: !3787, inlinedAt: !3940)
!3947 = !DILocation(line: 0, scope: !3789, inlinedAt: !3940)
!3948 = !DILocation(line: 879, column: 9, scope: !3789, inlinedAt: !3940)
!3949 = !DILocation(line: 0, scope: !3369)
!3950 = !DILocation(line: 0, scope: !3752, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 645, column: 18, scope: !3369)
!3952 = !DILocation(line: 0, scope: !3754, inlinedAt: !3951)
!3953 = !DILocation(line: 0, scope: !3757, inlinedAt: !3951)
!3954 = !DILocation(line: 0, scope: !3756, inlinedAt: !3951)
!3955 = !DILocation(line: 0, scope: !3755, inlinedAt: !3951)
!3956 = !DILocation(line: 0, scope: !3785, inlinedAt: !3951)
!3957 = !DILocation(line: 0, scope: !3787, inlinedAt: !3951)
!3958 = !DILocation(line: 0, scope: !3789, inlinedAt: !3951)
!3959 = !DILocation(line: 879, column: 9, scope: !3789, inlinedAt: !3951)
!3960 = !DILocation(line: 0, scope: !3371)
!3961 = !DILocation(line: 573, column: 14, scope: !3393, inlinedAt: !3398)
!3962 = !DILocation(line: 970, column: 18, scope: !3400, inlinedAt: !3404)
!3963 = !DILocation(line: 573, column: 14, scope: !3393, inlinedAt: !3410)
!3964 = !DILocation(line: 970, column: 18, scope: !3400, inlinedAt: !3406)
!3965 = !DILocation(line: 573, column: 14, scope: !3393, inlinedAt: !3412)
!3966 = !DILocation(line: 970, column: 18, scope: !3400, inlinedAt: !3408)
!3967 = !DILocation(line: 573, column: 14, scope: !3393, inlinedAt: !3414)
!3968 = !DILocation(line: 652, column: 2, scope: !3335)
!3969 = distinct !DISubprogram(name: "insertion_sort_shift_left<regex_syntax::hir::ClassBytesRange, fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !3066, file: !3065, line: 574, type: !3970, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !3999, retainedNodes: !3986)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !3972, !9, !3981}
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [regex_syntax::hir::ClassBytesRange]", file: !2, size: 128, align: 64, elements: !3973, templateParams: !29, identifier: "c9ae078c7f027d531104b0a69b8bb704")
!3973 = !{!3974, !3980}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !3972, file: !2, baseType: !3975, size: 64, align: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64, align: 64, dwarfAddressSpace: 0)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassBytesRange", scope: !641, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !3977, templateParams: !29, identifier: "6a06476ed24c9610fd29e2d1220aefca")
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3976, file: !2, baseType: !27, size: 8, align: 8, flags: DIFlagPrivate)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3976, file: !2, baseType: !27, size: 8, align: 8, offset: 8, flags: DIFlagPrivate)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3972, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool", baseType: !3982, size: 64, align: 64, dwarfAddressSpace: 0)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool", baseType: !3983, align: 8, dwarfAddressSpace: 0)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!215, !3985, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::hir::ClassBytesRange", baseType: !3976, size: 64, align: 64, dwarfAddressSpace: 0)
!3986 = !{!3987, !3988, !3989, !3990, !3992, !3995, !3997}
!3987 = !DILocalVariable(name: "v", arg: 1, scope: !3969, file: !3065, line: 575, type: !3972)
!3988 = !DILocalVariable(name: "offset", arg: 2, scope: !3969, file: !3065, line: 576, type: !9)
!3989 = !DILocalVariable(name: "is_less", arg: 3, scope: !3969, file: !3065, line: 577, type: !3981)
!3990 = !DILocalVariable(name: "len", scope: !3991, file: !3065, line: 579, type: !9, align: 64)
!3991 = distinct !DILexicalBlock(scope: !3969, file: !3065, line: 579, column: 5)
!3992 = !DILocalVariable(name: "v_base", scope: !3993, file: !3065, line: 590, type: !3994, align: 64)
!3993 = distinct !DILexicalBlock(scope: !3991, file: !3065, line: 590, column: 9)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut regex_syntax::hir::ClassBytesRange", baseType: !3976, size: 64, align: 64, dwarfAddressSpace: 0)
!3995 = !DILocalVariable(name: "v_end", scope: !3996, file: !3065, line: 591, type: !3994, align: 64)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !3065, line: 591, column: 9)
!3997 = !DILocalVariable(name: "tail", scope: !3998, file: !3065, line: 592, type: !3994, align: 64)
!3998 = distinct !DILexicalBlock(scope: !3996, file: !3065, line: 592, column: 9)
!3999 = !{!4000, !4001}
!4000 = !DITemplateTypeParameter(name: "T", type: !3976)
!4001 = !DITemplateTypeParameter(name: "F", type: !3982)
!4002 = !DILocation(line: 0, scope: !3969)
!4003 = !DILocalVariable(name: "count", arg: 2, scope: !4004, file: !3154, line: 936, type: !9)
!4004 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3addCs9GYDdpCSJ4S_14regex_automata", scope: !3155, file: !3154, line: 936, type: !4005, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4010, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!3994, !3994, !9, !2629}
!4007 = !{!4008, !4003, !4009}
!4008 = !DILocalVariable(name: "self", arg: 1, scope: !4004, file: !3154, line: 936, type: !3994)
!4009 = !DILocalVariable(name: "count", scope: !4004, file: !3154, line: 936, type: !9, align: 64)
!4010 = !{!4000}
!4011 = !DILocation(line: 0, scope: !4004, inlinedAt: !4012)
!4012 = !DILocation(line: 592, column: 31, scope: !3996)
!4013 = !DILocation(line: 0, scope: !4004, inlinedAt: !4014)
!4014 = !DILocation(line: 599, column: 25, scope: !3998)
!4015 = !DILocation(line: 0, scope: !3991)
!4016 = !DILocation(line: 0, scope: !4004, inlinedAt: !4017)
!4017 = !DILocation(line: 591, column: 28, scope: !3993)
!4018 = !DILocation(line: 580, column: 8, scope: !3991)
!4019 = !DILocation(line: 581, column: 9, scope: !3991)
!4020 = !DILocation(line: 0, scope: !3993)
!4021 = !DILocation(line: 970, column: 18, scope: !4004, inlinedAt: !4017)
!4022 = !DILocation(line: 0, scope: !3996)
!4023 = !DILocation(line: 0, scope: !3998)
!4024 = !DILocation(line: 593, column: 15, scope: !3998)
!4025 = !DILocation(line: 970, column: 18, scope: !4004, inlinedAt: !4012)
!4026 = !DILocation(line: 541, column: 13, scope: !4027, inlinedAt: !4054)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !3065, line: 540, column: 9)
!4028 = distinct !DISubprogram(name: "insert_tail<regex_syntax::hir::ClassBytesRange, fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !3066, file: !3065, line: 536, type: !4029, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !3999, retainedNodes: !4031)
!4029 = !DISubroutineType(cc: DW_CC_nocall, types: !4030)
!4030 = !{null, !3994, !3994, !3981}
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4046}
!4032 = !DILocalVariable(name: "begin", arg: 1, scope: !4028, file: !3065, line: 536, type: !3994)
!4033 = !DILocalVariable(name: "tail", arg: 2, scope: !4028, file: !3065, line: 536, type: !3994)
!4034 = !DILocalVariable(name: "is_less", arg: 3, scope: !4028, file: !3065, line: 536, type: !3981)
!4035 = !DILocalVariable(name: "sift", scope: !4027, file: !3065, line: 540, type: !3994, align: 64)
!4036 = !DILocalVariable(name: "tmp", scope: !4037, file: !3065, line: 550, type: !4038, align: 8)
!4037 = distinct !DILexicalBlock(scope: !4027, file: !3065, line: 550, column: 9)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<regex_syntax::hir::ClassBytesRange>", scope: !3079, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !4039, templateParams: !4010, identifier: "9e4ff0087b6fc742c862cae1ded4c3e7")
!4039 = !{!4040}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4038, file: !2, baseType: !4041, size: 16, align: 8, flags: DIFlagPrivate)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<regex_syntax::hir::ClassBytesRange>", scope: !3083, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !4042, templateParams: !4044, identifier: "2c0fb679c0bd2dd58d55da6741e5cea8")
!4042 = !{!4043}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4041, file: !2, baseType: !3976, size: 16, align: 8, flags: DIFlagPrivate)
!4044 = !{!4045}
!4045 = !DITemplateTypeParameter(name: "P", type: !3976)
!4046 = !DILocalVariable(name: "gap_guard", scope: !4047, file: !3065, line: 551, type: !4048, align: 64)
!4047 = distinct !DILexicalBlock(scope: !4037, file: !3065, line: 551, column: 9)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CopyOnDrop<regex_syntax::hir::ClassBytesRange>", scope: !3066, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !4049, templateParams: !4010, identifier: "96bb0da3dcd6a954bc5e8c6cb494adde")
!4049 = !{!4050, !4052, !4053}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4048, file: !2, baseType: !4051, size: 64, align: 64, flags: DIFlagPrivate)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const regex_syntax::hir::ClassBytesRange", baseType: !3976, size: 64, align: 64, dwarfAddressSpace: 0)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4048, file: !2, baseType: !3994, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4048, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!4054 = distinct !DILocation(line: 596, column: 13, scope: !3998)
!4055 = !DILocation(line: 602, column: 2, scope: !3969)
!4056 = !DILocalVariable(name: "self", arg: 1, scope: !4057, file: !3065, line: 302, type: !4060)
!4057 = distinct !DISubprogram(name: "drop<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata", scope: !3097, file: !3065, line: 302, type: !4058, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4010, retainedNodes: !4061)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassBytesRange>", baseType: !4048, size: 64, align: 64, dwarfAddressSpace: 0)
!4061 = !{!4056}
!4062 = !DILocation(line: 0, scope: !4057, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 847, column: 1, scope: !4064, inlinedAt: !4069)
!4064 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassBytesRange>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 847, type: !4058, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4067, retainedNodes: !4065)
!4065 = !{!4066}
!4066 = !DILocalVariable(arg: 1, scope: !4064, file: !789, line: 847, type: !4060)
!4067 = !{!4068}
!4068 = !DITemplateTypeParameter(name: "T", type: !4048)
!4069 = distinct !DILocation(line: 570, column: 5, scope: !4037, inlinedAt: !4054)
!4070 = !DILocation(line: 0, scope: !4064, inlinedAt: !4069)
!4071 = !DILocation(line: 0, scope: !4057, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 847, column: 1, scope: !4064, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 570, column: 5, scope: !4037, inlinedAt: !4054)
!4074 = !DILocation(line: 0, scope: !4064, inlinedAt: !4073)
!4075 = !DILocation(line: 0, scope: !4047, inlinedAt: !4054)
!4076 = !DILocalVariable(name: "src", arg: 1, scope: !4077, file: !789, line: 552, type: !4051)
!4077 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 552, type: !4078, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4010, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !4051, !3994, !9}
!4080 = !{!4076, !4081, !4082}
!4081 = !DILocalVariable(name: "dst", arg: 2, scope: !4077, file: !789, line: 552, type: !3994)
!4082 = !DILocalVariable(name: "count", arg: 3, scope: !4077, file: !789, line: 552, type: !9)
!4083 = !DILocation(line: 0, scope: !4077, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 306, column: 13, scope: !4057, inlinedAt: !4063)
!4085 = !DILocation(line: 0, scope: !4028, inlinedAt: !4054)
!4086 = !DILocalVariable(name: "self", arg: 1, scope: !4087, file: !3154, line: 1015, type: !3994)
!4087 = distinct !DISubprogram(name: "sub<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3subCs9GYDdpCSJ4S_14regex_automata", scope: !3155, file: !3154, line: 1015, type: !4005, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4010, retainedNodes: !4088)
!4088 = !{!4086, !4089}
!4089 = !DILocalVariable(name: "count", scope: !4087, file: !3154, line: 1015, type: !9, align: 64)
!4090 = !DILocation(line: 0, scope: !4087, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 540, column: 29, scope: !4028, inlinedAt: !4054)
!4092 = !DILocalVariable(name: "count", scope: !4093, file: !789, line: 552, type: !9, align: 64)
!4093 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 552, type: !4078, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4010, retainedNodes: !4094)
!4094 = !{!4095, !4096, !4092}
!4095 = !DILocalVariable(name: "src", arg: 1, scope: !4093, file: !789, line: 552, type: !4051)
!4096 = !DILocalVariable(name: "dst", arg: 2, scope: !4093, file: !789, line: 552, type: !3994)
!4097 = !DILocation(line: 0, scope: !4093, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 557, column: 13, scope: !4047, inlinedAt: !4054)
!4099 = !DILocation(line: 0, scope: !4087, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 565, column: 25, scope: !4047, inlinedAt: !4054)
!4101 = !DILocation(line: 1054, column: 22, scope: !4087, inlinedAt: !4091)
!4102 = !DILocation(line: 0, scope: !4027, inlinedAt: !4054)
!4103 = !DILocalVariable(arg: 2, scope: !4104, file: !2707, line: 166, type: !4112)
!4104 = distinct !DISubprogram(name: "call_mut<fn(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange) -> bool, (&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange)>", linkageName: "_RNvYNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2708, file: !2707, line: 166, type: !4105, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4109, retainedNodes: !4107)
!4105 = !DISubroutineType(cc: DW_CC_nocall, types: !4106)
!4106 = !{!215, !3981, !3985, !3985}
!4107 = !{!4108, !4103}
!4108 = !DILocalVariable(arg: 1, scope: !4104, file: !2707, line: 166, type: !3981)
!4109 = !{!4110, !4111}
!4110 = !DITemplateTypeParameter(name: "Self", type: !3982)
!4111 = !DITemplateTypeParameter(name: "Args", type: !4112)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_syntax::hir::ClassBytesRange, &regex_syntax::hir::ClassBytesRange)", file: !2, size: 128, align: 64, elements: !4113, templateParams: !29, identifier: "d0c54ff7e32273f49ce13e4bee646cd3")
!4113 = !{!4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4112, file: !2, baseType: !3985, size: 64, align: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !4112, file: !2, baseType: !3985, size: 64, align: 64, offset: 64)
!4116 = !DILocation(line: 0, scope: !4104, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 541, column: 13, scope: !4027, inlinedAt: !4054)
!4118 = !DILocalVariable(name: "self", arg: 1, scope: !4119, file: !2732, line: 1470, type: !3985)
!4119 = distinct !DISubprogram(name: "lt<regex_syntax::hir::ClassBytesRange, regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltCs9GYDdpCSJ4S_14regex_automata", scope: !2733, file: !2732, line: 1470, type: !4120, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4123, retainedNodes: !4121)
!4120 = !DISubroutineType(cc: DW_CC_nocall, types: !3984)
!4121 = !{!4118, !4122}
!4122 = !DILocalVariable(name: "other", arg: 2, scope: !4119, file: !2732, line: 1470, type: !3985)
!4123 = !{!4124, !4125}
!4124 = !DITemplateTypeParameter(name: "Self", type: !3976)
!4125 = !DITemplateTypeParameter(name: "Rhs", type: !3976)
!4126 = !DILocation(line: 0, scope: !4119, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 166, column: 5, scope: !4104, inlinedAt: !4117)
!4128 = !DILocalVariable(name: "f", scope: !4129, file: !2743, line: 659, type: !2759, align: 8)
!4129 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_ltECs9GYDdpCSJ4S_14regex_automata", scope: !2744, file: !2743, line: 659, type: !2757, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2763, declaration: !2762, retainedNodes: !4130)
!4130 = !{!4131, !4128, !4132}
!4131 = !DILocalVariable(name: "self", arg: 1, scope: !4129, file: !2743, line: 659, type: !2744)
!4132 = !DILocalVariable(name: "x", scope: !4133, file: !2743, line: 662, type: !749, align: 8)
!4133 = distinct !DILexicalBlock(scope: !4129, file: !2743, line: 662, column: 13)
!4134 = !DILocation(line: 659, column: 36, scope: !4129, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 1471, column: 33, scope: !4119, inlinedAt: !4127)
!4136 = !DILocalVariable(name: "self", arg: 1, scope: !4137, file: !4138, line: 1518, type: !3985)
!4137 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs1l_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_15ClassBytesRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp", scope: !4139, file: !4138, line: 1518, type: !4140, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !4142)
!4138 = !DIFile(filename: "regex-syntax/src/hir/mod.rs", directory: "/opt-bench/work/regex-rs/regex", checksumkind: CSK_MD5, checksum: "33e93a90c889ec2b058f2e578e4a65f1")
!4139 = !DINamespace(name: "{impl#85}", scope: !641)
!4140 = !DISubroutineType(cc: DW_CC_nocall, types: !4141)
!4141 = !{!2744, !3985, !3985}
!4142 = !{!4136, !4143}
!4143 = !DILocalVariable(name: "other", arg: 2, scope: !4137, file: !4138, line: 1518, type: !3985)
!4144 = !DILocation(line: 0, scope: !4137, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 1471, column: 14, scope: !4119, inlinedAt: !4127)
!4146 = !DILocalVariable(name: "self", arg: 1, scope: !4147, file: !4138, line: 1518, type: !3985)
!4147 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs1m_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_15ClassBytesRangeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp", scope: !4148, file: !4138, line: 1518, type: !4149, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !4151)
!4148 = !DINamespace(name: "{impl#86}", scope: !641)
!4149 = !DISubroutineType(cc: DW_CC_nocall, types: !4150)
!4150 = !{!749, !3985, !3985}
!4151 = !{!4146, !4152, !4153}
!4152 = !DILocalVariable(name: "other", arg: 2, scope: !4147, file: !4138, line: 1518, type: !3985)
!4153 = !DILocalVariable(name: "cmp", scope: !4154, file: !4138, line: 1520, type: !749, align: 8)
!4154 = distinct !DILexicalBlock(scope: !4147, file: !4138, line: 1520, column: 5)
!4155 = !DILocation(line: 0, scope: !4147, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 1518, column: 47, scope: !4137, inlinedAt: !4145)
!4157 = !DILocation(line: 1520, column: 5, scope: !4147, inlinedAt: !4156)
!4158 = !DILocation(line: 0, scope: !4129, inlinedAt: !4135)
!4159 = !DILocation(line: 660, column: 9, scope: !4129, inlinedAt: !4135)
!4160 = !DILocation(line: 573, column: 14, scope: !4093, inlinedAt: !4098)
!4161 = !DILocation(line: 560, column: 16, scope: !4047, inlinedAt: !4054)
!4162 = !DILocation(line: 1054, column: 22, scope: !4087, inlinedAt: !4100)
!4163 = !DILocation(line: 566, column: 17, scope: !4047, inlinedAt: !4054)
!4164 = !DILocation(line: 0, scope: !4104, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 566, column: 17, scope: !4047, inlinedAt: !4054)
!4166 = !DILocation(line: 0, scope: !4119, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 166, column: 5, scope: !4104, inlinedAt: !4165)
!4168 = !DILocation(line: 659, column: 36, scope: !4129, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 1471, column: 33, scope: !4119, inlinedAt: !4167)
!4170 = !DILocation(line: 0, scope: !4137, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 1471, column: 14, scope: !4119, inlinedAt: !4167)
!4172 = !DILocation(line: 0, scope: !4147, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 1518, column: 47, scope: !4137, inlinedAt: !4171)
!4174 = !DILocation(line: 1520, column: 5, scope: !4147, inlinedAt: !4173)
!4175 = !DILocation(line: 0, scope: !4129, inlinedAt: !4169)
!4176 = !DILocation(line: 660, column: 9, scope: !4129, inlinedAt: !4169)
!4177 = !DILocation(line: 573, column: 14, scope: !4077, inlinedAt: !4084)
!4178 = !{!4179, !4181}
!4179 = distinct !{!4179, !4180, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!4180 = distinct !{!4180, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!4181 = distinct !{!4181, !4182, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!4182 = distinct !{!4182, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEECs9GYDdpCSJ4S_14regex_automata"}
!4183 = !DILocation(line: 571, column: 2, scope: !4028, inlinedAt: !4054)
!4184 = !DILocation(line: 970, column: 18, scope: !4004, inlinedAt: !4014)
!4185 = distinct !DISubprogram(name: "insertion_sort_shift_left<regex_syntax::hir::ClassUnicodeRange, fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !3066, file: !3065, line: 574, type: !4186, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4216, retainedNodes: !4203)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4188, !9, !4198}
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [regex_syntax::hir::ClassUnicodeRange]", file: !2, size: 128, align: 64, elements: !4189, templateParams: !29, identifier: "7eb26f4b7cc718ee50a87ff9e83803b7")
!4189 = !{!4190, !4197}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !4188, file: !2, baseType: !4191, size: 64, align: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64, align: 64, dwarfAddressSpace: 0)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassUnicodeRange", scope: !641, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !4193, templateParams: !29, identifier: "fc356c602554accc35b4ca38c94740c")
!4193 = !{!4194, !4196}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4192, file: !2, baseType: !4195, size: 32, align: 32, flags: DIFlagPrivate)
!4195 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4192, file: !2, baseType: !4195, size: 32, align: 32, offset: 32, flags: DIFlagPrivate)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4188, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool", baseType: !4199, size: 64, align: 64, dwarfAddressSpace: 0)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool", baseType: !4200, align: 8, dwarfAddressSpace: 0)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!215, !4202, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::hir::ClassUnicodeRange", baseType: !4192, size: 64, align: 64, dwarfAddressSpace: 0)
!4203 = !{!4204, !4205, !4206, !4207, !4209, !4212, !4214}
!4204 = !DILocalVariable(name: "v", arg: 1, scope: !4185, file: !3065, line: 575, type: !4188)
!4205 = !DILocalVariable(name: "offset", arg: 2, scope: !4185, file: !3065, line: 576, type: !9)
!4206 = !DILocalVariable(name: "is_less", arg: 3, scope: !4185, file: !3065, line: 577, type: !4198)
!4207 = !DILocalVariable(name: "len", scope: !4208, file: !3065, line: 579, type: !9, align: 64)
!4208 = distinct !DILexicalBlock(scope: !4185, file: !3065, line: 579, column: 5)
!4209 = !DILocalVariable(name: "v_base", scope: !4210, file: !3065, line: 590, type: !4211, align: 64)
!4210 = distinct !DILexicalBlock(scope: !4208, file: !3065, line: 590, column: 9)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut regex_syntax::hir::ClassUnicodeRange", baseType: !4192, size: 64, align: 64, dwarfAddressSpace: 0)
!4212 = !DILocalVariable(name: "v_end", scope: !4213, file: !3065, line: 591, type: !4211, align: 64)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !3065, line: 591, column: 9)
!4214 = !DILocalVariable(name: "tail", scope: !4215, file: !3065, line: 592, type: !4211, align: 64)
!4215 = distinct !DILexicalBlock(scope: !4213, file: !3065, line: 592, column: 9)
!4216 = !{!4217, !4218}
!4217 = !DITemplateTypeParameter(name: "T", type: !4192)
!4218 = !DITemplateTypeParameter(name: "F", type: !4199)
!4219 = !DILocation(line: 0, scope: !4185)
!4220 = !DILocalVariable(name: "count", arg: 2, scope: !4221, file: !3154, line: 936, type: !9)
!4221 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3addCs9GYDdpCSJ4S_14regex_automata", scope: !3155, file: !3154, line: 936, type: !4222, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4227, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!4211, !4211, !9, !2629}
!4224 = !{!4225, !4220, !4226}
!4225 = !DILocalVariable(name: "self", arg: 1, scope: !4221, file: !3154, line: 936, type: !4211)
!4226 = !DILocalVariable(name: "count", scope: !4221, file: !3154, line: 936, type: !9, align: 64)
!4227 = !{!4217}
!4228 = !DILocation(line: 0, scope: !4221, inlinedAt: !4229)
!4229 = !DILocation(line: 592, column: 31, scope: !4213)
!4230 = !DILocation(line: 0, scope: !4221, inlinedAt: !4231)
!4231 = !DILocation(line: 599, column: 25, scope: !4215)
!4232 = !DILocation(line: 0, scope: !4208)
!4233 = !DILocation(line: 0, scope: !4221, inlinedAt: !4234)
!4234 = !DILocation(line: 591, column: 28, scope: !4210)
!4235 = !DILocation(line: 580, column: 8, scope: !4208)
!4236 = !DILocation(line: 581, column: 9, scope: !4208)
!4237 = !DILocation(line: 0, scope: !4210)
!4238 = !DILocation(line: 970, column: 18, scope: !4221, inlinedAt: !4234)
!4239 = !DILocation(line: 0, scope: !4213)
!4240 = !DILocation(line: 0, scope: !4215)
!4241 = !DILocation(line: 593, column: 15, scope: !4215)
!4242 = !DILocation(line: 970, column: 18, scope: !4221, inlinedAt: !4229)
!4243 = !DILocation(line: 541, column: 13, scope: !4244, inlinedAt: !4271)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !3065, line: 540, column: 9)
!4245 = distinct !DISubprogram(name: "insert_tail<regex_syntax::hir::ClassUnicodeRange, fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !3066, file: !3065, line: 536, type: !4246, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4216, retainedNodes: !4248)
!4246 = !DISubroutineType(cc: DW_CC_nocall, types: !4247)
!4247 = !{null, !4211, !4211, !4198}
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4263}
!4249 = !DILocalVariable(name: "begin", arg: 1, scope: !4245, file: !3065, line: 536, type: !4211)
!4250 = !DILocalVariable(name: "tail", arg: 2, scope: !4245, file: !3065, line: 536, type: !4211)
!4251 = !DILocalVariable(name: "is_less", arg: 3, scope: !4245, file: !3065, line: 536, type: !4198)
!4252 = !DILocalVariable(name: "sift", scope: !4244, file: !3065, line: 540, type: !4211, align: 64)
!4253 = !DILocalVariable(name: "tmp", scope: !4254, file: !3065, line: 550, type: !4255, align: 32)
!4254 = distinct !DILexicalBlock(scope: !4244, file: !3065, line: 550, column: 9)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<regex_syntax::hir::ClassUnicodeRange>", scope: !3079, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !4256, templateParams: !4227, identifier: "838cd1706f48c0cca5538ec2ec37e10a")
!4256 = !{!4257}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4255, file: !2, baseType: !4258, size: 64, align: 32, flags: DIFlagPrivate)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<regex_syntax::hir::ClassUnicodeRange>", scope: !3083, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !4259, templateParams: !4261, identifier: "e2132affd99ef982a2ee668627964c88")
!4259 = !{!4260}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4258, file: !2, baseType: !4192, size: 64, align: 32, flags: DIFlagPrivate)
!4261 = !{!4262}
!4262 = !DITemplateTypeParameter(name: "P", type: !4192)
!4263 = !DILocalVariable(name: "gap_guard", scope: !4264, file: !3065, line: 551, type: !4265, align: 64)
!4264 = distinct !DILexicalBlock(scope: !4254, file: !3065, line: 551, column: 9)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>", scope: !3066, file: !2, size: 192, align: 64, flags: DIFlagPrivate, elements: !4266, templateParams: !4227, identifier: "80f9725b120ae11b5b954bce4dbb446")
!4266 = !{!4267, !4269, !4270}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4265, file: !2, baseType: !4268, size: 64, align: 64, flags: DIFlagPrivate)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const regex_syntax::hir::ClassUnicodeRange", baseType: !4192, size: 64, align: 64, dwarfAddressSpace: 0)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4265, file: !2, baseType: !4211, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4265, file: !2, baseType: !9, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!4271 = distinct !DILocation(line: 596, column: 13, scope: !4215)
!4272 = !DILocation(line: 602, column: 2, scope: !4185)
!4273 = !DILocalVariable(name: "self", arg: 1, scope: !4274, file: !3065, line: 302, type: !4277)
!4274 = distinct !DISubprogram(name: "drop<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata", scope: !3097, file: !3065, line: 302, type: !4275, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4227, retainedNodes: !4278)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !4277}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>", baseType: !4265, size: 64, align: 64, dwarfAddressSpace: 0)
!4278 = !{!4273}
!4279 = !DILocation(line: 0, scope: !4274, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 847, column: 1, scope: !4281, inlinedAt: !4286)
!4281 = distinct !DISubprogram(name: "drop_glue<core::slice::sort::shared::smallsort::CopyOnDrop<regex_syntax::hir::ClassUnicodeRange>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 847, type: !4275, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4284, retainedNodes: !4282)
!4282 = !{!4283}
!4283 = !DILocalVariable(arg: 1, scope: !4281, file: !789, line: 847, type: !4277)
!4284 = !{!4285}
!4285 = !DITemplateTypeParameter(name: "T", type: !4265)
!4286 = distinct !DILocation(line: 570, column: 5, scope: !4254, inlinedAt: !4271)
!4287 = !DILocation(line: 0, scope: !4281, inlinedAt: !4286)
!4288 = !DILocation(line: 0, scope: !4274, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 847, column: 1, scope: !4281, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 570, column: 5, scope: !4254, inlinedAt: !4271)
!4291 = !DILocation(line: 0, scope: !4281, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !4264, inlinedAt: !4271)
!4293 = !DILocalVariable(name: "src", arg: 1, scope: !4294, file: !789, line: 552, type: !4268)
!4294 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 552, type: !4295, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4227, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !4268, !4211, !9}
!4297 = !{!4293, !4298, !4299}
!4298 = !DILocalVariable(name: "dst", arg: 2, scope: !4294, file: !789, line: 552, type: !4211)
!4299 = !DILocalVariable(name: "count", arg: 3, scope: !4294, file: !789, line: 552, type: !9)
!4300 = !DILocation(line: 0, scope: !4294, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 306, column: 13, scope: !4274, inlinedAt: !4280)
!4302 = !DILocation(line: 0, scope: !4245, inlinedAt: !4271)
!4303 = !DILocalVariable(name: "self", arg: 1, scope: !4304, file: !3154, line: 1015, type: !4211)
!4304 = distinct !DISubprogram(name: "sub<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange3subCs9GYDdpCSJ4S_14regex_automata", scope: !3155, file: !3154, line: 1015, type: !4222, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4227, retainedNodes: !4305)
!4305 = !{!4303, !4306}
!4306 = !DILocalVariable(name: "count", scope: !4304, file: !3154, line: 1015, type: !9, align: 64)
!4307 = !DILocation(line: 0, scope: !4304, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 540, column: 29, scope: !4245, inlinedAt: !4271)
!4309 = !DILocalVariable(name: "count", scope: !4310, file: !789, line: 552, type: !9, align: 64)
!4310 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeECs9GYDdpCSJ4S_14regex_automata", scope: !167, file: !789, line: 552, type: !4295, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4227, retainedNodes: !4311)
!4311 = !{!4312, !4313, !4309}
!4312 = !DILocalVariable(name: "src", arg: 1, scope: !4310, file: !789, line: 552, type: !4268)
!4313 = !DILocalVariable(name: "dst", arg: 2, scope: !4310, file: !789, line: 552, type: !4211)
!4314 = !DILocation(line: 0, scope: !4310, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 557, column: 13, scope: !4264, inlinedAt: !4271)
!4316 = !DILocation(line: 0, scope: !4304, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 565, column: 25, scope: !4264, inlinedAt: !4271)
!4318 = !DILocation(line: 1054, column: 22, scope: !4304, inlinedAt: !4308)
!4319 = !DILocation(line: 0, scope: !4244, inlinedAt: !4271)
!4320 = !{i32 0, i32 1114112}
!4321 = !DILocalVariable(arg: 2, scope: !4322, file: !2707, line: 166, type: !4330)
!4322 = distinct !DISubprogram(name: "call_mut<fn(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange) -> bool, (&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange)>", linkageName: "_RNvYNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2708, file: !2707, line: 166, type: !4323, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4327, retainedNodes: !4325)
!4323 = !DISubroutineType(cc: DW_CC_nocall, types: !4324)
!4324 = !{!215, !4198, !4202, !4202}
!4325 = !{!4326, !4321}
!4326 = !DILocalVariable(arg: 1, scope: !4322, file: !2707, line: 166, type: !4198)
!4327 = !{!4328, !4329}
!4328 = !DITemplateTypeParameter(name: "Self", type: !4199)
!4329 = !DITemplateTypeParameter(name: "Args", type: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_syntax::hir::ClassUnicodeRange, &regex_syntax::hir::ClassUnicodeRange)", file: !2, size: 128, align: 64, elements: !4331, templateParams: !29, identifier: "9d9b9deea6ef6fe411ea43b963336607")
!4331 = !{!4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4330, file: !2, baseType: !4202, size: 64, align: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !4330, file: !2, baseType: !4202, size: 64, align: 64, offset: 64)
!4334 = !DILocation(line: 0, scope: !4322, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 541, column: 13, scope: !4244, inlinedAt: !4271)
!4336 = !DILocalVariable(name: "self", arg: 1, scope: !4337, file: !2732, line: 1470, type: !4202)
!4337 = distinct !DISubprogram(name: "lt<regex_syntax::hir::ClassUnicodeRange, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltCs9GYDdpCSJ4S_14regex_automata", scope: !2733, file: !2732, line: 1470, type: !4338, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4341, retainedNodes: !4339)
!4338 = !DISubroutineType(cc: DW_CC_nocall, types: !4201)
!4339 = !{!4336, !4340}
!4340 = !DILocalVariable(name: "other", arg: 2, scope: !4337, file: !2732, line: 1470, type: !4202)
!4341 = !{!4342, !4343}
!4342 = !DITemplateTypeParameter(name: "Self", type: !4192)
!4343 = !DITemplateTypeParameter(name: "Rhs", type: !4192)
!4344 = !DILocation(line: 0, scope: !4337, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 166, column: 5, scope: !4322, inlinedAt: !4335)
!4346 = !DILocalVariable(name: "f", scope: !4347, file: !2743, line: 659, type: !2759, align: 8)
!4347 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_ltECs9GYDdpCSJ4S_14regex_automata", scope: !2744, file: !2743, line: 659, type: !2757, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2763, declaration: !2762, retainedNodes: !4348)
!4348 = !{!4349, !4346, !4350}
!4349 = !DILocalVariable(name: "self", arg: 1, scope: !4347, file: !2743, line: 659, type: !2744)
!4350 = !DILocalVariable(name: "x", scope: !4351, file: !2743, line: 662, type: !749, align: 8)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !2743, line: 662, column: 13)
!4352 = !DILocation(line: 659, column: 36, scope: !4347, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 1471, column: 33, scope: !4337, inlinedAt: !4345)
!4354 = !DILocalVariable(name: "self", arg: 1, scope: !4355, file: !4138, line: 1240, type: !4202)
!4355 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs16_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_17ClassUnicodeRangeNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp", scope: !4356, file: !4138, line: 1240, type: !4357, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !4359)
!4356 = !DINamespace(name: "{impl#70}", scope: !641)
!4357 = !DISubroutineType(cc: DW_CC_nocall, types: !4358)
!4358 = !{!2744, !4202, !4202}
!4359 = !{!4354, !4360}
!4360 = !DILocalVariable(name: "other", arg: 2, scope: !4355, file: !4138, line: 1240, type: !4202)
!4361 = !DILocation(line: 0, scope: !4355, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 1471, column: 14, scope: !4337, inlinedAt: !4345)
!4363 = !DILocalVariable(name: "self", arg: 1, scope: !4364, file: !4138, line: 1240, type: !4202)
!4364 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXs17_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_17ClassUnicodeRangeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp", scope: !4365, file: !4138, line: 1240, type: !4366, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !4368)
!4365 = !DINamespace(name: "{impl#71}", scope: !641)
!4366 = !DISubroutineType(cc: DW_CC_nocall, types: !4367)
!4367 = !{!749, !4202, !4202}
!4368 = !{!4363, !4369, !4370}
!4369 = !DILocalVariable(name: "other", arg: 2, scope: !4364, file: !4138, line: 1240, type: !4202)
!4370 = !DILocalVariable(name: "cmp", scope: !4371, file: !4138, line: 1242, type: !749, align: 8)
!4371 = distinct !DILexicalBlock(scope: !4364, file: !4138, line: 1242, column: 5)
!4372 = !DILocation(line: 0, scope: !4364, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 1240, column: 47, scope: !4355, inlinedAt: !4362)
!4374 = !DILocation(line: 1242, column: 5, scope: !4364, inlinedAt: !4373)
!4375 = !DILocation(line: 0, scope: !4347, inlinedAt: !4353)
!4376 = !DILocation(line: 660, column: 9, scope: !4347, inlinedAt: !4353)
!4377 = !DILocation(line: 573, column: 14, scope: !4310, inlinedAt: !4315)
!4378 = !DILocation(line: 560, column: 16, scope: !4264, inlinedAt: !4271)
!4379 = !DILocation(line: 1054, column: 22, scope: !4304, inlinedAt: !4317)
!4380 = !DILocation(line: 566, column: 17, scope: !4264, inlinedAt: !4271)
!4381 = !DILocation(line: 0, scope: !4322, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 566, column: 17, scope: !4264, inlinedAt: !4271)
!4383 = !DILocation(line: 0, scope: !4337, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 166, column: 5, scope: !4322, inlinedAt: !4382)
!4385 = !DILocation(line: 659, column: 36, scope: !4347, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 1471, column: 33, scope: !4337, inlinedAt: !4384)
!4387 = !DILocation(line: 0, scope: !4355, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 1471, column: 14, scope: !4337, inlinedAt: !4384)
!4389 = !DILocation(line: 0, scope: !4364, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 1240, column: 47, scope: !4355, inlinedAt: !4388)
!4391 = !DILocation(line: 1242, column: 5, scope: !4364, inlinedAt: !4390)
!4392 = !DILocation(line: 0, scope: !4347, inlinedAt: !4386)
!4393 = !DILocation(line: 660, column: 9, scope: !4347, inlinedAt: !4386)
!4394 = !DILocation(line: 573, column: 14, scope: !4294, inlinedAt: !4301)
!4395 = !{!4396, !4398}
!4396 = distinct !{!4396, !4397, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!4397 = distinct !{!4397, !"_RNvXs5_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtBd_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!4398 = distinct !{!4398, !4399, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!4399 = distinct !{!4399, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEECs9GYDdpCSJ4S_14regex_automata"}
!4400 = !DILocation(line: 571, column: 2, scope: !4245, inlinedAt: !4271)
!4401 = !DILocation(line: 970, column: 18, scope: !4221, inlinedAt: !4231)
!4402 = distinct !DISubprogram(name: "insertion_sort_shift_left<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !3066, file: !3065, line: 574, type: !4403, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2618, retainedNodes: !4410)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !4405, !9, !2605}
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [regex_syntax::hir::literal::Literal]", file: !2, size: 128, align: 64, elements: !4406, templateParams: !29, identifier: "bb4276861e787811c29b76bbfaa90c5b")
!4406 = !{!4407, !4409}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !4405, file: !2, baseType: !4408, size: 64, align: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64, align: 64, dwarfAddressSpace: 0)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4405, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!4410 = !{!4411, !4412, !4413, !4414, !4416, !4418, !4420}
!4411 = !DILocalVariable(name: "v", arg: 1, scope: !4402, file: !3065, line: 575, type: !4405)
!4412 = !DILocalVariable(name: "offset", arg: 2, scope: !4402, file: !3065, line: 576, type: !9)
!4413 = !DILocalVariable(name: "is_less", arg: 3, scope: !4402, file: !3065, line: 577, type: !2605)
!4414 = !DILocalVariable(name: "len", scope: !4415, file: !3065, line: 579, type: !9, align: 64)
!4415 = distinct !DILexicalBlock(scope: !4402, file: !3065, line: 579, column: 5)
!4416 = !DILocalVariable(name: "v_base", scope: !4417, file: !3065, line: 590, type: !3069, align: 64)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !3065, line: 590, column: 9)
!4418 = !DILocalVariable(name: "v_end", scope: !4419, file: !3065, line: 591, type: !3069, align: 64)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !3065, line: 591, column: 9)
!4420 = !DILocalVariable(name: "tail", scope: !4421, file: !3065, line: 592, type: !3069, align: 64)
!4421 = distinct !DILexicalBlock(scope: !4419, file: !3065, line: 592, column: 9)
!4422 = !DILocation(line: 0, scope: !4402)
!4423 = !DILocalVariable(name: "count", arg: 2, scope: !4424, file: !3154, line: 936, type: !9)
!4424 = distinct !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal3addCs9GYDdpCSJ4S_14regex_automata", scope: !3155, file: !3154, line: 936, type: !3157, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2655, retainedNodes: !4425)
!4425 = !{!4426, !4423, !4427}
!4426 = !DILocalVariable(name: "self", arg: 1, scope: !4424, file: !3154, line: 936, type: !3069)
!4427 = !DILocalVariable(name: "count", scope: !4424, file: !3154, line: 936, type: !9, align: 64)
!4428 = !DILocation(line: 0, scope: !4424, inlinedAt: !4429)
!4429 = !DILocation(line: 592, column: 31, scope: !4419)
!4430 = !DILocation(line: 0, scope: !4424, inlinedAt: !4431)
!4431 = !DILocation(line: 599, column: 25, scope: !4421)
!4432 = !DILocation(line: 0, scope: !4415)
!4433 = !DILocation(line: 0, scope: !4424, inlinedAt: !4434)
!4434 = !DILocation(line: 591, column: 28, scope: !4417)
!4435 = !DILocation(line: 580, column: 8, scope: !4415)
!4436 = !DILocation(line: 581, column: 9, scope: !4415)
!4437 = !DILocation(line: 0, scope: !4417)
!4438 = !DILocation(line: 970, column: 18, scope: !4424, inlinedAt: !4434)
!4439 = !DILocation(line: 0, scope: !4419)
!4440 = !DILocation(line: 0, scope: !4421)
!4441 = !DILocation(line: 593, column: 15, scope: !4421)
!4442 = !DILocation(line: 970, column: 18, scope: !4424, inlinedAt: !4429)
!4443 = !DILocation(line: 602, column: 2, scope: !4402)
!4444 = !DILocation(line: 596, column: 13, scope: !4421)
!4445 = !DILocation(line: 970, column: 18, scope: !4424, inlinedAt: !4431)
!4446 = distinct !DISubprogram(name: "sort<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYBW_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !4448, file: !4447, line: 20, type: !4450, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2618, retainedNodes: !4461)
!4447 = !DIFile(filename: "library/core/src/slice/sort/stable/drift.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "45ada0f6d66a135183fb6260ca4f4329")
!4448 = !DINamespace(name: "drift", scope: !4449)
!4449 = !DINamespace(name: "stable", scope: !2596)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4405, !4452, !215, !2605}
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [core::mem::maybe_uninit::MaybeUninit<regex_syntax::hir::literal::Literal>]", file: !2, size: 128, align: 64, elements: !4453, templateParams: !29, identifier: "3fead143e6c46630846db1e36dd79f1c")
!4453 = !{!4454, !4460}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !4452, file: !2, baseType: !4455, size: 64, align: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64, align: 64, dwarfAddressSpace: 0)
!4456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<regex_syntax::hir::literal::Literal>", scope: !3767, file: !2, size: 256, align: 64, elements: !4457, templateParams: !2655, identifier: "a5c4c6f552c4c1f752502de25f5da0e")
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !4456, file: !2, baseType: !7, align: 8)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4456, file: !2, baseType: !3078, size: 256, align: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4452, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4468, !4470, !4472, !4474, !4496, !4499, !4516, !4518, !4520, !4522, !4524, !4525, !4527, !4529, !4531}
!4462 = !DILocalVariable(name: "v", arg: 1, scope: !4446, file: !4447, line: 21, type: !4405)
!4463 = !DILocalVariable(name: "scratch", arg: 2, scope: !4446, file: !4447, line: 22, type: !4452)
!4464 = !DILocalVariable(name: "eager_sort", arg: 3, scope: !4446, file: !4447, line: 23, type: !215)
!4465 = !DILocalVariable(name: "is_less", arg: 4, scope: !4446, file: !4447, line: 24, type: !2605)
!4466 = !DILocalVariable(name: "len", scope: !4467, file: !4447, line: 26, type: !9, align: 64)
!4467 = distinct !DILexicalBlock(scope: !4446, file: !4447, line: 26, column: 5)
!4468 = !DILocalVariable(name: "scale_factor", scope: !4469, file: !4447, line: 30, type: !475, align: 64)
!4469 = distinct !DILexicalBlock(scope: !4467, file: !4447, line: 30, column: 5)
!4470 = !DILocalVariable(name: "min_good_run_len", scope: !4471, file: !4447, line: 37, type: !9, align: 64)
!4471 = distinct !DILexicalBlock(scope: !4469, file: !4447, line: 37, column: 5)
!4472 = !DILocalVariable(name: "stack_len", scope: !4473, file: !4447, line: 49, type: !9, align: 64)
!4473 = distinct !DILexicalBlock(scope: !4471, file: !4447, line: 49, column: 5)
!4474 = !DILocalVariable(name: "run_storage", scope: !4475, file: !4447, line: 50, type: !4476, align: 64)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !4447, line: 50, column: 5)
!4476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<[core::slice::sort::stable::drift::DriftsortRun; 66]>", scope: !3767, file: !2, size: 4224, align: 64, elements: !4477, templateParams: !4494, identifier: "24486219487ecf680a94333baa61180")
!4477 = !{!4478, !4479}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !4476, file: !2, baseType: !7, align: 8)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4476, file: !2, baseType: !4480, size: 4224, align: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<[core::slice::sort::stable::drift::DriftsortRun; 66]>", scope: !3079, file: !2, size: 4224, align: 64, flags: DIFlagPublic, elements: !4481, templateParams: !4494, identifier: "687fed62104b8888a8c26f861af5c833")
!4481 = !{!4482}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4480, file: !2, baseType: !4483, size: 4224, align: 64, flags: DIFlagPrivate)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<[core::slice::sort::stable::drift::DriftsortRun; 66]>", scope: !3083, file: !2, size: 4224, align: 64, flags: DIFlagPublic, elements: !4484, templateParams: !4492, identifier: "b37bf92667b062e660571bc39edc25a0")
!4484 = !{!4485}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4483, file: !2, baseType: !4486, size: 4224, align: 64, flags: DIFlagPrivate)
!4486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4487, size: 4224, align: 64, elements: !4490)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DriftsortRun", scope: !4448, file: !2, size: 64, align: 64, flags: DIFlagPrivate, elements: !4488, templateParams: !29, identifier: "95fbd95ab76a3c0b5cd043622147132d")
!4488 = !{!4489}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4487, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!4490 = !{!4491}
!4491 = !DISubrange(count: 66, lowerBound: 0)
!4492 = !{!4493}
!4493 = !DITemplateTypeParameter(name: "P", type: !4486)
!4494 = !{!4495}
!4495 = !DITemplateTypeParameter(name: "T", type: !4486)
!4496 = !DILocalVariable(name: "runs", scope: !4497, file: !4447, line: 51, type: !4498, align: 64)
!4497 = distinct !DILexicalBlock(scope: !4475, file: !4447, line: 51, column: 5)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::slice::sort::stable::drift::DriftsortRun", baseType: !4487, size: 64, align: 64, dwarfAddressSpace: 0)
!4499 = !DILocalVariable(name: "desired_depth_storage", scope: !4500, file: !4447, line: 52, type: !4501, align: 8)
!4500 = distinct !DILexicalBlock(scope: !4497, file: !4447, line: 52, column: 5)
!4501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<[u8; 66]>", scope: !3767, file: !2, size: 528, align: 8, elements: !4502, templateParams: !4514, identifier: "b8130f0d05375de46e44cbe39810e951")
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !4501, file: !2, baseType: !7, align: 8)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4501, file: !2, baseType: !4505, size: 528, align: 8)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<[u8; 66]>", scope: !3079, file: !2, size: 528, align: 8, flags: DIFlagPublic, elements: !4506, templateParams: !4514, identifier: "1121933a6ed10e761b0f94278c2346a8")
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4505, file: !2, baseType: !4508, size: 528, align: 8, flags: DIFlagPrivate)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<[u8; 66]>", scope: !3083, file: !2, size: 528, align: 8, flags: DIFlagPublic, elements: !4509, templateParams: !4512, identifier: "b217dfffb5d36148af5e17f05439f400")
!4509 = !{!4510}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4508, file: !2, baseType: !4511, size: 528, align: 8, flags: DIFlagPrivate)
!4511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 528, align: 8, elements: !4490)
!4512 = !{!4513}
!4513 = !DITemplateTypeParameter(name: "P", type: !4511)
!4514 = !{!4515}
!4515 = !DITemplateTypeParameter(name: "T", type: !4511)
!4516 = !DILocalVariable(name: "desired_depths", scope: !4517, file: !4447, line: 53, type: !2862, align: 64)
!4517 = distinct !DILexicalBlock(scope: !4500, file: !4447, line: 53, column: 5)
!4518 = !DILocalVariable(name: "scan_idx", scope: !4519, file: !4447, line: 55, type: !9, align: 64)
!4519 = distinct !DILexicalBlock(scope: !4517, file: !4447, line: 55, column: 5)
!4520 = !DILocalVariable(name: "prev_run", scope: !4521, file: !4447, line: 56, type: !4487, align: 64)
!4521 = distinct !DILexicalBlock(scope: !4519, file: !4447, line: 56, column: 5)
!4522 = !DILocalVariable(name: "next_run", scope: !4523, file: !4447, line: 61, type: !4487, align: 64)
!4523 = distinct !DILexicalBlock(scope: !4521, file: !4447, line: 61, column: 9)
!4524 = !DILocalVariable(name: "desired_depth", scope: !4523, file: !4447, line: 61, type: !27, align: 8)
!4525 = !DILocalVariable(name: "left", scope: !4526, file: !4447, line: 90, type: !4487, align: 64)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !4447, line: 90, column: 17)
!4527 = !DILocalVariable(name: "merged_len", scope: !4528, file: !4447, line: 91, type: !9, align: 64)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !4447, line: 91, column: 17)
!4529 = !DILocalVariable(name: "merge_start_idx", scope: !4530, file: !4447, line: 92, type: !9, align: 64)
!4530 = distinct !DILexicalBlock(scope: !4528, file: !4447, line: 92, column: 17)
!4531 = !DILocalVariable(name: "merge_slice", scope: !4532, file: !4447, line: 93, type: !4405, align: 64)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !4447, line: 93, column: 17)
!4533 = !DILocation(line: 0, scope: !4446)
!4534 = !DILocalVariable(name: "self", arg: 1, scope: !4535, file: !4536, line: 31, type: !4405)
!4535 = distinct !DISubprogram(name: "index_mut<regex_syntax::hir::literal::Literal, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralINtNtNtB8_3ops5index8IndexMutINtNtB1B_5range9RangeFromjEE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !4537, file: !4536, line: 31, type: !4539, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4549, retainedNodes: !4547)
!4536 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "a6478e6d30216db9f8cdcb9288808b92")
!4537 = !DINamespace(name: "{impl#1}", scope: !4538)
!4538 = !DINamespace(name: "index", scope: !2388)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4405, !4405, !4541, !2629}
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeFrom<usize>", scope: !4542, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !4543, templateParams: !4545, identifier: "fb0a27e4fd113de4fa138398f16b7bf8")
!4542 = !DINamespace(name: "range", scope: !2710)
!4543 = !{!4544}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4541, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPublic)
!4545 = !{!4546}
!4546 = !DITemplateTypeParameter(name: "Idx", type: !9)
!4547 = !{!4534, !4548}
!4548 = !DILocalVariable(name: "index", scope: !4535, file: !4536, line: 31, type: !4541, align: 64)
!4549 = !{!2619, !4550}
!4550 = !DITemplateTypeParameter(name: "I", type: !4541)
!4551 = !DILocation(line: 0, scope: !4535, inlinedAt: !4552)
!4552 = !DILocation(line: 64, column: 34, scope: !4523)
!4553 = !DILocalVariable(name: "slice", arg: 2, scope: !4554, file: !4536, line: 556, type: !4405)
!4554 = distinct !DISubprogram(name: "index_mut<regex_syntax::hir::literal::Literal>", linkageName: "_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !4555, file: !4536, line: 556, type: !4556, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !2655, retainedNodes: !4558)
!4555 = !DINamespace(name: "{impl#7}", scope: !4538)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!4405, !4541, !4405, !2629}
!4558 = !{!4559, !4553, !4560}
!4559 = !DILocalVariable(name: "self", scope: !4554, file: !4536, line: 556, type: !4541, align: 64)
!4560 = !DILocalVariable(name: "new_len", scope: !4561, file: !4536, line: 562, type: !9, align: 64)
!4561 = distinct !DILexicalBlock(scope: !4554, file: !4536, line: 562, column: 13)
!4562 = !DILocation(line: 0, scope: !4554, inlinedAt: !4563)
!4563 = !DILocation(line: 32, column: 15, scope: !4535, inlinedAt: !4552)
!4564 = !DILocalVariable(name: "self", arg: 1, scope: !4565, file: !4566, line: 686, type: !4405)
!4565 = distinct !DISubprogram(name: "get_unchecked_mut<regex_syntax::hir::literal::Literal, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal17get_unchecked_mutINtNtNtB5_3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata", scope: !4567, file: !4566, line: 686, type: !4568, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !4576, retainedNodes: !4574)
!4566 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "3864a87bb6bc29c76dd67717f51013ca")
!4567 = !DINamespace(name: "{impl#0}", scope: !2388)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!4405, !4405, !4570, !2629}
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !4542, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !4571, templateParams: !4545, identifier: "1e7bd4e5f051373bf135450fff369e94")
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4570, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPublic)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4570, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!4574 = !{!4564, !4575}
!4575 = !DILocalVariable(name: "index", scope: !4565, file: !4566, line: 686, type: !4570, align: 64)
!4576 = !{!2619, !4577}
!4577 = !DITemplateTypeParameter(name: "I", type: !4570)
!4578 = !DILocation(line: 0, scope: !4565, inlinedAt: !4579)
!4579 = !DILocation(line: 93, column: 37, scope: !4530)
!4580 = !DILocation(line: 50, column: 9, scope: !4475)
!4581 = !DILocation(line: 52, column: 9, scope: !4500)
!4582 = !DILocalVariable(name: "self", scope: !4583, file: !4584, line: 3787, type: !475, align: 64)
!4583 = distinct !DISubprogram(name: "div_ceil", linkageName: "_RNvMs7_NtCsj6eKBz9Db1c_4core3numy8div_ceil", scope: !4585, file: !4584, line: 3787, type: !4586, scopeLine: 3787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !4588)
!4584 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "8efc3154315017505353298565bdaf01")
!4585 = !DINamespace(name: "{impl#9}", scope: !296)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!475, !475, !475, !2629}
!4588 = !{!4582, !4589, !4590, !4592}
!4589 = !DILocalVariable(name: "rhs", arg: 2, scope: !4583, file: !4584, line: 3787, type: !475)
!4590 = !DILocalVariable(name: "d", scope: !4591, file: !4584, line: 3788, type: !475, align: 64)
!4591 = distinct !DILexicalBlock(scope: !4583, file: !4584, line: 3788, column: 13)
!4592 = !DILocalVariable(name: "r", scope: !4593, file: !4584, line: 3789, type: !475, align: 64)
!4593 = distinct !DILexicalBlock(scope: !4591, file: !4584, line: 3789, column: 13)
!4594 = !DILocation(line: 0, scope: !4583, inlinedAt: !4595)
end_hunk_1
