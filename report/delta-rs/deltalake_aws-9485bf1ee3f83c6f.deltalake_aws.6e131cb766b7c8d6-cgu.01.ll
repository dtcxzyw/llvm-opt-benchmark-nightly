inline.NumInlined: 1838
inline.NumDeleted: 674
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderEECs9rVkZwOUgsI_13deltalake_aws:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag14CloneableLayerECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components24RuntimeComponentsBuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(496) %0)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.k ], [ %eh.lpad-body.i, %.body.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.m) #31
          to label %common.resume.i unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag14CloneableLayerECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag14CloneableLayerECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.m, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.m ], [ %.pn.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %bb.j, %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %.body2.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

.body2.i:                                         ; preds = %bb.i, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.i ], [ %i.h, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #31
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.j, %.body2.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.j ], [ %.pn.i, %.body2.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.body2.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !32, !nonnull !3, !noundef !3
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !32
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !3
  %switch = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !3
  %switch = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_value11ReturnValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775802
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_value11ReturnValueECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_value11ReturnValueECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_value11ReturnValueECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__consumed_capacity16ConsumedCapacityEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__consumed_capacity16ConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__consumed_capacity16ConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !6, !alias.scope !35, !noundef !3
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !40, !noundef !3
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.g

bb.g:                                             ; preds = %.body.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !43, !noundef !3
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.j, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.j ], [ %eh.lpad-body.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !46, !noundef !3
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit6.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit6.i unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEEECs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !49, !noundef !3
  %i.u = icmp eq ptr %i.t, null
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operator19ConditionalOperatorEECs9rVkZwOUgsI_13deltalake_aws:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operator19ConditionalOperatorECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !53, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775804
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types31__return_item_collection_metrics27ReturnItemCollectionMetricsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !52, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775805
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types31__return_item_collection_metrics27ReturnItemCollectionMetricsECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types31__return_item_collection_metrics27ReturnItemCollectionMetricsECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types31__return_item_collection_metrics27ReturnItemCollectionMetricsECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types41__return_values_on_condition_check_failure35ReturnValuesOnConditionCheckFailureEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !52, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775805
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types41__return_values_on_condition_check_failure35ReturnValuesOnConditionCheckFailureECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types41__return_values_on_condition_check_failure35ReturnValuesOnConditionCheckFailureECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types41__return_values_on_condition_check_failure35ReturnValuesOnConditionCheckFailureECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__select6SelectEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !54, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775803
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__select6SelectECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__select6SelectECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__select6SelectECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !55, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.e = load i64, ptr %i.d, align 8, !range !65, !alias.scope !66, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %1 = trunc nuw i64 %i.e to i1
  br i1 %1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !73, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !73
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !80, !nonnull !3, !noundef !3
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !80
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !6, !alias.scope !81, !noundef !3
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEENtNtB1t_5error5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !33, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 -9223372036854775807, label %bb.c
    i64 -9223372036854775808, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEEECs9rVkZwOUgsI_13deltalake_aws.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryENtNtB1q_6errors15LockClientErrorEEB1q_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 -9223372036854775807, label %bb.e
    i64 -9223372036854775808, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEEB14_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEEB14_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEEB14_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEEB14_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtB1g_21SharedConfigValidatorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBI_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBP_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtB1n_21SharedConfigValidatorEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBP_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtB1n_21SharedConfigValidatorEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB1i_12interceptors17SharedInterceptorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.val11 = load ptr, ptr %i.ae, align 8, !nonnull !3, !align !99, !noundef !3 ; 5 uses
  %i.af = load ptr, ptr %.val11, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.af(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %common.ret, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #29
  br label %common.ret

bb.p:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #29
  br label %common.resume

bb.r:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21: ; preds = %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19, %bb.r
  %.pn7 = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.cj, %bb.u ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val14 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %0, i64 40
  %.val15 = load ptr, ptr %i.au, align 8, !nonnull !3, !align !99, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val14, ptr nonnull %.val15) #31
          to label %common.resume unwind label %bb.v

bb.s:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.aa, %bb.j ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !633, !nonnull !3, !align !99, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !633, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !633, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !633, !noundef !3
  invoke void %i.ba(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19 unwind label %bb.v, !inline_history !626

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !640, !nonnull !3, !align !99, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !640, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !640, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !640, !noundef !3
  invoke void %i.bk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20 unwind label %bb.t, !inline_history !626

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19: ; preds = %.body, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %eh.lpad-body, %.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !647, !nonnull !3, !align !99, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !647, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !647, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !647, !noundef !3
  invoke void %i.bt(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bw, i64 noundef %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21 unwind label %bb.v, !inline_history !626

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !654, !nonnull !3, !align !99, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !654, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !654, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !654, !noundef !3
  invoke void %i.cd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cg, i64 noundef %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.u, !inline_history !626

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19, %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !120, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.e
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load i32, ptr %i.c, align 8, !range !658, !alias.scope !655, !noundef !3
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i) #29, !noalias !655 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %common.ret

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.i) #31
          to label %bb.m unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.k = load i64, ptr %i.j, align 8, !range !65, !alias.scope !665, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %1 = trunc nuw i64 %i.k to i1
  br i1 %1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !672, !nonnull !3, !noundef !3
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !672
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.p = load ptr, ptr %i.l, align 8, !alias.scope !679, !nonnull !3, !noundef !3
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !679
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.g, %bb.h, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.t, align 1
  br label %common.ret

bb.l:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.h, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.v, align 1
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.a, align 8, !range !658, !noundef !3
  %i.b = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.b = load i8, ptr %i.a, align 1, !range !680, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 256
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !3, !align !99, !noundef !3 ; 5 uses
  %i.e = load ptr, ptr %.val4, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #29
  br label %.body

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.q)
          to label %bb.n unwind label %bb.m

.body:                                            ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #31
          to label %.body5 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.w, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.m, %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body5:                                           ; preds = %bb.q, %bb.o, %bb.k, %bb.i, %bb.m, %.body
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.z, %bb.m ], [ %i.k, %.body ], [ %i.v, %bb.k ], [ %i.ae, %bb.q ], [ %i.ac, %bb.o ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.y, align 8
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #31
          to label %.body5 unwind label %bb.l

bb.n:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %.not.i76, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit60
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #29
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !813, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !813, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !813, !noundef !3
  tail call void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l), !inline_history !814
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore14LogStoreConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(224) %0) #31
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.f, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !815, !noundef !3
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !821, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !828, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !828, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !828, !noundef !3
  invoke void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.m, !inline_history !829

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.m = load i64, ptr %i.l, align 8, !range !65, !alias.scope !833, !noundef !3
  %1 = trunc nuw i64 %i.m to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !833 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !833, !nonnull !3, !align !99, !noundef !3 ; 7 uses
  %i.p = load ptr, ptr %.val1.i.i, align 8, !invariant.load !3, !noalias !833 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null        ; 2 uses
  br i1 %1, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.g unwind label %bb.h, !noalias !833

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !4, !invariant.load !3, !noalias !833 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1gW4XV4gJGV_9http_body11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3a_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !4, !invariant.load !3, !noalias !833 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body, label %common.resume.sink.split.i.i

common.resume.sink.split.i.i:                     ; preds = %bb.l, %bb.h
  %.sink.i.i = phi i64 [ %i.ae, %bb.l ], [ %i.v, %bb.h ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.t, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !3, !noalias !833
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.sink.i.i, i64 noundef range(i64 1, 536870913) %i.y) #29, !noalias !833
  br label %.body

