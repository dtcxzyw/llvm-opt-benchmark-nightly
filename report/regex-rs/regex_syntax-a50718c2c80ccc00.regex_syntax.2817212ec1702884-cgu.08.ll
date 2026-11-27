Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.08?download=true
inline.NumInlined: 149
inline.NumDeleted: 41
begin_hunk_0_@_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion4push:bb.a
  tail call void @llvm.assume(i1 %i.d), !dbg !4087
  %i.e = icmp eq i64 %i.c, 0, !dbg !4088
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load i32, ptr %i.f, align 8, !dbg !4089, !range !1079 ; 6 uses
  br i1 %i.e, label %bb.c, label %._crit_edge, !dbg !4090

._crit_edge:                                      ; preds = %bb.a
  %.pre5 = add nsw i32 %i.g, -1114112, !dbg !4091
  br label %bb.b, !dbg !4090

bb.b:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre5, %._crit_edge ], [ %i.k, %bb.h ], !dbg !4091
    #dbg_value(ptr %1, !4025, !DIExpression(), !4049)
  %i.h = icmp ne i32 %i.g, 1114114, !dbg !4091
  tail call void @llvm.assume(i1 %i.h), !dbg !4091
  %i.i = icmp samesign ugt i32 %i.g, 1114111, !dbg !4091
  %narrow4 = select i1 %i.i, i32 %.pre-phi, i32 2, !dbg !4091
  switch i32 %narrow4, label %bb.d [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.i
    i32 5, label %bb.l
    i32 6, label %bb.j
    i32 7, label %bb.k
  ], !dbg !4092

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !4025, !DIExpression(), !4051)
  %i.j = icmp ne i32 %i.g, 1114114, !dbg !4093
  tail call void @llvm.assume(i1 %i.j), !dbg !4093
  %i.k = add nsw i32 %i.g, -1114112, !dbg !4093   ; 2 uses
  %i.l = icmp samesign ugt i32 %i.g, 1114111, !dbg !4093
  %narrow = select i1 %i.l, i32 %i.k, i32 2, !dbg !4093
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.e
    i32 5, label %bb.h
    i32 6, label %bb.f
    i32 7, label %bb.g
  ], !dbg !4094

bb.d:                                             ; preds = %bb.c, %bb.b
  unreachable, !dbg !4095

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4036, !DIExpression(), !4053)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !4096
  br label %bb.h, !dbg !4097

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4037, !DIExpression(), !4054)
  %i.n = load ptr, ptr %1, align 8, !dbg !4098, !nonnull !464, !noundef !464
  br label %bb.h, !dbg !4099

bb.g:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4038, !DIExpression(), !4055)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4100
  br label %bb.h, !dbg !4101

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.o, %bb.g ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %i.m, %bb.e ], [ %1, %bb.c ], [ %i.n, %bb.f ], [ %1, %bb.c ], !dbg !4102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4103
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, i64 24, i1 false), !dbg !4104
  br label %bb.b, !dbg !4105

bb.i:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !4044, !DIExpression(), !4056)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !4106
  br label %bb.l, !dbg !4107

bb.j:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !4045, !DIExpression(), !4057)
  %i.r = load ptr, ptr %1, align 8, !dbg !4108, !nonnull !464, !noundef !464
  br label %bb.l, !dbg !4109

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !4046, !DIExpression(), !4058)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4110
  br label %bb.l, !dbg !4111

