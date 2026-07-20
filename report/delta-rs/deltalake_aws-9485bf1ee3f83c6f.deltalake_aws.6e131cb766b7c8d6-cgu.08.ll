inline.NumInlined: 1401
inline.NumDeleted: 547
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEEECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9hC3HWJ95bf_11aws_sdk_sts5types4__tag3TagENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !185, !invariant.load !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !186, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !185, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !186, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #20
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !6
  %switch = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !187
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !194, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !210, !nonnull !6, !noundef !6
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !210
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !211, !noundef !6
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !218, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !219
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2fs4FakeE9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !211, !noundef !6
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !230, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !231
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
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
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !236, !noundef !6
  switch i8 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 9, label %bb.u
    i8 0, label %bb.b
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.o
    i8 8, label %bb.r
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume.i:                                  ; preds = %bb.v, %bb.s, %bb.p, %bb.m, %bb.i, %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.s ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.m, %bb.m ], [ %i.p, %bb.p ], [ %i.v, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.p:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3.i: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit

bb.u:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !237, !noundef !6
  %or.cond = icmp slt i64 %i.a, -9223372036854775794
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !44, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtB1q_14InvalidAppNameEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !211, !noundef !6
  %1 = trunc nuw i64 %i.a to i1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %1, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !78, !alias.scope !238, !noundef !6
  %switch.i = icmp slt i64 %i.c, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split: ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB16_5error22EnvConfigFileLoadErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !6
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(168) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !241, !noundef !6
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse8LocationECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.d, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %common.resume.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse8LocationECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse19EnvConfigParseErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse8LocationECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume.i:                                  ; preds = %bb.o, %.body.i1.i, %bb.h, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.i, %bb.h ], [ %eh.lpad-body.i2.i, %bb.o ], [ %eh.lpad-body.i2.i, %.body.i1.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %.body.i.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse19EnvConfigParseErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse8LocationECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i1.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %bb.n, %bb.l
  %eh.lpad-body.i2.i = phi { ptr, i32 } [ %i.o, %bb.n ], [ %i.m, %bb.l ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !250, !nonnull !6, !noundef !6
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !253
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.o, label %common.resume.i

bb.o:                                             ; preds = %.body.i1.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE9drop_slowCs7gg8ArmP1NV_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #22
          to label %common.resume.i unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !260, !nonnull !6, !noundef !6
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !261
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE9drop_slowCs7gg8ArmP1NV_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.q:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5parse19EnvConfigParseErrorECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtB1g_21SharedConfigValidatorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBI_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.ce, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit50.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ca) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit50.i unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ao, %bb.ak, %bb.aj, %.body46.i
  %.pn12.i = phi { ptr, i32 } [ %i.ci, %bb.ao ], [ %.pn10.i, %bb.ak ], [ %.pn10.i, %.body46.i ], [ %.pn10.i, %bb.aj ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !7, !alias.scope !378, !noundef !6
  %i.ch = icmp eq i64 %i.cg, -9223372036854775808
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.br

bb.ao:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit50.i: ; preds = %bb.am, %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !7, !alias.scope !381, !noundef !6
  %i.cl = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %i.cl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit53.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit50.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit53.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.as, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.pn14.i = phi { ptr, i32 } [ %i.cr, %bb.as ], [ %.pn12.i, %bb.an ], [ %.pn12.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !387, !noundef !6 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !388
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.br

bb.as:                                            ; preds = %bb.ap
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit53.i: ; preds = %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit50.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !398, !noundef !6 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit53.i
  %i.cv = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !399
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i unwind label %bb.av

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.av, %bb.ar, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.pn16.i = phi { ptr, i32 } [ %i.cy, %bb.av ], [ %.pn14.i, %bb.ar ], [ %.pn14.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %.pn14.i, %bb.aq ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.cx) #19
          to label %.body59.i unwind label %bb.br

bb.av:                                            ; preds = %bb.au
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i: ; preds = %bb.au, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit53.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !7, !alias.scope !406, !noundef !6
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %.body59.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58.i: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62.i unwind label %bb.az

.body59.i:                                        ; preds = %bb.az, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.pn18.i = phi { ptr, i32 } [ %.pn16.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.df, %bb.az ], [ %i.dc, %bb.ax ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.de) #19
          to label %.body63.i unwind label %bb.br

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i58.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit56.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.dh = load i64, ptr %i.dg, align 8, !range !7, !alias.scope !409, !noundef !6
  %i.di = icmp eq i64 %i.dh, -9223372036854775808
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body63.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bf

.body63.i:                                        ; preds = %bb.bf, %bb.bb, %.body59.i
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %.body59.i ], [ %i.dq, %bb.bf ], [ %i.dj, %bb.bb ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !415, !noundef !6 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.body63.i
  %i.do = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !416
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dl) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.br

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit62.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !426, !noundef !6 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.du = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !427
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bi, %bb.be, %bb.bd, %.body63.i
  %.pn22.i = phi { ptr, i32 } [ %i.dw, %bb.bi ], [ %.pn20.i, %bb.be ], [ %.pn20.i, %.body63.i ], [ %.pn20.i, %bb.bd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(624) %0) #19
          to label %bb.bm unwind label %bb.br

bb.bi:                                            ; preds = %bb.bh
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i: ; preds = %bb.bh, %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.dx = load i64, ptr %0, align 8, !range !211, !alias.scope !437, !noundef !6
  %1 = trunc nuw i64 %i.dx to i1
  br i1 %1, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !444, !noundef !6 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eb = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !445
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dy) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.pn24.i = phi { ptr, i32 } [ %i.ee, %bb.bn ], [ %.pn22.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.ed) #19
          to label %common.resume unwind label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit68.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.eg = load i64, ptr %i.ef, align 8, !range !211, !alias.scope !453, !noundef !6
  %2 = trunc nuw i64 %i.eg to i1
  br i1 %2, label %bb.bo, label %common.ret

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !460, !noundef !6 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %common.ret, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ek = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !461
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.bq, label %common.ret

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2fs4FakeE9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eh) #22
  br label %common.ret

bb.br:                                            ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.be, %.body59.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.ar, %bb.an, %bb.ak, %.body43.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.u, %bb.p, %bb.k, %.body.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit226
  %common.resume.op = phi { ptr, i32 } [ %.pn65, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit226 ], [ %.pn24.i, %bb.bm ]
  resume { ptr, i32 } %common.resume.op

bb.bs:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.eo = load i8, ptr %i.en, align 8, !range !73, !noundef !6
  %cond.i = icmp eq i8 %i.eo, 3
  br i1 %cond.i, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.eq = load i8, ptr %i.ep, align 8, !range !73, !noundef !6
  %cond.i.i = icmp eq i8 %i.eq, 3
  br i1 %cond.i.i, label %bb.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.es = load i8, ptr %i.er, align 8, !range !73, !noundef !6
  %cond.i.i.i = icmp eq i8 %i.es, 3
  br i1 %cond.i.i.i, label %bb.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.et)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !472, !noundef !6 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.body, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ey = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !473
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.by, label %.body

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ev) #22
          to label %.body unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !484, !noundef !6 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.fd = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !485
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fa) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gd

bb.cb:                                            ; preds = %bb.by
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cc:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.fh = load i8, ptr %i.fg, align 8, !range !73, !noundef !6
  %cond.i78 = icmp eq i8 %i.fh, 3
  br i1 %cond.i78, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cd:                                            ; preds = %bb.cc
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.fj = load i8, ptr %i.fi, align 8, !range !73, !noundef !6
  %cond.i.i79 = icmp eq i8 %i.fj, 3
  br i1 %cond.i.i79, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i80

bb.ce:                                            ; preds = %bb.cd
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.fl = load i8, ptr %i.fk, align 8, !range !73, !noundef !6
  %cond.i.i.i81 = icmp eq i8 %i.fl, 3
  br i1 %cond.i.i.i81, label %bb.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i80

bb.cf:                                            ; preds = %bb.ce
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i80 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !496, !noundef !6 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %.body, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fr = atomicrmw sub ptr %i.fp, i64 1 release, align 8, !noalias !497
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.ci, label %.body

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fo) #22
          to label %.body unwind label %bb.cl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i80: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !508, !noundef !6 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit.i80
  %i.fw = atomicrmw sub ptr %i.fu, i64 1 release, align 8, !noalias !509
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ft) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ge

bb.cl:                                            ; preds = %bb.ci
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cm:                                            ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.fz)
          to label %bb.gg unwind label %bb.gf