bb.i:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l, !noalias !833

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !4, !invariant.load !3, !noalias !833 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1gW4XV4gJGV_9http_body11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3a_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !invariant.load !3, !noalias !833 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %common.resume.sink.split.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1gW4XV4gJGV_9http_body11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3a_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i: ; preds = %bb.k, %bb.g
  %.sink12.i.i = phi i64 [ %i.r, %bb.g ], [ %i.aa, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !5, !invariant.load !3, !noalias !833
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.sink12.i.i, i64 noundef range(i64 1, 536870913) %i.ah) #29, !noalias !833
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %common.resume.sink.split.i.i, %bb.l, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.t, %bb.h ], [ %i.ac, %bb.l ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !834, !noundef !3 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %.body
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !837
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtBO_6marker4SyncNtB2k_4SendEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1gW4XV4gJGV_9http_body11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3a_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i, %bb.k, %bb.g, %bb.b, %bb.a, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !842, !noundef !3 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !845
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtBO_6marker4SyncNtB2k_4SendEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6 unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %.body, %bb.o, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %eh.lpad-body, %bb.o ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !850, !noundef !3 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !859, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !859, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !859, !noundef !3
  invoke void %i.ax(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.y, !inline_history !860

bb.s:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !861, !noundef !3 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit9, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !870, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !870, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !870, !noundef !3
  invoke void %i.bi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit9 unwind label %bb.u, !inline_history !860

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.r, %bb.u
  %.pn2 = phi { ptr, i32 } [ %i.bp, %bb.u ], [ %.pn, %bb.r ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.bo) #31
          to label %common.resume unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types4body5InnerNtNtB4_6marker4SyncNtB2Y_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !6, !alias.scope !871, !noundef !3
  %i.bs = icmp eq i64 %i.br, -9223372036854775808
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit9
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.w ], [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.v
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.y:                                             ; preds = %bb.r, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws:bb.a
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !961
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @136, ptr %i.f, align 8, !noalias !965
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.v, align 8, !noalias !965
  %i.w = load i64, ptr %i.p, align 8, !range !94, !noalias !965, !noundef !3
  %switch.offset.i = sub nuw nsw i64 5, %i.w
  %i.x = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !965 ; 2 uses
  %i.y = icmp ult i64 %i.x, 6
  call void @llvm.assume(i1 %i.y)
  %.not72.i = icmp samesign ugt i64 %switch.offset.i, %i.x
  br i1 %.not72.i, label %.noexc2, label %bb.d

bb.d:                                             ; preds = %switch.lookup.i
  %i.z = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc4 unwind label %bb.p    ; 2 uses

.noexc4:                                          ; preds = %bb.d
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 3 uses
  store i64 5, ptr %i.e, align 8, !noalias !965
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @137, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !965
  %.sroa.771.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 13, ptr %.sroa.771.0..sroa_idx.i, align 8, !noalias !965
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !3, !noalias !965, !nonnull !3
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #33
          to label %.noexc5 unwind label %bb.p, !inline_history !968

.noexc5:                                          ; preds = %.noexc4
  br i1 %i.ae, label %bb.e, label %.noexc2

bb.e:                                             ; preds = %.noexc5
  %i.af = load i64, ptr %0, align 8, !range !16, !alias.scope !965, !noundef !3
  %.not73.i = icmp eq i64 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  br i1 %.not73.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !965
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !965, !noundef !3 ; 2 uses
  %.not76.i = icmp eq ptr %i.ah, null
  br i1 %.not76.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !965
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !965, !noundef !3 ; 2 uses
  %.not74.i = icmp eq ptr %i.ai, null
  br i1 %.not74.i, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !965
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.540.sroa.5.0.i = phi i64 [ %i.ak, %bb.h ], [ undef, %bb.f ]
  %.sroa.039.0.i = phi i64 [ 1, %bb.h ], [ 2, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !noalias !965, !noundef !3 ; 2 uses
  %.not77.i = icmp eq ptr %i.am, null
  br i1 %.not77.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !noalias !965
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.6.sroa.5.0.i = phi i64 [ undef, %bb.i ], [ %i.ao, %bb.j ]
  %.sroa.031.0.i = phi i64 [ 2, %bb.i ], [ 1, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !965
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !range !964, !alias.scope !965, !noundef !3
  store i64 %i.ar, ptr %i.c, align 8, !noalias !965
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.028.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.028.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.028.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.at = load <2 x i32>, ptr %i.ap, align 8, !noalias !965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !965
  store ptr %i.f, ptr %i.b, align 8, !noalias !965
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !965
  store ptr %i.c, ptr %i.as, align 8, !noalias !965
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.039.0.i, ptr %i.d, align 8, !noalias !965
  store ptr %i.ah, ptr %.sroa.028.sroa.3.0..sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.540.sroa.5.0.i, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.031.0.i, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !noalias !965
  store ptr %i.am, ptr %.sroa.028.sroa.6.0..sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.6.sroa.5.0.i, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !965
  store i64 5, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !965
  store ptr @137, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !965
  store i64 13, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !965
  store <2 x i32> %i.at, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !965
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @94, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !965
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !965
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !3, !noalias !965, !nonnull !3
  invoke void %i.av(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #33
          to label %.noexc6 unwind label %bb.p, !inline_history !968

.noexc6:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !965
  br label %.noexc2

bb.l:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !965
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.568.sroa.5.0.i = phi i64 [ %i.ax, %bb.l ], [ undef, %bb.g ]
  %.sroa.067.0.i = phi i64 [ 1, %bb.l ], [ 2, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !965, !noundef !3 ; 2 uses
  %.not75.i = icmp eq ptr %i.az, null
  br i1 %.not75.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !965
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.663.sroa.5.0.i = phi i64 [ undef, %bb.m ], [ %i.bb, %bb.n ]
  %.sroa.058.0.i = phi i64 [ 2, %bb.m ], [ 1, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.067.0.i, ptr %i.a, align 8, !noalias !965
  %.sroa.049.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !noalias !965
  store ptr %i.ai, ptr %.sroa.049.sroa.3.0..sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.568.sroa.5.0.i, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.058.0.i, ptr %.sroa.049.sroa.4.0..sroa_idx.i, align 8, !noalias !965
  store ptr %i.az, ptr %.sroa.049.sroa.6.0..sroa_idx.i, align 8, !noalias !965
  store i64 %.sroa.663.sroa.5.0.i, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !965
  store i64 5, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !965
  store ptr @137, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !965
  store i64 13, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !965
  store <2 x i32> %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !965
  %.sroa.1356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @136, ptr %.sroa.1356.0..sroa_idx.i, align 8, !noalias !965
  %.sroa.1557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1557.0..sroa_idx.i, align 8, !noalias !965
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !3, !noalias !965, !nonnull !3
  invoke void %i.bf(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #33
          to label %.noexc7 unwind label %bb.p, !inline_history !968

.noexc7:                                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !965
  br label %.noexc2

.noexc2:                                          ; preds = %.noexc7, %.noexc6, %.noexc5, %switch.lookup.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !961
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.p:                                             ; preds = %bb.o, %bb.k, %.noexc4, %bb.d, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #31
          to label %bb.u unwind label %bb.t

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.bh = load i64, ptr %0, align 8, !range !16, !alias.scope !969, !noundef !3 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %1 = trunc nuw i64 %i.bh to i1
  br i1 %1, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !987, !nonnull !3, !noundef !3
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !987
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.q, %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.u:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !33, !alias.scope !988, !noundef !3
  %switch.i = icmp slt i64 %i.b, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #31
          to label %.body20 unwind label %bb.ba

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !991, !noundef !3
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body20 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

.body20:                                          ; preds = %bb.k, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.k ], [ %i.h, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !994, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %.body20
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !997
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1004, !noundef !3 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1007
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %.body20, %bb.j, %bb.p
  %.pn2 = phi { ptr, i32 } [ %i.z, %bb.p ], [ %.pn, %bb.j ], [ %.pn, %.body20 ], [ %.pn, %bb.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1014, !noundef !3 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.x = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1017
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1024, !noundef !3 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25
  %i.ad = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1027
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28 unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.o, %bb.u
  %.pn4 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %.pn2, %bb.o ], [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pn2, %bb.n ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1034, !noundef !3 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1037
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.u:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25, %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1044, !noundef !3 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit31, label %bb.v
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components24RuntimeComponentsBuilderECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.aw ], [ %.pn18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtB1g_21SharedConfigValidatorEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEEECs9rVkZwOUgsI_13deltalake_aws.exit47
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBP_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dr)
  ret void

bb.ay:                                            ; preds = %bb.ar, %bb.am, %bb.ah, %bb.v, %bb.r, %bb.n, %bb.j, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEEECs9rVkZwOUgsI_13deltalake_aws.exit, %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB21_18runtime_components7TrackedNtNtB21_8identity22SharedIdentityResolverEEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result15DispatchFailureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1425 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1425, !nonnull !3, !align !99, !noundef !3 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !1425 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.e, !noalias !1425

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !4, !invariant.load !3, !noalias !1425 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !5, !invariant.load !3, !noalias !1425
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #29, !noalias !1425
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !4, !invariant.load !3, !noalias !1425 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !5, !invariant.load !3, !noalias !1425
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #29, !noalias !1425
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.o = load i16, ptr %0, align 8, !range !1431, !alias.scope !1432, !noundef !3
  %i.p = icmp samesign ugt i16 %i.o, 2
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result16ConnectionStatusECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.g

bb.g:                                             ; preds = %.body.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1442, !nonnull !3, !noundef !3
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1442
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result16ConnectionStatusECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SyncNtB1A_4SendEL_E9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result16ConnectionStatusECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.u = load i16, ptr %0, align 8, !range !1431, !alias.scope !1446, !noundef !3
  %i.v = icmp samesign ugt i16 %i.u, 2
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result14ConnectorErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1456, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1456
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result14ConnectorErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SyncNtB1A_4SendEL_E9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result14ConnectorErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result16ConnectionStatusECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %bb.g, %.body.i
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result14ConnectorErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #31
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NvNtNtNtCskQDtHcQtBkN_5tokio7runtime4time5entry1__NtB7_10TimerEntryNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #31
          to label %bb.h unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.b = load i64, ptr %0, align 8, !range !65, !alias.scope !1457, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.b to i1
  br i1 %1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1466, !nonnull !3, !noundef !3
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1466
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !1473, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1473
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.k

bb.h:                                             ; preds = %bb.k, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !65, !noundef !3
  %2 = trunc nuw i64 %i.k to i1
  br i1 %2, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4time5entry11TimerSharedEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %0, i64 56
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !align !99, !noundef !3 ; 2 uses
  %i.m = icmp eq ptr %.val.i.i.i, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4time5entry11TimerSharedEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val1.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  invoke void %i.p(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4time5entry11TimerSharedEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.n, !inline_history !1474

bb.k:                                             ; preds = %bb.g, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !65, !noundef !3
  %3 = trunc nuw i64 %i.s to i1
  br i1 %3, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskQDtHcQtBkN_5tokio7runtime5TimerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val.i4.i.i = load ptr, ptr %i.t, align 8, !align !99, !noundef !3 ; 2 uses
  %i.u = icmp eq ptr %.val.i4.i.i, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskQDtHcQtBkN_5tokio7runtime5TimerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr i8, ptr %0, i64 64
  %.val1.i5.i.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i4.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3
  tail call void %i.x(ptr noundef %.val1.i5.i.i), !inline_history !1475
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskQDtHcQtBkN_5tokio7runtime5TimerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.j, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4time5entry11TimerSharedEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %.pn.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskQDtHcQtBkN_5tokio7runtime5TimerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.a = load i64, ptr %0, align 8, !range !65, !alias.scope !1476, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1485, !nonnull !3, !noundef !3
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1485
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !1492, !nonnull !3, !noundef !3
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1492
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1499, !nonnull !3, !noundef !3
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1499
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !1506, !nonnull !3, !noundef !3
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1506
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types5error21__throttling_exception19ThrottlingExceptionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !1507, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #31
          to label %.body2 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !6, !alias.scope !1510, !noundef !3
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

.body2:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.l) #31
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.n)
  ret void

bb.j:                                             ; preds = %.body2, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.k:                                             ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types5error23__request_limit_exceeded20RequestLimitExceededECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !1513, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #31
          to label %.body2 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !6, !alias.scope !1516, !noundef !3
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

.body2:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.l) #31
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.n)
  ret void
end_hunk_5
begin_hunk_6_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0Bb_:bb.a
bb.hd:                                            ; preds = %bb.hk, %bb.he
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2197
  unreachable

bb.he:                                            ; preds = %bb.gx, %bb.gt
  %.sroa.035.2.lpad-body.i.i.i.i.i = phi i1 [ %.sroa.035.2.i.i.i.i.i, %bb.gt ], [ false, %bb.gx ]
  %eh.lpad-body70.i.i.i.i.i = phi { ptr, i32 } [ %i.sl, %bb.gt ], [ %i.sq, %bb.gx ] ; 2 uses
  %.val68.i.i.i.i.i = load i32, ptr %i.si, align 8, !range !658, !noalias !2203, !noundef !3
  %i.sy = call noundef i32 @close(i32 noundef %.val68.i.i.i.i.i) #29, !noalias !2197 ; 0 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.q) #31
          to label %.thread86.i.i.i.i.i unwind label %bb.hd, !noalias !2197

bb.hf:                                            ; preds = %bb.gr
  unreachable

bb.hg:                                            ; preds = %bb.gm
  %.sroa.4.8.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !2205
  %.sroa.6.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.8..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !2203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2198
  store i64 -9223372036854775795, ptr %i.m, align 8, !noalias !2203
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.8.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2203
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.rr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !2203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2203
  invoke void @_RNvXNtCsjyY8HP3IvQ6_12object_store5localNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.m)
          to label %bb.hh unwind label %.thread90.i.i.i.i.i, !noalias !2197

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !2204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2203
  %.val65.i.i.i.i.i = load i32, ptr %i.rl, align 8, !range !658, !alias.scope !2194, !noalias !2196, !noundef !3
  %i.sz = call noundef i32 @close(i32 noundef %.val65.i.i.i.i.i) #29, !noalias !2197 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i unwind label %bb.hi, !noalias !2197

bb.hi:                                            ; preds = %bb.hh
  %i.ta = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body.i.i.i.i unwind label %bb.hj, !noalias !2197

bb.hj:                                            ; preds = %bb.hi
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.hh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.ho, !noalias !2190

.thread86.i.i.i.i.i:                              ; preds = %bb.he
  br i1 %.sroa.035.2.lpad-body.i.i.i.i.i, label %bb.hk, label %.body.i.i.i.i

.thread86.thread103.i.i.i.i.i:                    ; preds = %bb.gn, %.thread90.i.i.i.i.i
  %eh.lpad-body85.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i, %.thread90.i.i.i.i.i ], [ %i.rs, %bb.gn ]
  %.val.i.i.i.i.i = load i32, ptr %i.rl, align 8, !range !658, !alias.scope !2194, !noalias !2196, !noundef !3
  %i.tc = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #29, !noalias !2197 ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %.thread86.thread103.i.i.i.i.i, %.thread86.i.i.i.i.i
  %.pn6180106.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body85.i.i.i.i.i, %.thread86.thread103.i.i.i.i.i ], [ %eh.lpad-body70.i.i.i.i.i, %.thread86.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r) #31
          to label %.body.i.i.i.i unwind label %bb.hd, !noalias !2197

bb.hl:                                            ; preds = %bb.gj
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.tf = load ptr, ptr %i.te, align 8, !noalias !2186, !noundef !3
  store i64 %i.rj, ptr %i.td, align 8, !noalias !2186
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.tf, ptr %i.tg, align 8, !noalias !2186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2186
  store i8 0, ptr %i.qv, align 1, !noalias !2186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !2186
  %i.th = invoke noundef nonnull ptr @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1i_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1i_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.td, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.hn unwind label %bb.hm, !noalias !2190

bb.hm:                                            ; preds = %bb.hl
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2186
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2186
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %i.th, ptr %i.tj, align 8, !noalias !2186
  br label %bb.hr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i: ; preds = %bb.hv, %bb.hs, %bb.hm
  %i.tk = phi ptr [ %i.tq, %bb.hv ], [ %i.qr, %bb.hm ], [ %i.tq, %bb.hs ]
  %i.tl = phi ptr [ %i.tr, %bb.hv ], [ %i.qs, %bb.hm ], [ %i.tr, %bb.hs ]
  %i.tm = phi ptr [ %i.ts, %bb.hv ], [ %i.qt, %bb.hm ], [ %i.ts, %bb.hs ]
  %i.tn = phi ptr [ %i.tt, %bb.hv ], [ %i.qu, %bb.hm ], [ %i.tt, %bb.hs ]
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.ty, %bb.hv ], [ %i.ti, %bb.hm ], [ %i.tv, %bb.hs ]
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 880
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.to) #31
          to label %bb.gh unwind label %bb.ic, !noalias !2206

