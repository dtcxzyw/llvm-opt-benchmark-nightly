Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.09?download=true
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
  %.sroa.01 = alloca [24 x i8], align 8           ; 7 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13 unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 8
  store ptr %1, ptr %i.e, align 8, !alias.scope !531, !noalias !536
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 16
  store i64 %2, ptr %i.f, align 8, !alias.scope !531, !noalias !536
  store i64 -9223372036854775808, ptr %.sroa.01, align 8, !alias.scope !531, !noalias !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !539
  %i.g = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 48, i64 noundef 8) #22, !noalias !539 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.h, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %.sroa.01) #30
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.g, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @17, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %.thread, %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEBK_.exit13: ; preds = %.thread, %bb.c
  %.pn.pn17 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.d, %.thread ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtNtBb_11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.01 = alloca [24 x i8], align 8           ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
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
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13

.thread:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13, label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 8
  store ptr %1, ptr %i.g, align 8, !alias.scope !542, !noalias !547
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 16
  store i64 %2, ptr %i.h, align 8, !alias.scope !542, !noalias !547
  store i64 -9223372036854775808, ptr %.sroa.01, align 8, !alias.scope !542, !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.i = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 8, i64 noundef 8) #22 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.j, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq ptr %3, null
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !550
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.h, %bb.f, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %.sroa.01) #30
          to label %bb.c unwind label %bb.k

bb.j:                                             ; preds = %bb.d
  store ptr %3, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @21, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.k:                                             ; preds = %bb.m, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.l:                                             ; preds = %.thread
  %i.q = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !561
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit13: ; preds = %bb.l, %.thread, %bb.m, %bb.c
  %.pn.pn17 = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.e, %bb.m ], [ %i.e, %.thread ], [ %i.e, %bb.l ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtNtBb_3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(776) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [776 x i8], align 8               ; 4 uses
  %.sroa.01 = alloca [24 x i8], align 8           ; 7 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 40, i64 noundef 8) #22 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.body
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #22
  br label %bb.j

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %3) #30
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 8
  store ptr %1, ptr %i.e, align 8, !alias.scope !572, !noalias !577
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 16
  store i64 %2, ptr %i.f, align 8, !alias.scope !572, !noalias !577
  store i64 -9223372036854775808, ptr %.sroa.01, align 8, !alias.scope !572, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.a, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !580
  %i.g = tail call noundef align 8 dereferenceable_or_null(776) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 776, i64 noundef 8) #22, !noalias !580 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.h, !prof !60

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 776) #34
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config3sts11assume_role18AssumeRoleProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.a) #30
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %.sroa.01) #30
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.g, ptr noundef nonnull align 8 dereferenceable(776) %3, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.g, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @22, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %.thread, %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.c, %.thread
  %.pn.pn14 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.d, %.thread ]
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
begin_hunk_1_@_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !3906
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3908, !noalias !3911, !nonnull !7, !noundef !7
  %.promoted.i3 = load ptr, ptr %i.i, align 8, !alias.scope !3908, !noalias !3911
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.l = phi ptr [ %i.m, %bb.g ], [ %.promoted.i3, %bb.e ] ; 3 uses
  %.not.not.not.i4.not.not.not.not.not = icmp ne ptr %i.l, %i.k ; 2 uses
  br i1 %.not.not.not.i4.not.not.not.not.not, label %bb.g, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !3908, !noalias !3911
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.l), !noalias !3903
  br i1 %i.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5, label %bb.f

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ %.not.not.not.i4.not.not.not.not.not, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1k_3any5checkRBJ_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2G_7BufListBJ_ENtNtNtBN_3buf8buf_impl3Buf13has_remaining0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9rVkZwOUgsI_13deltalake_aws.exit5 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCsbvkFyIu7lgC_4core4hash18BuildHasherDefaultNtNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag10typeid_map8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !noalias !3912
  ret i64 %.val.i
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_CsbpcW0ghvIYZ_8fastrandNtB8_3Rng3u32INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangemEE0Cs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !7, !nonnull !7
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.416.i = alloca [64 x i8], align 8        ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 16               ; 9 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 9 uses
  %i.ap = alloca [72 x i8], align 8               ; 7 uses
  %i.aq = alloca [72 x i8], align 8               ; 20 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 7 uses
  %i.ar = alloca [72 x i8], align 8               ; 7 uses
  %i.as = alloca [128 x i8], align 8              ; 3 uses
  %3 = alloca [88 x i8], align 16                 ; 14 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [48 x i8], align 8               ; 10 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [40 x i8], align 8               ; 8 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [48 x i8], align 8               ; 10 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 2, !range !1201, !noundef !7
  switch i8 %i.bd, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %4
    i8 4, label %5
  ]

