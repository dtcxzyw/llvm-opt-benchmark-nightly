inline.NumInlined: 819
inline.NumDeleted: 323
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.j ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.02.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.02.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.02.i.i
  %i.g = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !499 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.j, label %.body.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -64
  %.val3.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !508, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !509
  br label %.body.i.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !499 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -64
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !508, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !512
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.n) #30
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.p)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -120
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !521, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !525, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !525, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !526
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !531
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.y), !noalias !525
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 48                        ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !521, !nonnull !3, !noundef !3
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !521
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !542, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !546, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !546, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !547
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !552
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !546
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !542, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !542
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !563, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !567, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !567, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !568
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !573
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !567
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !563, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !563
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !584, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !588, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !588, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !589
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.018.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.017.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.016.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.015.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.015.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.017.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.018.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !594
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.017.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.018.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.015.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [72 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !588

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !599, !noalias !588 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !608, !noalias !588, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !609
  br label %.body.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !599, !noalias !588 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !608, !noalias !588, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !612
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !588

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !588
  unreachable

bb.j:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ag), !noalias !588
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.ai = mul i64 %i.b, 72
  %i.aj = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 80                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !584, !nonnull !3, !noundef !3
  %i.as = sub i64 -80, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !584
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !621, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !625, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !625, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !626
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !631
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1920 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [120 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -120
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.y), !noalias !625
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 120
  %i.ab = icmp slt i64 %i.b, 153722867280912930
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 128                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !621, !nonnull !3, !noundef !3
  %i.ak = sub i64 -128, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !621
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !636, !noundef !3
  switch i8 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 3, label %bb.h
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b), !inline_history !637
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !638 ; 2 uses
  %i.e = icmp eq i64 %.val2.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.f, align 8, !alias.scope !643, !nonnull !3, !noundef !3
  %i.g = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !644
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !638 ; 2 uses
  %i.h = icmp eq i64 %.val.i, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !643, !nonnull !3, !noundef !3
  %i.j = mul nuw i64 %.val.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !647
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !650 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !657, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !658
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !650 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.p, align 8, !alias.scope !657, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !661
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit
}
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__select6SelectNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.c = load i64, ptr %i.b, align 8, !range !253, !alias.scope !1444, !noalias !1447, !noundef !3 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 4
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 13), !noalias !1444
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 22), !noalias !1444
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5), !noalias !1444
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 18), !noalias !1444
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1449
  store ptr %i.b, ptr %i.a, align 8, !noalias !1449
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1449
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types7__selectNtB5_6SelectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1450
  store ptr %i.b, ptr %i.a, align 8, !noalias !1450
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1450
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1454
  store ptr %i.b, ptr %i.a, align 8, !noalias !1454
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1454
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config5retry5error20RetryConfigErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.d = load i64, ptr %i.c, align 8, !range !742, !alias.scope !1458, !noalias !1461, !noundef !3 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = add i64 %i.d, -9223372036854775807
  %i.g = select i1 %i.e, i64 %i.f, i64 0
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1463
  store ptr %i.c, ptr %i.b, align 8, !noalias !1463
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1463
  br label %_RNvXs1_NtNtCsaB04DkjCm5a_10aws_config5retry5errorNtB5_20RetryConfigErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 24), !noalias !1458
  br label %_RNvXs1_NtNtCsaB04DkjCm5a_10aws_config5retry5errorNtB5_20RetryConfigErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1463
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.a, align 8, !noalias !1463
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 24, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1463
  br label %_RNvXs1_NtNtCsaB04DkjCm5a_10aws_config5retry5errorNtB5_20RetryConfigErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs1_NtNtCsaB04DkjCm5a_10aws_config5retry5errorNtB5_20RetryConfigErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4authNtB5_12ExploredListNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries11classifiers21SharedRetryClassifierNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !308, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1464
  store ptr %i.b, ptr %i.a, align 8, !noalias !1464
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1464
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6formatNtB5_19DateTimeFormatErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operationNtB5_18SerializationErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1468, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1471
  %.promoted2 = load ptr, ptr %i.a, align 8
  %.promoted5 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i, %.preheader.i
  %.promoted12.i.i7 = phi ptr [ %.promoted5, %.preheader.i ], [ %.promoted12.i.i6, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.lcssa14 = phi ptr [ %.promoted2, %.preheader.i ], [ %.lcssa13, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !1471
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !1471
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i7, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa14, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !1475
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted12.i.i6 = phi ptr [ %i.n, %._crit_edge.i.i ], [ %.promoted12.i.i7, %bb.b ]
  %.lcssa13 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa14, %bb.b ] ; 3 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1471
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %.lcssa13, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa13) ]
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1468
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.v), !noalias !1468
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !114, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #29
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.d, %bb.c, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1478, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1481
  %.promoted6 = load ptr, ptr %i.a, align 8
  %.promoted9 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %.preheader.i
  %.promoted12.i.i11 = phi ptr [ %.promoted9, %.preheader.i ], [ %.promoted12.i.i10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.lcssa18 = phi ptr [ %.promoted6, %.preheader.i ], [ %.lcssa17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !1481
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !1481
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i11, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa18, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !1485
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -1280 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted12.i.i10 = phi ptr [ %i.n, %._crit_edge.i.i ], [ %.promoted12.i.i11, %bb.b ]
  %.lcssa17 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa18, %bb.b ] ; 3 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1481
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [80 x i8], ptr %.lcssa17, i64 %i.s ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa17) ]
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1478
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v)
          to label %bb.e unwind label %bb.c, !noalias !1478, !inline_history !1488

