inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #38
          to label %.body.thread unwind label %bb.u, !noalias !1188

.body.a:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit
  br i1 %.sroa.032.2, label %.body.thread, label %bb.dl

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit209
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.032.8, label %.body.thread, label %.thread248.thread

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
end_hunk_0
begin_hunk_1_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
          to label %bb.aq unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body126, %bb.ax, %bb.ap
  %.sroa.032.2 = phi i1 [ %.sroa.032.3, %bb.ap ], [ %.sroa.032.4, %bb.ax ], [ %.sroa.032.4, %.body126 ]
  %.sroa.037.2 = phi i8 [ %.sroa.038.3, %bb.ap ], [ %.sroa.037.4, %bb.ax ], [ %.sroa.037.4, %.body126 ] ; 2 uses
  %.sroa.038.2 = phi i8 [ %.sroa.038.3, %bb.ap ], [ 0, %bb.ax ], [ 0, %.body126 ] ; 2 uses
  %.pn118.pn = phi { ptr, i32 } [ %i.dh, %bb.ap ], [ %.pn118, %bb.ax ], [ %.pn118, %.body126 ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.ak) #38
          to label %.body.a unwind label %bb.cy

bb.ap:                                            ; preds = %bb.dg, %bb.ao
  %.sroa.032.3 = phi i1 [ %.sroa.032.8, %bb.dg ], [ true, %bb.ao ]
  %.sroa.038.3 = phi i8 [ 0, %bb.dg ], [ 1, %bb.ao ] ; 2 uses
  %i.dh = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  unreachable

.body126:                                         ; preds = %bb.cz, %bb.cw, %bb.bd, %.body129, %bb.au, %bb.ay, %bb.do, %bb.dm
  %.sroa.032.4 = phi i1 [ true, %bb.do ], [ true, %.body129 ], [ true, %bb.bd ], [ %.sroa.032.6.ph, %bb.dm ], [ true, %bb.au ], [ %.sroa.032.8, %bb.ay ], [ false, %bb.cw ], [ %.sroa.032.8, %bb.cz ] ; 2 uses
  %.sroa.037.4 = phi i8 [ 1, %bb.do ], [ 1, %.body129 ], [ 1, %bb.bd ], [ 0, %bb.dm ], [ 1, %bb.au ], [ 0, %bb.ay ], [ 0, %bb.cw ], [ 0, %bb.cz ] ; 2 uses
  %.pn118 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.do ], [ %lpad.thr_comm.split-lp, %.body129 ], [ %i.eb, %bb.bd ], [ %.pn116.ph, %bb.dm ], [ %i.dm, %bb.au ], [ %i.dr, %bb.ay ], [ %i.ic, %bb.cw ], [ %i.ig, %bb.cz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
end_hunk_2
begin_hunk_3_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  unreachable

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i202, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i171
  %.sroa.032.7 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i202 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i171 ]
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm
end_hunk_3
begin_hunk_4_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit215

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit215: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i211, %bb.dh, %bb.cx
  ret void

bb.cy:                                            ; preds = %bb.ax, %bb.dq, %bb.dp, %.body.thread, %bb.do, %bb.dm, %.thread234, %bb.cw, %.body161, %.body166, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_4
begin_hunk_5_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__billing_mode11BillingModeECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.cr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit207
  %.sroa.032.8 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit207 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ false, %bb.cr ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i188 unwind label %bb.cz
end_hunk_5
begin_hunk_6_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.is = load i64, ptr %4, align 8, !range !13
  %i.it = icmp ne i64 %i.is, -9223372036854775808
  %or.cond.not = select i1 %.sroa.032.8, i1 %i.it, i1 false
  br i1 %or.cond.not, label %bb.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit215

bb.di:                                            ; preds = %bb.dh
end_hunk_6
begin_hunk_7_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit215

bb.dl:                                            ; preds = %.body.thread, %.body.a
  %.sroa.037.6 = phi i8 [ %.sroa.037.0223, %.body.thread ], [ %.sroa.037.2, %.body.a ]
  %.sroa.038.4 = phi i8 [ %.sroa.038.0224, %.body.thread ], [ %.sroa.038.2, %.body.a ]
  %.pn118.pn.pn.pn = phi { ptr, i32 } [ %.pn118.pn.pn225, %.body.thread ], [ %.pn118.pn, %.body.a ] ; 2 uses
  %i.iw = trunc nuw i8 %.sroa.037.6 to i1
  br i1 %i.iw, label %bb.dp, label %.thread248

bb.dm:                                            ; preds = %.body166, %.thread234, %bb.bm, %bb.bj, %bb.cf, %bb.ct, %bb.de
  %.sroa.032.6.ph = phi i1 [ false, %.thread234 ], [ true, %.body166 ], [ true, %bb.bj ], [ false, %bb.ct ], [ %.sroa.032.7, %bb.bm ], [ true, %bb.cf ], [ true, %bb.de ]
  %.pn116.ph = phi { ptr, i32 } [ %.pn237, %.thread234 ], [ %.pn114, %.body166 ], [ %i.eh, %bb.bj ], [ %i.hy, %bb.ct ], [ %i.ej, %bb.bm ], [ %i.gl, %bb.cf ], [ %i.in, %bb.de ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #38
          to label %.body126 unwind label %bb.cy
end_hunk_7
begin_hunk_8_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #38
          to label %.body126 unwind label %bb.cy

.body.thread:                                     ; preds = %bb.ak, %bb.am, %bb.an, %.body.a
  %.pn118.pn.pn225 = phi { ptr, i32 } [ %i.df, %bb.an ], [ %.pn118.pn, %.body.a ], [ %.pn2090.i, %bb.am ], [ %.pn2090.i, %bb.ak ]
  %.sroa.038.0224 = phi i8 [ 0, %bb.an ], [ %.sroa.038.2, %.body.a ], [ 1, %bb.am ], [ 1, %bb.ak ]
  %.sroa.037.0223 = phi i8 [ 0, %bb.an ], [ %.sroa.037.2, %.body.a ], [ 1, %bb.am ], [ 1, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %4) #38
          to label %bb.dl unwind label %bb.cy

end_hunk_8
begin_hunk_9_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %3) #38
          to label %.thread248 unwind label %bb.cy

.thread248.thread:                                ; preds = %bb.an, %bb.dj, %bb.dq, %.thread248
  %.pn118.pn.pn.pn262266 = phi { ptr, i32 } [ %.pn118.pn.pn.pn, %.thread248 ], [ %.pn118.pn.pn.pn, %bb.dq ], [ %i.iu, %bb.dj ], [ %i.df, %bb.an ]
  resume { ptr, i32 } %.pn118.pn.pn.pn262266

bb.dq:                                            ; preds = %.thread248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %2) #38
end_hunk_9
