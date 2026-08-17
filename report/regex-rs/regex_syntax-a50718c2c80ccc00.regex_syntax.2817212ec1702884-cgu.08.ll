inline.NumInlined: 149
inline.NumDeleted: 41
begin_hunk_0_@_RNvMsg_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_14ClassAsciiKind9from_name:bb.a
  %i.dt = icmp eq i32 %i.ds, 0, !dbg !3709
  %spec.select141 = select i1 %i.dt, i8 12, i8 -1, !dbg !3435
  br label %.critedge139.thread, !dbg !3435

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3573, !DIExpression(), !3670)
    #dbg_value(ptr poison, !3574, !DIExpression(), !3670)
  %i.du = load i32, ptr %0, align 1, !dbg !3710
  %i.dv = xor i32 %i.du, 1734960248, !dbg !3710
  %i.dw = getelementptr i8, ptr %0, i64 4, !dbg !3710
  %i.dx = load i16, ptr %i.dw, align 1, !dbg !3710
  %i.dy = zext i16 %i.dx to i32, !dbg !3710
  %i.dz = xor i32 %i.dy, 29801, !dbg !3710
  %i.ea = or i32 %i.dv, %i.dz, !dbg !3710
  %i.eb = icmp ne i32 %i.ea, 0, !dbg !3710
  %i.ec = zext i1 %i.eb to i32, !dbg !3710
  %i.ed = icmp eq i32 %i.ec, 0, !dbg !3710
  %spec.select = select i1 %i.ed, i8 13, i8 -1, !dbg !3437
  br label %.critedge139.thread, !dbg !3437

.critedge139.thread:                              ; preds = %bb.d, %.critedge138, %bb.a, %bb.e, %.critedge137, %.critedge136, %.critedge135, %.critedge134, %.critedge133, %.critedge132, %.critedge131, %.critedge130, %.critedge, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %spec.select140, %.critedge138 ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %.critedge ], [ 3, %.critedge130 ], [ 4, %.critedge131 ], [ 5, %.critedge132 ], [ 6, %.critedge133 ], [ 7, %.critedge134 ], [ 8, %.critedge135 ], [ 9, %.critedge136 ], [ 10, %.critedge137 ], [ %spec.select141, %bb.d ], [ %spec.select, %bb.e ], [ -1, %bb.a ], !dbg !3399
  ret i8 %.sroa.0.0, !dbg !3711
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion4push(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3712 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !3717, !DIExpression(), !3719)
    #dbg_declare(ptr %1, !3718, !DIExpression(), !3720)
    #dbg_declare(ptr %1, !3721, !DIExpression(), !3728)
    #dbg_value(ptr %0, !3730, !DIExpression(), !3737)
    #dbg_value(ptr %0, !3739, !DIExpression(), !3745)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3747 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !3747, !noundef !15 ; 5 uses
  %i.d = icmp ult i64 %i.c, 57646075230342349, !dbg !3748
  tail call void @llvm.assume(i1 %i.d), !dbg !3749
  %i.e = icmp eq i64 %i.c, 0, !dbg !3750
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load i32, ptr %i.f, align 8, !dbg !3751, !range !1399 ; 6 uses
  br i1 %i.e, label %bb.c, label %._crit_edge, !dbg !3799

._crit_edge:                                      ; preds = %bb.a
  %.pre5 = add nsw i32 %i.g, -1114112, !dbg !3800
  br label %bb.b, !dbg !3799

bb.b:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre5, %._crit_edge ], [ %i.k, %bb.h ], !dbg !3800
    #dbg_value(ptr %1, !3759, !DIExpression(), !3802)
  %i.h = icmp ne i32 %i.g, 1114114, !dbg !3800
  tail call void @llvm.assume(i1 %i.h), !dbg !3800
  %i.i = icmp samesign ugt i32 %i.g, 1114111, !dbg !3800
  %narrow4 = select i1 %i.i, i32 %.pre-phi, i32 2, !dbg !3800
  switch i32 %narrow4, label %bb.d [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.i
    i32 5, label %bb.l
    i32 6, label %bb.j
    i32 7, label %bb.k
  ], !dbg !3803

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !3759, !DIExpression(), !3804)
  %i.j = icmp ne i32 %i.g, 1114114, !dbg !3806
  tail call void @llvm.assume(i1 %i.j), !dbg !3806
  %i.k = add nsw i32 %i.g, -1114112, !dbg !3806   ; 2 uses
  %i.l = icmp samesign ugt i32 %i.g, 1114111, !dbg !3806
  %narrow = select i1 %i.l, i32 %i.k, i32 2, !dbg !3806
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.e
    i32 5, label %bb.h
    i32 6, label %bb.f
    i32 7, label %bb.g
  ], !dbg !3807

bb.d:                                             ; preds = %bb.c, %bb.b
  unreachable, !dbg !3808

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3774, !DIExpression(), !3811)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3812
  br label %bb.h, !dbg !3813

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3777, !DIExpression(), !3814)
  %i.n = load ptr, ptr %1, align 8, !dbg !3815, !nonnull !15, !noundef !15
  br label %bb.h, !dbg !3816

bb.g:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3780, !DIExpression(), !3817)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3818
  br label %bb.h, !dbg !3819

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.o, %bb.g ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %i.m, %bb.e ], [ %1, %bb.c ], [ %i.n, %bb.f ], [ %1, %bb.c ], !dbg !3820
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3821
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, i64 24, i1 false), !dbg !3821
  br label %bb.b, !dbg !3822

bb.i:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3793, !DIExpression(), !3823)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3824
  br label %bb.l, !dbg !3825

bb.j:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3795, !DIExpression(), !3826)
  %i.r = load ptr, ptr %1, align 8, !dbg !3827, !nonnull !15, !noundef !15
  br label %bb.l, !dbg !3828

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3797, !DIExpression(), !3829)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3830
  br label %bb.l, !dbg !3831

