inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain7or_elseReNtNtNtBb_4imds11credentials23ImdsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !alias.scope !499, !noalias !504
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.e, align 8, !alias.scope !499, !noalias !504
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !499, !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !507
  %i.f = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 152, i64 noundef 8) #22, !noalias !507 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4imds11credentials23ImdsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #30
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body3 unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @19, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !510, !noalias !513, !noundef !7 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !range !450, !alias.scope !510, !noalias !513, !noundef !7
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE8grow_oneCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.g, !noalias !513

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #30
          to label %.body3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !510, !noalias !513, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.u = add i64 %i.m, 1
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !510, !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %.body3, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body3:                                           ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %.body ], [ %i.p, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.body3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain7or_elseReNtNtNtBb_7profile11credentials30ProfileFileCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !alias.scope !515, !noalias !520
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.e, align 8, !alias.scope !515, !noalias !520
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !515, !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !523
  %i.f = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 96, i64 noundef 8) #22, !noalias !523 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials30ProfileFileCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #30
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body3 unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @20, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !526, !noalias !529, !noundef !7 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !range !450, !alias.scope !526, !noalias !529, !noundef !7
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE8grow_oneCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.g, !noalias !529

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #30
          to label %.body3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !526, !noalias !529, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.u = add i64 %i.m, 1
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !526, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %.body3, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body3:                                           ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %.body ], [ %i.p, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.body3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13

.thread:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13 unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.f, align 8, !alias.scope !531, !noalias !536
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.g, align 8, !alias.scope !531, !noalias !536
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !531, !noalias !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !539
  %i.h = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 48, i64 noundef 8) #22, !noalias !539 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @17, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %.thread, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13: ; preds = %.thread, %bb.c
  %.pn.pn17 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.e, %.thread ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtNtBb_11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.d, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13

.thread:                                          ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = icmp eq ptr %3, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13, label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.h, align 8, !alias.scope !542, !noalias !547
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.i, align 8, !alias.scope !542, !noalias !547
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !542, !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.j = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 8, i64 noundef 8) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.j, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq ptr %3, null
  br i1 %i.m, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !550
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.h, %bb.f, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.c unwind label %bb.k

bb.j:                                             ; preds = %bb.d
  store ptr %3, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @21, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.k:                                             ; preds = %bb.m, %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.l:                                             ; preds = %.thread
  %i.r = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !561
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13: ; preds = %bb.l, %.thread, %bb.m, %bb.c
  %.pn.pn17 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.f, %bb.m ], [ %i.f, %.thread ], [ %i.f, %bb.l ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtNtBb_3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(776) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [776 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #22
  br label %bb.j

.thread:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %3) #30
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.f, align 8, !alias.scope !572, !noalias !577
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.g, align 8, !alias.scope !572, !noalias !577
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !572, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.a, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !580
  %i.h = tail call noundef align 8 dereferenceable_or_null(776) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 776, i64 noundef 8) #22, !noalias !580 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 776) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.a) #30
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.h, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @22, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %.thread, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.c, %.thread
  %.pn.pn14 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.e, %.thread ]
  resume { ptr, i32 } %.pn.pn14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !583, !alias.scope !584, !noundef !7 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 5
  %i.c = zext nneg i8 %i.a to i64
  %i.d = add nsw i64 %i.c, -5
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !584, !nonnull !7, !noundef !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !584
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !584, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !584, !noundef !7
  br label %_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit

_RNvXs6_NtCs2pqxYH9ZEk8_3std4pathNtB5_9ComponentINtNtCsbvkFyIu7lgC_4core7convert5AsRefNtB5_4PathE6as_ref.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.6.0.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.c ], [ %i.i, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ %i.e, %bb.a ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %bb.c ], [ %i.g, %bb.f ], [ @71, %bb.d ], [ @72, %bb.e ], [ @70, %bb.a ]
  tail call void @_RNvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBuf5__push(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.6.0.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs4readNtNtB4_4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !7
  invoke void @_RNvNvNtCs2pqxYH9ZEk8_3std2fs4read5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs4readRNtNtB4_4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCs2pqxYH9ZEk8_3std2fs4read5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !589, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !450, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !589, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !590, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !590, !noundef !7 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !590 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !590 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