default.unreachable68:                            ; preds = %bb.ai, %bb.a
  unreachable

4:                                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.z

5:                                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i8 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  store i8 0, ptr %i.bf, align 1
  %i.bg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bh = icmp samesign ult i64 %i.bg, 3
  br i1 %i.bh, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 3
  br i1 %i.bj, label %bb.f, label %bb.d, !prof !3915

bb.d:                                             ; preds = %bb.c
  %i.bk = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE) #31
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.bi, %bb.c ], [ %i.bk, %bb.d ] ; 2 uses
  %i.bm = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.bm, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  %i.bo = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, i8 noundef %.sroa.0.0.i)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  br i1 %i.bo, label %bb.q, label %bb.l

bb.j:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.w

bb.k:                                             ; preds = %bb.l, %bb.o
  store i8 1, ptr %i.be, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.t

bb.l:                                             ; preds = %bb.b, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.br = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  store i64 2, ptr %i.ax, align 8, !alias.scope !3916, !noalias !3919
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !3916, !noalias !3919
  %i.bt = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.bt, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.bv, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bv, ptr %i.at, align 8
  store ptr %i.au, ptr %i.av, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @64, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.bw, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr @57, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.at, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr @65, ptr %i.cb, align 8
  store i64 1, ptr %i.aw, align 8, !alias.scope !3921, !noalias !3924
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3921, !noalias !3924
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3921, !noalias !3924
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bu, ptr %i.cc, align 8, !alias.scope !3921, !noalias !3924
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ax) #30
          to label %bb.j unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.k

bb.p:                                             ; preds = %bb.ga, %bb.fz, %.body35, %bb.aa, %bb.n
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.ci, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ci, ptr %i.ay, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @64, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.cj, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @57, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.ay, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr @65, ptr %i.co, align 8
  store i64 1, ptr %i.bb, align 8, !alias.scope !3927, !noalias !3930
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !3927, !noalias !3930
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !3927, !noalias !3930
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.ch, ptr %i.cp, align 8, !alias.scope !3927, !noalias !3930
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  store i8 1, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %i.bf, align 1
  %i.cs = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.cs, ptr %3, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !7, !align !154, !noundef !7
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cx, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 0, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val26 = load i64, ptr %i.da, align 8, !range !6, !noundef !7
  %.not.i27 = icmp eq i64 %.val26, 2
  store i8 0, ptr %i.bf, align 1
  br i1 %.not.i27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.db, ptr noundef nonnull align 16 dereferenceable(88) %3, i64 88, i1 false)
  store i8 0, ptr %i.be, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.da, i64 40, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dc, ptr noundef nonnull align 8 dereferenceable(128) %i.as, i64 128, i1 false)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dd, ptr noundef nonnull align 16 dereferenceable(88) %3, i64 88, i1 false)
  br label %bb.ai