bb.l:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.k, %bb.j, %bb.i
  %.sroa.01.0 = phi ptr [ %i.s, %bb.k ], [ %1, %bb.b ], [ %1, %bb.b ], [ %1, %bb.b ], [ %i.q, %bb.i ], [ %1, %bb.b ], [ %i.r, %bb.j ], [ %1, %bb.b ], !dbg !3832
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24, !dbg !3833
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3834
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !3834
    #dbg_value(ptr %0, !3727, !DIExpression(), !3835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !dbg !3836
    #dbg_value(ptr %0, !3837, !DIExpression(), !3849)
    #dbg_value(ptr %0, !3851, !DIExpression(), !3857)
    #dbg_declare(ptr %i.a, !3843, !DIExpression(), !3859)
    #dbg_declare(ptr poison, !3860, !DIExpression(), !3866)
    #dbg_value(i64 160, !3868, !DIExpression(), !3872)
    #dbg_value(i64 %i.c, !3844, !DIExpression(), !3882)
    #dbg_value(i64 %i.c, !3883, !DIExpression(), !3892)
    #dbg_value(ptr %0, !3880, !DIExpression(), !3894)
  %i.v = load i64, ptr %0, align 8, !dbg !3895, !range !3896, !alias.scope !3897, !noalias !3900, !noundef !15
  %i.w = icmp eq i64 %i.c, %i.v, !dbg !3902
  br i1 %i.w, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit, !dbg !3902

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit unwind label %bb.n, !dbg !3903, !noalias !3900

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a) #16
          to label %bb.p unwind label %bb.o, !dbg !3904

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !3905
  unreachable, !dbg !3905

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.x, !dbg !3905

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_.exit: ; preds = %bb.l, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3906
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !3906, !alias.scope !3897, !noalias !3900, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.aa, !3891, !DIExpression(), !3892)
  %i.ab = getelementptr inbounds nuw [160 x i8], ptr %i.aa, i64 %i.c, !dbg !3927
    #dbg_value(ptr %i.ab, !3846, !DIExpression(), !3928)
    #dbg_value(ptr %i.ab, !3865, !DIExpression(), !3929)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ab, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !dbg !3930
  %i.ac = add nuw nsw i64 %i.c, 1, !dbg !3931
  store i64 %i.ac, ptr %i.b, align 8, !dbg !3931, !alias.scope !3897, !noalias !3900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3932
  ret void, !dbg !3933
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion9into_item(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 48), (152, 156)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3934 {
bb.a:
    #dbg_declare(ptr poison, !3940, !DIExpression(DW_OP_LLVM_fragment, 0, 1216), !3960)
    #dbg_declare(ptr %1, !3939, !DIExpression(), !3962)
    #dbg_value(i64 160, !3963, !DIExpression(), !3967)
    #dbg_value(ptr %1, !3985, !DIExpression(), !3988)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3990 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !3990, !noundef !15 ; 2 uses
  %i.c = icmp ult i64 %i.b, 57646075230342349, !dbg !3991
  tail call void @llvm.assume(i1 %i.c), !dbg !3992
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.g
  ], !dbg !3993

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !3994
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !3995
  store i32 1114119, ptr %i.d, align 8, !dbg !3995
  br label %bb.h, !dbg !3996

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3997
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !3997
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !3998
  store i32 1114112, ptr %2, align 8, !dbg !3998
  br label %bb.d, !dbg !3999