bb.cn:                                            ; preds = %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.gb = load i8, ptr %i.ga, align 8, !range !73, !noundef !6
  %cond.i86 = icmp eq i8 %i.gb, 3
  br i1 %cond.i86, label %bb.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.co:                                            ; preds = %bb.cn
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.gd = load i8, ptr %i.gc, align 8, !range !73, !noundef !6
  %cond.i.i87 = icmp eq i8 %i.gd, 3
  br i1 %cond.i.i87, label %bb.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cp:                                            ; preds = %bb.co
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ge) #19
          to label %.body88 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNtNtNtNtCsaB04DkjCm5a_10aws_config4meta6region6future13ProvideRegionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.cp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider6regionNtBL_18DefaultRegionChain6region0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.gn
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws:bb.a
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1725
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @157, ptr %i.f, align 8, !noalias !1729
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.v, align 8, !noalias !1729
  %i.w = load i64, ptr %i.p, align 8, !range !1732, !noalias !1729, !noundef !6
  %switch.offset.i = sub nuw nsw i64 5, %i.w
  %i.x = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1729 ; 2 uses
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
  store i64 5, ptr %i.e, align 8, !noalias !1729
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @158, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !1729
  %.sroa.771.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 13, ptr %.sroa.771.0..sroa_idx.i, align 8, !noalias !1729
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !6, !noalias !1729, !nonnull !6
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #23
          to label %.noexc5 unwind label %bb.p, !inline_history !1733

.noexc5:                                          ; preds = %.noexc4
  br i1 %i.ae, label %bb.e, label %.noexc2

bb.e:                                             ; preds = %.noexc5
  %i.af = load i64, ptr %0, align 8, !range !194, !alias.scope !1729, !noundef !6
  %.not73.i = icmp eq i64 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  br i1 %.not73.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1729
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1729, !noundef !6 ; 2 uses
  %.not76.i = icmp eq ptr %i.ah, null
  br i1 %.not76.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1729
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !1729, !noundef !6 ; 2 uses
  %.not74.i = icmp eq ptr %i.ai, null
  br i1 %.not74.i, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1729
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.540.sroa.5.0.i = phi i64 [ %i.ak, %bb.h ], [ undef, %bb.f ]
  %.sroa.039.0.i = phi i64 [ 1, %bb.h ], [ 2, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1729, !noundef !6 ; 2 uses
  %.not77.i = icmp eq ptr %i.am, null
  br i1 %.not77.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1729
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.6.sroa.5.0.i = phi i64 [ undef, %bb.i ], [ %i.ao, %bb.j ]
  %.sroa.031.0.i = phi i64 [ 2, %bb.i ], [ 1, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1729
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !range !1728, !alias.scope !1729, !noundef !6
  store i64 %i.ar, ptr %i.c, align 8, !noalias !1729
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
  %i.at = load <2 x i32>, ptr %i.ap, align 8, !noalias !1729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1729
  store ptr %i.f, ptr %i.b, align 8, !noalias !1729
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !1729
  store ptr %i.c, ptr %i.as, align 8, !noalias !1729
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.039.0.i, ptr %i.d, align 8, !noalias !1729
  store ptr %i.ah, ptr %.sroa.028.sroa.3.0..sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.540.sroa.5.0.i, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.031.0.i, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !noalias !1729
  store ptr %i.am, ptr %.sroa.028.sroa.6.0..sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.6.sroa.5.0.i, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1729
  store i64 5, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !1729
  store ptr @158, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1729
  store i64 13, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1729
  store <2 x i32> %i.at, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1729
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @134, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1729
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !1729
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !6, !noalias !1729, !nonnull !6
  invoke void %i.av(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #23
          to label %.noexc6 unwind label %bb.p, !inline_history !1733

.noexc6:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1729
  br label %.noexc2

bb.l:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !1729
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.568.sroa.5.0.i = phi i64 [ %i.ax, %bb.l ], [ undef, %bb.g ]
  %.sroa.067.0.i = phi i64 [ 1, %bb.l ], [ 2, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1729, !noundef !6 ; 2 uses
  %.not75.i = icmp eq ptr %i.az, null
  br i1 %.not75.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1729
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.663.sroa.5.0.i = phi i64 [ undef, %bb.m ], [ %i.bb, %bb.n ]
  %.sroa.058.0.i = phi i64 [ 2, %bb.m ], [ 1, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.067.0.i, ptr %i.a, align 8, !noalias !1729
  %.sroa.049.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !noalias !1729
  store ptr %i.ai, ptr %.sroa.049.sroa.3.0..sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.568.sroa.5.0.i, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.058.0.i, ptr %.sroa.049.sroa.4.0..sroa_idx.i, align 8, !noalias !1729
  store ptr %i.az, ptr %.sroa.049.sroa.6.0..sroa_idx.i, align 8, !noalias !1729
  store i64 %.sroa.663.sroa.5.0.i, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1729
  store i64 5, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !1729
  store ptr @158, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !1729
  store i64 13, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !1729
  store <2 x i32> %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !1729
  %.sroa.1356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @157, ptr %.sroa.1356.0..sroa_idx.i, align 8, !noalias !1729
  %.sroa.1557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1557.0..sroa_idx.i, align 8, !noalias !1729
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !6, !noalias !1729, !nonnull !6
  invoke void %i.bf(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #23
          to label %.noexc7 unwind label %bb.p, !inline_history !1733

.noexc7:                                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1729
  br label %.noexc2

.noexc2:                                          ; preds = %.noexc7, %.noexc6, %.noexc5, %switch.lookup.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1725
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.p:                                             ; preds = %bb.o, %bb.k, %.noexc4, %bb.d, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #19
          to label %bb.u unwind label %bb.t

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.bh = load i64, ptr %0, align 8, !range !194, !alias.scope !1734, !noundef !6 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %1 = trunc nuw i64 %i.bh to i1
  br i1 %1, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1752, !nonnull !6, !noundef !6
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !1752
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.q, %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.u:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !78, !alias.scope !1753, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #19
          to label %.body20 unwind label %bb.ba

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.f = load i64, ptr %0, align 8, !range !7, !alias.scope !1756, !noundef !6
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

.body20:                                          ; preds = %bb.k, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.k ], [ %i.h, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1759, !noundef !6 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %.body20
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1762
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1769, !noundef !6 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1772
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %.body20, %bb.j, %bb.p
  %.pn2 = phi { ptr, i32 } [ %i.z, %bb.p ], [ %.pn, %bb.j ], [ %.pn, %.body20 ], [ %.pn, %bb.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1779, !noundef !6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.x = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1782
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1789, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25
  %i.ad = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1792
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28 unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.o, %bb.u
  %.pn4 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %.pn2, %bb.o ], [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pn2, %bb.n ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1799, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1802
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.u:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit28: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25, %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1809, !noundef !6 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit31, label %bb.v
end_hunk_3
begin_hunk_4_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i = phi i8 [ %i.ll, %bb.q ], [ %i.ln, %bb.r ] ; 2 uses
  %i.lp = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.lp, label %bb.x, label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.v:                                             ; preds = %bb.t
  %i.lr = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load010___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6
  %i.ls = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lr, i8 noundef %.sroa.0.0.i)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  br i1 %i.ls, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.t, %bb.w
  %i.lt = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1133 = icmp eq i8 %i.lt, 0
  br i1 %.not1133, label %bb.y, label %bb.o

bb.y:                                             ; preds = %bb.x
  %i.lu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.lv = icmp ult i64 %i.lu, 6
  tail call void @llvm.assume(i1 %i.lv)
  %i.lw = icmp samesign ugt i64 %i.lu, 1
  br i1 %i.lw, label %bb.aa, label %bb.o

bb.z:                                             ; preds = %bb.aa
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.aa:                                            ; preds = %bb.y
  %i.ly = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load010___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 32
  %.val245 = load ptr, ptr %i.lz, align 8, !nonnull !6, !noundef !6
  %i.ma = getelementptr i8, ptr %i.ly, i64 40
  %.val246 = load i64, ptr %i.ma, align 8, !noundef !6
  store i64 2, ptr %i.jo, align 8, !alias.scope !2579
  %.sroa.6791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %.val245, ptr %.sroa.6791.0..sroa_idx, align 8, !alias.scope !2579
  %.sroa.8792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i64 %.val246, ptr %.sroa.8792.0..sroa_idx, align 8, !alias.scope !2579
  %i.mb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.mc = extractvalue { ptr, ptr } %i.mb, 0      ; 2 uses
  %i.md = extractvalue { ptr, ptr } %i.mb, 1      ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !invariant.load !6, !nonnull !6
  %i.mg = invoke noundef zeroext i1 %i.mf(ptr noundef %i.mc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jo)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.mg, label %bb.ae, label %bb.o

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jn)
  %i.mi = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load010___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jl)
  store ptr @35, ptr %i.jl, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr inttoptr (i64 639 to ptr), ptr %i.mk, align 8
  store ptr %i.jl, ptr %i.jm, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr @9, ptr %i.ml, align 8
  store i64 1, ptr %i.jn, align 8, !alias.scope !2583, !noalias !2586
  %.sroa.4.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jm, ptr %.sroa.4.0..sroa_idx.i260, align 8, !alias.scope !2583, !noalias !2586
  %.sroa.5.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i261, align 8, !alias.scope !2583, !noalias !2586
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store ptr %i.mj, ptr %i.mm, align 8, !alias.scope !2583, !noalias !2586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ly, ptr noundef nonnull %i.mc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.md, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jn)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn)
  br label %bb.o

bb.ah:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jr)
  %i.mo = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load010___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jp)
  store ptr @35, ptr %i.jp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr inttoptr (i64 639 to ptr), ptr %i.mq, align 8
  store ptr %i.jp, ptr %i.jq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr @9, ptr %i.mr, align 8
  store i64 1, ptr %i.jr, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jq, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store ptr %i.mp, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.jr)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq)
  br label %bb.o