.body:                                            ; preds = %.body35, %bb.aa, %bb.ae, %bb.ah
  %.pn19.pn = phi { ptr, i32 } [ %i.do, %bb.ah ], [ %i.dm, %bb.ae ], [ %i.dj, %bb.aa ], [ %.pn17, %.body35 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !range !235, !noundef !7
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.fz, label %bb.fy

bb.w:                                             ; preds = %bb.e, %bb.r, %bb.j, %bb.h, %bb.ga, %bb.fy, %bb.fx
  %.pn22 = phi { ptr, i32 } [ %i.pa, %bb.fx ], [ %.pn19.pn, %bb.ga ], [ %.pn19.pn, %bb.fy ], [ %i.cr, %bb.r ], [ %i.bl, %bb.e ], [ %i.ce, %bb.j ], [ %i.bp, %bb.h ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.dh, align 8
  store i8 2, ptr %i.bc, align 2
  resume { ptr, i32 } %.pn22

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
  unreachable

bb.z:                                             ; preds = %4, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  invoke void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ar, ptr noundef nonnull align 8 %i.di, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.di) #30
          to label %.body unwind label %bb.p

bb.ab:                                            ; preds = %bb.z
  %i.dk = load i64, ptr %i.ar, align 8, !range !2472, !noundef !7 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, -9223372036854775789
  br i1 %i.dl, label %bb.ac, label %bb.ad

common.ret:                                       ; preds = %bb.fv, %bb.ft, %bb.ac
  %.sink = phi i8 [ 1, %bb.fv ], [ 4, %bb.ft ], [ 3, %bb.ac ]
  store i8 %.sink, ptr %i.bc, align 2
  ret void

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.di)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.di) #30
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.di)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.af, %bb.fu
  %.sroa.044.0 = phi i64 [ %.sroa.013.0245.i51, %bb.fu ], [ %i.dk, %bb.af ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 0, ptr %i.dp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8, !range !235, !noundef !7
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.fw, label %bb.fv

bb.ai:                                            ; preds = %5, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.dv = load i8, ptr %i.du, align 8, !range !593, !noalias !3933, !noundef !7
  switch i8 %i.dv, label %default.unreachable68 [
    i8 0, label %bb.aj
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dx = load <2 x ptr>, ptr %i.dt, align 8, !noalias !3933
  store <2 x ptr> %i.dx, ptr %i.dw, align 8, !noalias !3933
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !3933, !noundef !7 ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !noalias !3933
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1, ptr %i.eb, align 8, !noalias !3933
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.ap

bb.al:                                            ; preds = %bb.dg, %bb.aj
  %i.ec = phi i64 [ %.pre259.i, %bb.dg ], [ %i.ea, %bb.aj ]
  %i.ed = phi i64 [ %.pre.i, %bb.dg ], [ 1, %bb.aj ]
  %.not.i31 = icmp ugt i64 %i.ed, %i.ec
  br i1 %.not.i31, label %bb.dk, label %bb.di

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc33 unwind label %bb.fr

.noexc33:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc34 unwind label %bb.fr

.noexc34:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val100.i = load ptr, ptr %i.eg, align 8, !noalias !3933
  %i.ef = getelementptr i8, ptr %1, i64 152
  %.val101.i = load ptr, ptr %i.ef, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val100.i, ptr nonnull %.val101.i) #30
          to label %.body.i unwind label %bb.dq, !noalias !3937

bb.ap:                                            ; preds = %bb.do, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3933
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao, !noalias !3937

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load i64, ptr %i.ap, align 8, !range !2472, !noalias !3933, !noundef !7
  %i.ei = icmp eq i64 %i.eh, -9223372036854775789
  br i1 %i.ei, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  store i8 3, ptr %i.du, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ft

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val98.i = load ptr, ptr %i.eg, align 8, !noalias !3933 ; 5 uses
  %i.ej = getelementptr i8, ptr %1, i64 152
  %.val99.i = load ptr, ptr %i.ej, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.ek = load ptr, ptr %.val99.i, align 8, !invariant.load !7, !noalias !3937 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  invoke void %i.ek(ptr noundef nonnull %.val98.i)
          to label %bb.at unwind label %bb.av, !noalias !3937

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.em, i64 noundef range(i64 1, 536870913) %i.ep) #22, !noalias !3937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.av:                                            ; preds = %bb.as
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.es = load i64, ptr %i.er, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.es, i64 noundef range(i64 1, 536870913) %i.ev) #22, !noalias !3937
  br label %.body.i