bb.ho:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, %bb.gz
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ho, %bb.hk, %.thread86.i.i.i.i.i, %bb.hi, %bb.hb
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.tp, %bb.ho ], [ %i.ta, %bb.hi ], [ %i.sv, %bb.hb ], [ %eh.lpad-body70.i.i.i.i.i, %.thread86.i.i.i.i.i ], [ %.pn6180106.i.i.i.i.i, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2186
  br label %bb.gh

_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2203
  br label %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.sink.split.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2186
  %.sroa.0.0.copyload37.pre.i.i.i = load i64, ptr %i.s, align 8, !noalias !2207
  br label %bb.ig

bb.hp:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34
          to label %.noexc.i.i.i unwind label %bb.if, !noalias !2208

.noexc.i.i.i:                                     ; preds = %bb.hp
  unreachable

bb.hq:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34
          to label %.noexc15.i.i.i unwind label %bb.if, !noalias !2208

.noexc15.i.i.i:                                   ; preds = %bb.hq
  unreachable

bb.hr:                                            ; preds = %bb.hn, %bb.gg
  %i.tq = phi ptr [ %i.qr, %bb.hn ], [ %.phi.trans.insert.i.i, %bb.gg ] ; 11 uses
  %i.tr = phi ptr [ %i.qs, %bb.hn ], [ %i.pv, %bb.gg ] ; 10 uses
  %i.ts = phi ptr [ %i.qt, %bb.hn ], [ %.phi.trans.insert.i.i.i, %bb.gg ] ; 11 uses
  %i.tt = phi ptr [ %i.qu, %bb.hn ], [ %i.qq, %bb.gg ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2186
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 3 uses
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ht unwind label %bb.hs, !noalias !2206

bb.hs:                                            ; preds = %bb.hr
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2186
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i unwind label %bb.ic, !noalias !2206

bb.ht:                                            ; preds = %bb.hr
  %i.tw = load i64, ptr %i.t, align 8, !range !2209, !noalias !2186, !noundef !3 ; 7 uses
  %i.tx = icmp eq i64 %i.tw, -9223372036854775788
  br i1 %i.tx, label %.thread.i.i.i, label %bb.hu

.thread.i.i.i:                                    ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2186
  store i8 3, ptr %i.ts, align 8, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  br label %bb.ih

bb.hu:                                            ; preds = %bb.ht
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !2186
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2186
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.hv, !noalias !2206

bb.hv:                                            ; preds = %bb.hu
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.hu
  %i.tz = icmp eq i64 %i.tw, -9223372036854775789
  br i1 %i.tz, label %bb.hz, label %bb.hw

bb.hw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.i, i64 40, i1 false), !noalias !2186
  store i64 %i.tw, ptr %i.s, align 8, !noalias !2186
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, i64 24, i1 false), !noalias !2186
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %i.ub = load i64, ptr %i.ua, align 8, !range !65, !alias.scope !2216, !noalias !2186, !noundef !3
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 4 uses
  %3 = trunc nuw i64 %i.ub to i1
  br i1 %3, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !2223, !noalias !2186, !nonnull !3, !noundef !3
  %i.ue = atomicrmw sub ptr %i.ud, i64 1 release, align 8, !noalias !2224
  %i.uf = icmp eq i64 %i.ue, 1
  br i1 %i.uf, label %.invoke23.i.i.i.i, label %bb.ig