bb.c:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1489, !noalias !1478 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.x, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 -72
  %.val3.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1498, !noalias !1478, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1499, !inline_history !1488
  br label %.body.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1489, !noalias !1478 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 -72
  %.val1.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !1498, !noalias !1478, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1502, !inline_history !1488
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i

.body.i.i:                                        ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 -56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ab) #30
          to label %bb.h unwind label %bb.g, !noalias !1478, !inline_history !1488

bb.g:                                             ; preds = %.body.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1478, !inline_history !1488
  unreachable

bb.h:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 -56
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ad), !noalias !1478, !inline_history !1488
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  %i.ae = load i64, ptr %0, align 8, !range !114, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #29
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.j, %bb.i, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE13drop_elementsCs9rVkZwOUgsI_13deltalake_aws.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !1505, !noundef !3 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !1505 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !1505
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !1505
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !1505
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !1508
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ] ; 2 uses
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1505
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !1511, !noundef !3 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !1511 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !1511
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !1511
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !1511
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !1514
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1280 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ] ; 2 uses
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1511
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [80 x i8], ptr %i.n, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsR_NtCsbvkFyIu7lgC_4core5arrayANtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionj8_NtNtB7_7default7Default7defaultCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 25), (32, 57), (64, 89), (96, 121), (128, 153), (160, 185), (192, 217), (224, 249)) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx21, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx22, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx23, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775808, ptr %i.a, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.627.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.632.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -9223372036854775808, ptr %i.c, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %.sroa.637.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %.sroa.642.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -9223372036854775808, ptr %i.e, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %.sroa.647.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 -9223372036854775808, ptr %i.f, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %.sroa.652.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9223372036854775808, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !114, !noundef !3
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1517
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1517 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1517
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1517
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = icmp ult i64 %i.d, 8
  %i.u = lshr i64 %i.f, 3
  %i.v = mul nuw nsw i64 %i.u, 7
  %.sroa.07.0.i.i = select i1 %i.t, i64 %i.d, i64 %i.v
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !1532, !noalias !1533, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.w, i64 %.pre-phi, i1 false), !noalias !1534
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1532, !noalias !1533, !noundef !3 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.aa = load <16 x i8>, ptr %i.w, align 16, !noalias !1535
  %i.ab = icmp sgt <16 x i8> %i.aa, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_1
begin_hunk_2_@_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws:bb.a
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.am, align 8, !alias.scope !1741, !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1740
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1737
  %i.bm = getelementptr inbounds i8, ptr %i.bb, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.u, !noalias !1716

bb.u:                                             ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #30
          to label %.body.i.i unwind label %bb.v, !noalias !1716

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1716
  unreachable