bb.ak:                                            ; preds = %bb.o
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.al:                                            ; preds = %bb.o
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.mv = extractvalue { ptr, ptr } %i.li, 0
  %i.mw = extractvalue { ptr, ptr } %i.li, 1
  store ptr %i.mv, ptr %i.mu, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store ptr %i.mw, ptr %i.mx, align 8
  store i8 1, ptr %i.jw, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jk)
  store i8 0, ptr %i.ka, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.sroa.0793.0.copyload = load i64, ptr %i.my, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jj)
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store i8 0, ptr %i.kb, align 1
  store i8 0, ptr %i.kc, align 2
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store ptr %i.km, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  store ptr %i.mz, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  store ptr %i.na, ptr %i.nd, align 8
  %i.ne = load i64, ptr %i.kj, align 8, !range !211, !noundef !6 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ng = load ptr, ptr %i.nf, align 8            ; 3 uses
  store i64 %i.ne, ptr %i.jj, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  store ptr %i.ng, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.nj = load i64, ptr %i.ni, align 8, !range !211, !noundef !6
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 3 uses
  store i64 %i.nj, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 3 uses
  store ptr %i.nl, ptr %i.nn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %.not.i264 = icmp eq i64 %.sroa.0793.0.copyload, -9223372036854775808
  br i1 %.not.i264, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.6795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 744
  store i64 %.sroa.0793.0.copyload, ptr %i.jk, align 8, !alias.scope !2596, !noalias !2594
  %.sroa.6795.0..sroa_idx796 = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6795.0..sroa_idx796, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6795.0..sroa_idx, i64 184, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  %3 = trunc nuw i64 %i.ne to i1
  %4 = icmp ne ptr %i.ng, null
  %or.cond = select i1 %3, i1 %4, i1 false
  br i1 %or.cond, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.no = atomicrmw sub ptr %i.ng, i64 1 release, align 8, !noalias !2600
  %i.np = icmp eq i64 %i.no, 1
  br i1 %i.np, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nh) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.aq, !noalias !2596

bb.aq:                                            ; preds = %bb.ap
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.nm) #19
          to label %.body unwind label %bb.au, !noalias !2596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  %i.nr = load i64, ptr %i.nm, align 8, !range !211, !alias.scope !2614, !noalias !2596, !noundef !6
  %5 = trunc nuw i64 %i.nr to i1
  br i1 %5, label %bb.ar, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.ns = load ptr, ptr %i.nn, align 8, !alias.scope !2621, !noalias !2596, !noundef !6 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nu = atomicrmw sub ptr %i.ns, i64 1 release, align 8, !noalias !2622
  %i.nv = icmp eq i64 %i.nu, 1
  br i1 %i.nv, label %bb.at, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2fs4FakeE9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nn) #22
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bl

bb.au:                                            ; preds = %bb.aq
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !2596
  unreachable

bb.av:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !2627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hf, ptr noundef nonnull align 8 dereferenceable(56) %i.jj, i64 56, i1 false), !noalias !2596
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !2631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !2631
  %i.nx = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !alias.scope !2628, !noalias !2633, !nonnull !6, !align !30, !noundef !6 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !2631, !nonnull !6, !noundef !6 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !2631, !nonnull !6, !align !30, !noundef !6
  %i.oc = atomicrmw add ptr %i.nz, i64 1 monotonic, align 8, !noalias !2631
  %i.od = icmp slt i64 %i.oc, 0
  br i1 %i.od, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !2628, !noalias !2633, !nonnull !6, !align !30, !noundef !6 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !noalias !2631, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !2631, !nonnull !6, !align !30, !noundef !6
  %i.oj = atomicrmw add ptr %i.og, i64 1 monotonic, align 8, !noalias !2631
  %i.ok = icmp slt i64 %i.oj, 0
  br i1 %i.ok, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %.sroa.5.0.i.i = phi ptr [ undef, %bb.aw ], [ %i.oi, %bb.ay ]
  invoke void @_RNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfig4init(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.hd, ptr noundef nonnull %i.nz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ob, ptr noundef %i.og, ptr %.sroa.5.0.i.i)
          to label %bb.bb unwind label %bb.bh, !noalias !2631

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.trap()
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ol = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !range !211, !alias.scope !2628, !noalias !2633, !noundef !6
  %i.on = trunc nuw i64 %i.om to i1
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !noalias !2627
  %.sroa.01.0.i.i = select i1 %i.on, ptr %i.op, ptr null
  invoke void @_RNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfig7with_fs(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.he, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.hd, ptr noundef %.sroa.01.0.i.i)
          to label %bb.bc unwind label %bb.bh, !noalias !2631

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !2631
  %i.oq = load i64, ptr %i.hf, align 8, !range !211, !alias.scope !2628, !noalias !2633, !noundef !6
  %i.or = trunc nuw i64 %i.oq to i1
  %i.os = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !2627
  %.sroa.04.0.i.i = select i1 %i.or, ptr %i.ot, ptr null
  invoke void @_RNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfig8with_env(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.jk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.he, ptr noundef %.sroa.04.0.i.i)
          to label %.noexc266 unwind label %bb.bl

.noexc266:                                        ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !2631
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !2628, !noalias !2633, !nonnull !6, !align !30, !noundef !6 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !2631, !noundef !6 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.ow, null
  br i1 %.not17.i.i, label %_RNCNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load00Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc266
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !2631, !nonnull !6, !align !30, !noundef !6
  %i.oz = atomicrmw add ptr %i.ow, i64 1 monotonic, align 8, !noalias !2631
  %i.pa = icmp slt i64 %i.oz, 0
  br i1 %i.pa, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !2631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.hc, ptr noundef nonnull align 8 dereferenceable(192) %i.jk, i64 192, i1 false), !noalias !2634
  invoke void @_RINvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB6_14ProviderConfig16with_http_clientNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.jk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.hc, ptr noundef nonnull %i.ow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.oy)
          to label %.noexc267 unwind label %bb.bl

.noexc267:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !2631
  br label %_RNCNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load00Cs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.bh
  br i1 %.sroa.011.0.ph.i.i, label %bb.bj, label %.body

bb.bh:                                            ; preds = %bb.bb, %bb.az
  %.sroa.011.0.ph.i.i = phi i1 [ true, %bb.az ], [ false, %bb.bb ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hf) #19
          to label %bb.bg unwind label %bb.bi, !noalias !2633

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !2633
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.pc = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.pc) #19
          to label %.body unwind label %bb.bi, !noalias !2633

_RNCNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load00Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.noexc267, %.noexc266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !2627
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bk:                                            ; preds = %bb.asn, %bb.ask, %bb.asi, %bb.asa, %bb.arx, %bb.aru, %bb.arm, %bb.ark, %bb.ard, %bb.aqx, %bb.aqu, %bb.aqq, %bb.acn, %bb.wp, %bb.vq, %bb.gr, %bb.asf, %bb.asu, %bb.ast, %bb.asr, %bb.asp, %bb.asc, %bb.arr, %bb.aro, %bb.arh, %bb.arg, %bb.arf, %bb.are, %bb.ara, %bb.aqz, %bb.aqy, %.body743, %bb.aqr, %bb.aqn, %.body701, %bb.amu, %.body659, %.body615, %.body588, %.body561, %bb.acl, %bb.ack, %bb.acd, %.body512, %bb.wl, %bb.uv, %bb.ut, %bb.uq, %.body446, %.body411, %.body379, %bb.ld, %.body341, %bb.hp, %bb.ik, %bb.ha, %.body309, %.body329, %.body269
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bl:                                            ; preds = %bb.be, %bb.bc, %bb.at
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.bg, %bb.bj, %bb.bl
  %eh.lpad-body = phi { ptr, i32 } [ %i.pe, %bb.bl ], [ %i.nq, %bb.aq ], [ %lpad.thr_comm.i.i, %bb.bj ], [ %lpad.thr_comm.i.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  br label %bb.bp

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNCNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load00Cs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.as, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ji)
  store i8 0, ptr %i.kd, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.pf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh)
  store i8 0, ptr %i.ke, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.pg, i64 24, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  invoke void @_RNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfig19with_profile_config(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ph, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.jk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ji, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.jh)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  br label %bb.bp

bb.bn:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigE14unwrap_or_elseNCNCNvMNtBM_6loaderNtB27_12ConfigLoader4load00ECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 1, ptr %i.jx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk)
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.pk = load i8, ptr %i.pj, align 8, !range !19, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.pk, 2
  br i1 %.not, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.eb
  %.sink = phi i8 [ %i.uf, %bb.eb ], [ %i.pk, %bb.bn ] ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 2561
  store i8 %.sink, ptr %i.pl, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 1241
  %i.pn = load i8, ptr %i.pm, align 1, !range !19, !noundef !6 ; 3 uses
  %.not50 = icmp eq i8 %i.pn, 2
  br i1 %.not50, label %.thread1279, label %bb.ec

.thread:                                          ; preds = %bb.bn
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store ptr %i.ph, ptr %i.po, align 8
  %.sroa.8802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3096
end_hunk_4
begin_hunk_5_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.ary, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %.noexc21.i.i.i405
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aro, ptr noundef nonnull %i.aru, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em)
          to label %bb.qo unwind label %bb.qe, !noalias !3007

bb.qo:                                            ; preds = %bb.qn, %.noexc21.i.i.i405, %bb.ql, %.noexc.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !3011
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qp:                                            ; preds = %bb.qj, %bb.qi, %bb.qf, %bb.qd
  %i.arz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3011
  %i.asa = icmp eq i8 %i.arz, 0
  br i1 %i.asa, label %bb.qq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qq:                                            ; preds = %bb.qp
  %i.asb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3011 ; 2 uses
  %i.asc = icmp ult i64 %i.asb, 6
  call void @llvm.assume(i1 %i.asc)
  %i.asd = icmp samesign ugt i64 %i.asb, 1
  br i1 %i.asd, label %bb.qr, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qr:                                            ; preds = %bb.qq
  %i.ase = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !3011, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 32
  %i.asg = load ptr, ptr %i.asf, align 8, !noalias !3014, !nonnull !6, !noundef !6
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ase, i64 40
  %i.asi = load i64, ptr %i.ash, align 8, !noalias !3014, !noundef !6
  store i64 2, ptr %i.eh, align 8, !noalias !3011
  %.sroa.3.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.asg, ptr %.sroa.3.0..sroa_idx.i.i.i393, align 8, !noalias !3011
  %.sroa.513.0..sroa_idx.i.i.i394 = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %i.asi, ptr %.sroa.513.0..sroa_idx.i.i.i394, align 8, !noalias !3011
  %i.asj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.qs unwind label %bb.qe, !noalias !3014 ; 2 uses

bb.qs:                                            ; preds = %bb.qr
  %i.ask = extractvalue { ptr, ptr } %i.asj, 0    ; 2 uses
  %i.asl = extractvalue { ptr, ptr } %i.asj, 1    ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 24
  %i.asn = load ptr, ptr %i.asm, align 8, !invariant.load !6, !noalias !3014, !nonnull !6
  %i.aso = invoke noundef zeroext i1 %i.asn(ptr noundef %i.ask, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.qt unwind label %bb.qe, !noalias !3014

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.aso, label %bb.qu, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !3011
  %i.asp = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !3011, !nonnull !6, !align !30, !noundef !6
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !3011
  store ptr @22, ptr %i.ee, align 8, !noalias !3011
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.asr, align 8, !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !3011
  store ptr %i.en, ptr %i.ec, align 8, !noalias !3011
  store ptr %i.ec, ptr %i.ed, align 8, !noalias !3011
  store ptr %i.ee, ptr %i.ef, align 8, !noalias !3011
  %i.ass = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @9, ptr %i.ass, align 8, !noalias !3011
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ed, ptr %i.ast, align 8, !noalias !3011
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr @17, ptr %i.asu, align 8, !noalias !3011
  store i64 1, ptr %i.eg, align 8, !noalias !3011
  %.sroa.415.0..sroa_idx.i.i.i395 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %.sroa.415.0..sroa_idx.i.i.i395, align 8, !noalias !3011
  %.sroa.516.0..sroa_idx.i.i.i396 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i396, align 8, !noalias !3011
  %i.asv = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.asq, ptr %i.asv, align 8, !noalias !3011
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ase, ptr noundef nonnull %i.ask, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.asl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg)
          to label %bb.qv unwind label %bb.qe, !noalias !3007

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !3011
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qw:                                            ; preds = %bb.qe
  %i.asw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !3007
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.qv, %bb.qt, %bb.qq, %bb.qp, %bb.qo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.en)
          to label %bb.qy unwind label %bb.qx

.body.i388:                                       ; preds = %bb.qx, %bb.qe, %bb.qb
  %.pn10.i389 = phi { ptr, i32 } [ %i.aqt, %bb.qb ], [ %i.asz, %bb.qx ], [ %i.aqx, %bb.qe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2970
  call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %i.asx = load ptr, ptr %i.aqs, align 8, !alias.scope !3025, !noalias !2970, !noundef !6 ; 2 uses
  %i.asy = icmp eq ptr %i.asx, null
  br i1 %i.asy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.rc

bb.qx:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i388

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.qc
  %i.ata = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.atb = load i8, ptr %i.ata, align 8, !range !19, !alias.scope !3007, !noalias !2970, !noundef !6
  br label %bb.qz

bb.qy:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !3010
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.atc = phi i8 [ 2, %bb.qy ], [ %i.atb, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2970
  call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  %i.atd = load ptr, ptr %i.aqs, align 8, !alias.scope !3032, !noalias !2970, !noundef !6 ; 2 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %bb.rl, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.atf = atomicrmw sub ptr %i.atd, i64 1 release, align 8, !noalias !3033
  %i.atg = icmp eq i64 %i.atf, 1
  br i1 %i.atg, label %bb.rb, label %bb.rl

bb.rb:                                            ; preds = %bb.ra
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqs) #22
          to label %bb.rl unwind label %bb.ph

bb.rc:                                            ; preds = %.body.i388
  %i.ath = atomicrmw sub ptr %i.asx, i64 1 release, align 8, !noalias !3038
  %i.ati = icmp eq i64 %i.ath, 1
  br i1 %i.ati, label %bb.rd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.rd:                                            ; preds = %bb.rc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqs) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.re:                                            ; preds = %bb.ri, %bb.rg, %bb.rd, %bb.pz, %bb.pv
  %i.atj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.rf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382
  %i.atk = atomicrmw sub ptr %i.apm, i64 1 release, align 8, !noalias !3043
  %i.atl = icmp eq i64 %i.atk, 1
  br i1 %i.atl, label %bb.rg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.rg:                                            ; preds = %bb.rf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.apl) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.rh:                                            ; preds = %bb.pm
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.atn = load i8, ptr %i.atm, align 8, !range !73, !noalias !2970, !noundef !6
  %cond.i.i28.i386 = icmp eq i8 %i.atn, 3
  br i1 %cond.i.i28.i386, label %bb.ri, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382

bb.ri:                                            ; preds = %bb.rh
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ato)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382 unwind label %bb.re

bb.rj:                                            ; preds = %bb.pk, %bb.pj
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %.body411

bb.rk:                                            ; preds = %bb.pn
  store i8 3, ptr %i.apo, align 8, !noalias !2970
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.rl:                                            ; preds = %bb.ra, %bb.rb, %bb.qz
  store i8 1, ptr %i.apo, align 8, !noalias !2970
  br label %bb.rm