bb.hy:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %i.ug = load ptr, ptr %i.uc, align 8, !alias.scope !2231, !noalias !2186, !nonnull !3, !noundef !3
  %i.uh = atomicrmw sub ptr %i.ug, i64 1 release, align 8, !noalias !2232
  %i.ui = icmp eq i64 %i.uh, 1
  br i1 %i.ui, label %.invoke.i.i.i.i, label %bb.ig

bb.hz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i.i, i64 24, i1 false), !noalias !2186
  store i64 -9223372036854775799, ptr %i.s, align 8, !alias.scope !2233, !noalias !2236
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %i.uk = load i64, ptr %i.uj, align 8, !range !65, !alias.scope !2244, !noalias !2186, !noundef !3
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 4 uses
  %4 = trunc nuw i64 %i.uk to i1
  br i1 %4, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.um = load ptr, ptr %i.ul, align 8, !alias.scope !2251, !noalias !2186, !nonnull !3, !noundef !3
  %i.un = atomicrmw sub ptr %i.um, i64 1 release, align 8, !noalias !2252
  %i.uo = icmp eq i64 %i.un, 1
  br i1 %i.uo, label %.invoke23.i.i.i.i, label %bb.ig

.invoke23.i.i.i.i:                                ; preds = %bb.ia, %bb.hx
  %.sroa.0.0.copyload3766.i.i.i.a = phi i64 [ %i.tw, %bb.hx ], [ -9223372036854775799, %bb.ia ]
  %i.up = phi ptr [ %i.uc, %bb.hx ], [ %i.ul, %bb.ia ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.up) #32
          to label %bb.ig unwind label %bb.gi, !noalias !2206

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  %i.uq = load ptr, ptr %i.ul, align 8, !alias.scope !2259, !noalias !2186, !nonnull !3, !noundef !3
  %i.ur = atomicrmw sub ptr %i.uq, i64 1 release, align 8, !noalias !2260
  %i.us = icmp eq i64 %i.ur, 1
  br i1 %i.us, label %.invoke.i.i.i.i, label %bb.ig

.invoke.i.i.i.i:                                  ; preds = %bb.ib, %bb.hy
  %.sroa.0.0.copyload3765.i.i.i = phi i64 [ %i.tw, %bb.hy ], [ -9223372036854775799, %bb.ib ]
  %i.ut = phi ptr [ %i.uc, %bb.hy ], [ %i.ul, %bb.ib ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ut) #32
          to label %bb.ig unwind label %bb.gi, !noalias !2206

bb.ic:                                            ; preds = %bb.ie, %bb.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit15.i.i.i.i
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2206
  unreachable

bb.id:                                            ; preds = %bb.ie, %bb.gh
  store i8 0, ptr %i.rb, align 1, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2186
  store i8 2, ptr %i.qz, align 8, !noalias !2186
  br label %.body.i.i.i

bb.ie:                                            ; preds = %bb.gh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.v) #31
          to label %bb.id unwind label %bb.ic, !noalias !2206