.body.i:                                          ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.eo, %bb.dn, %bb.bz, %bb.ax, %bb.aw, %bb.av, %bb.ao
  %.pn74.i = phi { ptr, i32 } [ %i.le, %bb.dn ], [ %.pn70.pn.pn.i, %bb.fp ], [ %.pn70.pn.pn.i, %bb.fq ], [ %.pn70.pn.pn.i, %bb.bz ], [ %i.ee, %bb.ao ], [ %i.ew, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.av ], [ %.pn60.pn.pn.i, %bb.fo ], [ %.pn31.pn.pn.i, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.dm

bb.ax:                                            ; preds = %bb.fm, %bb.dh
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.au, %bb.at
  %i.ex = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 4 uses
  %.not24.i = icmp eq i64 %i.ex, -9223372036854775790
  br i1 %.not24.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ey = icmp ne i64 %i.ex, -9223372036854775800
  call void @llvm.assume(i1 %i.ey)
  %i.ez = add nsw i64 %i.ex, 9223372036854775802
  %i.fa = icmp ugt i64 %i.ex, -9223372036854775803
  %i.fb = select i1 %i.fa, i64 %i.ez, i64 2       ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 10 uses
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !3933, !noundef !7
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !3933, !noundef !7
  %i.fh = icmp eq i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.ep, label %bb.ca

bb.ba:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.fi = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.fj = icmp samesign ult i64 %i.fi, 2
  br i1 %i.fj, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.fl = icmp ult i8 %i.fk, 3
  br i1 %i.fl, label %bb.be, label %bb.bc, !prof !3915

bb.bc:                                            ; preds = %bb.bb
  %i.fm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE) #31
          to label %bb.be unwind label %bb.bd, !noalias !3937

bb.bd:                                            ; preds = %bb.bc
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.0.0.i.i = phi i8 [ %i.fk, %bb.bb ], [ %i.fm, %bb.bc ] ; 2 uses
  %i.fo = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.fo, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bg:                                            ; preds = %bb.be
  %i.fq = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.fr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fq, i8 noundef %.sroa.0.0.i.i)
          to label %bb.bh unwind label %bb.bf, !noalias !3937

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fr, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.ba
  %i.fs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not255.i = icmp eq i8 %i.fs, 0
  br i1 %.not255.i, label %bb.bj, label %bb.by