bb.l:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.k, %bb.j, %bb.i
  %.sroa.01.0 = phi ptr [ %i.s, %bb.k ], [ %1, %bb.b ], [ %1, %bb.b ], [ %1, %bb.b ], [ %i.q, %bb.i ], [ %1, %bb.b ], [ %i.r, %bb.j ], [ %1, %bb.b ], !dbg !4112
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24, !dbg !4113
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !4113
    #dbg_value(ptr %0, !4010, !DIExpression(), !4059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !dbg !4115
    #dbg_value(ptr %0, !4060, !DIExpression(), !3973)
    #dbg_value(ptr %0, !4068, !DIExpression(), !3976)
    #dbg_declare(ptr %i.a, !4064, !DIExpression(), !3977)
    #dbg_value(i64 160, !4073, !DIExpression(), !3982)
    #dbg_value(i64 %i.c, !4065, !DIExpression(), !3983)
    #dbg_value(i64 %i.c, !4078, !DIExpression(), !3986)
    #dbg_value(ptr %0, !4076, !DIExpression(), !3987)
  %i.v = load i64, ptr %0, align 8, !dbg !4116, !range !1332, !alias.scope !4083, !noundef !464
  %i.w = icmp eq i64 %i.c, %i.v, !dbg !4117
  br i1 %i.w, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit, !dbg !4117

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit unwind label %bb.n, !dbg !4118, !noalias !4084

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a) #16
          to label %bb.p unwind label %bb.o, !dbg !4119

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !4120
  unreachable, !dbg !4120

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.x, !dbg !4120

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit: ; preds = %bb.l, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4121
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !4121, !alias.scope !4083, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.aa, !4081, !DIExpression(), !3986)
  %i.ab = getelementptr inbounds nuw [160 x i8], ptr %i.aa, i64 %i.c, !dbg !4122
    #dbg_value(ptr %i.ab, !4066, !DIExpression(), !3997)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ab, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !dbg !4123
  %i.ac = add nuw nsw i64 %i.c, 1, !dbg !4124
  store i64 %i.ac, ptr %i.b, align 8, !dbg !4124, !alias.scope !4083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4125
  ret void, !dbg !4126
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion9into_item(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 48), (152, 156)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4127 {
bb.a:
    #dbg_declare(ptr poison, !4160, !DIExpression(DW_OP_LLVM_fragment, 0, 1216), !4174)
    #dbg_declare(ptr %1, !4156, !DIExpression(), !4175)
    #dbg_value(i64 160, !4176, !DIExpression(), !4183)
    #dbg_value(ptr %1, !4194, !DIExpression(), !4197)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4224 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !4224, !noundef !464 ; 2 uses
  %i.c = icmp ult i64 %i.b, 57646075230342349, !dbg !4225
  tail call void @llvm.assume(i1 %i.c), !dbg !4226
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.g
  ], !dbg !4227

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !4228
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4229
  store i32 1114119, ptr %i.d, align 8, !dbg !4229
  br label %bb.h, !dbg !4230

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4231
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !4231
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4232
  store i32 1114112, ptr %i.f, align 8, !dbg !4232
  br label %bb.d, !dbg !4233