bb.rm:                                            ; preds = %bb.pb, %bb.rl
  %.val248.sink = phi i8 [ %i.atc, %bb.rl ], [ %.val248, %bb.pb ]
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 2563
  store i8 %.val248.sink, ptr %i.atq, align 1
  %i.atr = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.val249 = load i32, ptr %i.atr, align 8, !range !101, !noundef !6
  %6 = trunc nuw i32 %.val249 to i1
  br i1 %6, label %bb.rn, label %.thread1283

bb.rn:                                            ; preds = %bb.rm
  %i.ats = getelementptr inbounds nuw i8, ptr %1, i64 1944
  %i.att = getelementptr inbounds nuw i8, ptr %1, i64 1004
  %i.atu = load i32, ptr %i.att, align 4
  store i32 1, ptr %i.ats, align 8
  br label %.thread1284

.thread1283:                                      ; preds = %bb.rm
  %i.atv = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.atw = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store ptr %i.atv, ptr %i.atw, align 8
  %.sroa.8873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3096
  store i8 0, ptr %.sroa.8873.0..sroa_idx, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 3096
  br label %bb.rp

.body411:                                         ; preds = %bb.rj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384
  %i.atz = phi ptr [ %i.app, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 ], [ %i.apa, %bb.rj ]
  %.pn93 = phi { ptr, i32 } [ %.pn14.i385, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 ], [ %i.atp, %bb.rj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.atz) #19
          to label %.body456 unwind label %bb.bk

.body456:                                         ; preds = %.body446, %.body411, %bb.tz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pn93, %.body411 ], [ %i.ayz, %bb.tz ], [ %.pn97, %.body446 ] ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 2572
  %i.aub = load i8, ptr %i.aua, align 4, !range !21, !noundef !6
  %i.auc = trunc nuw i8 %i.aub to i1
  br i1 %i.auc, label %bb.are, label %bb.pc

bb.ro:                                            ; preds = %bb.a
  %.phi.trans.insert1154 = getelementptr inbounds nuw i8, ptr %1, i64 3096
  %.pre1155 = load i8, ptr %.phi.trans.insert1154, align 8, !range !73, !noalias !3048
  %i.aud = getelementptr inbounds nuw i8, ptr %1, i64 2600 ; 3 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 3096 ; 2 uses
  switch i8 %.pre1155, label %default.unreachable1278 [
    i8 0, label %bb.rp
    i8 1, label %bb.ru
    i8 2, label %bb.rv
    i8 3, label %bb.rw
  ]

bb.rp:                                            ; preds = %.thread1283, %bb.ro
  %i.auf = phi ptr [ %i.aty, %.thread1283 ], [ %i.aue, %bb.ro ]
  %i.aug = phi ptr [ %i.atx, %.thread1283 ], [ %i.aud, %bb.ro ] ; 2 uses
  %i.auh = load ptr, ptr %i.aug, align 8, !noalias !3048, !nonnull !6, !align !30, !noundef !6 ; 2 uses
  %i.aui = getelementptr i8, ptr %i.auh, i64 136
  %.val.i442 = load ptr, ptr %i.aui, align 8, !noundef !6 ; 3 uses
  %.not.i.i443 = icmp eq ptr %.val.i442, null
  br i1 %.not.i.i443, label %bb.rt, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.auj = atomicrmw add ptr %.val.i442, i64 1 monotonic, align 8
  %i.auk = icmp slt i64 %i.auj, 0
  br i1 %i.auk, label %bb.rr, label %bb.rt

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423: ; preds = %bb.tr, %bb.tq, %bb.to, %bb.tn, %.body.i425, %bb.sk, %bb.sj, %bb.si, %bb.sg, %bb.sf, %bb.se, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i, %bb.rs
  %.pn15.i = phi { ptr, i32 } [ %i.aul, %bb.rs ], [ %i.avp, %bb.sj ], [ %i.avj, %bb.sf ], [ %.pn11.i, %bb.tn ], [ %i.avj, %bb.sg ], [ %i.avj, %bb.se ], [ %i.avp, %bb.sk ], [ %i.avp, %bb.si ], [ %.pn11.i, %bb.to ], [ %.pn11.i, %.body.i425 ], [ %.pn7.i, %bb.tr ], [ %.pn7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i ], [ %.pn7.i, %bb.tq ]
  store i8 2, ptr %i.aur, align 8, !noalias !3048
  br label %.body446

bb.rs:                                            ; preds = %bb.tm
  %i.aul = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.rt:                                            ; preds = %bb.rq, %bb.rp
  %i.aum = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i442, ptr %i.aum, align 8, !noalias !3048
  %i.aun = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.auh, ptr %i.aun, align 8, !noalias !3048
  %.sroa.8.0..sroa_idx.i444 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i444, align 8, !noalias !3048
  br label %bb.rw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i: ; preds = %bb.tt, %bb.ts, %bb.sc, %bb.rx
  %.pn7.i = phi { ptr, i32 } [ %i.avg, %bb.sc ], [ %i.auv, %bb.ts ], [ %i.auv, %bb.tt ], [ %i.auv, %bb.rx ] ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.aup = load ptr, ptr %i.auo, align 8, !alias.scope !3057, !noalias !3048, !noundef !6 ; 2 uses
  %i.auq = icmp eq ptr %i.aup, null
  br i1 %i.auq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.tq

bb.ru:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #21
          to label %.noexc448 unwind label %bb.tu

.noexc448:                                        ; preds = %bb.ru
  unreachable

bb.rv:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #21
          to label %.noexc449 unwind label %bb.tu

.noexc449:                                        ; preds = %bb.rv
  unreachable

bb.rw:                                            ; preds = %bb.rt, %bb.ro
  %i.aur = phi ptr [ %i.auf, %bb.rt ], [ %i.aue, %bb.ro ] ; 3 uses
  %i.aus = phi ptr [ %i.aug, %bb.rt ], [ %i.aud, %bb.ro ]
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.auu = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aut, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ry unwind label %bb.rx     ; 2 uses

bb.rx:                                            ; preds = %bb.rw
  %i.auv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.aux = load i8, ptr %i.auw, align 8, !range !73, !noalias !3048, !noundef !6
  %cond.i28.i = icmp eq i8 %i.aux, 3
  br i1 %cond.i28.i, label %bb.ts, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.ry:                                            ; preds = %bb.rw
  %i.auy = extractvalue { i64, ptr } %i.auu, 0
  %i.auz = extractvalue { i64, ptr } %i.auu, 1
  %i.ava = trunc nuw i64 %i.auy to i1
  br i1 %i.ava, label %bb.tv, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.avb = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.avc = load i8, ptr %i.avb, align 8, !range !73, !noalias !3048, !noundef !6
  %cond.i.i424 = icmp eq i8 %i.avc, 3
  br i1 %cond.i.i424, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.ave = load i8, ptr %i.avd, align 8, !range !73, !noalias !3048, !noundef !6
  %cond.i.i.i441 = icmp eq i8 %i.ave, 3
  br i1 %cond.i.i.i441, label %bb.sb, label %bb.sd

bb.sb:                                            ; preds = %bb.sa
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.avf)
          to label %bb.sd unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.avg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.sd:                                            ; preds = %bb.sb, %bb.sa, %bb.rz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !3048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !3048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !3048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !3048
  store i64 -9223372036854775807, ptr %i.dx, align 8, !alias.scope !3058, !noalias !3048
  %i.avh = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 -9223372036854775807, ptr %i.avh, align 8, !alias.scope !3058, !noalias !3048
  %i.avi = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i64 -9223372036854775807, ptr %i.avi, align 8, !alias.scope !3058, !noalias !3048
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 38)
          to label %bb.sh unwind label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.avj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !3048
  %i.avk = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  %i.avl = load ptr, ptr %i.avk, align 8, !alias.scope !3067, !noalias !3048, !noundef !6 ; 2 uses
  %i.avm = icmp eq ptr %i.avl, null
  br i1 %i.avm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.avn = atomicrmw sub ptr %i.avl, i64 1 release, align 8, !noalias !3068
  %i.avo = icmp eq i64 %i.avn, 1
  br i1 %i.avo, label %bb.sg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.sg:                                            ; preds = %bb.sf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avk) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423 unwind label %bb.tp

bb.sh:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !3048
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 34)
          to label %bb.sl unwind label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.avp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !3048
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  %i.avr = load ptr, ptr %i.avq, align 8, !alias.scope !3079, !noalias !3048, !noundef !6 ; 2 uses
  %i.avs = icmp eq ptr %i.avr, null
  br i1 %i.avs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sj