bb.d:                                             ; preds = %bb.g, %bb.c
    #dbg_value(ptr %1, !1400, !DIExpression(), !4000)
    #dbg_value(ptr %1, !1410, !DIExpression(), !4002)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit unwind label %bb.e, !dbg !4004

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !1421, !DIExpression(), !4005)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEEB1j_.exit.i.i unwind label %bb.f, !dbg !4007

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !4004
  unreachable, !dbg !4004

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEEB1j_.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f, !dbg !4004

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit: ; preds = %bb.d
    #dbg_value(ptr %1, !1421, !DIExpression(), !4008)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !dbg !4010
  br label %bb.h, !dbg !3996

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !3983, !DIExpression(), !4011)
    #dbg_value(ptr %1, !3976, !DIExpression(), !4012)
    #dbg_value(ptr %1, !4013, !DIExpression(), !4019)
    #dbg_value(ptr %1, !3985, !DIExpression(), !4021)
  store i64 0, ptr %i.a, align 8, !dbg !4023
    #dbg_value(i1 true, !4024, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4027)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4029
  %i.i = load ptr, ptr %i.h, align 8, !dbg !4029, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(ptr %i.i, !4036, !DIExpression(), !4041)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 152, i1 false), !dbg !4043
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 152, !dbg !4043
    #dbg_value(i32 poison, !3940, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !4044)
    #dbg_value(i32 poison, !3940, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !4044)
  %.sroa.4.0..sroa_idx1.a = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4045
  %3 = load <2 x i32>, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !4043
  store <2 x i32> %3, ptr %.sroa.4.0..sroa_idx1.a, align 8, !dbg !4045
  br label %bb.d, !dbg !4046

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionEBF_.exit, %bb.b
  ret void, !dbg !4047
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMsp_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5Flags8add_item(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4048 {
bb.a:
    #dbg_value(ptr poison, !4096, !DIExpression(), !4121)
    #dbg_value(ptr poison, !4147, !DIExpression(), !4168)
    #dbg_value(ptr %0, !4066, !DIExpression(), !4169)
    #dbg_declare(ptr %1, !4067, !DIExpression(), !4170)
    #dbg_declare(ptr %1, !4171, !DIExpression(), !4178)
    #dbg_value(ptr %0, !4180, !DIExpression(), !4192)
    #dbg_value(ptr %0, !4194, !DIExpression(), !4198)
    #dbg_value(ptr %0, !4200, !DIExpression(), !4206)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4208, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4227 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4227, !noundef !15 ; 5 uses
    #dbg_value(i64 %i.d, !4228, !DIExpression(), !4245)
    #dbg_value(i64 %i.d, !4253, !DIExpression(), !4259)
    #dbg_value(ptr %i.b, !4251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4261)
    #dbg_value(ptr %i.b, !4236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4262)
    #dbg_value(i64 %i.d, !4251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4261)
    #dbg_value(i64 %i.d, !4236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4262)
    #dbg_value(ptr %i.b, !4241, !DIExpression(), !4263)
    #dbg_value(ptr %i.b, !4258, !DIExpression(), !4259)
  %.idx = mul nuw nsw i64 %i.d, 56, !dbg !4264
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx, !dbg !4264 ; 2 uses
    #dbg_value(ptr %i.b, !4068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(ptr %i.e, !4068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4265)
    #dbg_value(i64 0, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(ptr undef, !4147, !DIExpression(), !4168)
    #dbg_value(ptr undef, !4096, !DIExpression(), !4121)
    #dbg_value(i64 1, !4266, !DIExpression(), !4274)
    #dbg_value(ptr %i.b, !4115, !DIExpression(), !4276)
    #dbg_value(ptr %i.b, !4273, !DIExpression(), !4274)
    #dbg_value(ptr %i.e, !4117, !DIExpression(), !4277)
    #dbg_value(ptr poison, !4278, !DIExpression(), !4286)
    #dbg_value(ptr poison, !4285, !DIExpression(), !4288)
  %i.f = icmp eq i64 %i.d, 0, !dbg !4289
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !4290

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !4291, !noundef !15 ; 2 uses
  %.not = icmp eq i8 %i.h, -1
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.sroa.0.02533.us = phi ptr [ %i.l, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %.sroa.8.032.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
    #dbg_value(ptr %.sroa.0.02533.us, !4068, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(ptr %.sroa.0.02533.us, !4148, !DIExpression(), !4292)
    #dbg_value(i64 %.sroa.8.032.us, !4165, !DIExpression(), !4293)
    #dbg_value(i64 %.sroa.8.032.us, !4068, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(i64 %.sroa.8.032.us, !4093, !DIExpression(), !4294)
    #dbg_value(ptr %.sroa.0.02533.us, !4095, !DIExpression(), !4294)
    #dbg_value(ptr %.sroa.0.02533.us, !4295, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4312)
    #dbg_value(ptr %1, !4302, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4312)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.02533.us, i64 48, !dbg !4312
  %i.j = load i8, ptr %i.i, align 8, !dbg !4312, !range !4291, !noundef !15
  %.not35 = icmp eq i8 %i.j, -1, !dbg !4312
    #dbg_value(i1 %.not35, !4303, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4314)
    #dbg_value(i1 %.not, !4306, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4315)
  br i1 %.not35, label %.loopexit, label %bb.b, !dbg !4316

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = add nuw nsw i64 %.sroa.8.032.us, 1, !dbg !4317
    #dbg_value(i64 %i.k, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.02533.us, i64 56, !dbg !4318 ; 2 uses
    #dbg_value(ptr %i.l, !4068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(i64 %i.k, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(ptr undef, !4147, !DIExpression(), !4168)
    #dbg_value(ptr undef, !4096, !DIExpression(), !4121)
    #dbg_value(i64 1, !4266, !DIExpression(), !4274)
    #dbg_value(ptr %i.l, !4115, !DIExpression(), !4276)
    #dbg_value(ptr %i.l, !4273, !DIExpression(), !4274)
    #dbg_value(ptr %i.e, !4117, !DIExpression(), !4277)
    #dbg_value(ptr poison, !4278, !DIExpression(), !4286)
    #dbg_value(ptr poison, !4285, !DIExpression(), !4288)
  %i.m = icmp eq ptr %i.l, %i.e, !dbg !4289
  br i1 %i.m, label %._crit_edge, label %.lr.ph.split.us, !dbg !4290

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.0.02533 = phi ptr [ %i.x, %bb.d ], [ %i.b, %.lr.ph ] ; 2 uses
  %.sroa.8.032 = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
    #dbg_value(ptr %.sroa.0.02533, !4068, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(ptr %.sroa.0.02533, !4148, !DIExpression(), !4292)
    #dbg_value(i64 %.sroa.8.032, !4165, !DIExpression(), !4293)
    #dbg_value(i64 %.sroa.8.032, !4068, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(i64 %.sroa.8.032, !4093, !DIExpression(), !4294)
    #dbg_value(ptr %.sroa.0.02533, !4095, !DIExpression(), !4294)
    #dbg_value(ptr %.sroa.0.02533, !4295, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4312)
    #dbg_value(ptr %1, !4302, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4312)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02533, i64 48, !dbg !4312
  %i.o = load i8, ptr %i.n, align 8, !dbg !4312, !range !4291, !noundef !15
    #dbg_value(i1 %.not, !4306, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4315)
    #dbg_value(i8 %i.o, !4303, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4314)
  %.not36 = icmp eq i8 %i.o, %i.h
  br i1 %.not36, label %.loopexit, label %bb.d, !dbg !4316

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
    #dbg_value(ptr poison, !4068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(i64 poison, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(ptr %0, !4177, !DIExpression(), !4319)
    #dbg_value(ptr %0, !4320, !DIExpression(), !4332)
    #dbg_value(ptr %0, !4334, !DIExpression(), !4340)
    #dbg_declare(ptr %1, !4327, !DIExpression(), !4342)
    #dbg_declare(ptr %1, !4343, !DIExpression(), !4349)
    #dbg_value(i64 56, !4351, !DIExpression(), !4355)
    #dbg_value(i64 %i.d, !4328, !DIExpression(), !4364)
    #dbg_value(i64 %i.d, !4365, !DIExpression(), !4369)
    #dbg_value(ptr %0, !4362, !DIExpression(), !4371)
  %i.p = load i64, ptr %0, align 8, !dbg !4372, !range !3896, !alias.scope !4373, !noalias !4376, !noundef !15
  %i.q = icmp eq i64 %i.d, %i.p, !dbg !4378
  br i1 %i.q, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit, !dbg !4378

bb.c:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18, !dbg !4379, !noalias !4376
  %.pre = load ptr, ptr %i.a, align 8, !dbg !4380, !alias.scope !4373, !noalias !4376
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit, !dbg !4387

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit: ; preds = %._crit_edge, %bb.c
  %i.r = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ], !dbg !4380
    #dbg_value(ptr %i.r, !4368, !DIExpression(), !4369)
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.d, !dbg !4388
    #dbg_value(ptr %i.s, !4330, !DIExpression(), !4389)
    #dbg_value(ptr %i.s, !4348, !DIExpression(), !4390)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !dbg !4391
  %i.t = add i64 %i.d, 1, !dbg !4392
  store i64 %i.t, ptr %i.c, align 8, !dbg !4392, !alias.scope !4373, !noalias !4376
  br label %.loopexit, !dbg !4393

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit
  %.sroa.3.0 = phi i64 [ undef, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit ], [ %.sroa.8.032.us, %.lr.ph.split.us ], [ %.sroa.8.032, %.lr.ph.split ], !dbg !4169
  %.sroa.0.0 = phi i64 [ 0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8push_mutBJ_.exit ], [ 1, %.lr.ph.split.us ], [ 1, %.lr.ph.split ], !dbg !4169
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !4393
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.3.0, 1, !dbg !4393
  ret { i64, i64 } %i.v, !dbg !4393

bb.d:                                             ; preds = %.lr.ph.split
  %i.w = add nuw nsw i64 %.sroa.8.032, 1, !dbg !4317
    #dbg_value(i64 %i.w, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.02533, i64 56, !dbg !4318 ; 2 uses
    #dbg_value(ptr %i.x, !4068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4265)
    #dbg_value(i64 %i.w, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4265)
    #dbg_value(ptr undef, !4147, !DIExpression(), !4168)
    #dbg_value(ptr undef, !4096, !DIExpression(), !4121)
    #dbg_value(i64 1, !4266, !DIExpression(), !4274)
    #dbg_value(ptr %i.x, !4115, !DIExpression(), !4276)
    #dbg_value(ptr %i.x, !4273, !DIExpression(), !4274)
    #dbg_value(ptr %i.e, !4117, !DIExpression(), !4277)
    #dbg_value(ptr poison, !4278, !DIExpression(), !4286)
    #dbg_value(ptr poison, !4285, !DIExpression(), !4288)
  %i.y = icmp eq ptr %i.x, %i.e, !dbg !4289
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split, !dbg !4290
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !4394 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !4526, !DIExpression(), !4528)
    #dbg_value(ptr %1, !4527, !DIExpression(), !4528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4530), !dbg !4529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533), !dbg !4529
    #dbg_value(ptr %0, !4535, !DIExpression(), !4565)
    #dbg_value(ptr %0, !4567, !DIExpression(), !4573)
    #dbg_value(ptr %0, !4575, !DIExpression(), !4581)
    #dbg_value(ptr %0, !4583, !DIExpression(), !4589)
    #dbg_value(ptr %0, !4591, !DIExpression(), !4603)
    #dbg_value(ptr %0, !4605, !DIExpression(), !4613)
    #dbg_value(ptr %0, !4615, !DIExpression(), !4619)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4621
  %i.c = load ptr, ptr %i.b, align 8, !dbg !4621, !alias.scope !4533, !noalias !4530, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4650
  %i.e = load i64, ptr %i.d, align 8, !dbg !4650, !alias.scope !4533, !noalias !4530, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4651 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !dbg !4652, !range !4653, !alias.scope !4533, !noalias !4530, !noundef !15
  switch i32 %i.g, label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit [
    i32 13, label %bb.b
    i32 14, label %bb.c
    i32 17, label %bb.d
  ], !dbg !4654

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4655
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4656

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4657
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4658

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4659
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3ast9ErrorKindEINtNtCsj6eKBz9Db1c_4core7convert4FromRNtBX_5ErrorE4from.exit, !dbg !4660
end_hunk_0
begin_hunk_1_@_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed
!3798 = distinct !DILexicalBlock(scope: !3752, file: !6, line: 1201, column: 13)
!3799 = !DILocation(line: 1251, column: 12, scope: !3712)
!3800 = !DILocation(line: 1193, column: 15, scope: !3752, inlinedAt: !3801)
!3801 = !DILocation(line: 1254, column: 30, scope: !3712)
!3802 = !DILocation(line: 1192, column: 17, scope: !3752, inlinedAt: !3801)
!3803 = !DILocation(line: 1193, column: 9, scope: !3752, inlinedAt: !3801)
!3804 = !DILocation(line: 1192, column: 17, scope: !3752, inlinedAt: !3805)
!3805 = !DILocation(line: 1252, column: 36, scope: !3712)
!3806 = !DILocation(line: 1193, column: 15, scope: !3752, inlinedAt: !3805)
!3807 = !DILocation(line: 1193, column: 9, scope: !3752, inlinedAt: !3805)
!3808 = !DILocation(line: 0, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3712, file: !3810, discriminator: 0)
!3810 = !DIFile(filename: "regex-syntax/src/lib.rs", directory: "/opt-bench/work/regex-rs/regex", checksumkind: CSK_MD5, checksum: "647a9768867090a3b4e27462b9f6ccb8")
!3811 = !DILocation(line: 1199, column: 35, scope: !3775, inlinedAt: !3805)
!3812 = !DILocation(line: 1199, column: 45, scope: !3775, inlinedAt: !3805)
!3813 = !DILocation(line: 1199, column: 51, scope: !3752, inlinedAt: !3805)
!3814 = !DILocation(line: 1200, column: 37, scope: !3778, inlinedAt: !3805)
!3815 = !DILocation(line: 1200, column: 47, scope: !3778, inlinedAt: !3805)
!3816 = !DILocation(line: 1200, column: 53, scope: !3752, inlinedAt: !3805)
!3817 = !DILocation(line: 1201, column: 33, scope: !3781, inlinedAt: !3805)
!3818 = !DILocation(line: 1201, column: 43, scope: !3781, inlinedAt: !3805)
!3819 = !DILocation(line: 1201, column: 49, scope: !3752, inlinedAt: !3805)
!3820 = !DILocation(line: 0, scope: !3752, inlinedAt: !3805)
!3821 = !DILocation(line: 1252, column: 13, scope: !3712)
!3822 = !DILocation(line: 1251, column: 9, scope: !3712)
!3823 = !DILocation(line: 1199, column: 35, scope: !3794, inlinedAt: !3801)
!3824 = !DILocation(line: 1199, column: 45, scope: !3794, inlinedAt: !3801)
!3825 = !DILocation(line: 1199, column: 51, scope: !3752, inlinedAt: !3801)
!3826 = !DILocation(line: 1200, column: 37, scope: !3796, inlinedAt: !3801)
!3827 = !DILocation(line: 1200, column: 47, scope: !3796, inlinedAt: !3801)
!3828 = !DILocation(line: 1200, column: 53, scope: !3752, inlinedAt: !3801)
!3829 = !DILocation(line: 1201, column: 33, scope: !3798, inlinedAt: !3801)
!3830 = !DILocation(line: 1201, column: 43, scope: !3798, inlinedAt: !3801)
!3831 = !DILocation(line: 1201, column: 49, scope: !3752, inlinedAt: !3801)
!3832 = !DILocation(line: 0, scope: !3752, inlinedAt: !3801)
!3833 = !DILocation(line: 1254, column: 25, scope: !3712)
!3834 = !DILocation(line: 1254, column: 9, scope: !3712)
!3835 = !DILocation(line: 0, scope: !3722, inlinedAt: !3729)
!3836 = !DILocation(line: 996, column: 17, scope: !3722, inlinedAt: !3729)
!3837 = !DILocalVariable(name: "self", arg: 1, scope: !3838, file: !3062, line: 1027, type: !1414)
!3838 = distinct !DISubprogram(name: "push_mut<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_", scope: !453, file: !3062, line: 1027, type: !3839, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3841, retainedNodes: !3842)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!1394, !1414, !403}
!3841 = !DISubprogram(name: "push_mut<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_", scope: !453, file: !3062, line: 1027, type: !3839, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3842 = !{!3837, !3843, !3844, !3846}
!3843 = !DILocalVariable(name: "value", arg: 2, scope: !3838, file: !3062, line: 1027, type: !403)
!3844 = !DILocalVariable(name: "len", scope: !3845, file: !3062, line: 1029, type: !14, align: 64)
!3845 = distinct !DILexicalBlock(scope: !3838, file: !3062, line: 1029, column: 9)
!3846 = !DILocalVariable(name: "end", scope: !3847, file: !3062, line: 1036, type: !3848, align: 64)
!3847 = distinct !DILexicalBlock(scope: !3845, file: !3062, line: 1036, column: 13)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut regex_syntax::ast::ClassSetItem", baseType: !403, size: 64, align: 64, dwarfAddressSpace: 0)
!3849 = !DILocation(line: 0, scope: !3838, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 996, column: 22, scope: !3722, inlinedAt: !3729)
!3851 = !DILocalVariable(name: "self", arg: 1, scope: !3852, file: !3062, line: 2050, type: !1414)
!3852 = distinct !DISubprogram(name: "as_mut_ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE10as_mut_ptrBI_", scope: !453, file: !3062, line: 2050, type: !3853, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3855, retainedNodes: !3856)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!3848, !1414}
!3855 = !DISubprogram(name: "as_mut_ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE10as_mut_ptrBI_", scope: !453, file: !3062, line: 2050, type: !3853, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3856 = !{!3851}
!3857 = !DILocation(line: 0, scope: !3852, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1036, column: 28, scope: !3845, inlinedAt: !3850)
!3859 = !DILocation(line: 1027, column: 32, scope: !3838, inlinedAt: !3850)
!3860 = !DILocalVariable(name: "src", arg: 2, scope: !3861, file: !179, line: 1940, type: !403)
!3861 = distinct !DISubprogram(name: "write<regex_syntax::ast::ClassSetItem>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr5writeNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEBB_", scope: !180, file: !179, line: 1940, type: !3862, scopeLine: 1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !461, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3848, !403, !3189}
!3864 = !{!3865, !3860}
!3865 = !DILocalVariable(name: "dst", arg: 1, scope: !3861, file: !179, line: 1940, type: !3848)
!3866 = !DILocation(line: 1940, column: 43, scope: !3861, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 1037, column: 13, scope: !3847, inlinedAt: !3850)
!3868 = !DILocalVariable(name: "elem_size", scope: !3869, file: !3044, line: 615, type: !14, align: 64)
!3869 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner8capacityCs3roNzt6HBWW_12regex_syntax", scope: !193, file: !3044, line: 615, type: !3045, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !219, declaration: !3048, retainedNodes: !3870)
!3870 = !{!3871, !3868}
!3871 = !DILocalVariable(name: "self", arg: 1, scope: !3869, file: !3044, line: 615, type: !3047)
!3872 = !DILocation(line: 0, scope: !3869, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 309, column: 20, scope: !3874, inlinedAt: !3881)
!3874 = distinct !DISubprogram(name: "capacity<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8capacityBQ_", scope: !456, file: !3044, line: 308, type: !3875, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3878, retainedNodes: !3879)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!14, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", baseType: !456, size: 64, align: 64, dwarfAddressSpace: 0)
!3878 = !DISubprogram(name: "capacity<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8capacityBQ_", scope: !456, file: !3044, line: 308, type: !3875, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "self", arg: 1, scope: !3874, file: !3044, line: 308, type: !3877)
!3881 = distinct !DILocation(line: 1032, column: 28, scope: !3845, inlinedAt: !3850)
!3882 = !DILocation(line: 0, scope: !3845, inlinedAt: !3850)
!3883 = !DILocalVariable(name: "count", arg: 2, scope: !3884, file: !3885, line: 936, type: !14)
!3884 = distinct !DISubprogram(name: "add<regex_syntax::ast::ClassSetItem>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItem3addBG_", scope: !3886, file: !3885, line: 936, type: !3888, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !461, retainedNodes: !3890)
!3885 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "0a9a444e8d978ea2fd7622da49f95724")
!3886 = !DINamespace(name: "{impl#0}", scope: !3887)
!3887 = !DINamespace(name: "mut_ptr", scope: !180)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!3848, !3848, !14, !3189}
!3890 = !{!3891, !3883}
!3891 = !DILocalVariable(name: "self", arg: 1, scope: !3884, file: !3885, line: 936, type: !3848)
!3892 = !DILocation(line: 0, scope: !3884, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 1036, column: 41, scope: !3845, inlinedAt: !3850)
!3894 = !DILocation(line: 308, column: 34, scope: !3874, inlinedAt: !3881)
!3895 = !DILocation(line: 616, column: 49, scope: !3869, inlinedAt: !3873)
!3896 = !{i64 0, i64 -9223372036854775808}
!3897 = !{!3898}
!3898 = distinct !{!3898, !3899, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_: argument 0"}
!3899 = distinct !{!3899, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_"}
!3900 = !{!3901}
!3901 = distinct !{!3901, !3899, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8push_mutBJ_: argument 1"}
!3902 = !DILocation(line: 1032, column: 12, scope: !3845, inlinedAt: !3850)
!3903 = !DILocation(line: 1033, column: 22, scope: !3845, inlinedAt: !3850)
!3904 = !DILocation(line: 1042, column: 5, scope: !3838, inlinedAt: !3850)
!3905 = !DILocation(line: 1027, column: 5, scope: !3838, inlinedAt: !3850)
!3906 = !DILocation(line: 611, column: 9, scope: !3907, inlinedAt: !3916)
!3907 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB15_", scope: !193, file: !3044, line: 610, type: !3908, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !3915, declaration: !3914)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!3910, !3047}
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<regex_syntax::ast::ClassSetItem>", scope: !201, file: !8, size: 64, align: 64, flags: DIFlagPublic, elements: !3911, templateParams: !461, identifier: "6dfbd4df925337f44b953a37ebfe9f32")
!3911 = !{!3912}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3910, file: !8, baseType: !3913, size: 64, align: 64, flags: DIFlagPrivate)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const regex_syntax::ast::ClassSetItem", baseType: !403, size: 64, align: 64, dwarfAddressSpace: 0)
!3914 = !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB15_", scope: !193, file: !3044, line: 610, type: !3908, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3915)
!3915 = !{!220, !462}
!3916 = distinct !DILocation(line: 606, column: 14, scope: !3917, inlinedAt: !3921)
!3917 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB10_", scope: !193, file: !3044, line: 605, type: !3918, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !3915, declaration: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!3848, !3047}
!3920 = !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB10_", scope: !193, file: !3044, line: 605, type: !3918, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3915)
!3921 = distinct !DILocation(line: 296, column: 20, scope: !3922, inlinedAt: !3926)
!3922 = distinct !DISubprogram(name: "ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3ptrBQ_", scope: !456, file: !3044, line: 295, type: !3923, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!3848, !3877}
!3925 = !DISubprogram(name: "ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3ptrBQ_", scope: !456, file: !3044, line: 295, type: !3923, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3926 = distinct !DILocation(line: 2053, column: 18, scope: !3852, inlinedAt: !3858)
!3927 = !DILocation(line: 970, column: 18, scope: !3884, inlinedAt: !3893)
!3928 = !DILocation(line: 0, scope: !3847, inlinedAt: !3850)
!3929 = !DILocation(line: 0, scope: !3861, inlinedAt: !3867)
!3930 = !DILocation(line: 1963, column: 41, scope: !3861, inlinedAt: !3867)
!3931 = !DILocation(line: 1038, column: 13, scope: !3847, inlinedAt: !3850)
!3932 = !DILocation(line: 996, column: 22, scope: !3722, inlinedAt: !3729)
!3933 = !DILocation(line: 1256, column: 6, scope: !3712)
!3934 = distinct !DISubprogram(name: "into_item", linkageName: "_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion9into_item", scope: !449, file: !6, line: 1264, type: !3935, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !15, declaration: !3937, retainedNodes: !3938)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!403, !449}
!3937 = !DISubprogram(name: "into_item", linkageName: "_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion9into_item", scope: !449, file: !6, line: 1264, type: !3935, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !15)
!3938 = !{!3939}
!3939 = !DILocalVariable(name: "self", arg: 1, scope: !3934, file: !6, line: 1264, type: !449)
!3940 = !DILocalVariable(name: "self", arg: 1, scope: !3941, file: !3942, line: 1011, type: !3943)
!3941 = distinct !DISubprogram(name: "unwrap<regex_syntax::ast::ClassSetItem>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE6unwrapBL_", scope: !3943, file: !3942, line: 1011, type: !3954, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !461, declaration: !3956, retainedNodes: !3957)
!3942 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "6b6523786d7acedb57d33f9868027e9f")
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_syntax::ast::ClassSetItem>", scope: !3074, file: !8, size: 1280, align: 64, flags: DIFlagPublic, elements: !3944, templateParams: !15, identifier: "389a8451b48373bd4a1edf4aa8344e5a")
!3944 = !{!3945}
!3945 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !3943, file: !8, size: 1280, align: 64, elements: !3946, templateParams: !15, identifier: "39fc1072426ffa3e732baeac2a547c1d", discriminator: !3953)
!3946 = !{!3947, !3949}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !3945, file: !8, baseType: !3948, size: 1280, align: 64, extraData: i32 -1)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !3943, file: !8, size: 1280, align: 64, flags: DIFlagPublic, elements: !15, templateParams: !461, identifier: "4a525d2bbd83beaf181e00b7041e7600")
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !3945, file: !8, baseType: !3950, size: 1280, align: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !3943, file: !8, size: 1280, align: 64, flags: DIFlagPublic, elements: !3951, templateParams: !461, identifier: "d483ea5f4ba92d16ff26efa3aa3ad7ae")
!3951 = !{!3952}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !3950, file: !8, baseType: !403, size: 1280, align: 64, flags: DIFlagPublic)
!3953 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !8, baseType: !466, size: 32, align: 32, offset: 1216, flags: DIFlagArtificial)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!403, !3943, !3189}
!3956 = !DISubprogram(name: "unwrap<regex_syntax::ast::ClassSetItem>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE6unwrapBL_", scope: !3943, file: !3942, line: 1011, type: !3954, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !461)
!3957 = !{!3940, !3958}
!3958 = !DILocalVariable(name: "val", scope: !3959, file: !3942, line: 1013, type: !403, align: 64)
!3959 = distinct !DILexicalBlock(scope: !3941, file: !3942, line: 1013, column: 13)
!3960 = !DILocation(line: 1011, column: 25, scope: !3941, inlinedAt: !3961)
!3961 = !DILocation(line: 1267, column: 35, scope: !3934)
!3962 = !DILocation(line: 1264, column: 22, scope: !3934)
!3963 = !DILocalVariable(name: "elem_size", scope: !3964, file: !3044, line: 615, type: !14, align: 64)
!3964 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner8capacityCs3roNzt6HBWW_12regex_syntax", scope: !193, file: !3044, line: 615, type: !3045, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !219, declaration: !3048, retainedNodes: !3965)
!3965 = !{!3966, !3963}
!3966 = !DILocalVariable(name: "self", arg: 1, scope: !3964, file: !3044, line: 615, type: !3047)
!3967 = !DILocation(line: 0, scope: !3964, inlinedAt: !3968)
!3968 = !DILocation(line: 309, column: 20, scope: !3969, inlinedAt: !3972)
!3969 = distinct !DISubprogram(name: "capacity<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8capacityBQ_", scope: !456, file: !3044, line: 308, type: !3875, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3878, retainedNodes: !3970)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "self", arg: 1, scope: !3969, file: !3044, line: 308, type: !3877)
!3972 = !DILocation(line: 1437, column: 18, scope: !3973, inlinedAt: !3977)
!3973 = distinct !DISubprogram(name: "capacity<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8capacityBI_", scope: !453, file: !3062, line: 1436, type: !3741, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3974, retainedNodes: !3975)
!3974 = !DISubprogram(name: "capacity<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE8capacityBI_", scope: !453, file: !3062, line: 1436, type: !3741, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "self", arg: 1, scope: !3973, file: !3062, line: 1436, type: !1414)
!3977 = !DILocation(line: 2878, column: 62, scope: !3978, inlinedAt: !3984)
!3978 = distinct !DISubprogram(name: "pop<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3popBI_", scope: !453, file: !3062, line: 2872, type: !3979, scopeLine: 2872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3981, retainedNodes: !3982)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!3943, !1414}
!3981 = !DISubprogram(name: "pop<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3popBI_", scope: !453, file: !3062, line: 2872, type: !3979, scopeLine: 2872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "self", arg: 1, scope: !3978, file: !3062, line: 2872, type: !1414)
!3984 = !DILocation(line: 1267, column: 29, scope: !3934)
!3985 = !DILocalVariable(name: "self", arg: 1, scope: !3986, file: !3062, line: 3100, type: !3734)
!3986 = distinct !DISubprogram(name: "len<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3lenBI_", scope: !453, file: !3062, line: 3100, type: !3741, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3743, retainedNodes: !3987)
!3987 = !{!3985}
!3988 = !DILocation(line: 3100, column: 22, scope: !3986, inlinedAt: !3989)
!3989 = !DILocation(line: 1265, column: 26, scope: !3934)
!3990 = !DILocation(line: 3101, column: 19, scope: !3986, inlinedAt: !3989)
!3991 = !DILocation(line: 3106, column: 37, scope: !3986, inlinedAt: !3989)
!3992 = !DILocation(line: 3106, column: 18, scope: !3986, inlinedAt: !3989)
!3993 = !DILocation(line: 1265, column: 9, scope: !3934)
!3994 = !DILocation(line: 1268, column: 38, scope: !3934)
!3995 = !DILocation(line: 1268, column: 18, scope: !3934)
!3996 = !DILocation(line: 1270, column: 5, scope: !3934)
!3997 = !DILocation(line: 1266, column: 38, scope: !3934)
!3998 = !DILocation(line: 1266, column: 18, scope: !3934)
!3999 = !DILocation(line: 1266, column: 47, scope: !3934)
!4000 = !DILocation(line: 0, scope: !1401, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 1270, column: 5, scope: !3934)
!4002 = !DILocation(line: 0, scope: !1411, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 847, column: 1, scope: !1401, inlinedAt: !4001)
!4004 = !DILocation(line: 847, column: 1, scope: !1411, inlinedAt: !4003)
!4005 = !DILocation(line: 0, scope: !1422, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 847, column: 1, scope: !1411, inlinedAt: !4003)
!4007 = !DILocation(line: 847, column: 1, scope: !1422, inlinedAt: !4006)
!4008 = !DILocation(line: 0, scope: !1422, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 847, column: 1, scope: !1411, inlinedAt: !4003)
!4010 = !DILocation(line: 847, column: 1, scope: !1422, inlinedAt: !4009)
!4011 = !DILocation(line: 2872, column: 16, scope: !3978, inlinedAt: !3984)
!4012 = !DILocation(line: 1436, column: 27, scope: !3973, inlinedAt: !3977)
!4013 = !DILocalVariable(name: "self", arg: 1, scope: !4014, file: !3062, line: 1966, type: !1414)
!4014 = distinct !DISubprogram(name: "as_ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE6as_ptrBI_", scope: !453, file: !3062, line: 1966, type: !4015, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !4017, retainedNodes: !4018)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!3913, !3734}
!4017 = !DISubprogram(name: "as_ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE6as_ptrBI_", scope: !453, file: !3062, line: 1966, type: !4015, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !463)
!4018 = !{!4013}
!4019 = !DILocation(line: 1966, column: 25, scope: !4014, inlinedAt: !4020)
!4020 = !DILocation(line: 2879, column: 37, scope: !3978, inlinedAt: !3984)
!4021 = !DILocation(line: 3100, column: 22, scope: !3986, inlinedAt: !4022)
!4022 = !DILocation(line: 2879, column: 55, scope: !3978, inlinedAt: !3984)
!4023 = !DILocation(line: 2877, column: 17, scope: !3978, inlinedAt: !3984)
!4024 = !DILocalVariable(name: "cond", arg: 1, scope: !4025, file: !3185, line: 202, type: !341)
!4025 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsj6eKBz9Db1c_4core4hint16assert_unchecked", scope: !3186, file: !3185, line: 202, type: !3187, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !15, retainedNodes: !4026)
!4026 = !{!4024}
!4027 = !DILocation(line: 0, scope: !4025, inlinedAt: !4028)
!4028 = !DILocation(line: 2878, column: 17, scope: !3978, inlinedAt: !3984)
!4029 = !DILocation(line: 611, column: 9, scope: !4030, inlinedAt: !4031)
!4030 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB15_", scope: !193, file: !3044, line: 610, type: !3908, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !3915, declaration: !3914)
!4031 = !DILocation(line: 606, column: 14, scope: !4032, inlinedAt: !4033)
!4032 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::ast::ClassSetItem>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEB10_", scope: !193, file: !3044, line: 605, type: !3918, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !3915, declaration: !3920)
!4033 = !DILocation(line: 296, column: 20, scope: !4034, inlinedAt: !4035)
!4034 = distinct !DISubprogram(name: "ptr<regex_syntax::ast::ClassSetItem, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE3ptrBQ_", scope: !456, file: !3044, line: 295, type: !3923, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !463, declaration: !3925)
!4035 = !DILocation(line: 1969, column: 18, scope: !4014, inlinedAt: !4020)
!4036 = !DILocalVariable(name: "src", arg: 1, scope: !4037, file: !179, line: 1716, type: !3913)
!4037 = distinct !DISubprogram(name: "read<regex_syntax::ast::ClassSetItem>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr4readNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEBA_", scope: !180, file: !179, line: 1716, type: !4038, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !461, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!403, !3913, !3189}
!4040 = !{!4036}
!4041 = !DILocation(line: 0, scope: !4037, inlinedAt: !4042)
!4042 = !DILocation(line: 2879, column: 22, scope: !3978, inlinedAt: !3984)
!4043 = !DILocation(line: 1755, column: 9, scope: !4037, inlinedAt: !4042)
!4044 = !DILocation(line: 0, scope: !3941, inlinedAt: !3961)
!4045 = !DILocation(line: 1013, column: 18, scope: !3941, inlinedAt: !3961)
!4046 = !DILocation(line: 1267, column: 42, scope: !3934)
!4047 = !DILocation(line: 1270, column: 6, scope: !3934)
!4048 = distinct !DISubprogram(name: "add_item", linkageName: "_RNvMsp_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5Flags8add_item", scope: !252, file: !6, line: 1545, type: !4049, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !15, declaration: !4064, retainedNodes: !4065)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!4051, !1270, !266}
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !3074, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !4052, templateParams: !15, identifier: "b643a56aa2623189b44587abe860a5b4")
!4052 = !{!4053}
!4053 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !4051, file: !8, size: 128, align: 64, elements: !4054, templateParams: !15, identifier: "87d5457d94278123d8996077ab9b85f", discriminator: !4063)
!4054 = !{!4055, !4059}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !4053, file: !8, baseType: !4056, size: 128, align: 64, extraData: i64 0)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !4051, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !15, templateParams: !4057, identifier: "541db2e223a81e99ac66f8bc7d9cbb24")
!4057 = !{!4058}
!4058 = !DITemplateTypeParameter(name: "T", type: !14)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !4053, file: !8, baseType: !4060, size: 128, align: 64, extraData: i64 1)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !4051, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !4061, templateParams: !4057, identifier: "c40c3c307e2103e7409a090af8cdf371")
!4061 = !{!4062}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4060, file: !8, baseType: !14, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!4063 = !DIDerivedType(tag: DW_TAG_member, scope: !4051, file: !8, baseType: !111, size: 64, align: 64, flags: DIFlagArtificial)
!4064 = !DISubprogram(name: "add_item", linkageName: "_RNvMsp_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5Flags8add_item", scope: !252, file: !6, line: 1545, type: !4049, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !15)
!4065 = !{!4066, !4067, !4068, !4093, !4095}
!4066 = !DILocalVariable(name: "self", arg: 1, scope: !4048, file: !6, line: 1545, type: !1270)
!4067 = !DILocalVariable(name: "item", arg: 2, scope: !4048, file: !6, line: 1545, type: !266)
!4068 = !DILocalVariable(name: "iter", scope: !4069, file: !6, line: 1546, type: !4070, align: 64)
!4069 = distinct !DILexicalBlock(scope: !4048, file: !6, line: 1546, column: 9)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Enumerate<core::slice::iter::Iter<regex_syntax::ast::FlagsItem>>", scope: !4071, file: !8, size: 192, align: 64, flags: DIFlagPublic, elements: !4074, templateParams: !4091, identifier: "cfcd8380f6a37b57c56a76c0e202b9b4")
!4071 = !DINamespace(name: "enumerate", scope: !4072)
!4072 = !DINamespace(name: "adapters", scope: !4073)
!4073 = !DINamespace(name: "iter", scope: !110)
!4074 = !{!4075, !4090}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !4070, file: !8, baseType: !4076, size: 128, align: 64, flags: DIFlagPrivate)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<regex_syntax::ast::FlagsItem>", scope: !4077, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !4078, templateParams: !264, identifier: "f50ae393435847c4f74ce6d4e19f4290")
!4077 = !DINamespace(name: "iter", scope: !3443)
!4078 = !{!4079, !4084, !4085}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4076, file: !8, baseType: !4080, size: 64, align: 64, flags: DIFlagPrivate)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<regex_syntax::ast::FlagsItem>", scope: !201, file: !8, size: 64, align: 64, flags: DIFlagPublic, elements: !4081, templateParams: !264, identifier: "77407247b9d1617c2214eec8f60c6bd3")
!4081 = !{!4082}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4080, file: !8, baseType: !4083, size: 64, align: 64, flags: DIFlagPrivate)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const regex_syntax::ast::FlagsItem", baseType: !266, size: 64, align: 64, dwarfAddressSpace: 0)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !4076, file: !8, baseType: !4083, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !4076, file: !8, baseType: !4086, align: 8, offset: 128, flags: DIFlagPrivate)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&regex_syntax::ast::FlagsItem>", scope: !209, file: !8, align: 8, flags: DIFlagPublic, elements: !15, templateParams: !4087, identifier: "f3c8fcc16d9e13df706ed8264de13624")
!4087 = !{!4088}
!4088 = !DITemplateTypeParameter(name: "T", type: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::ast::FlagsItem", baseType: !266, size: 64, align: 64, dwarfAddressSpace: 0)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4070, file: !8, baseType: !14, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!4091 = !{!4092}
!4092 = !DITemplateTypeParameter(name: "I", type: !4076)
!4093 = !DILocalVariable(name: "i", scope: !4094, file: !6, line: 1546, type: !14, align: 64)
!4094 = distinct !DILexicalBlock(scope: !4069, file: !6, line: 1546, column: 9)
!4095 = !DILocalVariable(name: "x", scope: !4094, file: !6, line: 1546, type: !4089, align: 64)
!4096 = !DILocalVariable(name: "self", arg: 1, scope: !4097, file: !4098, line: 157, type: !4113)
!4097 = distinct !DISubprogram(name: "next<regex_syntax::ast::FlagsItem>", linkageName: "_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_", scope: !4099, file: !4098, line: 157, type: !4100, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !264, retainedNodes: !4114)
!4098 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!4099 = !DINamespace(name: "{impl#171}", scope: !4077)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!4102, !4113}
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&regex_syntax::ast::FlagsItem>", scope: !3074, file: !8, size: 64, align: 64, flags: DIFlagPublic, elements: !4103, templateParams: !15, identifier: "1a0bf584249fe57de19e5687411b1c2")
!4103 = !{!4104}
!4104 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !4102, file: !8, size: 64, align: 64, elements: !4105, templateParams: !15, identifier: "3d861a2cc2568ee69a4b31f58d300b9f", discriminator: !4112)
!4105 = !{!4106, !4108}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !4104, file: !8, baseType: !4107, size: 64, align: 64, extraData: i64 0)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !4102, file: !8, size: 64, align: 64, flags: DIFlagPublic, elements: !15, templateParams: !4087, identifier: "6dc269ee27046d92126c8ff7d2e26c4e")
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !4104, file: !8, baseType: !4109, size: 64, align: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !4102, file: !8, size: 64, align: 64, flags: DIFlagPublic, elements: !4110, templateParams: !4087, identifier: "d6f32cc6ef2862ae422c2dfba5922342")
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4109, file: !8, baseType: !4089, size: 64, align: 64, flags: DIFlagPublic)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4102, file: !8, baseType: !111, size: 64, align: 64, flags: DIFlagArtificial)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<regex_syntax::ast::FlagsItem>", baseType: !4076, size: 64, align: 64, dwarfAddressSpace: 0)
!4114 = !{!4096, !4115, !4117, !4119}
!4115 = !DILocalVariable(name: "ptr", scope: !4116, file: !4098, line: 161, type: !4080, align: 64)
!4116 = distinct !DILexicalBlock(scope: !4097, file: !4098, line: 161, column: 17)
!4117 = !DILocalVariable(name: "end_or_len", scope: !4118, file: !4098, line: 162, type: !4083, align: 64)
!4118 = distinct !DILexicalBlock(scope: !4116, file: !4098, line: 162, column: 17)
!4119 = !DILocalVariable(name: "len", scope: !4120, file: !4098, line: 167, type: !14, align: 64)
!4120 = distinct !DILexicalBlock(scope: !4118, file: !4098, line: 167, column: 25)
!4121 = !DILocation(line: 0, scope: !4097, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 80, column: 27, scope: !4123, inlinedAt: !4167)
!4123 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<regex_syntax::ast::FlagsItem>>", linkageName: "_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemEENtNtNtB8_6traits8iterator8Iterator4nextB1B_", scope: !4125, file: !4124, line: 79, type: !4126, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !4091, retainedNodes: !4146)
!4124 = !DIFile(filename: "library/core/src/iter/adapters/enumerate.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "593117651994d9f54658d086cd09bf97")
!4125 = !DINamespace(name: "{impl#1}", scope: !4071)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!4128, !4145}
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(usize, &regex_syntax::ast::FlagsItem)>", scope: !3074, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !4129, templateParams: !15, identifier: "c592cc26600b9588bd71d9ce78bc8041")
!4129 = !{!4130}
!4130 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !4128, file: !8, size: 128, align: 64, elements: !4131, templateParams: !15, identifier: "57466fd3ed3cb7eaa4dfa7b803c11cfb", discriminator: !4144)
!4131 = !{!4132, !4140}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !4130, file: !8, baseType: !4133, size: 128, align: 64, extraData: i64 0)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !4128, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !15, templateParams: !4134, identifier: "459f650c826b8fd7268bf3e24594d759")
!4134 = !{!4135}
!4135 = !DITemplateTypeParameter(name: "T", type: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, &regex_syntax::ast::FlagsItem)", file: !8, size: 128, align: 64, elements: !4137, templateParams: !15, identifier: "4a993a8ceeff4a1da2eec9142f5d25a8")
!4137 = !{!4138, !4139}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4136, file: !8, baseType: !14, size: 64, align: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !4136, file: !8, baseType: !4089, size: 64, align: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !4130, file: !8, baseType: !4141, size: 128, align: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !4128, file: !8, size: 128, align: 64, flags: DIFlagPublic, elements: !4142, templateParams: !4134, identifier: "7b39d8e9dbe3dfeebcdd2e278ac0962a")
!4142 = !{!4143}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4141, file: !8, baseType: !4136, size: 128, align: 64, flags: DIFlagPublic)
!4144 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !8, baseType: !111, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<regex_syntax::ast::FlagsItem>>", baseType: !4070, size: 64, align: 64, dwarfAddressSpace: 0)
!4146 = !{!4147, !4148, !4150, !4163, !4165}
!4147 = !DILocalVariable(name: "self", arg: 1, scope: !4123, file: !4124, line: 79, type: !4145)
!4148 = !DILocalVariable(name: "a", scope: !4149, file: !4124, line: 80, type: !4089, align: 64)
!4149 = distinct !DILexicalBlock(scope: !4123, file: !4124, line: 80, column: 9)
!4150 = !DILocalVariable(name: "residual", scope: !4151, file: !4124, line: 80, type: !4152, align: 8)
!4151 = distinct !DILexicalBlock(scope: !4123, file: !4124, line: 80, column: 33)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::convert::Infallible>", scope: !3074, file: !8, align: 8, flags: DIFlagPublic, elements: !4153, templateParams: !15, identifier: "dd69d8f196ea30e3ac326938d2229bde")
!4153 = !{!4154}
!4154 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !4152, file: !8, align: 8, elements: !4155, templateParams: !15, identifier: "91faa665df71c547fe5b86b5c0ae1b11")
!4155 = !{!4156, !4159}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !4154, file: !8, baseType: !4157, align: 8)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !4152, file: !8, align: 8, flags: DIFlagPublic, elements: !15, templateParams: !4158, identifier: "3c8df61ad2147d51efc68b990b5645c")
!4158 = !{!2575}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !4154, file: !8, baseType: !4160, align: 8)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !4152, file: !8, align: 8, flags: DIFlagPublic, elements: !4161, templateParams: !4158, identifier: "c2646802669782f68ceb0013f0348226")
!4161 = !{!4162}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !4160, file: !8, baseType: !2570, align: 8, flags: DIFlagPublic)
!4163 = !DILocalVariable(name: "val", scope: !4164, file: !4124, line: 80, type: !4089, align: 64)
!4164 = distinct !DILexicalBlock(scope: !4123, file: !4124, line: 80, column: 33)
!4165 = !DILocalVariable(name: "i", scope: !4166, file: !4124, line: 81, type: !14, align: 64)
!4166 = distinct !DILexicalBlock(scope: !4149, file: !4124, line: 81, column: 9)
!4167 = distinct !DILocation(line: 1546, column: 23, scope: !4069)
!4168 = !DILocation(line: 0, scope: !4123, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !4048)
!4170 = !DILocation(line: 1545, column: 32, scope: !4048)
!4171 = !DILocalVariable(name: "value", arg: 2, scope: !4172, file: !3062, line: 995, type: !266)
!4172 = distinct !DISubprogram(name: "push<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE4pushBJ_", scope: !256, file: !3062, line: 995, type: !4173, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !281, declaration: !4175, retainedNodes: !4176)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !1280, !266}
!4175 = !DISubprogram(name: "push<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE4pushBJ_", scope: !256, file: !3062, line: 995, type: !4173, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !281)
!4176 = !{!4177, !4171}
!4177 = !DILocalVariable(name: "self", arg: 1, scope: !4172, file: !3062, line: 995, type: !1280)
!4178 = !DILocation(line: 995, column: 28, scope: !4172, inlinedAt: !4179)
!4179 = !DILocation(line: 1551, column: 20, scope: !4048)
!4180 = !DILocalVariable(name: "self", arg: 1, scope: !4181, file: !3062, line: 3854, type: !4190)
!4181 = distinct !DISubprogram(name: "deref<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBJ_", scope: !4182, file: !3062, line: 3854, type: !4183, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !281, retainedNodes: !4191)
!4182 = !DINamespace(name: "{impl#10}", scope: !185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!4185, !4190}
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[regex_syntax::ast::FlagsItem]", file: !8, size: 128, align: 64, elements: !4186, templateParams: !15, identifier: "aafacb32916a6b27fc583ebf57cbe925")
!4186 = !{!4187, !4189}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !4185, file: !8, baseType: !4188, size: 64, align: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64, dwarfAddressSpace: 0)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4185, file: !8, baseType: !14, size: 64, align: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", baseType: !256, size: 64, align: 64, dwarfAddressSpace: 0)
!4191 = !{!4180}
!4192 = !DILocation(line: 3854, column: 14, scope: !4181, inlinedAt: !4193)
!4193 = !DILocation(line: 1546, column: 23, scope: !4048)
!4194 = !DILocalVariable(name: "self", arg: 1, scope: !4195, file: !3062, line: 1848, type: !4190)
!4195 = distinct !DISubprogram(name: "as_slice<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8as_sliceBI_", scope: !256, file: !3062, line: 1848, type: !4183, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, templateParams: !281, declaration: !4196, retainedNodes: !4197)
!4196 = !DISubprogram(name: "as_slice<regex_syntax::ast::FlagsItem, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemE8as_sliceBI_", scope: !256, file: !3062, line: 1848, type: !4183, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !281)
!4197 = !{!4194}
!4198 = !DILocation(line: 1848, column: 27, scope: !4195, inlinedAt: !4199)
!4199 = !DILocation(line: 3855, column: 14, scope: !4181, inlinedAt: !4193)
end_hunk_1