bb.if:                                            ; preds = %bb.hq, %bb.hp
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ig:                                            ; preds = %.invoke.i.i.i.i, %bb.ib, %.invoke23.i.i.i.i, %bb.ia, %bb.hy, %bb.hx, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.uw = phi ptr [ %i.qr, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tq, %bb.hx ], [ %i.tq, %bb.hy ], [ %i.tq, %bb.ia ], [ %i.tq, %.invoke23.i.i.i.i ], [ %i.tq, %bb.ib ], [ %i.tq, %.invoke.i.i.i.i ] ; 3 uses
  %i.ux = phi ptr [ %i.qs, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tr, %bb.hx ], [ %i.tr, %bb.hy ], [ %i.tr, %bb.ia ], [ %i.tr, %.invoke23.i.i.i.i ], [ %i.tr, %bb.ib ], [ %i.tr, %.invoke.i.i.i.i ] ; 2 uses
  %i.uy = phi ptr [ %i.qt, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.ts, %bb.hx ], [ %i.ts, %bb.hy ], [ %i.ts, %bb.ia ], [ %i.ts, %.invoke23.i.i.i.i ], [ %i.ts, %bb.ib ], [ %i.ts, %.invoke.i.i.i.i ]
  %i.uz = phi ptr [ %i.qu, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tt, %bb.hx ], [ %i.tt, %bb.hy ], [ %i.tt, %bb.ia ], [ %i.tt, %.invoke23.i.i.i.i ], [ %i.tt, %bb.ib ], [ %i.tt, %.invoke.i.i.i.i ]
  %.sroa.0.0.copyload37.i.i.i = phi i64 [ %.sroa.0.0.copyload37.pre.i.i.i, %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %i.tw, %bb.hx ], [ %i.tw, %bb.hy ], [ -9223372036854775799, %bb.ia ], [ %.sroa.0.0.copyload3766.i.i.i.a, %.invoke23.i.i.i.i ], [ -9223372036854775799, %bb.ib ], [ %.sroa.0.0.copyload3765.i.i.i, %.invoke.i.i.i.i ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 905
  store i8 0, ptr %i.va, align 1, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2186
  %.sroa.838.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.838.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.838.0..sroa_idx39.i.i.i, align 8, !noalias !2207
  %.sroa.838.sroa.6.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.sroa.6.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i, i64 24, i1 false), !noalias !2207
  %.sroa.838.sroa.7.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.sroa.7.0..sroa.838.0..sroa_idx39.sroa_idx.i.i.i, i64 32, i1 false), !noalias !2207
  store i8 1, ptr %i.uy, align 8, !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.vb = icmp eq i64 %.sroa.0.0.copyload37.i.i.i, -9223372036854775789
  br i1 %i.vb, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig, %.thread.i.i.i
  %i.vc = phi ptr [ %i.uw, %bb.ig ], [ %i.tq, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.7.i.i.i)
  br label %bb.lj

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1152.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.sroa.6.i.i.i, i64 24, i1 false), !noalias !2182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1253.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.sroa.7.i.i.i, i64 32, i1 false), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.7.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.uz)
          to label %bb.ik unwind label %bb.ij, !noalias !2208

bb.ij:                                            ; preds = %bb.ii
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.ik:                                            ; preds = %bb.ld, %bb.ii
  %i.ve = phi ptr [ %i.afm, %bb.ld ], [ %i.uw, %bb.ii ] ; 3 uses
  %i.vf = phi ptr [ %i.afn, %bb.ld ], [ %i.ux, %bb.ii ] ; 3 uses
  %.sroa.054.0.i.i.i = phi i64 [ %.sroa.0110.2.i.i.i.i, %bb.ld ], [ %.sroa.0.0.copyload37.i.i.i, %bb.ii ] ; 2 uses
  %i.vg = phi ptr [ %.sroa.6.2.i.i.i.i, %bb.ld ], [ %.sroa.838.sroa.0.0.copyload.i.i.i, %bb.ii ] ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.vh)
          to label %bb.lg unwind label %bb.lf, !noalias !2208

.body.i.i.i:                                      ; preds = %bb.if, %bb.id
  %i.vi = phi ptr [ %i.qx, %bb.id ], [ %.phi.trans.insert.i.i, %bb.if ]
  %i.vj = phi ptr [ %i.qy, %bb.id ], [ %i.pv, %bb.if ]
  %i.vk = phi ptr [ %i.ra, %bb.id ], [ %i.qq, %bb.if ]
  %.pn2.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i, %bb.id ], [ %i.uv, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.838.sroa.7.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vk) #31
          to label %bb.im unwind label %bb.il, !noalias !2208

bb.il:                                            ; preds = %bb.li, %.body24.i.i.i, %bb.lf, %bb.im, %.body.i.i.i
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2208
  unreachable

bb.im:                                            ; preds = %.body24.i.i.i, %bb.le, %.body.i.i.i, %bb.ij
  %i.vm = phi ptr [ %i.afx, %.body24.i.i.i ], [ %i.afm, %bb.le ], [ %i.uw, %bb.ij ], [ %i.vi, %.body.i.i.i ]
  %i.vn = phi ptr [ %i.afy, %.body24.i.i.i ], [ %i.afn, %bb.le ], [ %i.ux, %bb.ij ], [ %i.vj, %.body.i.i.i ]
  %.pn10.pn.i.i.i = phi { ptr, i32 } [ %.pn8.i.i.i, %.body24.i.i.i ], [ %i.afq, %bb.le ], [ %i.vd, %bb.ij ], [ %.pn2.i.i.i, %.body.i.i.i ]
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.vo) #31
          to label %bb.li unwind label %bb.il, !noalias !2208

bb.in:                                            ; preds = %bb.ga
  %.phi.trans.insert67.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 5 uses
  %.pre68.i.i.i = load i8, ptr %.phi.trans.insert67.i.i.i, align 8, !range !618, !noalias !2261
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10116.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.2.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5104.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i16.i.i.i)
  switch i8 %.pre68.i.i.i, label %default.unreachable150 [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.iq
    i8 2, label %bb.ir
    i8 3, label %bb.is
    i8 4, label %bb.io
    i8 5, label %bb.ka
  ]

._crit_edge.i.i:                                  ; preds = %bb.in
  %.phi.trans.insert213.i.i = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.pre214.i.i = load ptr, ptr %.phi.trans.insert213.i.i, align 8, !noalias !2261
  %.phi.trans.insert215.i.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.pre216.i.i.a = load ptr, ptr %.phi.trans.insert215.i.i, align 8, !noalias !2261
  %.pre217.i.i = load i64, ptr %i.vp, align 8, !range !65, !noalias !2261
  %.phi.trans.insert218.i.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.pre219.i.i = load i64, ptr %.phi.trans.insert218.i.i, align 8, !noalias !2261
  br label %bb.ip

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i)
  br label %bb.jh

bb.ip:                                            ; preds = %._crit_edge.i.i, %.thread81.i.i.i
  %i.vq = phi ptr [ %i.pw, %.thread81.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i.i ]
  %i.vr = phi ptr [ %i.px, %.thread81.i.i.i ], [ %i.pv, %._crit_edge.i.i ]
  %i.vs = phi i64 [ %i.qd, %.thread81.i.i.i ], [ %.pre219.i.i, %._crit_edge.i.i ]
  %i.vt = phi i64 [ 1, %.thread81.i.i.i ], [ %.pre217.i.i, %._crit_edge.i.i ]
  %i.vu = phi ptr [ %i.qo, %.thread81.i.i.i ], [ %.pre216.i.i.a, %._crit_edge.i.i ]
  %i.vv = phi ptr [ %i.qm, %.thread81.i.i.i ], [ %.pre214.i.i, %._crit_edge.i.i ]
  %i.vw = phi ptr [ %.sroa.11.0..sroa_idx.i.i.i, %.thread81.i.i.i ], [ %.phi.trans.insert67.i.i.i, %._crit_edge.i.i ]
  %i.vx = phi ptr [ %i.qp, %.thread81.i.i.i ], [ %i.vp, %._crit_edge.i.i ]
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 913
  store i8 0, ptr %i.vy, align 1, !noalias !2261
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 914
  store i8 0, ptr %i.vz, align 2, !noalias !2261
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  store ptr %i.vv, ptr %i.wa, align 8, !noalias !2261
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 856
  store ptr %i.vu, ptr %i.wb, align 8, !noalias !2261
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 864
  store i64 %i.vt, ptr %i.wc, align 8, !noalias !2261
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 872
  store i64 %i.vs, ptr %i.wd, align 8, !noalias !2261
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 920
  store ptr %i.wa, ptr %i.we, align 8, !noalias !2261
  br label %bb.is

bb.iq:                                            ; preds = %bb.in
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #34
          to label %.noexc22.i.i.i unwind label %bb.lb, !noalias !2208

.noexc22.i.i.i:                                   ; preds = %bb.iq
  unreachable

bb.ir:                                            ; preds = %bb.in
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #34
          to label %.noexc23.i.i.i unwind label %bb.lb, !noalias !2208

.noexc23.i.i.i:                                   ; preds = %bb.ir
  unreachable

bb.is:                                            ; preds = %bb.ip, %bb.in
  %i.wf = phi ptr [ %.phi.trans.insert.i.i, %bb.in ], [ %i.vq, %bb.ip ] ; 4 uses