end_hunk_5
begin_hunk_6_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.xt:                                            ; preds = %bb.xs
  %i.bfm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE)
          to label %bb.xv unwind label %bb.xr, !noalias !3227 ; 2 uses

bb.xu:                                            ; preds = %bb.xs, %bb.xv, %bb.xs
  %.sroa.06.0.i.i.i498 = phi i8 [ %i.bfm, %bb.xv ], [ %i.bfl, %bb.xs ], [ %i.bfl, %bb.xs ]
  %i.bfn = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3224, !nonnull !6, !align !30, !noundef !6
  %i.bfo = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bfn, i8 noundef %.sroa.06.0.i.i.i498)
          to label %bb.xw unwind label %bb.xr, !noalias !3227

bb.xv:                                            ; preds = %bb.xt
  %i.bfp = icmp eq i8 %i.bfm, 0
  br i1 %i.bfp, label %bb.yc, label %bb.xu

bb.xw:                                            ; preds = %bb.xu
  br i1 %i.bfo, label %bb.xx, label %bb.yc

bb.xx:                                            ; preds = %bb.xw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !3224
  %i.bfq = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3224, !nonnull !6, !align !30, !noundef !6 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !3224
  store ptr @23, ptr %i.dc, align 8, !noalias !3224
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr inttoptr (i64 119 to ptr), ptr %i.bfs, align 8, !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !3224
  store ptr %i.df, ptr %i.da, align 8, !noalias !3224
  store ptr %i.da, ptr %i.db, align 8, !noalias !3224
  store ptr %i.dc, ptr %i.dd, align 8, !noalias !3224
  %i.bft = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @9, ptr %i.bft, align 8, !noalias !3224
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.db, ptr %i.bfu, align 8, !noalias !3224
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr @17, ptr %i.bfv, align 8, !noalias !3224
  store i64 1, ptr %i.de, align 8, !noalias !3224
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i499 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i499, align 8, !noalias !3224
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i500 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i500, align 8, !noalias !3224
  %.sroa.4.0..sroa_idx.i.i.i501 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.bfr, ptr %.sroa.4.0..sroa_idx.i.i.i501, align 8, !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !3224
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bfq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %.noexc.i.i.i502 unwind label %bb.xr, !noalias !3220

.noexc.i.i.i502:                                  ; preds = %bb.xx
  %i.bfw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3228
  %i.bfx = icmp eq i8 %i.bfw, 0
  br i1 %i.bfx, label %bb.xy, label %bb.yb

bb.xy:                                            ; preds = %.noexc.i.i.i502
  %i.bfy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3228 ; 2 uses
  %i.bfz = icmp ult i64 %i.bfy, 6
  call void @llvm.assume(i1 %i.bfz)
  %i.bga = icmp samesign ugt i64 %i.bfy, 1
  br i1 %i.bga, label %bb.xz, label %bb.yb

bb.xz:                                            ; preds = %bb.xy
  %i.bgb = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3228, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 32
  %i.bgd = load ptr, ptr %i.bgc, align 8, !noalias !3220, !nonnull !6, !noundef !6
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgb, i64 40
  %i.bgf = load i64, ptr %i.bge, align 8, !noalias !3220, !noundef !6
  store i64 2, ptr %i.ct, align 8, !noalias !3228
  %.sroa.3.0..sroa_idx.i.i.i.i503 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.bgd, ptr %.sroa.3.0..sroa_idx.i.i.i.i503, align 8, !noalias !3228
  %.sroa.5.0..sroa_idx.i.i.i.i504 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %i.bgf, ptr %.sroa.5.0..sroa_idx.i.i.i.i504, align 8, !noalias !3228
  %i.bgg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i505 unwind label %bb.xr, !noalias !3220 ; 2 uses

.noexc20.i.i.i505:                                ; preds = %bb.xz
  %i.bgh = extractvalue { ptr, ptr } %i.bgg, 0    ; 2 uses
  %i.bgi = extractvalue { ptr, ptr } %i.bgg, 1    ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 24
  %i.bgk = load ptr, ptr %i.bgj, align 8, !invariant.load !6, !noalias !3220, !nonnull !6
  %i.bgl = invoke noundef zeroext i1 %i.bgk(ptr noundef %i.bgh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #23
          to label %.noexc21.i.i.i506 unwind label %bb.xr, !noalias !3220, !inline_history !3231

.noexc21.i.i.i506:                                ; preds = %.noexc20.i.i.i505
  br i1 %i.bgl, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %.noexc21.i.i.i506
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bgb, ptr noundef nonnull %i.bgh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bgi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %bb.yb unwind label %bb.xr, !noalias !3220

bb.yb:                                            ; preds = %bb.ya, %.noexc21.i.i.i506, %bb.xy, %.noexc.i.i.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !3224
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yc:                                            ; preds = %bb.xw, %bb.xv, %bb.xs, %bb.xq
  %i.bgm = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3224
  %i.bgn = icmp eq i8 %i.bgm, 0
  br i1 %i.bgn, label %bb.yd, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yd:                                            ; preds = %bb.yc
  %i.bgo = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3224 ; 2 uses
  %i.bgp = icmp ult i64 %i.bgo, 6
  call void @llvm.assume(i1 %i.bgp)
  %i.bgq = icmp samesign ugt i64 %i.bgo, 1
  br i1 %i.bgq, label %bb.ye, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ye:                                            ; preds = %bb.yd
  %i.bgr = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3224, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 32
  %i.bgt = load ptr, ptr %i.bgs, align 8, !noalias !3227, !nonnull !6, !noundef !6
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgr, i64 40
  %i.bgv = load i64, ptr %i.bgu, align 8, !noalias !3227, !noundef !6
  store i64 2, ptr %i.cz, align 8, !noalias !3224
  %.sroa.3.0..sroa_idx.i.i.i494 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.bgt, ptr %.sroa.3.0..sroa_idx.i.i.i494, align 8, !noalias !3224
  %.sroa.513.0..sroa_idx.i.i.i495 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.bgv, ptr %.sroa.513.0..sroa_idx.i.i.i495, align 8, !noalias !3224
  %i.bgw = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.yf unwind label %bb.xr, !noalias !3227 ; 2 uses

bb.yf:                                            ; preds = %bb.ye
  %i.bgx = extractvalue { ptr, ptr } %i.bgw, 0    ; 2 uses
  %i.bgy = extractvalue { ptr, ptr } %i.bgw, 1    ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 24
  %i.bha = load ptr, ptr %i.bgz, align 8, !invariant.load !6, !noalias !3227, !nonnull !6
  %i.bhb = invoke noundef zeroext i1 %i.bha(ptr noundef %i.bgx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.yg unwind label %bb.xr, !noalias !3227

bb.yg:                                            ; preds = %bb.yf
  br i1 %i.bhb, label %bb.yh, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !3224
  %i.bhc = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3224, !nonnull !6, !align !30, !noundef !6
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !3224
  store ptr @23, ptr %i.cw, align 8, !noalias !3224
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr inttoptr (i64 119 to ptr), ptr %i.bhe, align 8, !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !3224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !3224
  store ptr %i.df, ptr %i.cu, align 8, !noalias !3224
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !3224
  store ptr %i.cw, ptr %i.cx, align 8, !noalias !3224
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @9, ptr %i.bhf, align 8, !noalias !3224
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cv, ptr %i.bhg, align 8, !noalias !3224
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr @17, ptr %i.bhh, align 8, !noalias !3224
  store i64 1, ptr %i.cy, align 8, !noalias !3224
  %.sroa.415.0..sroa_idx.i.i.i496 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cx, ptr %.sroa.415.0..sroa_idx.i.i.i496, align 8, !noalias !3224
  %.sroa.516.0..sroa_idx.i.i.i497 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i497, align 8, !noalias !3224
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.bhd, ptr %i.bhi, align 8, !noalias !3224
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bgr, ptr noundef nonnull %i.bgx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bgy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy)
          to label %bb.yi unwind label %bb.xr, !noalias !3220

bb.yi:                                            ; preds = %bb.yh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !3224
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yj:                                            ; preds = %bb.xr
  %i.bhj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !3220
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.yi, %bb.yg, %bb.yd, %bb.yc, %bb.yb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df)
          to label %bb.yl unwind label %bb.yk