end_hunk_1
begin_hunk_2_@_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.ez:                                            ; preds = %bb.fa
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fa:                                            ; preds = %bb.ey
  %i.nq = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 32
  %.val122.i = load ptr, ptr %i.nr, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.ns = getelementptr i8, ptr %i.nq, i64 40
  %.val123.i = load i64, ptr %i.ns, align 8, !noalias !3937, !noundef !7
  store i64 2, ptr %i.ac, align 8, !alias.scope !3976, !noalias !3933
  %.sroa.6205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val122.i, ptr %.sroa.6205.0..sroa_idx.i, align 8, !alias.scope !3976, !noalias !3933
  %.sroa.8206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val123.i, ptr %.sroa.8206.0..sroa_idx.i, align 8, !alias.scope !3976, !noalias !3933
  %i.nt = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fb unwind label %bb.ez, !noalias !3937 ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.nu = extractvalue { ptr, ptr } %i.nt, 0      ; 2 uses
  %i.nv = extractvalue { ptr, ptr } %i.nt, 1      ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.ny = invoke noundef zeroext i1 %i.nx(ptr noundef %i.nu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.fd unwind label %bb.fc, !noalias !3937

bb.fc:                                            ; preds = %bb.fb
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fd:                                            ; preds = %bb.fb
  br i1 %i.ny, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3933
  %i.oa = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3933
  store ptr @63, ptr %i.z, align 8, !noalias !3933
  %i.oc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.oc, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3933
  store ptr %i.ah, ptr %i.y, align 8, !noalias !3933
  store ptr %i.z, ptr %i.aa, align 8, !noalias !3933
  %i.od = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @56, ptr %i.od, align 8, !noalias !3933
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.fd, ptr %i.oe, align 8, !noalias !3933
  %i.of = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @57, ptr %i.of, align 8, !noalias !3933
  %i.og = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.y, ptr %i.og, align 8, !noalias !3933
  %i.oh = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @62, ptr %i.oh, align 8, !noalias !3933
  store i64 1, ptr %i.ab, align 8, !alias.scope !3980, !noalias !3983
  %.sroa.4.0..sroa_idx.i184.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i184.i, align 8, !alias.scope !3980, !noalias !3983
  %.sroa.5.0..sroa_idx.i185.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i185.i, align 8, !alias.scope !3980, !noalias !3983
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ob, ptr %i.oi, align 8, !alias.scope !3980, !noalias !3983
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nq, ptr noundef nonnull %i.nu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.fg unwind label %bb.ff, !noalias !3937

bb.ff:                                            ; preds = %bb.fe
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3933
  br label %bb.fn

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3933
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fk, %bb.fg, %bb.fd, %bb.ey, %bb.ex
  %.sroa.019.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !3933
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.420.0..sroa_idx.i, i64 64, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3933
  br label %bb.fs

bb.fi:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3933
  %i.ok = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3933
  store ptr @63, ptr %i.ae, align 8, !noalias !3933
  %i.om = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.om, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3933
  store ptr %i.ah, ptr %i.ad, align 8, !noalias !3933
  store ptr %i.ae, ptr %i.af, align 8, !noalias !3933
  %i.on = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @56, ptr %i.on, align 8, !noalias !3933
  %i.oo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.fd, ptr %i.oo, align 8, !noalias !3933
  %i.op = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @57, ptr %i.op, align 8, !noalias !3933
  %i.oq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.oq, align 8, !noalias !3933
  %i.or = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @62, ptr %i.or, align 8, !noalias !3933
  store i64 1, ptr %i.ag, align 8, !noalias !3933
  %.sroa.7198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.7198.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.8199.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.9200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ol, ptr %.sroa.9200.0..sroa_idx.i, align 8, !noalias !3933
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.fk unwind label %bb.fj, !noalias !3937

bb.fj:                                            ; preds = %bb.fi
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3933
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3933
  br label %bb.fh

bb.fl:                                            ; preds = %bb.by
  %i.ot = icmp ne i64 %i.ho, -9223372036854775800
  call void @llvm.assume(i1 %i.ot)
  %i.ou = icmp eq i64 %i.ho, -9223372036854775802
  br i1 %i.ou, label %.thread49, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %.thread49 unwind label %bb.ax, !noalias !3937

bb.fn:                                            ; preds = %bb.fj, %bb.ff, %bb.fc, %bb.ez, %bb.eu, %bb.es
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %i.os, %bb.fj ], [ %i.np, %bb.ez ], [ %i.ng, %bb.es ], [ %i.oj, %bb.ff ], [ %i.nz, %bb.fc ], [ %i.ni, %bb.eu ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #30
          to label %bb.fo unwind label %bb.dq, !noalias !3937

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3933
  br label %.body.i

bb.fp:                                            ; preds = %bb.bz
  %i.ov = icmp ne i64 %i.hp, -9223372036854775800
  call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp eq i64 %i.hp, -9223372036854775802
  br i1 %i.ow, label %.body.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq) #30
          to label %.body.i unwind label %bb.dq, !noalias !3937

bb.fr:                                            ; preds = %bb.an, %bb.am
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.thread49:                                        ; preds = %bb.by, %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, i64 64, i1 false), !noalias !3986
  store i8 1, ptr %i.du, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.fu

bb.fs:                                            ; preds = %bb.ej, %bb.fh
  %.sroa.013.0245.i = phi i64 [ %.sroa.021.0.copyload.i, %bb.ej ], [ %.sroa.019.0.copyload.i, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, i64 64, i1 false), !noalias !3986
  store i8 1, ptr %i.du, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.oy = icmp eq i64 %.sroa.013.0245.i, -9223372036854775789
  br i1 %i.oy, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.thread, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %common.ret

bb.fu:                                            ; preds = %.thread49, %bb.fs
  %.sroa.013.0245.i51 = phi i64 [ -9223372036854775790, %.thread49 ], [ %.sroa.013.0245.i, %bb.fs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.fv:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 0, ptr %i.dq, align 8
  store i64 %.sroa.044.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %common.ret

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.oz)
          to label %bb.fv unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.body35:                                          ; preds = %bb.fr, %bb.dm
  %.pn17 = phi { ptr, i32 } [ %.pn74.pn.i, %bb.dm ], [ %i.ox, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dt) #30
          to label %.body unwind label %bb.p