_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bp = ptrtoint ptr %i.bb to i64
  %i.bq = sub i64 %i.ao, %i.bp
  %i.br = sdiv exact i64 %i.bq, 120               ; 2 uses
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [120 x i8], ptr %.sroa.0.0, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1716
  %i.bv = add nsw i64 %i.br, 1
  %i.bw = icmp eq i64 %i.bc, 0
  br i1 %i.bw, label %.loopexit, label %bb.j

bb.w:                                             ; preds = %.body.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1716
  unreachable

bb.x:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.f) #30
          to label %bb.z unwind label %bb.y

.loopexit:                                        ; preds = %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1715, !noalias !1714
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1714, !noalias !1715, !noundef !3
  store i64 %i.bz, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1715, !noalias !1714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.z:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 24) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = add nuw i64 %i.g, 8
  %i.i = and i64 %i.h, -16                        ; 3 uses
  %i.j = add i64 %i.b, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1742
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1742 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1742
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1742
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.j, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.09.0 = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.sroa.5.0 = phi i64 [ %i.b, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !1747, !noalias !1750, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !1752
  %i.u = xor i64 %i.b, -1
  %i.v = getelementptr [24 x i8], ptr %i.t, i64 %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = xor i64 %.sroa.5.0, -1
  %i.x = getelementptr [24 x i8], ptr %.sroa.09.0, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = mul i64 %.sroa.5.0, 24
  %i.z = add i64 %i.y, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.v, i64 %i.z, i1 false), !noalias !1752
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !1747, !noalias !1750
  store <2 x i64> %i.ab, ptr %.sroa.8.0..sroa_idx5, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_3vec3VecBP_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1753, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1759, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1759, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1760
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.018.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1765
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !1770, !noalias !1759, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !1759

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1775, !noalias !1759 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1782, !noalias !1759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1783
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1775, !noalias !1759 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1782, !noalias !1759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1786
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #30
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !1759

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.l unwind label %bb.j, !noalias !1759

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1789, !noalias !1759 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aj, label %common.resume.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1789, !noalias !1759, !nonnull !3, !noundef !3
  %i.al = mul nuw i64 %.val2.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1759
  br label %common.resume.i.i.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1789, !noalias !1759 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1789, !noalias !1759, !nonnull !3, !noundef !3
  %i.ao = mul nuw i64 %.val.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1759
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.k, %bb.j, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ab, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.n:                                             ; preds = %.body.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1759
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.m, %bb.l
  %i.aq = icmp eq i64 %i.x, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ar = mul i64 %i.b, 48                        ; 2 uses
  %i.as = add i64 %i.ar, 48                       ; 2 uses
  %i.at = add i64 %i.b, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  tail call void @llvm.assume(i1 %i.av)
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !1753, !nonnull !3, !noundef !3
  %i.az = sub i64 -48, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1753
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1792, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1798, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1798, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1799
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1804
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -640 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -40 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !1809, !noalias !1798, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !1798

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1814, !noalias !1798 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -32
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1821, !noalias !1798, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1822
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1814, !noalias !1798 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -32
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1821, !noalias !1798, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1825
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1834, !noalias !1798, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !1835
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.l, !noalias !1798

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1842, !noalias !1798, !nonnull !3, !noundef !3
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1843
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #34, !noalias !1798
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1798
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.j, %.body.i.i.i
  resume { ptr, i32 } %i.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ap = icmp eq i64 %i.x, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aq = mul i64 %i.b, 40
  %i.ar = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = and i64 %i.aq, -16                      ; 2 uses
  %i.at = add i64 %i.as, 48                       ; 2 uses
  %i.au = add nsw i64 %i.b, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.av, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1792, !nonnull !3, !noundef !3
  %i.ba = sub i64 -48, %i.as
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1792
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1844, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1850, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1850, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1851
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1856
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -80 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !1861, !noalias !1850, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !1850

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1866, !noalias !1850 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1873, !noalias !1850, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1874
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1866, !noalias !1850 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1873, !noalias !1850, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1877
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ag) #30
          to label %bb.k unwind label %bb.j, !noalias !1850