.body.i489:                                       ; preds = %bb.yk, %bb.xr, %bb.xo
  %.pn10.i490 = phi { ptr, i32 } [ %i.bfg, %bb.xo ], [ %i.bhm, %bb.yk ], [ %i.bfk, %bb.xr ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !3183
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  %i.bhk = load ptr, ptr %i.bff, align 8, !alias.scope !3238, !noalias !3183, !noundef !6 ; 2 uses
  %i.bhl = icmp eq ptr %i.bhk, null
  br i1 %i.bhl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485, label %bb.yp

bb.yk:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i489

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.xp
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.bho = load i8, ptr %i.bhn, align 8, !range !19, !alias.scope !3220, !noalias !3183, !noundef !6
  %i.bhp = trunc nuw i8 %i.bho to i1
  br label %bb.ym

bb.yl:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !3223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !3223
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %spec.select.i = phi i1 [ false, %bb.yl ], [ %i.bhp, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !3183
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.bhq = load ptr, ptr %i.bff, align 8, !alias.scope !3245, !noalias !3183, !noundef !6 ; 2 uses
  %i.bhr = icmp eq ptr %i.bhq, null
  br i1 %i.bhr, label %bb.yy, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.bhs = atomicrmw sub ptr %i.bhq, i64 1 release, align 8, !noalias !3246
  %i.bht = icmp eq i64 %i.bhs, 1
  br i1 %i.bht, label %bb.yo, label %bb.yy

bb.yo:                                            ; preds = %bb.yn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bff) #22
          to label %bb.yy unwind label %bb.wu

bb.yp:                                            ; preds = %.body.i489
  %i.bhu = atomicrmw sub ptr %i.bhk, i64 1 release, align 8, !noalias !3251
  %i.bhv = icmp eq i64 %i.bhu, 1
  br i1 %i.bhv, label %bb.yq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485

bb.yq:                                            ; preds = %bb.yp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bff) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485 unwind label %bb.yr

bb.yr:                                            ; preds = %bb.yv, %bb.yt, %bb.yq, %bb.xm, %bb.xi
  %i.bhw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ys:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483
  %i.bhx = atomicrmw sub ptr %i.bdz, i64 1 release, align 8, !noalias !3256
  %i.bhy = icmp eq i64 %i.bhx, 1
  br i1 %i.bhy, label %bb.yt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485

bb.yt:                                            ; preds = %bb.ys
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bdy) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485 unwind label %bb.yr

bb.yu:                                            ; preds = %bb.wz
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.bia = load i8, ptr %i.bhz, align 8, !range !73, !noalias !3183, !noundef !6
  %cond.i.i28.i487 = icmp eq i8 %i.bia, 3
  br i1 %cond.i.i28.i487, label %bb.yv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483

bb.yv:                                            ; preds = %bb.yu
  %i.bib = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bib)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483 unwind label %bb.yr

bb.yw:                                            ; preds = %bb.wx, %bb.ww
  %i.bic = landingpad { ptr, i32 }
          cleanup
  br label %.body512

bb.yx:                                            ; preds = %bb.xa
  store i8 3, ptr %i.beb, align 8, !noalias !3183
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  br label %common.ret

bb.yy:                                            ; preds = %bb.ym, %bb.yo, %bb.yn
  store i8 1, ptr %i.beb, align 8, !noalias !3183
  br i1 %spec.select.i, label %bb.yz, label %.thread1287

.thread1287:                                      ; preds = %bb.yy
  %i.bid = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store ptr %i.bid, ptr %i.bec, align 8
  store i8 0, ptr %i.beb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8943)
  %i.bie = getelementptr inbounds nuw i8, ptr %1, i64 2600
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i533)
  %i.bif = getelementptr inbounds nuw i8, ptr %1, i64 3096
  br label %bb.zw

bb.yz:                                            ; preds = %bb.yy
  %i.big = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bih = icmp eq i64 %i.big, 0
  br i1 %i.bih, label %bb.za, label %bb.zh

bb.za:                                            ; preds = %bb.yz
  %i.bii = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.bij = icmp ult i8 %i.bii, 3
  br i1 %i.bij, label %bb.zd, label %bb.zb, !prof !2578

bb.zb:                                            ; preds = %bb.za
  %i.bik = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s_10___CALLSITE) #22
          to label %bb.zd unwind label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.bil = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.zd:                                            ; preds = %bb.zb, %bb.za
  %.sroa.0.0.i524 = phi i8 [ %i.bii, %bb.za ], [ %i.bik, %bb.zb ] ; 2 uses
  %i.bim = icmp eq i8 %.sroa.0.0.i524, 0
  br i1 %i.bim, label %bb.zh, label %bb.zf

bb.ze:                                            ; preds = %bb.zf
  %i.bin = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.zf:                                            ; preds = %bb.zd
  %i.bio = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s_10___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6
  %i.bip = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bio, i8 noundef %.sroa.0.0.i524)
          to label %bb.zg unwind label %bb.ze

bb.zg:                                            ; preds = %bb.zf
  br i1 %i.bip, label %bb.zs, label %bb.zh

bb.zh:                                            ; preds = %bb.yz, %bb.zd, %bb.zg
  %i.biq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1138 = icmp eq i8 %i.biq, 0
  br i1 %.not1138, label %bb.zi, label %bb.zr

bb.zi:                                            ; preds = %bb.zh
  %i.bir = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bis = icmp ult i64 %i.bir, 6
  call void @llvm.assume(i1 %i.bis)
  %i.bit = icmp samesign ugt i64 %i.bir, 4
  br i1 %i.bit, label %bb.zk, label %bb.zr

bb.zj:                                            ; preds = %bb.zk
  %i.biu = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.zk:                                            ; preds = %bb.zi
  %i.biv = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s_10___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6 ; 3 uses
  %i.biw = getelementptr i8, ptr %i.biv, i64 32
  %.val243 = load ptr, ptr %i.biw, align 8, !nonnull !6, !noundef !6
  %i.bix = getelementptr i8, ptr %i.biv, i64 40
  %.val244 = load i64, ptr %i.bix, align 8, !noundef !6
  store i64 5, ptr %i.ia, align 8, !alias.scope !3261
  %.sroa.6932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %.val243, ptr %.sroa.6932.0..sroa_idx, align 8, !alias.scope !3261
  %.sroa.8933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 %.val244, ptr %.sroa.8933.0..sroa_idx, align 8, !alias.scope !3261
  %i.biy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.zl unwind label %bb.zj     ; 2 uses

bb.zl:                                            ; preds = %bb.zk
  %i.biz = extractvalue { ptr, ptr } %i.biy, 0    ; 2 uses
  %i.bja = extractvalue { ptr, ptr } %i.biy, 1    ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 24
  %i.bjc = load ptr, ptr %i.bjb, align 8, !invariant.load !6, !nonnull !6
  %i.bjd = invoke noundef zeroext i1 %i.bjc(ptr noundef %i.biz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia)
          to label %bb.zn unwind label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.bje = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.zn:                                            ; preds = %bb.zl
  br i1 %i.bjd, label %bb.zo, label %bb.zr

bb.zo:                                            ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  %i.bjf = load ptr, ptr @_RNvNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB6_12ConfigLoader4load0s_10___CALLSITE, align 8, !nonnull !6, !align !30, !noundef !6
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx)
  store ptr @38, ptr %i.hx, align 8
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr inttoptr (i64 343 to ptr), ptr %i.bjh, align 8
  store ptr %i.hx, ptr %i.hy, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr @9, ptr %i.bji, align 8
  store i64 1, ptr %i.hz, align 8, !alias.scope !3265, !noalias !3268
  %.sroa.4.0..sroa_idx.i529 = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.hy, ptr %.sroa.4.0..sroa_idx.i529, align 8, !alias.scope !3265, !noalias !3268
  %.sroa.5.0..sroa_idx.i530 = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i530, align 8, !alias.scope !3265, !noalias !3268
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store ptr %i.bjg, ptr %i.bjj, align 8, !alias.scope !3265, !noalias !3268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.biv, ptr noundef nonnull %i.biz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bja, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hz)
          to label %bb.zq unwind label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx)
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag8storableINtB5_12StoreReplaceNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22EndpointResolverParamsENtB5_5Store10merge_iterCs9rVkZwOUgsI_13deltalake_aws:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag8storableINtB5_12StoreReplaceNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth36AuthSchemeAndEndpointOrchestrationV2ENtB5_5Store10merge_iterCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXsa_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagINtB5_8ItemIterINtNtB5_8storable12StoreReplaceNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth36AuthSchemeAndEndpointOrchestrationV2EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %.not3 = icmp eq ptr %i.b, null
  %. = select i1 %.not3, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %., %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_refCs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.c = tail call noundef ptr @_RNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB31_6future6future6Futurep6OutputINtNtB31_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB31_6marker4SendEL_EEEEE7upgradeCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.a, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.h, %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !4005, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !4005
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9drop_slowB5m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 81
  store atomic i8 1, ptr %i.h monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.j = atomicrmw xchg ptr %i.i, i8 1 seq_cst, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7enqueueCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !4012, !nonnull !6, !noundef !6
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !4012
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9drop_slowB5m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit4

