Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.14?download=true
inline.NumInlined: 819
inline.NumDeleted: 323
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 !guid !80 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 !guid !81 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBV_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB5D_26OptionsCredentialsProvider11credentials0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtNtNtNtB8g_11collections4hash3map4IterBV_BV_EB5w_EE0E0E0E0uEB5F_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !113 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted29 = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.5.i.sroa.5.6..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8
  %.pre = load i16, ptr %i.f, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit, %bb.a
  %i.m = phi i16 [ %i.r, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2833 = phi ptr [ %.lcssa2832, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2731 = phi ptr [ %.lcssa2730, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.promoted29, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.an, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not24 = icmp eq i16 %i.m, 0
  br i1 %.not24, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.n = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.n, label %bb.v, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.ar, ptr %0, align 8
  store ptr %i.as, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2832 = phi ptr [ %i.as, %._crit_edge ], [ %.lcssa2833, %.outer ]
  %.lcssa2730 = phi ptr [ %i.ar, %._crit_edge ], [ %.lcssa2731, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.m, %.outer ] ; 3 uses
  %i.o = add i16 %.lcssa, -1
  %i.p = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa                    ; 2 uses
  store i16 %i.r, ptr %i.f, align 8
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %.lcssa2730, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val1.i = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6
  %i.w = getelementptr i8, ptr %i.t, i64 -32
  %.val2.i = load i64, ptr %i.w, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1.i, i64 noundef %.val2.i), !noalias !114
  %i.x = load ptr, ptr %i.h, align 8, !noalias !114, !nonnull !6, !noundef !6
  %i.y = load i64, ptr %i.i, align 8, !noalias !114, !noundef !6
  invoke void @_RNvXs0_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB5_17AmazonS3ConfigKeyNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.e unwind label %bb.d, !noalias !114

bb.c:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.ad, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %common.resume.i.i unwind label %bb.j, !noalias !115

bb.d:                                             ; preds = %bb.i, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.e, align 8, !range !12, !noalias !114, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.aa, -9223372036854775790
  br i1 %.not.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.j, align 8, !range !116, !noalias !114, !noundef !6
  %i.ac = load i8, ptr %i.k, align 1, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.h unwind label %bb.g, !noalias !115

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.c unwind label %bb.j, !noalias !115

bb.h:                                             ; preds = %bb.f
  %.sroa.5.i.sroa.3.6.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.sroa.5.6..sroa_idx.i.i, i64 16, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  %3 = zext nneg i8 %i.ab to i16
  %4 = freeze i8 %i.ac
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = or disjoint i16 %6, %3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.0.i.i = phi i64 [ %.sroa.5.i.sroa.3.6.copyload.i.i, %bb.h ], [ -9223372036854775808, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i16 [ %7, %bb.h ], [ undef, %bb.e ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.k unwind label %bb.d, !noalias !115

bb.j:                                             ; preds = %bb.g, %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !115
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.l, !noalias !115

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !118, !noalias !114 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ag, label %common.resume.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !119, !noalias !114, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !120
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.k
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !118, !noalias !114 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ah, label %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !119, !noalias !114, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !121
  br label %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i

common.resume.i.i:                                ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.c ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.ak, %bb.s ], [ %i.ak, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i, -9223372036854775808
  br i1 %.not.i.i, label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !123
  %.sroa.03.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.i.i to i8
  %.sroa.03.1.extract.shift.i.i = lshr i16 %.sroa.0.0.i.i, 8
  %.sroa.03.1.extract.trunc.i.i = trunc nuw i16 %.sroa.03.1.extract.shift.i.i to i8
  store i64 %.sroa.6.0.i.i, ptr %i.b, align 8, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, i8 noundef %.sroa.03.0.extract.trunc.i.i, i8 %.sroa.03.1.extract.trunc.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !125
  %i.ai = load i64, ptr %i.a, align 8, !range !13, !alias.scope !126, !noalias !124, !noundef !6
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.t unwind label %bb.r, !noalias !125

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !127, !noalias !124 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %common.resume.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !128, !noalias !124, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !129
  br label %common.resume.i.i

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !127, !noalias !124 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !128, !noalias !124, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !130
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !122
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit

_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit: ; preds = %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.an = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ao = phi ptr [ %i.as, %.lr.ph.split ], [ %.lcssa2833, %.lr.ph ] ; 2 uses
  %i.ap = phi ptr [ %i.ar, %.lr.ph.split ], [ %.lcssa2731, %.lr.ph ]
  %.val16 = load <16 x i8>, ptr %i.ao, align 16
  %i.aq = icmp sgt <16 x i8> %.val16, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.aq, ptr %i.f, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -768 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.aq to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.v:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6filter11filter_foldTRBV_B45_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB4n_16S3StorageOptions8from_map0NCINvNtB3v_3map8map_foldB44_BU_uNCB4h_s_0NCINvNvB2n_8for_each4callBU_NCINvXs1i_B1V_INtB1V_7HashMapBV_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendBU_E6extendINtB5D_3MapINtB3t_6FilterINtNtNtNtB7k_11collections4hash3map4IterBV_BV_EB4f_EB64_EE0E0E0E0E0uEB4p_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !157 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted25 = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8
  %.pre = load i16, ptr %i.g, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit, %bb.a
  %i.l = phi i16 [ %i.q, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2429 = phi ptr [ %.lcssa2428, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2327 = phi ptr [ %.lcssa2326, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.promoted25, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.ah, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not20 = icmp eq i16 %i.l, 0
  br i1 %.not20, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.m = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.m, label %bb.k, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.al, ptr %0, align 8
  store ptr %i.am, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2428 = phi ptr [ %i.am, %._crit_edge ], [ %.lcssa2429, %.outer ]
  %.lcssa2326 = phi ptr [ %i.al, %._crit_edge ], [ %.lcssa2327, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.l, %.outer ] ; 3 uses
  %i.n = add i16 %.lcssa, -1
  %i.o = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa                    ; 2 uses
  store i16 %i.q, ptr %i.g, align 8
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %.lcssa2326, i64 %i.r ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !159
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !158, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !158, !noundef !6
  store ptr %i.u, ptr %i.f, align 8, !noalias !159
  store i64 %i.w, ptr %i.i, align 8, !noalias !159
  %i.x = call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @25, i64 noundef 20), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !159
  br i1 %i.x, label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -48
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !160
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y), !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !160
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i unwind label %bb.d, !noalias !162

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.e) #30
          to label %common.resume.i.i.i unwind label %bb.e, !noalias !162

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !162
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %bb.g, %bb.d
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.ac = load i64, ptr %i.a, align 8, !range !13, !alias.scope !166, !noalias !165, !noundef !6
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %i.ad, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !167

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !168, !noalias !165 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %common.resume.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !169, !noalias !165, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !170
  br label %common.resume.i.i.i

bb.i:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !168, !noalias !165 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !169, !noalias !165, !nonnull !6, !noundef !6
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !171
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i: ; preds = %bb.j, %bb.i, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !159
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit

_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit: ; preds = %bb.b, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i
  %i.ah = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ai = phi ptr [ %i.am, %.lr.ph.split ], [ %.lcssa2429, %.lr.ph ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.split ], [ %.lcssa2327, %.lr.ph ]
  %.val16 = load <16 x i8>, ptr %i.ai, align 16
  %i.ak = icmp sgt <16 x i8> %.val16, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.ak, ptr %i.g, align 8
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -768 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !674 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !675, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !676
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !674 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !675, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !677
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.m, %bb.k ], [ %i.m, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !678 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !679, !nonnull !6, !noundef !6
  %i.p = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !680
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !678 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !679, !nonnull !6, !noundef !6
  %i.s = shl nuw i64 %.val.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !681
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !694 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !695, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !696 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !697, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !698
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !696 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !697, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !699
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation18SerializationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !718 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !719, !noundef !6
  %switch.i = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !720 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !721, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !722
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !720 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !721, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !723
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format19DateTimeFormatErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !738 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !739, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !740 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !741, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !742
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !740 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !741, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !743
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !744 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 3, label %_RINvNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked11decode_reprINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.b
  ], !prof !745

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8     ; 5 uses
  %i.d = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !6, !align !16, !noundef !6 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

_RINvNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked11decode_reprINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.a
  %0 = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !18, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !18, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #29
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 24, i64 noundef 8) #29
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 24, i64 noundef 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %_RINvNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked11decode_reprINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !770 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !771, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !772 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !773, !nonnull !6, !noundef !6
  %i.f = mul nuw i64 %.val2.i.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !774
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !772 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !773, !nonnull !6, !noundef !6
  %i.i = mul nuw i64 %.val.i.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !775
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.j) #30
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !22, !alias.scope !776, !noundef !6
  %switch1.i = icmp slt i64 %i.l, -9223372036854775795
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !777 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.n, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !778, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !779
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !777 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !778, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !780
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %.body, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.c, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !844 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !845, !noundef !6
  switch i8 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.l
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 6, label %bb.w
    i8 8, label %bb.ab
    i8 9, label %bb.ag
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.p, %bb.o, %bb.k, %bb.j, %bb.f, %bb.e, %bb.q, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !846 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !847, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !848
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !846 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !847, !nonnull !6, !noundef !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !849
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.ah, %bb.ai, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.s, %bb.t, %bb.m, %bb.n, %bb.h, %bb.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.ac ], [ %i.c, %bb.c ], [ %i.i, %bb.h ], [ %i.q, %bb.m ], [ %i.z, %bb.s ], [ %i.af, %bb.x ], [ %i.c, %bb.d ], [ %i.i, %bb.i ], [ %i.q, %bb.n ], [ %i.z, %bb.t ], [ %i.af, %bb.y ], [ %i.an, %bb.ad ], [ %i.at, %bb.ai ], [ %i.at, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !850 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !851, !nonnull !6, !noundef !6
  %i.l = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !852
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !850 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !851, !nonnull !6, !noundef !6
  %i.o = mul nuw i64 %.val.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !853
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i1 = load i64, ptr %i.p, align 8, !alias.scope !854 ; 2 uses
  %i.r = icmp eq i64 %.val2.i1, 0
  br i1 %i.r, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i2 = load ptr, ptr %i.s, align 8, !alias.scope !855, !nonnull !6, !noundef !6
  %i.t = mul nuw i64 %.val2.i1, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i2, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !856
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i3 = load i64, ptr %i.p, align 8, !alias.scope !854 ; 2 uses
  %i.u = icmp eq i64 %.val.i3, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_1