bb.d:                                             ; preds = %bb.g, %bb.c
    #dbg_value(ptr %1, !1081, !DIExpression(), !4140)
    #dbg_value(ptr %1, !1088, !DIExpression(), !4142)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit unwind label %bb.e, !dbg !4234

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !1095, !DIExpression(), !4144)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEEB1j_.exit.i.i unwind label %bb.f, !dbg !4235

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !4234
  unreachable, !dbg !4234

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEEB1j_.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.g, !dbg !4234

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit: ; preds = %bb.d
    #dbg_value(ptr %1, !1095, !DIExpression(), !4146)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !dbg !4236
  br label %bb.h, !dbg !4230

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !4187, !DIExpression(), !4198)
    #dbg_value(ptr %1, !4190, !DIExpression(), !4199)
    #dbg_value(ptr %1, !4200, !DIExpression(), !4206)
    #dbg_value(ptr %1, !4194, !DIExpression(), !4208)
  store i64 0, ptr %i.a, align 8, !dbg !4237
    #dbg_value(i1 true, !4209, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4212)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4238
  %i.j = load ptr, ptr %i.i, align 8, !dbg !4238, !nonnull !464, !noundef !464 ; 2 uses
    #dbg_value(ptr %i.j, !4216, !DIExpression(), !4221)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false), !dbg !4239
  %.sroa.46.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.j, i64 152, !dbg !4239
    #dbg_value(i32 poison, !4160, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !4222)
    #dbg_value(i32 poison, !4160, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !4222)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4240
  %2 = load <2 x i32>, ptr %.sroa.46.0..sroa_idx.a, align 8, !dbg !4239
  store <2 x i32> %2, ptr %.sroa.4.0..sroa_idx1, align 8, !dbg !4240
  br label %bb.d, !dbg !4241

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit, %bb.b
  ret void, !dbg !4242
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMsp_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5Flags8add_item(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4253 {
bb.a:
    #dbg_value(ptr poison, !4379, !DIExpression(), !4278)
    #dbg_value(ptr poison, !4411, !DIExpression(), !4279)
    #dbg_value(ptr %0, !4355, !DIExpression(), !4424)
    #dbg_declare(ptr %1, !4356, !DIExpression(), !4425)
    #dbg_declare(ptr %1, !4426, !DIExpression(), !4433)
    #dbg_value(ptr %0, !4435, !DIExpression(), !4445)
    #dbg_value(ptr %0, !4446, !DIExpression(), !4450)
    #dbg_value(ptr %0, !4451, !DIExpression(), !4457)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4573 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4573, !nonnull !464, !noundef !464 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4574 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4574, !noundef !464 ; 5 uses
    #dbg_value(i64 %i.d, !4474, !DIExpression(), !4487)
    #dbg_value(i64 %i.d, !4492, !DIExpression(), !4498)
    #dbg_value(ptr %i.b, !4490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4499)
    #dbg_value(ptr %i.b, !4478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4500)
    #dbg_value(i64 %i.d, !4490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4499)
    #dbg_value(i64 %i.d, !4478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4500)
    #dbg_value(ptr %i.b, !4479, !DIExpression(), !4501)
    #dbg_value(ptr %i.b, !4495, !DIExpression(), !4498)
  %.idx = mul nuw nsw i64 %i.d, 56, !dbg !4575
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx, !dbg !4575 ; 2 uses
    #dbg_value(ptr %i.b, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(ptr %i.e, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4502)
    #dbg_value(i64 0, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(ptr undef, !4411, !DIExpression(), !4279)
    #dbg_value(ptr undef, !4379, !DIExpression(), !4278)
    #dbg_value(i64 1, !4504, !DIExpression(), !4297)
    #dbg_value(ptr %i.b, !4390, !DIExpression(), !4298)
    #dbg_value(ptr %i.b, !4508, !DIExpression(), !4297)
    #dbg_value(ptr %i.e, !4391, !DIExpression(), !4299)
    #dbg_value(ptr poison, !4511, !DIExpression(), !4302)
    #dbg_value(ptr poison, !4515, !DIExpression(), !4303)
  %i.f = icmp eq i64 %i.d, 0, !dbg !4576
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !4577

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !4517, !noundef !464 ; 2 uses
  %.not = icmp eq i8 %i.h, -1
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.sroa.0.02533.us = phi ptr [ %i.l, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %.sroa.8.032.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
    #dbg_value(ptr %.sroa.0.02533.us, !4357, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(ptr %.sroa.0.02533.us, !4412, !DIExpression(), !4304)
    #dbg_value(i64 %.sroa.8.032.us, !4415, !DIExpression(), !4305)
    #dbg_value(i64 %.sroa.8.032.us, !4357, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(i64 %.sroa.8.032.us, !4358, !DIExpression(), !4520)
    #dbg_value(ptr %.sroa.0.02533.us, !4360, !DIExpression(), !4520)
    #dbg_value(ptr %.sroa.0.02533.us, !4522, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4535)
    #dbg_value(ptr %1, !4526, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4535)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.02533.us, i64 48, !dbg !4535
  %i.j = load i8, ptr %i.i, align 8, !dbg !4535, !range !4517, !noundef !464
  %.not35 = icmp eq i8 %i.j, -1, !dbg !4535
    #dbg_value(i1 %.not35, !4528, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4537)
    #dbg_value(i1 %.not, !4529, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4538)
  br i1 %.not35, label %.loopexit, label %bb.b, !dbg !4578

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = add nuw nsw i64 %.sroa.8.032.us, 1, !dbg !4579
    #dbg_value(i64 %i.k, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.02533.us, i64 56, !dbg !4580 ; 2 uses
    #dbg_value(ptr %i.l, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(i64 %i.k, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(ptr undef, !4411, !DIExpression(), !4279)
    #dbg_value(ptr undef, !4379, !DIExpression(), !4278)
    #dbg_value(i64 1, !4504, !DIExpression(), !4297)
    #dbg_value(ptr %i.l, !4390, !DIExpression(), !4298)
    #dbg_value(ptr %i.l, !4508, !DIExpression(), !4297)
    #dbg_value(ptr %i.e, !4391, !DIExpression(), !4299)
    #dbg_value(ptr poison, !4511, !DIExpression(), !4302)
    #dbg_value(ptr poison, !4515, !DIExpression(), !4303)
  %i.m = icmp eq ptr %i.l, %i.e, !dbg !4576
  br i1 %i.m, label %._crit_edge, label %.lr.ph.split.us, !dbg !4577

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.0.02533 = phi ptr [ %i.x, %bb.d ], [ %i.b, %.lr.ph ] ; 2 uses
  %.sroa.8.032 = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
    #dbg_value(ptr %.sroa.0.02533, !4357, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(ptr %.sroa.0.02533, !4412, !DIExpression(), !4304)
    #dbg_value(i64 %.sroa.8.032, !4415, !DIExpression(), !4305)
    #dbg_value(i64 %.sroa.8.032, !4357, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(i64 %.sroa.8.032, !4358, !DIExpression(), !4520)
    #dbg_value(ptr %.sroa.0.02533, !4360, !DIExpression(), !4520)
    #dbg_value(ptr %.sroa.0.02533, !4522, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4535)
    #dbg_value(ptr %1, !4526, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4535)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02533, i64 48, !dbg !4535
  %i.o = load i8, ptr %i.n, align 8, !dbg !4535, !range !4517, !noundef !464
    #dbg_value(i1 %.not, !4529, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4538)
    #dbg_value(i8 %i.o, !4528, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4537)
  %.not36 = icmp eq i8 %i.o, %i.h
  br i1 %.not36, label %.loopexit, label %bb.d, !dbg !4578

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
    #dbg_value(ptr poison, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(i64 poison, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(ptr %0, !4430, !DIExpression(), !4540)
    #dbg_value(ptr %0, !4541, !DIExpression(), !4314)
    #dbg_value(ptr %0, !4550, !DIExpression(), !4317)
    #dbg_declare(ptr %1, !4546, !DIExpression(), !4318)
    #dbg_declare(ptr %1, !4555, !DIExpression(), !4321)
    #dbg_value(i64 56, !4560, !DIExpression(), !4326)
    #dbg_value(i64 %i.d, !4547, !DIExpression(), !4327)
    #dbg_value(i64 %i.d, !4568, !DIExpression(), !4330)
    #dbg_value(ptr %0, !4566, !DIExpression(), !4331)
  %i.p = load i64, ptr %0, align 8, !dbg !4581, !range !1332, !alias.scope !4571, !noundef !464
  %i.q = icmp eq i64 %i.d, %i.p, !dbg !4582
  br i1 %i.q, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit, !dbg !4582

bb.c:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18, !dbg !4583, !noalias !4572
  %.pre = load ptr, ptr %i.a, align 8, !dbg !4584, !alias.scope !4571
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit, !dbg !4585

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit: ; preds = %._crit_edge, %bb.c
  %i.r = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ], !dbg !4584
    #dbg_value(ptr %i.r, !4569, !DIExpression(), !4330)
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.d, !dbg !4586
    #dbg_value(ptr %i.s, !4548, !DIExpression(), !4341)
    #dbg_value(ptr %i.s, !4558, !DIExpression(), !4342)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !dbg !4587
  %i.t = add i64 %i.d, 1, !dbg !4588
  store i64 %i.t, ptr %i.c, align 8, !dbg !4588, !alias.scope !4571
  br label %.loopexit, !dbg !4589

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit
  %.sroa.3.0 = phi i64 [ undef, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit ], [ %.sroa.8.032.us, %.lr.ph.split.us ], [ %.sroa.8.032, %.lr.ph.split ], !dbg !4424
  %.sroa.0.0 = phi i64 [ 0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit ], [ 1, %.lr.ph.split.us ], [ 1, %.lr.ph.split ], !dbg !4424
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !4589
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.3.0, 1, !dbg !4589
  ret { i64, i64 } %i.v, !dbg !4589

bb.d:                                             ; preds = %.lr.ph.split
  %i.w = add nuw nsw i64 %.sroa.8.032, 1, !dbg !4579
    #dbg_value(i64 %i.w, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.02533, i64 56, !dbg !4580 ; 2 uses
    #dbg_value(ptr %i.x, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4502)
    #dbg_value(i64 %i.w, !4357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4502)
    #dbg_value(ptr undef, !4411, !DIExpression(), !4279)
    #dbg_value(ptr undef, !4379, !DIExpression(), !4278)
    #dbg_value(i64 1, !4504, !DIExpression(), !4297)
    #dbg_value(ptr %i.x, !4390, !DIExpression(), !4298)
    #dbg_value(ptr %i.x, !4508, !DIExpression(), !4297)
    #dbg_value(ptr %i.e, !4391, !DIExpression(), !4299)
    #dbg_value(ptr poison, !4511, !DIExpression(), !4302)
    #dbg_value(ptr poison, !4515, !DIExpression(), !4303)
  %i.y = icmp eq ptr %i.x, %i.e, !dbg !4576
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split, !dbg !4577
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !4591 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !4642, !DIExpression(), !4645)
    #dbg_value(ptr %1, !4643, !DIExpression(), !4645)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4646), !dbg !4722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4647), !dbg !4722
    #dbg_value(ptr %0, !4649, !DIExpression(), !4602)
    #dbg_value(ptr %0, !4671, !DIExpression(), !4605)
    #dbg_value(ptr %0, !4676, !DIExpression(), !4608)
    #dbg_value(ptr %0, !4681, !DIExpression(), !4611)
    #dbg_value(ptr %0, !4686, !DIExpression(), !4617)
    #dbg_value(ptr %0, !4696, !DIExpression(), !4620)
    #dbg_value(ptr %0, !4701, !DIExpression(), !4623)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4723
  %i.c = load ptr, ptr %i.b, align 8, !dbg !4723, !alias.scope !4647, !nonnull !464, !noundef !464
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4724
  %i.e = load i64, ptr %i.d, align 8, !dbg !4724, !alias.scope !4647, !noundef !464
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4725 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !dbg !4726, !range !1429, !alias.scope !4647, !noundef !464
  switch i32 %i.g, label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit [
    i32 13, label %bb.b
    i32 14, label %bb.c
    i32 17, label %bb.d
  ], !dbg !4727

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4728
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4729

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4730
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4731

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4732
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4733
end_hunk_0