bb.h:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.r)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_refB27_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.c = tail call noundef ptr @_RNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE7upgradeB37_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit4, label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit4: ; preds = %bb.a, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.h, %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !4019, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !4019
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 201
  store atomic i8 1, ptr %i.h monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 200
  %i.j = atomicrmw xchg ptr %i.i, i8 1 seq_cst, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE7enqueueB2v_(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !4026, !nonnull !6, !noundef !6
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !4026
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit4

bb.h:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.r)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3F_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextB5f_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.j = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.i)
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %i.n = icmp ult i64 %i.m, 115292150460684698
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add i64 %i.k, %i.m
  %i.p = load i64, ptr %i.h, align 8, !noundef !6
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextB57_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.u = load i64, ptr %i.f, align 8, !range !194, !noundef !6
  %or.cond.not = trunc nuw i64 %i.u to i1
  br i1 %or.cond.not, label %bb.l, label %bb.k

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.k
  %i.v = phi i64 [ %.pre, %bb.k ], [ %i.m, %bb.a ], [ %i.aw, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = icmp ult i64 %i.v, 115292150460684698
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4030
  store ptr %1, ptr %i.d, align 8, !noalias !4030
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.y, align 8, !noalias !4030
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4027, !noalias !4033, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !4033, !noundef !6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !4027, !noalias !4033, !noundef !6
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %.loopexit
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2d_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !4034
  %i.ag = load i64, ptr %i.b, align 8, !range !4035, !noalias !4030, !noundef !6 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -9223372036854775788
  br i1 %i.ah, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !4033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4030
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ak = add i64 %i.ac, 1
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !4027, !noalias !4033
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 0), !noalias !4033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !4036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4030
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread: ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.sink.split

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %i.al = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.ap, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775789
  br i1 %.not.i, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread6, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.al, ptr %i.a, align 8, !noalias !4030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.i, i64 72, i1 false), !noalias !4030
  %i.am = load i64, ptr %i.ai, align 8, !noalias !4030, !noundef !6 ; 2 uses
  %i.an = load i64, ptr %i.aj, align 8, !alias.scope !4027, !noalias !4033, !noundef !6
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread6: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a), !noalias !4034
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2d_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !4034
  %i.ap = load i64, ptr %i.b, align 8, !range !4035, !noalias !4030, !noundef !6 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775788
  br i1 %i.aq, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.aj, align 8, !alias.scope !4027, !noalias !4033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !4036
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit: ; preds = %bb.f, %bb.j
  %.pr = load i64, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %.pr, label %bb.n [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.m
  ]

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !4027, !noalias !4033
  br label %.loopexit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false)
  %i.as = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  store i64 %i.as, ptr %i.t, align 8
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.s, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE4pushB2d_(ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.au = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.i)
  %i.av = extractvalue { ptr, i64 } %i.au, 1
  %i.aw = load i64, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 115292150460684698
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add i64 %i.av, %i.aw
  %i.az = load i64, ptr %i.h, align 8, !noundef !6
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %.loopexit

bb.m:                                             ; preds = %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread6, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load i8, ptr %i.bb, align 8, !range !21, !noundef !6
  %i.bd = trunc nuw i8 %i.bc to i1
  %. = select i1 %i.bd, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread
  %.sink = phi i64 [ %., %bb.m ], [ %.pr, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit ], [ -9223372036854775788, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit.thread ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintB5f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !21, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintB4P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !211, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfigNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
end_hunk_7
begin_hunk_8_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollB1u_:bb.a
  br label %.body.i

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { ptr, ptr } %i.i, 0
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.k, ptr %i.m, align 8, !noalias !4194
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.l, ptr %i.n, align 8, !noalias !4194
  br label %bb.h

.body.i:                                          ; preds = %bb.p, %bb.o, %bb.i, %bb.d
  %.pn3.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.q, %bb.i ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.o) #19
          to label %.body12.i unwind label %bb.v, !noalias !4198

.body12.i:                                        ; preds = %bb.u, %bb.s, %.body.i
  %.pn5.pn.i = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %.pn3.i, %.body.i ], [ %i.ak, %bb.u ]
  store i8 2, ptr %i.d, align 8, !noalias !4194
  resume { ptr, i32 } %.pn5.pn.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !4194
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !4194
  unreachable

bb.h:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4194
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i, !noalias !4198

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4194
  %.val.i = load ptr, ptr %i.p, align 8, !noalias !4194
  %i.r = getelementptr i8, ptr %1, i64 112
  %.val8.i = load ptr, ptr %i.r, align 8, !noalias !4194, !nonnull !6, !align !30, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val8.i) #19
          to label %.body.i unwind label %bb.v, !noalias !4198

bb.j:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.a, align 8, !range !4193, !noalias !4194, !noundef !6 ; 3 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775789
  br i1 %i.t, label %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread, label %bb.k

_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4194
  store i8 3, ptr %i.d, align 8, !noalias !4194
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i)
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %.sroa.325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i, i64 64, i1 false), !noalias !4194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4194
  %.val9.i = load ptr, ptr %i.p, align 8, !noalias !4194 ; 5 uses
  %i.u = getelementptr i8, ptr %1, i64 112
  %.val10.i = load ptr, ptr %i.u, align 8, !noalias !4194, !nonnull !6, !align !30, !noundef !6 ; 5 uses
  %i.v = load ptr, ptr %.val10.i, align 8, !invariant.load !6, !noalias !4198 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  invoke void %i.v(ptr noundef nonnull %.val9.i)
          to label %bb.m unwind label %bb.o, !noalias !4198

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !185, !invariant.load !6, !noalias !4198 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !186, !invariant.load !6, !noalias !4198
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #20, !noalias !4198
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !185, !invariant.load !6, !noalias !4198 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !186, !invariant.load !6, !noalias !4198
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #20, !noalias !4198
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.n, %bb.m
  %.not.i11.i = icmp eq i64 %i.s, -9223372036854775790
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  br i1 %.not.i11.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !4194
  br label %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread5

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i, i64 64, i1 false), !noalias !4194
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.s, !noalias !4198

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body12.i unwind label %bb.t, !noalias !4198

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !4198
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread5 unwind label %bb.u, !noalias !4198

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

bb.v:                                             ; preds = %bb.i, %.body.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !4198
  unreachable

_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread5: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i, i64 64, i1 false), !noalias !4199
  store i8 1, ptr %i.d, align 8, !noalias !4194
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i)
  br label %bb.x

_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit: ; preds = %bb.b
  %.sroa.818.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i, i64 40, i1 false), !noalias !4194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, i64 24, i1 false), !noalias !4194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i, i64 64, i1 false), !noalias !4199
  store i8 1, ptr %i.d, align 8, !noalias !4194
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i)
  %i.am = icmp eq i64 %.sroa.017.0.copyload.i, -9223372036854775789
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread, %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread5, %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit
  %.sroa.028.0.i7 = phi i64 [ %i.s, %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit.thread5 ], [ %.sroa.017.0.copyload.i, %_RNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00Ba_.exit ]
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 %.sroa.028.0.i7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtNtB21_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 31) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB27_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !211, !noundef !6
  %1 = trunc nuw i64 %i.b to i1
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 31) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1q_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %i.b, align 8, !range !4035, !noundef !6 ; 2 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775788
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.v = add i64 %i.m, 1
  store i64 %i.v, ptr %i.n, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.w = phi i64 [ %i.r, %.lr.ph ], [ %i.aa, %bb.i ] ; 2 uses
  %.not = icmp eq i64 %i.w, -9223372036854775789
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.w, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %i.x = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !noundef !6
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.aa = load i64, ptr %i.b, align 8, !range !4035, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -9223372036854775788
  br i1 %i.ab, label %._crit_edge, label %bb.f

bb.j:                                             ; preds = %bb.g
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h, %bb.j, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !236, !noundef !6
  %.not = icmp eq i8 %i.b, 11
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !237, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775795
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !19, !noundef !6
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCskQDtHcQtBkN_5tokio4sync6rwlockINtB5_6RwLockINtNtB7_9once_cell8OnceCellTNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeEEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 6)
  %i.e = call noundef i8 @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8 %0, i64 noundef 1)
  switch i8 %i.e, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !prof !4200

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @195, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 17 to ptr), ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_8