bb.j:                                             ; preds = %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1850
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -56
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ai), !noalias !1850
  %i.aj = icmp eq i64 %i.x, 0
  br i1 %i.aj, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ak = mul i64 %i.b, 80                        ; 2 uses
  %i.al = add i64 %i.ak, 80                       ; 2 uses
  %i.am = add i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !1844, !nonnull !3, !noundef !3
  %i.as = sub i64 -80, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1844
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1880, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1886, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1886, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1887
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1892
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.y), !noalias !1886
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 48                        ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1880, !nonnull !3, !noundef !3
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1880
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1897, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1900, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1900, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1903
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.01.021 = phi ptr [ %i.g, %bb.c ], [ %.sroa.01.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.sroa.6.020 = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.sroa.103.019 = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %.sroa.82.018 = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.not10.i.i = icmp eq i16 %.sroa.82.018, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.6.020, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.sroa.01.021, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1908
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.o to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.6.1 = phi ptr [ %.sroa.6.020, %bb.d ], [ %i.q, %.lr.ph.i.i ]
  %.sroa.01.1 = phi ptr [ %.sroa.01.021, %bb.d ], [ %i.p, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i16 [ %.sroa.82.018, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [80 x i8], ptr %.sroa.01.1, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.1) ]
  %i.x = add i64 %.sroa.103.019, -1               ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !1900

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.y, align 8, !alias.scope !1913, !noalias !1900 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aa, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val3.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1920, !noalias !1900, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1921
  br label %.body

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !1913, !noalias !1900 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1920, !noalias !1900, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1924
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i

.body:                                            ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !1900, !inline_history !1927

bb.i:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1900, !inline_history !1927
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -56
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ag), !noalias !1900, !inline_history !1927
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.b
  %i.ai = mul i64 %i.b, 80                        ; 2 uses
  %i.aj = add i64 %i.ai, 80                       ; 2 uses
  %i.ak = add i64 %i.b, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !1897, !nonnull !3, !noundef !3
  %i.aq = sub i64 -80, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.k, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1928, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1934, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1934, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1935
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.018.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1940
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -896 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !1934

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1945, !noalias !1934 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -48
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1954, !noalias !1934, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1955
  br label %.body.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1945, !noalias !1934 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -48
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1954, !noalias !1934, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1958
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #30
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !1934

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !676, !alias.scope !1961, !noalias !1934, !noundef !3 ; 2 uses
  %i.ah = add nsw i8 %i.ag, -6
  %i.ai = icmp samesign ugt i8 %i.ag, 5
  %narrow.i.i.i.i = select i1 %i.ai, i8 %i.ah, i8 3
  switch i8 %narrow.i.i.i.i, label %bb.i [
    i8 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
    i8 1, label %bb.j
    i8 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  ]

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af), !noalias !1934
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.m unwind label %bb.k, !noalias !1934

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !1964, !noalias !1934 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.al, label %common.resume.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1971, !noalias !1934, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1972
  br label %common.resume.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !1964, !noalias !1934 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !1971, !noalias !1934, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1975
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.l, %bb.k, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.z, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %.body.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1934
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.n, %bb.m, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.aq = icmp eq i64 %i.x, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ar = mul i64 %i.b, 56
  %i.as = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.as)
  %i.at = and i64 %i.ar, -16                      ; 2 uses
  %i.au = add i64 %i.at, 64                       ; 2 uses
  %i.av = add nsw i64 %i.b, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = icmp ult i64 %i.aw, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ax)
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !1928, !nonnull !3, !noundef !3
  %i.bb = sub i64 -64, %i.at
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1928
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1978, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1984, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1984, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1985
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1990
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [72 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !1984

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1995, !noalias !1984 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2004, !noalias !1984, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2005
  br label %.body.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1995, !noalias !1984 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2004, !noalias !1984, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2008
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !1984

bb.i:                                             ; preds = %.body.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1984
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ag), !noalias !1984
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 72
  %i.aj = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 80                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !1978, !nonnull !3, !noundef !3
  %i.as = sub i64 -80, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1978
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2011, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2014, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2014, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2017
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.01.021 = phi ptr [ %i.g, %bb.c ], [ %.sroa.01.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.sroa.6.020 = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.sroa.103.019 = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %.sroa.82.018 = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %.not10.i.i = icmp eq i16 %.sroa.82.018, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.6.020, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.sroa.01.021, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2022
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.o to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.6.1 = phi ptr [ %.sroa.6.020, %bb.d ], [ %i.q, %.lr.ph.i.i ]
  %.sroa.01.1 = phi ptr [ %.sroa.01.021, %bb.d ], [ %i.p, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i16 [ %.sroa.82.018, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [80 x i8], ptr %.sroa.01.1, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.1) ]
  %i.x = add i64 %.sroa.103.019, -1               ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2014, !inline_history !2027

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2028, !noalias !2014 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2037, !noalias !2014, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2038, !inline_history !2027
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2028, !noalias !2014 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -72
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2037, !noalias !2014, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2041, !inline_history !2027
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !2014, !inline_history !2027

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2014, !inline_history !2027
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -56
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.ag), !noalias !2014, !inline_history !2027
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.b
  %i.ai = mul i64 %i.b, 80                        ; 2 uses
  %i.aj = add i64 %i.ai, 80                       ; 2 uses
  %i.ak = add i64 %i.b, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !2011, !nonnull !3, !noundef !3
  %i.aq = sub i64 -80, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.k, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2044, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2050, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2050, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2051
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2056
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1664 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2050

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2061, !noalias !2050 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -96
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2070, !noalias !2050, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2071
  br label %.body.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2061, !noalias !2050 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -96
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2070, !noalias !2050, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2074
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !2050