end_hunk_6
begin_hunk_7_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br i1 %i.jm, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jn = icmp eq i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %i.jn, label %bb.do, label %.loopexit.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.promoted.i.i.i.i.i
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !2659, !noalias !2662, !noundef !3
  %i.jq = icmp sgt i8 %i.jp, -65
  br i1 %i.jq, label %bb.do, label %.loopexit.i.i.i.i

bb.do:                                            ; preds = %bb.dn, %bb.dm, %.lr.ph.i5.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.js = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.jk
  br i1 %i.js, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jt = load i8, ptr %i.jr, align 1, !noalias !2664, !noundef !3 ; 5 uses
  %i.ju = icmp sgt i8 %i.jt, -1
  br i1 %i.ju, label %bb.dq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.dp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jw = and i8 %i.jt, 31
  %i.jx = zext nneg i8 %i.jw to i32               ; 3 uses
  %i.jy = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.jz = icmp samesign ne i64 %i.jy, %i.jk
  call void @llvm.assume(i1 %i.jz)
  %i.ka = load i8, ptr %i.jv, align 1, !noalias !2664, !noundef !3
  %i.kb = shl nuw nsw i32 %i.jx, 6
  %i.kc = and i8 %i.ka, 63
  %i.kd = zext nneg i8 %i.kc to i32               ; 2 uses
  %i.ke = or disjoint i32 %i.kb, %i.kd
  %i.kf = icmp samesign ugt i8 %i.jt, -33
  br i1 %i.kf, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i, label %bb.dr

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.kh = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.ki = icmp samesign ne i64 %i.kh, %i.jk
  call void @llvm.assume(i1 %i.ki)
  %i.kj = load i8, ptr %i.kg, align 1, !noalias !2664, !noundef !3
  %i.kk = shl nuw nsw i32 %i.kd, 6
  %i.kl = and i8 %i.kj, 63
  %i.km = zext nneg i8 %i.kl to i32
  %i.kn = or disjoint i32 %i.kk, %i.km            ; 2 uses
  %i.ko = shl nuw nsw i32 %i.jx, 12
  %i.kp = or disjoint i32 %i.kn, %i.ko
  %i.kq = icmp samesign ugt i8 %i.jt, -17
  br i1 %i.kq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i, label %bb.dr

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 3
  %i.ks = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.kt = icmp samesign ne i64 %i.ks, %i.jk
  call void @llvm.assume(i1 %i.kt)
  %i.ku = load i8, ptr %i.kr, align 1, !noalias !2664, !noundef !3
  %i.kv = shl nuw nsw i32 %i.jx, 18
  %i.kw = and i32 %i.kv, 1835008
  %i.kx = shl nuw nsw i32 %i.kn, 6
  %i.ky = and i8 %i.ku, 63
  %i.kz = zext nneg i8 %i.ky to i32
  %i.la = or disjoint i32 %i.kx, %i.kz
  %i.lb = or disjoint i32 %i.la, %i.kw
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.lc = zext nneg i8 %i.jt to i32
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.kp, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i.i.i.i ], [ %i.lb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i.i.i.i ], [ %i.ke, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i.i.i.i ], [ %i.lc, %bb.dq ] ; 4 uses
  %i.ld = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ld)
  br i1 %i.jl, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.le = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.le, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.lf, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.lg, i64 3, i64 4
  br label %bb.dw

bb.dv:                                            ; preds = %.noexc9.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.li = load i64, ptr %i.lh, align 8, !alias.scope !2649, !noalias !2652, !noundef !3 ; 2 uses
  %i.lj = icmp eq i64 %i.li, -1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !2649, !noalias !2652, !nonnull !3, !noundef !3 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ln = load i64, ptr %i.lm, align 8, !alias.scope !2649, !noalias !2652, !noundef !3 ; 14 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !2649, !noalias !2652, !nonnull !3, !noundef !3 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.lr = load i64, ptr %i.lq, align 8, !alias.scope !2649, !noalias !2652, !noundef !3 ; 12 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.lt = add nsw i64 %i.lr, -1                   ; 4 uses
  br i1 %i.lj, label %bb.ec, label %bb.ek

bb.dw:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.dt ], [ %..i.i.peel.i.i.i.i, %bb.du ], [ 1, %bb.ds ]
  %i.lu = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not.i.i.i.i.i.i26.i = icmp ult i64 %i.lu, %i.jk
  br i1 %.not.i.i.i.i.i.i26.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lw = icmp eq i64 %i.lu, %i.jk
  br i1 %i.lw, label %bb.ea, label %.loopexit.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lu
  %i.ly = load i8, ptr %i.lx, align 1, !alias.scope !2659, !noalias !2668, !noundef !3
  %i.lz = icmp sgt i8 %i.ly, -65
  br i1 %i.lz, label %bb.ea, label %.loopexit.i.i.i.i

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dw
  %i.ma = icmp samesign eq i64 %i.lu, %i.jk
  br i1 %i.ma, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lu
  %i.mc = load i8, ptr %i.mb, align 1, !noalias !2669, !noundef !3 ; 3 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i: ; preds = %bb.eb
  %i.me = add nuw nsw i64 %i.lu, 1
  %i.mf = icmp samesign ne i64 %i.me, %i.jk
  call void @llvm.assume(i1 %i.mf)
  %i.mg = icmp samesign ugt i8 %i.mc, -33
  br i1 %i.mg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i
  %i.mh = add nuw nsw i64 %i.lu, 2
  %i.mi = icmp samesign ne i64 %i.mh, %i.jk
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp samesign ugt i8 %i.mc, -17
  br i1 %i.mj, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i
  %i.mk = add nuw nsw i64 %i.lu, 3
  %i.ml = icmp samesign ne i64 %i.mk, %i.jk
  call void @llvm.assume(i1 %i.ml)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dz, %bb.dy, %bb.dn, %bb.dm
  %.lcssa150.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.dm ], [ %.promoted.i.i.i.i.i, %bb.dn ], [ %i.lu, %bb.dy ], [ %i.lu, %bb.dz ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %i.jk, i64 noundef %.lcssa150.i.i.i.i, i64 noundef %i.jk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #34
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2636

.noexc10.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  unreachable

bb.ec:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  %.promoted.i17.i.i.i.i = load i64, ptr %i.ls, align 8, !alias.scope !2670, !noalias !2677 ; 2 uses
  %i.mm = add i64 %.promoted.i17.i.i.i.i, %i.lt   ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %i.ln
  br i1 %i.mn, label %.lr.ph.i20.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.ec
  %i.mo = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.mp = load i64, ptr %i.mo, align 8, !alias.scope !2670, !noalias !2677, !noundef !3
  %i.mq = load i64, ptr %i.jc, align 8, !alias.scope !2670, !noalias !2677
  %.fr99.i.i.i = freeze i64 %i.mq                 ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ms = load i64, ptr %i.mr, align 8, !alias.scope !2670, !noalias !2677
  %umax49.i23.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr99.i.i.i, i64 range(i64 0, -9223372036854775808) %i.lr)
  %i.mt = add i64 %.fr99.i.i.i, -1                ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.mt, %i.lr
  %exitcond.not.i25.i.i.i.i368.not = icmp ult i64 %.fr99.i.i.i, %i.lr
  %invariant.op436 = sub i64 1, %.fr99.i.i.i
  %.not.i.us.i.i.i371 = icmp eq i64 %.fr99.i.i.i, 0 ; 2 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ef, %.lr.ph.i20.i.i.i.i
  %i.mu = phi i64 [ %.promoted.i17.i.i.i.i, %.lr.ph.i20.i.i.i.i ], [ %i.nb, %bb.ef ] ; 6 uses
  %i.mv = phi i64 [ %i.mm, %.lr.ph.i20.i.i.i.i ], [ %i.nc, %bb.ef ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !alias.scope !2673, !noalias !2679, !noundef !3
  %i.my = and i8 %i.mx, 63
  %i.mz = zext nneg i8 %i.my to i64
  %3 = lshr i64 %i.mp, %i.mz
  %4 = trunc nuw i64 %3 to i1
  br i1 %4, label %.preheader96.i.i.i.i.preheader, label %bb.ee

.preheader96.i.i.i.i.preheader:                   ; preds = %bb.ed
  br i1 %exitcond.not.i25.i.i.i.i368.not, label %.lr.ph370, label %.preheader.i.preheader.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.na = add i64 %i.mu, %i.lr
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ej, %.split98.us.i.i.i, %bb.ee
  %i.nb = phi i64 [ %i.nu, %bb.ej ], [ %i.na, %bb.ee ], [ %i.nm, %.split98.us.i.i.i ] ; 2 uses
  %i.nc = add i64 %i.nb, %i.lt                    ; 2 uses
  %i.nd = icmp ult i64 %i.nc, %i.ln
  br i1 %i.nd, label %bb.ed, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader96.i.i.i.i:                             ; preds = %bb.eh
  %i.ne = add i64 %.sroa.02.0.i24.i.i.i.i369, 1   ; 2 uses
  %exitcond.not.i25.i.i.i.i = icmp eq i64 %i.ne, %umax49.i23.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i, label %.preheader.i.preheader.i.i.i, label %.lr.ph370

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader96.i.i.i.i, %.preheader96.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i371, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph373

.preheader.i.us.i.i.i:                            ; preds = %bb.eg
  %.not.i.us.i.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph373

.lr.ph373:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i28.i.us.i.i.i372 = phi i64 [ %i.nf, %.preheader.i.us.i.i.i ], [ %.fr99.i.i.i, %.preheader.i.us.i.i.i.preheader ]
  %i.nf = add i64 %.sroa.2.0.i28.i.us.i.i.i372, -1 ; 4 uses
  %i.ng = add i64 %i.nf, %i.mu                    ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %i.ln
  br i1 %i.nh, label %bb.eg, label %.invoke.i.i.i

bb.eg:                                            ; preds = %.lr.ph373
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.nf
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !2675, !noalias !2680, !noundef !3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ng
  %i.nl = load i8, ptr %i.nk, align 1, !alias.scope !2673, !noalias !2679, !noundef !3
  %.not.i29.i.us.i.i.i = icmp eq i8 %i.nj, %i.nl
  br i1 %.not.i29.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %.split98.us.i.i.i

.split98.us.i.i.i:                                ; preds = %bb.eg
  %i.nm = add i64 %i.mu, %i.ms
  br label %bb.ef

.lr.ph370:                                        ; preds = %.preheader96.i.i.i.i.preheader, %.preheader96.i.i.i.i
  %.sroa.02.0.i24.i.i.i.i369 = phi i64 [ %i.ne, %.preheader96.i.i.i.i ], [ %.fr99.i.i.i, %.preheader96.i.i.i.i.preheader ] ; 4 uses
  %i.nn = add i64 %.sroa.02.0.i24.i.i.i.i369, %i.mu ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.ln
  br i1 %i.no, label %bb.eh, label %bb.ei

.preheader.i.i.i.i:                               ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i371, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

bb.eh:                                            ; preds = %.lr.ph370
  %i.np = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.02.0.i24.i.i.i.i369
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !2675, !noalias !2680, !noundef !3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.nn
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !2673, !noalias !2679, !noundef !3
  %.not21.i27.i.i.i.i = icmp eq i8 %i.nq, %i.ns
  br i1 %.not21.i27.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph370
  %i.nt = add i64 %i.mu, %.fr99.i.i.i
  %umax.i26.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ln, i64 %i.nt)
  br label %.invoke.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %.reass235.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.mu, %invariant.op436
  %i.nu = add i64 %.reass235.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i24.i.i.i.i369
  br label %bb.ef