bb.fy:                                            ; preds = %bb.fz, %.body
  store i8 0, ptr %i.de, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pc = load i8, ptr %i.pb, align 8, !range !235, !noundef !7
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.ga, label %bb.w

bb.fz:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %3) #30
          to label %bb.fy unwind label %bb.p

bb.ga:                                            ; preds = %bb.fy
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.pe) #30
          to label %bb.w unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1c_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0INtNtNtB2V_3ops8function6FnOnceuE9call_once6vtableB1c_(ptr noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9968 x i8], align 8              ; 7 uses
  %i.b = alloca [9968 x i8], align 8              ; 6 uses
  %.sroa.536.i = alloca [9952 x i8], align 8      ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.536.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.536.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.536.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9936) %.sroa.536.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(9936) %i.d, i64 9936, i1 false)
  %.sroa.034.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !3987 ; 2 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.435.0.copyload.i = load ptr, ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !3987 ; 2 uses
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3987
  store ptr %.sroa.034.0.copyload.i, ptr %i.b, align 8, !noalias !3987
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.435.0.copyload.i, ptr %.sroa.7.0..sroa_idx20.i, align 8, !noalias !3987
  %.sroa.9.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.9.0..sroa_idx24.i, ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.536.i, i64 9952, i1 false), !noalias !3987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3990
  store ptr %.sroa.034.0.copyload.i, ptr %i.a, align 8, !noalias !3987
  %.sroa.7.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.435.0.copyload.i, ptr %.sroa.7.0..sroa_idx22.i, align 8, !noalias !3987
  %.sroa.9.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.9.0..sroa_idx25.i, ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.536.i, i64 9952, i1 false), !noalias !3987
  invoke void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB24_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_000uEB24_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(9968) %i.b)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i unwind label %bb.b, !noalias !3987

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.f)
          to label %.body15.i unwind label %bb.c, !noalias !3990

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3990
  unreachable

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1g_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEB1g_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(9936) %i.h)
          to label %bb.g unwind label %bb.d, !noalias !3987

bb.d:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body15.i

.body15.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.e, %bb.b ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body16.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.f unwind label %bb.e, !noalias !3987 ; 2 uses

bb.e:                                             ; preds = %.body15.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32, !noalias !3987
  unreachable

bb.f:                                             ; preds = %.body15.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3987
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ undef, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = phi ptr [ null, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3987, !nonnull !7, !noundef !7 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  %i.t = load i64, ptr %i.s, align 8, !range !18, !alias.scope !3993, !noalias !3987, !noundef !7
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3993, !noalias !3987, !noundef !7 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !3993, !noalias !3987 ; 6 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.y = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7, !noalias !3996 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !3996

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !450, !invariant.load !7, !noalias !3996 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !589, !invariant.load !7, !noalias !3996
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #22, !noalias !3996
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !450, !invariant.load !7, !noalias !3996 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !589, !invariant.load !7, !noalias !3996
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #22, !noalias !3996
  br label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  store i64 1, ptr %i.s, align 8, !noalias !3987
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !3987
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx5.i, align 8, !noalias !3987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3987
  store ptr %i.r, ptr %i.c, align 8, !noalias !3987
  %i.ak = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !3997
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB17_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0B17_.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31, !noalias !3987
  br label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB17_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0B17_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.ae

bb.q:                                             ; preds = %bb.o, %bb.n
  store i64 1, ptr %i.s, align 8, !noalias !3987
  store ptr %i.p, ptr %i.v, align 8, !noalias !3987
  store ptr %i.o, ptr %i.w, align 8, !noalias !3987
  %i.am = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !4002
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECs9rVkZwOUgsI_13deltalake_aws.exit14.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB17_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0B17_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.536.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB31_6future6future6Futurep6OutputINtNtB31_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB31_6marker4SendEL_EEEEE7upgradeCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCsbvkFyIu7lgC_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b
end_hunk_2
