begin_hunk_0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11109.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1275.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1377.i)
  br i1 %.not.i.i, label %.loopexit62, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit

bb.fx:                                            ; preds = %bb.gg, %bb.fy
  %.pn = phi { ptr, i32 } [ %i.lo, %bb.gg ], [ %i.lf, %bb.fy ]
end_hunk_0
begin_hunk_1
          cleanup
  br label %bb.fx

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit: ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 %.sroa.061.0.i151.i, ptr %i.ay, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3101.0..sroa_idx.i, i64 400, i1 false)
  %.val31 = load i64, ptr %i.dx, align 8
  %3 = icmp samesign ult i64 %.sroa.061.0.i151.i, 3
  %4 = icmp eq i64 %.val31, -9223372036854775804
  %spec.select.i = select i1 %3, i1 %4, i1 false
  br i1 %spec.select.i, label %bb.fz, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit.thread

bb.fz:                                            ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit
  %i.lg = invoke { i64, i32 } @_RNvXs2_NtNtCskW4GF8MLwaI_6backon7backoff11exponentialNtB5_18ExponentialBackoffNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.ga unwind label %bb.fy     ; 2 uses

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit.thread: ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19delete_commit_entry0s_0B9_.exit, %_RNvYFG_RL0_INtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtBg_4http8response8ResponseEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB36_4time8DurationEEB31_INtNtNtB36_3ops8function5FnMutTRB9_B31_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(408) %i.ay, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %.loopexit62
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11142.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12108.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13110.i)
  br i1 %.not.i.i, label %.loopexit78, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit

bb.gv:                                            ; preds = %bb.he, %bb.gw
  %.pn = phi { ptr, i32 } [ %i.ns, %bb.he ], [ %i.nj, %bb.gw ]
end_hunk_2
begin_hunk_3
          cleanup
  br label %bb.gv

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit: ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 %.sroa.062.0.i185.i, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3134.0..sroa_idx.i, i64 400, i1 false)
  %.val31 = load i64, ptr %i.et, align 8
  %3 = icmp samesign ult i64 %.sroa.062.0.i185.i, 3
  %4 = icmp eq i64 %.val31, -9223372036854775804
  %spec.select.i = select i1 %3, i1 %4, i1 false
  br i1 %spec.select.i, label %bb.gx, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit.thread

bb.gx:                                            ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit
  %i.nk = invoke { i64, i32 } @_RNvXs2_NtNtCskW4GF8MLwaI_6backon7backoff11exponentialNtB5_18ExponentialBackoffNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.gy unwind label %bb.gw     ; 2 uses

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit.thread: ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient19update_commit_entry0s_0B9_.exit, %_RNvYFG_RL0_INtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtBg_4http8response8ResponseEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB36_4time8DurationEEB31_INtNtNtB36_3ops8function5FnMutTRB9_B31_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(408) %i.bh, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %.loopexit78
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11100.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1266.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1368.i)
  br i1 %.not.i.i, label %.loopexit59, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit

bb.fn:                                            ; preds = %.body38, %bb.fo
  %.pn = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.kq, %bb.fo ]
end_hunk_4
begin_hunk_5
          cleanup
  br label %bb.fn

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit: ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %.sroa.061.0.i133.i, ptr %i.ar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.392.0..sroa_idx.i, i64 400, i1 false)
  %.val31 = load i64, ptr %i.do, align 8
  %3 = icmp samesign ult i64 %.sroa.061.0.i133.i, 3
  %4 = icmp eq i64 %.val31, -9223372036854775804
  %spec.select.i = select i1 %3, i1 %4, i1 false
  br i1 %spec.select.i, label %bb.fp, label %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit.thread

bb.fp:                                            ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit
  %i.kr = invoke { i64, i32 } @_RNvXs2_NtNtCskW4GF8MLwaI_6backon7backoff11exponentialNtB5_18ExponentialBackoffNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.fq unwind label %bb.fo     ; 2 uses

_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit.thread: ; preds = %_RNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB9_18DynamoDbLockClient16put_commit_entry0s_0B9_.exit, %_RNvYFG_RL0_INtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8put_item12PutItemErrorNtNtNtBg_4http8response8ResponseEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB2Z_4time8DurationEEB2U_INtNtNtB2Z_3ops8function5FnMutTRB9_B2U_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %.loopexit59
end_hunk_5