bb.ek:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  %.promoted.i11.i.i.i.i = load i64, ptr %i.ls, align 8, !alias.scope !2681, !noalias !2688 ; 2 uses
  %i.nv = add i64 %.promoted.i11.i.i.i.i, %i.lt   ; 2 uses
  %i.nw = icmp ult i64 %i.nv, %i.ln
  br i1 %i.nw, label %.lr.ph.i14.i.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %bb.ek
  %i.nx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !2681, !noalias !2688, !noundef !3
  %i.nz = load i64, ptr %i.jc, align 8, !alias.scope !2681, !noalias !2688 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !2681, !noalias !2688 ; 2 uses
  %i.oc = sub i64 %i.lr, %i.ob
  %invariant.op = sub i64 1, %i.nz
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
  %i.od = phi i64 [ %.promoted.i11.i.i.i.i, %.lr.ph.i14.i.i.i.i ], [ %.ph71.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.oe = phi i64 [ %i.li, %.lr.ph.i14.i.i.i.i ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 3 uses
  %i.of = phi i64 [ %i.nv, %.lr.ph.i14.i.i.i.i ], [ %i.ol, %.sink.split.i.i.i.i.i ]
  %i.og = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !2684, !noalias !2690, !noundef !3
  %i.oi = and i8 %i.oh, 63
  %i.oj = zext nneg i8 %i.oi to i64
  %5 = lshr i64 %i.ny, %i.oj
  %6 = trunc nuw i64 %5 to i1
  br i1 %6, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ok = add i64 %i.od, %i.lr
  br label %.sink.split.i.i.i.i.i

bb.en:                                            ; preds = %bb.el
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oe, i64 %i.nz) ; 4 uses
  %umax49.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.lr)
  %exitcond.not.i15.i.i.i.i363.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %i.lr
  br i1 %exitcond.not.i15.i.i.i.i363.not, label %.lr.ph365, label %.preheader35.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %bb.eu, %bb.er, %bb.em
  %.sink.i.i.i.i.i = phi i64 [ %i.oc, %bb.er ], [ 0, %bb.eu ], [ 0, %bb.em ]
  %.ph71.i.i.i.i.i = phi i64 [ %i.pa, %bb.er ], [ %i.pg, %bb.eu ], [ %i.ok, %bb.em ] ; 2 uses
  %i.ol = add i64 %.ph71.i.i.i.i.i, %i.lt         ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.ln
  br i1 %i.om, label %bb.el, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

bb.eo:                                            ; preds = %bb.es
  %i.on = add i64 %.sroa.02.0.i.i.i.i.i364, 1     ; 2 uses
  %exitcond.not.i15.i.i.i.i = icmp eq i64 %i.on, %umax49.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i, label %.preheader35.i.i.i.i.preheader, label %.lr.ph365

.preheader35.i.i.i.i.preheader:                   ; preds = %bb.eo, %bb.en
  %i.oo = icmp ult i64 %i.oe, %i.nz
  br i1 %i.oo, label %.lr.ph367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph365:                                        ; preds = %bb.en, %bb.eo
  %.sroa.02.0.i.i.i.i.i364 = phi i64 [ %i.on, %bb.eo ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.en ] ; 4 uses
  %i.op = add i64 %.sroa.02.0.i.i.i.i.i364, %i.od ; 2 uses
  %i.oq = icmp ult i64 %i.op, %i.ln
  br i1 %i.oq, label %bb.es, label %bb.et

.preheader35.i.i.i.i:                             ; preds = %bb.eq
  %i.or = icmp ult i64 %i.oe, %i.os
  br i1 %i.or, label %.lr.ph367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph367:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.2.0.i.i.i.i.i366 = phi i64 [ %i.os, %.preheader35.i.i.i.i ], [ %i.nz, %.preheader35.i.i.i.i.preheader ]
  %i.os = add i64 %.sroa.2.0.i.i.i.i.i366, -1     ; 6 uses
  %i.ot = icmp ult i64 %i.os, %i.lr
  br i1 %i.ot, label %bb.ep, label %.invoke.i.i.i

bb.ep:                                            ; preds = %.lr.ph367
  %i.ou = add i64 %i.os, %i.od                    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.ln
  br i1 %i.ov, label %bb.eq, label %.invoke.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.os
  %i.ox = load i8, ptr %i.ow, align 1, !alias.scope !2686, !noalias !2691, !noundef !3
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ou
  %i.oz = load i8, ptr %i.oy, align 1, !alias.scope !2684, !noalias !2690, !noundef !3
  %.not.i16.i.i.i.i = icmp eq i8 %i.ox, %i.oz
  br i1 %.not.i16.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pa = add i64 %i.od, %i.ob
  br label %.sink.split.i.i.i.i.i

