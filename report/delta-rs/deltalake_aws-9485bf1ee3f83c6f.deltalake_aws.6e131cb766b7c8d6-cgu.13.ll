inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [624 x i8], align 8               ; 5 uses
  %.sroa.06.i.i = alloca [2560 x i8], align 8     ; 7 uses
  %.sroa.4 = alloca [768 x i8], align 8           ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %3 = alloca [776 x i8], align 8                 ; 18 uses
  %i.i = alloca [776 x i8], align 8               ; 5 uses
  %i.j = alloca [776 x i8], align 8               ; 5 uses
  %i.k = alloca [776 x i8], align 8               ; 5 uses
  %i.l = alloca [776 x i8], align 8               ; 5 uses
  %i.m = alloca [776 x i8], align 8               ; 7 uses
  %i.n = alloca [776 x i8], align 8               ; 5 uses
  %i.o = alloca [776 x i8], align 8               ; 7 uses
  %i.p = alloca [496 x i8], align 8               ; 5 uses
  %i.q = alloca [504 x i8], align 8               ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
end_hunk_0
begin_hunk_1_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  store i8 0, ptr %.sroa.753.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.857)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 9912
  br label %bb.at

end_hunk_1
begin_hunk_2_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !102, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.857)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 9912 ; 5 uses
  switch i8 %.pre, label %default.unreachable76 [
    i8 0, label %bb.at
end_hunk_2
begin_hunk_3_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  store i8 3, ptr %i.dq, align 8, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ec

bb.bk:                                            ; preds = %bb.bh
end_hunk_3
begin_hunk_4_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
bb.cg:                                            ; preds = %bb.ce
  store ptr %i.kb, ptr %i.r, align 8, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  %i.kd = atomicrmw add ptr %i.kb, i64 1 monotonic, align 8, !noalias !3824
  %i.ke = icmp slt i64 %i.kd, 0
end_hunk_4
begin_hunk_5_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 768
  store ptr %i.kb, ptr %i.kf, align 8, !alias.scope !3821, !noalias !3778
  store i64 -9223372036854775808, ptr %3, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.16.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.18.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.20.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i32 0, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 -9223372036854775808, ptr %i.kg, align 8, !alias.scope !3821, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3778
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 9917
  store i8 0, ptr %i.kh, align 1, !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder12set_role_arn(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ck unwind label %bb.cj, !noalias !3788

bb.cj:                                            ; preds = %bb.ci
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3778
  br label %bb.dd

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3778
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 9916
  store i8 0, ptr %i.kj, align 4, !noalias !3778
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder15set_external_id(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.cm unwind label %bb.cl, !noalias !3788

bb.cl:                                            ; preds = %bb.ck
end_hunk_5
begin_hunk_6_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder21set_role_session_name(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.co unwind label %bb.cn, !noalias !3788

bb.cn:                                            ; preds = %bb.cm
end_hunk_6
begin_hunk_7_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3778
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 9915
  store i8 0, ptr %i.kn, align 1, !noalias !3778
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder10set_policy(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.cq unwind label %bb.cp, !noalias !3788

bb.cp:                                            ; preds = %bb.co
end_hunk_7
begin_hunk_8_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3778
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 9914
  store i8 0, ptr %i.kq, align 2, !noalias !3778
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder15set_policy_arns(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cs unwind label %bb.cr, !noalias !3788

bb.cr:                                            ; preds = %bb.cq
end_hunk_8
begin_hunk_9_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3778
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !3778
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 1288
end_hunk_9
begin_hunk_10_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  %spec.select.i.i = zext i1 %.not.i57.i to i32
  %spec.select5.i.i = select i1 %.not.i57.i, i32 %i.kx, i32 undef
  call void @llvm.experimental.noalias.scope.decl(metadata !3825)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  store i32 %spec.select.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !3828, !noalias !3830
  store i32 %spec.select5.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !alias.scope !3828, !noalias !3830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.n, ptr noundef nonnull align 8 dereferenceable(776) %i.m, i64 776, i1 false), !alias.scope !3831, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3778
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 9913 ; 2 uses
  store i8 0, ptr %i.ky, align 1, !noalias !3778
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder8set_tags(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.cu unwind label %bb.ct, !noalias !3788

bb.ct:                                            ; preds = %bb.cs
end_hunk_10
begin_hunk_11_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3778
  %.sroa.065.0.copyload = load i64, ptr %i.o, align 8, !noalias !3778 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(768) %.sroa.4.0..sroa_idx, i64 768, i1 false), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  call void @llvm.experimental.noalias.scope.decl(metadata !3838)
end_hunk_11
begin_hunk_12_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
bb.cy:                                            ; preds = %bb.da, %bb.ct
  %.pn36.i = phi { ptr, i32 } [ %i.la, %bb.ct ], [ %.pn31.i, %bb.da ] ; 2 uses
  %.sroa.01.1.i = phi i1 [ false, %bb.ct ], [ %.sroa.01.3.i, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3854)
  call void @llvm.experimental.noalias.scope.decl(metadata !3857)
  call void @llvm.experimental.noalias.scope.decl(metadata !3860)
end_hunk_12
begin_hunk_13_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
bb.da:                                            ; preds = %bb.db, %bb.cr
  %.pn31.i = phi { ptr, i32 } [ %i.ks, %bb.cr ], [ %.pn29.i, %bb.db ]
  %.sroa.01.3.i = phi i1 [ false, %bb.cr ], [ %.sroa.01.4.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3778
  br label %bb.cy

bb.db:                                            ; preds = %bb.dc, %bb.cp
  %.pn29.i = phi { ptr, i32 } [ %i.kp, %bb.cp ], [ %.pn27.i, %bb.dc ]
  %.sroa.01.4.i = phi i1 [ false, %bb.cp ], [ %.sroa.01.5.i, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3778
  br label %bb.da

bb.dc:                                            ; preds = %bb.dd, %bb.cn
  %.pn27.i = phi { ptr, i32 } [ %i.km, %bb.cn ], [ %.pn25.i, %bb.dd ]
  %.sroa.01.5.i = phi i1 [ false, %bb.cn ], [ true, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3778
  br label %bb.db

bb.dd:                                            ; preds = %bb.cl, %bb.cj
  %.pn25.i = phi { ptr, i32 } [ %i.kl, %bb.cl ], [ %i.ki, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3778
  br label %bb.dc

bb.de:                                            ; preds = %bb.dg, %.thread175.i, %.noexc60.i, %bb.cc
end_hunk_13
begin_hunk_14_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
bb.eb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ky, i8 0, i64 7, i1 false), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %.sroa.857, ptr noundef nonnull align 8 dereferenceable(768) %.sroa.4, i64 768, i1 false), !noalias !3876
  store i8 1, ptr %i.ea, align 8, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.mw = icmp eq i64 %.sroa.065.0.copyload, -9223372036854775807
  br i1 %i.mw, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.thread67, %bb.eb
end_hunk_14
begin_hunk_15_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  br label %common.ret

bb.ed:                                            ; preds = %bb.eb
  store i64 %.sroa.065.0.copyload, ptr %i.ap, align 8
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %.sroa.857.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(768) %.sroa.857, i64 768, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857)
end_hunk_15