bb.i:                                             ; preds = %.body.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2050
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -80
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.ag), !noalias !2050
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 104
  %i.aj = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 112                      ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !2044, !nonnull !3, !noundef !3
  %i.as = sub i64 -112, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2044
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2077, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2083, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2083, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2084
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2089
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -2176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [136 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -136 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2083

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2094, !noalias !2083 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -128
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2103, !noalias !2083, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2104
  br label %.body.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2094, !noalias !2083 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -128
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2103, !noalias !2083, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2107
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !2083

bb.i:                                             ; preds = %.body.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2083
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -112
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.ag), !noalias !2083
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 136
  %i.aj = icmp slt i64 %i.b, 135637824071393761
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 144                      ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !2077, !nonnull !3, !noundef !3
  %i.as = sub i64 -144, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2077
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2110, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2116, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2116, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2117
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2122
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [72 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2116

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2127, !noalias !2116 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2136, !noalias !2116, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2137
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2127, !noalias !2116 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2136, !noalias !2116, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.af = mul i64 %i.b, 72
  %i.ag = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = and i64 %i.af, -16                      ; 2 uses
  %i.ai = add i64 %i.ah, 80                       ; 2 uses
  %i.aj = add nsw i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2110, !nonnull !3, !noundef !3
  %i.ap = sub i64 -80, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2110
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2143, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2149, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2149, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2150
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2155
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !2149
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2143, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2143
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2160, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2166, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2166, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2167
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2172
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !2166
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2160, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2160
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2177, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2183, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2183, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2184
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2189
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2203, !noalias !2183, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2204
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxE9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #34, !noalias !2183
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ad = mul i64 %i.b, 24
  %i.ae = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add nsw i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2177, !nonnull !3, !noundef !3
  %i.an = sub i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2177
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2205, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2211, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2211, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2212
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2217
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.1.i.i) ]
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !2211 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !2211, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2211 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2211

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2211 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2211
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2211
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2211 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2211
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2211
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2205, !nonnull !3, !noundef !3
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2205
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2222, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2228, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2228, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2229
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2234
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.1.i.i) ]
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !2228 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !2228, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2228 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2228

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2228 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2228
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2228 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2228
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2228
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2222, !nonnull !3, !noundef !3
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2222
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2239, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2245, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2245, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2246
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.017.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2251
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.017.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.018.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  %.val.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2262, !noalias !2245 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val2.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2262, !noalias !2245, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val2.i.i.i.i, align 8, !invariant.load !3, !noalias !2263 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2263

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2263 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2263
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2263
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2263 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2263
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2263
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2270, !noalias !2245, !nonnull !3, !noundef !3
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !2271
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.h:                                             ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.o, !noalias !2245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f
  %i.aq = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !2278, !noalias !2245, !nonnull !3, !noundef !3
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !2279
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i unwind label %bb.l, !noalias !2245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.l, %bb.h, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ag, %bb.h ], [ %i.ag, %.body.i.i.i.i ]
  %i.au = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2283, !noalias !2245, !noundef !3 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ax = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !2284
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.o, !noalias !2245