bb.es:                                            ; preds = %.lr.ph365
  %i.pb = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.02.0.i.i.i.i.i364
  %i.pc = load i8, ptr %i.pb, align 1, !alias.scope !2686, !noalias !2691, !noundef !3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.op
  %i.pe = load i8, ptr %i.pd, align 1, !alias.scope !2684, !noalias !2690, !noundef !3
  %.not21.i.i.i.i.i = icmp eq i8 %i.pc, %i.pe
  br i1 %.not21.i.i.i.i.i, label %bb.eo, label %bb.eu

bb.et:                                            ; preds = %.lr.ph365
  %i.pf = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.od
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ln, i64 %i.pf)
  br label %.invoke.i.i.i

bb.eu:                                            ; preds = %bb.es
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.od, %invariant.op
  %i.pg = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i364
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i, %bb.ef, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, %bb.eb, %bb.ek, %.preheader.i.i.i.i, %bb.ec, %bb.ea, %bb.dr, %bb.do, %.preheader.i4.i.i.i.i
  %.sroa.0.031.i.i.i.i = phi i8 [ 1, %.preheader.i.us.i.i.i ], [ 0, %bb.ec ], [ 0, %.preheader.i4.i.i.i.i ], [ 1, %bb.ea ], [ 1, %.preheader35.i.i.i.i ], [ 1, %bb.dr ], [ %.promoted26.i.i.i.i.i, %bb.do ], [ 0, %bb.ek ], [ 1, %.preheader.i.us.i.i.i.preheader ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i ], [ 1, %bb.eb ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i ], [ 0, %bb.ef ], [ 0, %.sink.split.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2648
  br label %bb.fm

bb.ev:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  %i.ph = load i8, ptr %i.ii, align 1, !alias.scope !2697, !noalias !2698, !noundef !3 ; 3 uses
  %i.pi = add nsw i64 %i.ik, -1                   ; 2 uses
  %i.pj = icmp eq i64 %i.ik, 2
  br i1 %i.pj, label %.thread.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pk = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.ik, i64 4) ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.ik
  br i1 %i.pl, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.ex:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.pm = icmp ult i64 %i.pk, %i.po
  br i1 %i.pm, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.ew, %bb.ex
  %i.pn = phi i64 [ %i.po, %bb.ex ], [ %i.ik, %bb.ew ]
  %i.po = add nsw i64 %i.pn, -1                   ; 6 uses
  %i.pp = icmp ult i64 %i.po, %i.ik
  br i1 %i.pp, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %bb.ep, %.lr.ph367, %.lr.ph373, %bb.et, %bb.ei, %.preheader.i.i.i.i
  %i.pq = phi i64 [ %i.mt, %.preheader.i.i.i.i ], [ %umax.i.i.i.i.i, %bb.et ], [ %i.ou, %bb.ep ], [ %i.ng, %.lr.ph373 ], [ %umax.i26.i.i.i.i, %bb.ei ], [ %i.os, %.lr.ph367 ], [ %i.po, %.lr.ph ]
  %i.pr = phi i64 [ %i.lr, %.preheader.i.i.i.i ], [ %i.ln, %bb.et ], [ %i.ln, %bb.ep ], [ %i.ln, %.lr.ph373 ], [ %i.ln, %bb.ei ], [ %i.lr, %.lr.ph367 ], [ %i.ik, %.lr.ph ]
  %i.ps = phi ptr [ @6, %.preheader.i.i.i.i ], [ @8, %bb.et ], [ @7, %bb.ep ], [ @7, %.lr.ph373 ], [ @8, %bb.ei ], [ @6, %.lr.ph367 ], [ @74, %.lr.ph ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.pq, i64 noundef range(i64 0, -9223372036854775808) %i.pr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ps) #34
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2636

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.po
  %i.pu = load i8, ptr %i.pt, align 1, !alias.scope !2697, !noalias !2699, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.pu, %i.ph
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.ex, label %bb.ey

bb.ey:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i
  %i.pv = add nuw nsw i64 %i.ik, 15
  %i.pw = icmp ult i64 %i.if, %i.pv
  br i1 %i.pw, label %.lr.ph.split.us.i.i.i.i.i.i, label %bb.ez

.thread.i.i.i.i.i:                                ; preds = %bb.ev
  %i.px = icmp ult i64 %i.if, 17
  br i1 %i.px, label %.lr.ph.split.us.i.i.i.i.i.i, label %.thread93.i.i.i.i.i

.thread93.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.py = insertelement <16 x i8> poison, i8 %i.ph, i64 0
  %i.pz = shufflevector <16 x i8> %i.py, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !2697, !noalias !2698
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.qa = insertelement <16 x i8> poison, i8 %i.ph, i64 0
  %i.qb = shufflevector <16 x i8> %i.qa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fb

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.thread.i.i.i.i.i, %bb.ey
  %bcmp.i.i.us23.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.id, ptr noundef nonnull readonly dereferenceable(1) %i.ii, i64 range(i64 2, 33) %i.ik), !alias.scope !2707, !noalias !2708
  %i.qc = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i, 0
  br i1 %i.qc, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

bb.fa:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.qd, ptr noundef nonnull readonly dereferenceable(1) %i.ii, i64 range(i64 2, 33) %i.ik), !alias.scope !2707, !noalias !2708
  %i.qe = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.qe, label %.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %bb.fa
  %.pn.i.i.i.i.i = phi ptr [ %i.qd, %bb.fa ], [ %i.id, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.qf, %bb.fa ], [ %i.if, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.qf = add i64 %.in.i.i.i.i.i, -1              ; 2 uses
  %.not28.i.i.i.i.i.i = icmp ugt i64 %i.ik, %i.qf
  br i1 %.not28.i.i.i.i.i.i, label %.thread55.i.i.i, label %bb.fa

bb.fb:                                            ; preds = %bb.ez, %.thread93.i.i.i.i.i
  %i.qg = phi i8 [ %.pre.i.i.i.i.i, %.thread93.i.i.i.i.i ], [ %i.pu, %bb.ez ]
  %i.qh = phi <16 x i8> [ %i.pz, %.thread93.i.i.i.i.i ], [ %i.qb, %bb.ez ] ; 6 uses
  %storemerge9295.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i ], [ %i.po, %bb.ez ] ; 6 uses
  %i.qi = insertelement <16 x i8> poison, i8 %i.qg, i64 0
  %i.qj = shufflevector <16 x i8> %i.qi, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2712
  store ptr %i.id, ptr %i.d, align 8, !noalias !2712
  %i.ql = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.if, ptr %i.ql, align 8, !noalias !2712
  %i.qm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.qk, ptr %i.qm, align 8, !noalias !2712
  %i.qn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.pi, ptr %i.qn, align 8, !noalias !2712
  %i.qo = add nuw nsw i64 %i.ik, 63               ; 2 uses
  %.not.i7.i.i.i.i = icmp ult i64 %i.qo, %i.if
  br i1 %.not.i7.i.i.i.i, label %.lr.ph.i10.i.i.i.i, label %.preheader.i8.i.i.i.i

.preheader.i8.i.i.i.i:                            ; preds = %bb.ff, %bb.fb
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.fb ], [ %i.sk, %bb.ff ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.fb ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.ff ] ; 2 uses
  %i.qp = add nuw nsw i64 %i.ik, 15               ; 2 uses
  %i.qq = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.qp
  %i.qr = icmp uge i64 %i.qq, %i.if
  %i.qs = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i = select i1 %i.qr, i1 true, i1 %i.qs
  br i1 %or.cond3105.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i, label %.lr.ph107.i.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.fb, %bb.ff
  %.sroa.06.0103.i.i.i.i.i = phi i64 [ %i.sk, %bb.ff ], [ 0, %bb.fb ] ; 6 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.06.0103.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.qt, align 1, !alias.scope !2713, !noalias !2714
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.qu, align 1, !alias.scope !2713, !noalias !2714
  %i.qv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.qh
  %i.qw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i, %i.qj
  %i.qx = and <16 x i1> %i.qv, %i.qw
  %i.qy = bitcast <16 x i1> %i.qx to i16          ; 2 uses
end_hunk_7