bb.l:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2292, !noalias !2245, !noundef !3 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i
  %i.bd = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2293
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba) #34, !noalias !2245
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.o:                                             ; preds = %bb.k, %bb.h
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2245
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i
  %i.bg = icmp eq i64 %i.x, 0
  br i1 %i.bg, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.bh = shl i64 %i.b, 6                         ; 2 uses
  %i.bi = add i64 %i.bh, 64                       ; 2 uses
  %i.bj = add i64 %i.b, 17
  %i.bk = add i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bo = load ptr, ptr %0, align 8, !alias.scope !2239, !nonnull !3, !noundef !3
  %i.bp = sub nuw nsw i64 -64, %i.bh
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2239
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2298, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2304, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2304, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2305
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.018.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2310
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !2315, !alias.scope !2316, !noalias !2304, !noundef !3
  %i.aa = icmp slt i64 %i.z, -9223372036854775801
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !2304

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2321, !noalias !2304 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2330, !noalias !2304, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2331
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2321, !noalias !2304 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2330, !noalias !2304, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2334
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #30
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !2304

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !114, !alias.scope !2337, !noalias !2304, !noundef !3
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.m unwind label %bb.k, !noalias !2304

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !2342, !noalias !2304 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i.i1.i.i.i, 0
  br i1 %i.al, label %common.resume.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i2.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !2349, !noalias !2304, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i2.i.i.i, i64 noundef %.val2.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2350
  br label %common.resume.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i4.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !2342, !noalias !2304 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i4.i.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i5.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2349, !noalias !2304, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i5.i.i.i, i64 noundef %.val.i.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2353
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.l, %bb.k, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ab, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %.body.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2304
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.aq = icmp eq i64 %i.x, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ar = mul i64 %i.b, 48                        ; 2 uses
  %i.as = add i64 %i.ar, 48                       ; 2 uses
  %i.at = add i64 %i.b, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  tail call void @llvm.assume(i1 %i.av)
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !2298, !nonnull !3, !noundef !3
  %i.az = sub i64 -48, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2298
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBT_18runtime_components7TrackedNtBR_16SharedAuthSchemeEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2356, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtB1f_16SharedAuthSchemeEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2362, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtB1c_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2362, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2363
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtBX_16SharedAuthSchemeEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2368
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -896 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtBX_16SharedAuthSchemeEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtBX_16SharedAuthSchemeEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -56 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !2373, !noalias !2362, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtBX_16SharedAuthSchemeEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !2362

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2380, !noalias !2362 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -48
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2387, !noalias !2362, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2388
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2380, !noalias !2362 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -48
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2387, !noalias !2362, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2391
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2406, !noalias !2362, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2407
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_4auth16SharedAuthSchemeEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth10AuthSchemeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_4auth16SharedAuthSchemeEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.l, !noalias !2362

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtBX_16SharedAuthSchemeEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2420, !noalias !2362, !nonnull !3, !noundef !3
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2421
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth10AuthSchemeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #34, !noalias !2362
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2362
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_4auth16SharedAuthSchemeEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.j, %.body.i.i.i
  resume { ptr, i32 } %i.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ap = icmp eq i64 %i.x, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtB1c_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtB1c_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtBJ_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aq = mul i64 %i.b, 56
  %i.ar = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = and i64 %i.aq, -16                      ; 2 uses
  %i.at = add i64 %i.as, 64                       ; 2 uses
  %i.au = add nsw i64 %i.b, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.av, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtB1f_16SharedAuthSchemeEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtB1c_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.az = load ptr, ptr %0, align 8, !alias.scope !2356, !nonnull !3, !noundef !3
  %i.ba = sub i64 -64, %i.as
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2356
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtB1f_16SharedAuthSchemeEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtB1f_16SharedAuthSchemeEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtB1c_16SharedAuthSchemeEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBT_18runtime_components7TrackedNtNtBT_8identity22SharedIdentityResolverEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2422, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtNtB1h_8identity22SharedIdentityResolverEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2428, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2428, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2429
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtNtBZ_8identity22SharedIdentityResolverEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2434
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtNtBZ_8identity22SharedIdentityResolverEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtNtBZ_8identity22SharedIdentityResolverEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -64 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !2439, !noalias !2428, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtNtBZ_8identity22SharedIdentityResolverEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !2428

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2446, !noalias !2428 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -56
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2453, !noalias !2428, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2454
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2446, !noalias !2428 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -56
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2453, !noalias !2428, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2457
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2472, !noalias !2428, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2473
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.l, !noalias !2428

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBZ_18runtime_components7TrackedNtNtBZ_8identity22SharedIdentityResolverEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2486, !noalias !2428, !nonnull !3, !noundef !3
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2487
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #34, !noalias !2428
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2428
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.j, %.body.i.i.i
  resume { ptr, i32 } %i.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ap = icmp eq i64 %i.x, 0
  br i1 %i.ap, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBL_18runtime_components7TrackedNtNtBL_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aq = shl i64 %i.b, 6                         ; 2 uses
  %i.ar = add i64 %i.aq, 64                       ; 2 uses
  %i.as = add i64 %i.b, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  tail call void @llvm.assume(i1 %i.au)
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtNtB1h_8identity22SharedIdentityResolverEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !2422, !nonnull !3, !noundef !3
  %i.ay = sub nuw nsw i64 -64, %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2422
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtNtB1h_8identity22SharedIdentityResolverEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtNtB1h_8identity22SharedIdentityResolverEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2488, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2494, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2494, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2495
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2500
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !2505, !noalias !2494, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !2494

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2512, !noalias !2494 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -24
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2519, !noalias !2494, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2520
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2512, !noalias !2494 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2519, !noalias !2494, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2523
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ag = icmp eq i64 %i.x, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ah = shl i64 %i.b, 5                         ; 2 uses
  %i.ai = add i64 %i.ah, 32                       ; 2 uses
  %i.aj = add i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2488, !nonnull !3, !noundef !3
  %i.ap = sub nuw nsw i64 -32, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2488
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2526, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2o_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2532, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2532, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2533
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2538
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1920 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [120 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -120
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.y), !noalias !2532
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 120
  %i.ab = icmp slt i64 %i.b, 153722867280912930
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 128                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2o_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !2526, !nonnull !3, !noundef !3
  %i.ak = sub i64 -128, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2526
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2o_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2o_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2543, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2549, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2549, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2550
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2555
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2549

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2560, !noalias !2549 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2569, !noalias !2549, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2570
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2560, !noalias !2549 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2569, !noalias !2549, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2573
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.af = shl i64 %i.b, 5                         ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2543, !nonnull !3, !noundef !3
  %i.an = sub nuw nsw i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2543
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2576, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2582, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2582, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2583
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2588
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2605, !noalias !2582, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2606
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE9drop_slowCs2yqBUmTnVWb_9aws_lc_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #34, !noalias !2582
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ad = mul i64 %i.b, 24
  %i.ae = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add nsw i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2576, !nonnull !3, !noundef !3
  %i.an = sub i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2576
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2607, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2613, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2613, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2614
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2619
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -640 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.1.i.i) ]
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2613

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2624, !noalias !2613 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2633, !noalias !2613, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2634
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2624, !noalias !2613 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2633, !noalias !2613, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2637
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.af = mul i64 %i.b, 40
  %i.ag = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = and i64 %i.af, -16                      ; 2 uses
  %i.ai = add i64 %i.ah, 48                       ; 2 uses
  %i.aj = add nsw i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2607, !nonnull !3, !noundef !3
  %i.ap = sub i64 -48, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2607
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs2y6mmZ7bjoM_12tracing_core5fieldReNtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  tail call void @_RNvXs5_NtCs2y6mmZ7bjoM_12tracing_core5fieldeNtB5_5Value6record(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !2640
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 48                         ; 2 uses
  %i.i = add i64 %i.h, 48                         ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -48, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !2645
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 80                         ; 2 uses
  %i.i = add i64 %i.h, 80                         ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -80, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_2
