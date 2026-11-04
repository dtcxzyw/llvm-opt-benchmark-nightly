Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.10?download=true
inline.NumInlined: 4181
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils22convert_reference_type:bb.a

.sink.split.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %.sink.ph.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1155, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  store ptr %i.ac, ptr %.sink20.i.sroa.gep.i.i.i, align 8, !alias.scope !1153, !noalias !1152
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ad, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1153, !noalias !1152
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.f
  %.sink20.i.sroa.phi.i.i.i = phi ptr [ %.sink20.i.sroa.gep.i.i.i, %bb.f ], [ %.sink20.i.sroa.gep1.i.i.i, %.sink.split.i.i.i.i ]
  %.sink19.i.i.i.i = phi ptr [ null, %bb.f ], [ %1, %.sink.split.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 1, %bb.f ], [ %.sink.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  store ptr %.sink19.i.i.i.i, ptr %.sink20.i.sroa.phi.i.i.i, align 8, !alias.scope !1153, !noalias !1152
  store i64 %.sink.i.i.i.i, ptr %i.l, align 8, !alias.scope !1153, !noalias !1152
  call void @_RNvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB7_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapINtNtBT_6copied6CopiedINtNtNtBX_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2U_NtB2U_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4J_4Type14type_arguments0EIBC_IBP_IB27_IB2t_NtNtB2W_2ty2TyEENCB4C_s_0EINtNtNtBV_7sources5empty5EmptyB51_EEENtNtNtBV_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l), !noalias !1156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !range !26, !noalias !1152, !noundef !4
  %.not.i.i.i8 = icmp eq i32 %i.af, -1
  br i1 %.not.i.i.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1152
  call void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type9new_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k), !noalias !1156
  %i.ag = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_convert_AsRef(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3), !noalias !1151 ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0      ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not6.i.i.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1152
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = extractvalue { i32, i32 } %i.ag, 1
  %i.aj = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11impls_trait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i32 noundef %i.ah, i32 noundef %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 1), !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1157
  call void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type13add_reference(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i1 noundef zeroext false), !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1157
  call void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type13add_reference(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i1 noundef zeroext false), !noalias !1151
  %i.ak = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type15could_coerce_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1152
  br i1 %i.aj, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types_0EBN_.exit, label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1152
  br label %bb.l

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types_0EBN_.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1151
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1159
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.017.0.in.i.i.i.i12 = phi ptr [ %1, %bb.l ], [ %.sroa.515.0..sroa_idx.i.i.i.i15, %bb.m ]
  %.sroa.017.0.i.i.i.i13 = load ptr, ptr %.sroa.017.0.in.i.i.i.i12, align 8, !noalias !1161, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.013.0.copyload.i.i.i.i14 = load i32, ptr %.sroa.017.0.i.i.i.i13, align 8, !noalias !1162 ; 4 uses
  %i.al = icmp ne i32 %.sroa.013.0.copyload.i.i.i.i14, 27
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %.sroa.013.0.copyload.i.i.i.i14, 14
  %.sroa.515.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i13, i64 16
  br i1 %i.am, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sink20.i.sroa.gep.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink20.i.sroa.gep1.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.41.0..sroa_idx.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i13, i64 8
  %.sroa.41.0.copyload.i.i.i.i19 = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i.i18, align 8, !noalias !1162 ; 3 uses
  %i.an = add i32 %.sroa.013.0.copyload.i.i.i.i14, -2
  %i.ao = icmp ugt i32 %.sroa.013.0.copyload.i.i.i.i14, 1
  %narrow.i.i.i.i20 = select i1 %i.ao, i32 %i.an, i32 25
  switch i32 %narrow.i.i.i.i20, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i24 [
    i32 5, label %.sink.split.i.i.i.i21
    i32 22, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split.i.i.i.i21

.sink.split.i.i.i.i21:                            ; preds = %bb.o, %bb.n
  %.sink.ph.i.i.i.i22 = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1162, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i.i.i19) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i.i.i19, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store ptr %i.ar, ptr %.sink20.i.sroa.gep.i.i.i16, align 8, !alias.scope !1160, !noalias !1159
  %.sroa.49.0..sroa_idx.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.as, ptr %.sroa.49.0..sroa_idx.i.i.i.i23, align 8, !alias.scope !1160, !noalias !1159
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i24

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i24: ; preds = %.sink.split.i.i.i.i21, %bb.n
  %.sink20.i.sroa.phi.i.i.i25 = phi ptr [ %.sink20.i.sroa.gep.i.i.i16, %bb.n ], [ %.sink20.i.sroa.gep1.i.i.i17, %.sink.split.i.i.i.i21 ]
  %.sink19.i.i.i.i26 = phi ptr [ null, %bb.n ], [ %1, %.sink.split.i.i.i.i21 ]
  %.sink.i.i.i.i27 = phi i64 [ 1, %bb.n ], [ %.sink.ph.i.i.i.i22, %.sink.split.i.i.i.i21 ]
  store ptr %.sink19.i.i.i.i26, ptr %.sink20.i.sroa.phi.i.i.i25, align 8, !alias.scope !1160, !noalias !1159
  store i64 %.sink.i.i.i.i27, ptr %i.e, align 8, !alias.scope !1160, !noalias !1159
  call void @_RNvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB7_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapINtNtBT_6copied6CopiedINtNtNtBX_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2U_NtB2U_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4J_4Type14type_arguments0EIBC_IBP_IB27_IB2t_NtNtB2W_2ty2TyEENCB4C_s_0EINtNtNtBV_7sources5empty5EmptyB51_EEENtNtNtBV_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e), !noalias !1163
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = load i32, ptr %i.at, align 8, !range !26, !noalias !1159, !noundef !4
  %.not.i.i.i28 = icmp eq i32 %i.au, -1
  br i1 %.not.i.i.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1159
  %i.av = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_convert_AsRef(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3), !noalias !1164 ; 2 uses
  %i.aw = extractvalue { i32, i32 } %i.av, 0      ; 2 uses
  %.not6.i.i.i29 = icmp eq i32 %i.aw, 0
  br i1 %.not6.i.i.i29, label %bb.s, label %bb.r

bb.q:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1159
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ax = extractvalue { i32, i32 } %i.av, 1
  %i.ay = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11impls_trait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i32 noundef %i.aw, i32 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef 1), !noalias !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1165
  call void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type13add_reference(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i1 noundef zeroext false), !noalias !1166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1165
  call void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type13add_reference(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, i1 noundef zeroext false), !noalias !1164
  %i.az = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type15could_coerce_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1165
  br i1 %i.ay, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types0_0EBN_.exit, label %bb.s

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types0_0EBN_.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1159
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1159
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !1167, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.09.0.copyload.i.i.i.i = load i32, ptr %.val.i.i, align 8, !noalias !1168 ; 2 uses
  %i.ba = icmp ne i32 %.sroa.09.0.copyload.i.i.i.i, 27
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i32 %.sroa.09.0.copyload.i.i.i.i, 7
  br i1 %i.bb, label %switch.lookup.i.i.i.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i

switch.lookup.i.i.i.i:                            ; preds = %bb.s
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 20
  %i.bc = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !noalias !1168
  %.sroa.811.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i.i.i, align 8, !noalias !1168
  %switch.idx.cast.i.i.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i.i.i to i32
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i: ; preds = %switch.lookup.i.i.i.i, %bb.s
  %.sroa.0.0.i.i.i = phi i32 [ %switch.idx.cast.i.i.i.i, %switch.lookup.i.i.i.i ], [ -1, %bb.s ] ; 3 uses
  %i.bd = phi <2 x i32> [ %i.bc, %switch.lookup.i.i.i.i ], [ undef, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1169
  %i.be = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_option_Option(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3), !noalias !1167 ; 2 uses
  %i.bf = extractvalue { i32, i32 } %i.be, 0      ; 2 uses
  %.not.i.i.i34 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i34, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i
  %i.bg = extractvalue { i32, i32 } %i.be, 1
  call void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15), !noalias !1167
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !noalias !1169, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.09.0.copyload.i10.i.i.i = load i32, ptr %.val.i.i.i, align 8, !noalias !1170 ; 2 uses
  %i.bh = icmp ne i32 %.sroa.09.0.copyload.i10.i.i.i, 27
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp eq i32 %.sroa.09.0.copyload.i10.i.i.i, 7
  br i1 %i.bi, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i: ; preds = %bb.t
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 20
  %i.bj = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i14.i.i.i, align 4, !noalias !1170
  %.not7.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, -1
  br i1 %.not7.i.i.i, label %bb.v, label %bb.u

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i: ; preds = %bb.t
  %.not712.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, -1
  br i1 %.not712.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit, label %bb.v

bb.u:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i
  %.sroa.811.0..sroa_idx.i16.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i17.i.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i16.i.i.i, align 8, !noalias !1170
  %switch.idx.cast.i18.i.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i17.i.i.i to i32
  %4 = icmp eq i32 %.sroa.0.0.i.i.i, %switch.idx.cast.i18.i.i.i
  %5 = icmp eq <2 x i32> %i.bd, %i.bj
  %6 = freeze <2 x i1> %5
  %7 = bitcast <2 x i1> %6 to i2
  %i.bk = icmp eq i2 %7, -1
  %or.cond = and i1 %4, %i.bk
  br i1 %or.cond, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit, label %bb.v

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit: ; preds = %bb.u, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1169
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread

bb.v:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i, %bb.u, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1169
  %.sroa.09.0.copyload.i.i.i.i40 = load i32, ptr %.val.i.i, align 8, !noalias !1171 ; 2 uses
  %i.bl = icmp ne i32 %.sroa.09.0.copyload.i.i.i.i40, 27
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i32 %.sroa.09.0.copyload.i.i.i.i40, 7
  br i1 %i.bm, label %switch.lookup.i.i.i.i62, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i41

switch.lookup.i.i.i.i62:                          ; preds = %bb.v
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i65 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 20
  %i.bn = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i65, align 4, !noalias !1171
  %.sroa.811.0..sroa_idx.i.i.i.i67 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i.i.i68 = load i8, ptr %.sroa.811.0..sroa_idx.i.i.i.i67, align 8, !noalias !1171
  %switch.idx.cast.i.i.i.i69 = zext i8 %.sroa.811.sroa.0.0.copyload.i.i.i.i68 to i32
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i41

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i41: ; preds = %switch.lookup.i.i.i.i62, %bb.v
  %.sroa.0.0.i.i.i44 = phi i32 [ %switch.idx.cast.i.i.i.i69, %switch.lookup.i.i.i.i62 ], [ -1, %bb.v ] ; 3 uses
  %i.bo = phi <2 x i32> [ %i.bn, %switch.lookup.i.i.i.i62 ], [ undef, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1172
  %i.bp = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_result_Result(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3), !noalias !1173 ; 2 uses
  %i.bq = extractvalue { i32, i32 } %i.bp, 0      ; 2 uses
  %.not.i.i.i45 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i45, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i41
  %i.br = extractvalue { i32, i32 } %i.bp, 1
  call void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15), !noalias !1173
  %.val.i.i.i46 = load ptr, ptr %i.a, align 8, !noalias !1172, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.09.0.copyload.i10.i.i.i47 = load i32, ptr %.val.i.i.i46, align 8, !noalias !1174 ; 2 uses
  %i.bs = icmp ne i32 %.sroa.09.0.copyload.i10.i.i.i47, 27
  call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i32 %.sroa.09.0.copyload.i10.i.i.i47, 7
  br i1 %i.bt, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i52, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i48

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i52: ; preds = %bb.w
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i14.i.i.i55 = getelementptr inbounds nuw i8, ptr %.val.i.i.i46, i64 20
  %i.bu = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i14.i.i.i55, align 4, !noalias !1174
  %.not7.i.i.i57 = icmp eq i32 %.sroa.0.0.i.i.i44, -1
  br i1 %.not7.i.i.i57, label %bb.y, label %bb.x

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i48: ; preds = %bb.w
  %.not712.i.i.i49 = icmp eq i32 %.sroa.0.0.i.i.i44, -1
  br i1 %.not712.i.i.i49, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit, label %bb.y

bb.x:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i52
  %.sroa.811.0..sroa_idx.i16.i.i.i58 = getelementptr inbounds nuw i8, ptr %.val.i.i.i46, i64 16
  %.sroa.811.sroa.0.0.copyload.i17.i.i.i59 = load i8, ptr %.sroa.811.0..sroa_idx.i16.i.i.i58, align 8, !noalias !1174
  %switch.idx.cast.i18.i.i.i60 = zext i8 %.sroa.811.sroa.0.0.copyload.i17.i.i.i59 to i32
  %8 = icmp eq i32 %.sroa.0.0.i.i.i44, %switch.idx.cast.i18.i.i.i60
  %9 = icmp eq <2 x i32> %i.bo, %i.bu
  %10 = freeze <2 x i1> %9
  %11 = bitcast <2 x i1> %10 to i2
  %i.bv = icmp eq i2 %11, -1
  %or.cond130 = and i1 %8, %i.bv
  br i1 %or.cond130, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit, label %bb.y

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit: ; preds = %bb.x, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1172
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types0_0EBN_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_type0EBN_.exit, %bb.a, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types_0EBN_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit
  %.sroa.0.0.i38115 = phi i8 [ 5, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit ], [ 4, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit ], [ 3, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types0_0EBN_.exit ], [ 2, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types_0EBN_.exit ], [ 1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_type0EBN_.exit ], [ 0, %bb.a ]
  %.sroa.3.0.i37114.shrunk = phi i1 [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit ], [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types1_0EBN_.exit ], [ %i.az, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types0_0EBN_.exit ], [ %i.ak, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types_0EBN_.exit ], [ %i.v, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_type0EBN_.exit ], [ true, %bb.a ]
  %.sroa.3.0.i37114 = zext i1 %.sroa.3.0.i37114.shrunk to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.3.0.i37114, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.0.0.i38115, ptr %.sroa.54.0..sroa_idx, align 1
  br label %bb.z

bb.y:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.i.i.i52, %bb.x, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit21.thread.i.i.i48, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1172
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.bw, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsiU5vK8fN4ZC_11ide_assists5utils23ReferenceConversionTypebEE7or_elseNCNvBL_22convert_reference_types2_0EBN_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load i64, ptr %0, align 8, !range !33, !noundef !4
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = tail call fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes3PatECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.val20) #37 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.u, label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode11first_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !noalias !1200 ; 5 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1201
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !1202, !noundef !4 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 4, !noalias !1202
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i unwind label %bb.g, !noalias !1200

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #36
          to label %.noexc3.i.i unwind label %bb.g, !noalias !1203

.noexc3.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !noalias !1203, !noundef !4
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.p, align 4, !noalias !1203
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #39
          to label %common.resume unwind label %bb.j, !noalias !1203

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i: ; preds = %bb.e
  %i.x = load i32, ptr %i.p, align 4, !noalias !1203, !noundef !4
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.p, align 4, !noalias !1203
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i

bb.i:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #39, !noalias !1203
  br label %_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1203
  unreachable

common.resume:                                    ; preds = %bb.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECsiU5vK8fN4ZC_11ide_assists.exit37, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %.body, %bb.ar, %.body51, %bb.aq, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %eh.lpad-body, %.body ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECsiU5vK8fN4ZC_11ide_assists.exit37 ], [ %.pn, %bb.w ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.pn8, %bb.ar ], [ %.pn8, %.body51 ], [ %.pn8, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i: ; preds = %bb.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1201
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit

bb.k:                                             ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !alias.scope !1200
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit

bb.l:                                             ; preds = %bb.b
  %i.ab = extractvalue { i64, ptr } %i.l, 1       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.m, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.ad = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode11first_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %.noexc unwind label %bb.ah    ; 5 uses

.noexc:                                           ; preds = %bb.l
  %.not.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i25, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1206
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.o, label %bb.n, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 4, !noalias !1207
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %i.ad)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i27 unwind label %bb.p, !noalias !1205

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #36
          to label %.noexc3.i.i29 unwind label %bb.p, !noalias !1208

.noexc3.i.i29:                                    ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i32, ptr %i.ae, align 4, !noalias !1208, !noundef !4
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 4, !noalias !1208
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #39
          to label %.body unwind label %bb.s, !noalias !1208

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i27: ; preds = %bb.n
  %i.am = load i32, ptr %i.ae, align 4, !noalias !1208, !noundef !4
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.ae, align 4, !noalias !1208
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i28

bb.r:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i27
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #39
          to label %_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i28 unwind label %bb.ah

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1208
  unreachable

_RNCNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant00B7_.exit.i28: ; preds = %bb.r, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !1209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1206
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit31

bb.t:                                             ; preds = %.noexc
  store ptr null, ptr %i.h, align 8, !alias.scope !1205
  br label %_RNCNvNtCsiU5vK8fN4ZC_11ide_assists5utils22does_pat_match_variant0B5_.exit31

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val20, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !1210, !noundef !4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.v, label %bb.y, !prof !5

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #36, !noalias !1210
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECsiU5vK8fN4ZC_11ide_assists.exit37: ; preds = %bb.ab, %bb.ac, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.x ], [ %i.bf, %bb.ac ], [ %i.bf, %bb.ab ] ; 2 uses
  %.val15 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val15, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noundef !4
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.w, label %common.resume

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECsiU5vK8fN4ZC_11ide_assists.exit37
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val15) #39
          to label %common.resume unwind label %bb.ag
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def12GenericDefIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.o, ptr %i.f, align 8, !noalias !2088
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 7, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2088
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.q, ptr %i.e, align 8, !noalias !2088
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 10, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2088
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.s, ptr %i.d, align 8, !noalias !2088
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @202)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2088
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.u, ptr %i.c, align 8, !noalias !2088
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2088
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.w, ptr %i.b, align 8, !noalias !2088
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2088
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.y, ptr %i.a, align 8, !noalias !2088
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @208)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2088
  br label %_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs8x_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.in.i = phi i1 [ %i.n, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.z, %bb.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsc_NvCsileJQcQObtj_7hir_defs8_1__NtB7_19BuiltinDeriveImplIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def5AdtIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.e = load i32, ptr %i.d, align 4, !range !31, !alias.scope !2092, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2093
  store ptr %i.f, ptr %i.c, align 8, !noalias !2093
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2093
  br label %_RNvXs78_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2093
  store ptr %i.f, ptr %i.b, align 8, !noalias !2093
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2093
  br label %_RNvXs78_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2093
  store ptr %i.f, ptr %i.a, align 8, !noalias !2093
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2093
  br label %_RNvXs78_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs78_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def6EnumIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1M_CsileJQcQObtj_7hir_defNtB6_6EnumIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def6ImplIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2K_CsileJQcQObtj_7hir_defNtB6_6ImplIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def7ConstIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1Y_CsileJQcQObtj_7hir_defNtB6_7ConstIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def7TraitIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2m_CsileJQcQObtj_7hir_defNtB6_7TraitIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def7UnionIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1A_CsileJQcQObtj_7hir_defNtB6_7UnionIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def8StaticIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2a_CsileJQcQObtj_7hir_defNtB6_8StaticIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def8StructIdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1o_CsileJQcQObtj_7hir_defNtB6_8StructIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !30, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2097
  store ptr %i.b, ptr %i.a, align 8, !noalias !2097
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2097
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextNtB6_7Display3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1N_11generic_arg10GenericArgEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiU5vK8fN4ZC_11ide_assists(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.08 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.08
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.08
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  %i.f = icmp eq <2 x ptr> %i.d, %i.e
  %3 = freeze <2 x i1> %i.f
  %4 = bitcast <2 x i1> %3 to i2
  %spec.select.i.not.i.not = icmp eq i2 %4, -1    ; 2 uses
  %i.g = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.g, %2
  %or.cond.not = select i1 %spec.select.i.not.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %spec.select.i.not.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiU5vK8fN4ZC_11ide_assists(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06
  %.val = load i8, ptr %i.b, align 1, !range !21, !noundef !4
  %.val5 = load i8, ptr %i.c, align 1, !range !21, !noundef !4
  %.not = icmp eq i8 %.val, %.val5                ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1K_2ty2TyEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiU5vK8fN4ZC_11ide_assists(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.06 ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.06 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.e = load <2 x i32>, ptr %i.c, align 4, !alias.scope !2113
  %i.f = load <2 x i32>, ptr %i.d, align 4, !alias.scope !2114
  %i.g = icmp eq <2 x i32> %i.e, %i.f
  %3 = freeze <2 x i1> %i.g
  %4 = bitcast <2 x i1> %3 to i2
  %.sroa.0.0.i.i.i.i.i = icmp eq i2 %4, -1
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.i, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2113, !nonnull !4, !noundef !4
  %.val5.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2114, !nonnull !4, !noundef !4
  %.not.i = icmp eq ptr %.val4.i.i.i, %.val5.i.i.i
  br i1 %.not.i, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread

_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !2107, !nonnull !4, !noundef !4
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !2108, !nonnull !4, !noundef !4
  %.not = icmp eq ptr %.val.i, %.val1.i
  br i1 %.not, label %bb.b, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread

_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.i, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit.i ], [ false, %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1E_2ty2TyENtNtB7_3cmp9PartialEq2neCsiU5vK8fN4ZC_11ide_assists.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCscFGNKo4Sl5v_9itertools11kmerge_implINtB5_8KMergeByINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB46_13SemanticsImpl22descend_node_at_offsets_00ENCB40_s0_0ENtNtNtB14_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 3 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.g, 72057594037927936
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.j, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2128, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !2128, !noundef !4
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  %i.t = add i64 %i.n, 1
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !2128
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2129, !noundef !4
  %i.w = icmp ugt i64 %i.v, 1
  %i.x = load ptr, ptr %i.s, align 8, !alias.scope !2129, !nonnull !4
  %.sink11.i.i.i = select i1 %i.w, ptr %i.x, ptr %i.s
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i, i64 %i.n
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2130, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2131, !nonnull !4, !align !13, !noundef !4
  call void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl27token_ancestors_with_macros(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noundef nonnull align 8 %.val.i, ptr noundef nonnull %i.z)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !2132
  %i.aa = icmp eq i32 %.pre, -2
  br i1 %i.aa, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  br label %bb.h

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %bb.c, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !2133, !noundef !4 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 72057594037927936
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4C_13SemanticsImpl22descend_node_at_offsets_00EEE11swap_removeCsiU5vK8fN4ZC_11ide_assists.exit, !prof !5

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread
  tail call void @_RNvNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef 0, i64 noundef 0) #41, !noalias !2134
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4C_13SemanticsImpl22descend_node_at_offsets_00EEE11swap_removeCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3h_13SemanticsImpl22descend_node_at_offsets_00ENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 128, i1 false), !noalias !2133
  %i.af = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.ag, i64 128, i1 false), !noalias !2134
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !2133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl22descend_node_at_offsets_00EECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4C_13SemanticsImpl22descend_node_at_offsets_00EEE11swap_removeCsiU5vK8fN4ZC_11ide_assists.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl22descend_node_at_offsets_00EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4C_13SemanticsImpl22descend_node_at_offsets_00EEE11swap_removeCsiU5vK8fN4ZC_11ide_assists.exit
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl22descend_node_at_offsets_00EECsiU5vK8fN4ZC_11ide_assists.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.am = load i64, ptr %i.f, align 8, !noundef !4 ; 9 uses
  %i.an = icmp samesign ugt i64 %i.am, 2
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.h
  %.sroa.010.0.lcssa.i = phi i64 [ 1, %bb.h ], [ %i.bj, %bb.p ] ; 3 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.ba, %bb.p ] ; 3 uses
  %.lcssa.i = phi i64 [ 2, %bb.h ], [ %i.bk, %bb.p ]
  %i.ao = icmp eq i64 %.lcssa.i, %i.am
  br i1 %i.ao, label %bb.i, label %_RINvNtCscFGNKo4Sl5v_9itertools11kmerge_impl9sift_downINtB2_8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4d_13SemanticsImpl22descend_node_at_offsets_00EENCNvXs4_B2_INtB2_8KMergeByB14_NCB47_s0_0ENtNtNtB1b_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ap = icmp ult i64 %.sroa.010.0.lcssa.i, %i.am
  br i1 %i.ap, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %.sroa.010.0.lcssa.i ; 3 uses
  %i.ar = icmp ult i64 %.sroa.0.0.lcssa.i, %i.am
  br i1 %i.ar, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %.sroa.0.0.lcssa.i ; 3 uses
  %i.at = invoke noundef zeroext i1 @_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBQ_13SemanticsImpl22descend_node_at_offsets0_0INtB5_15KMergePredicateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB2C_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2y_3map3MapINtNtNtB2A_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB6o_9HirFileIdB3O_ENCNvBM_26ancestors_with_macros_file0ENCNvBM_21ancestors_with_macros0ENCNvBM_27token_ancestors_with_macros0EE11kmerge_predCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.as)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2:                                          ; preds = %bb.k
  br i1 %i.at, label %bb.l, label %_RINvNtCscFGNKo4Sl5v_9itertools11kmerge_impl9sift_downINtB2_8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4d_13SemanticsImpl22descend_node_at_offsets_00EENCNvXs4_B2_INtB2_8KMergeByB14_NCB47_s0_0ENtNtNtB1b_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

bb.l:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.as, i64 128, i1 false), !noalias !2135
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.as, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !alias.scope !2136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aq, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !2135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscFGNKo4Sl5v_9itertools11kmerge_impl9sift_downINtB2_8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4d_13SemanticsImpl22descend_node_at_offsets_00EENCNvXs4_B2_INtB2_8KMergeByB14_NCB47_s0_0ENtNtNtB1b_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.p
  %i.au = phi i64 [ %i.bk, %bb.p ], [ 2, %bb.h ]
  %.sroa.0.043.i = phi i64 [ %i.ba, %bb.p ], [ 0, %bb.h ] ; 3 uses
  %.sroa.010.042.i = phi i64 [ %i.bj, %bb.p ], [ 1, %bb.h ] ; 4 uses
  %i.av = icmp ult i64 %.sroa.010.042.i, %i.am
  br i1 %i.av, label %bb.m, label %.invoke

bb.m:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %i.au
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %.sroa.010.042.i
  %i.ay = invoke noundef zeroext i1 @_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBQ_13SemanticsImpl22descend_node_at_offsets0_0INtB5_15KMergePredicateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB2C_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2y_3map3MapINtNtNtB2A_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB6o_9HirFileIdB3O_ENCNvBM_26ancestors_with_macros_file0ENCNvBM_21ancestors_with_macros0ENCNvBM_27token_ancestors_with_macros0EE11kmerge_predCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ax)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.m
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.sroa.010.042.i, %i.az ; 6 uses
  %i.bb = icmp ult i64 %i.ba, %i.am
  br i1 %i.bb, label %bb.n, label %.invoke

bb.n:                                             ; preds = %.noexc4
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %i.ba ; 3 uses
  %i.bd = icmp ult i64 %.sroa.0.043.i, %i.am
  br i1 %i.bd, label %bb.o, label %.invoke

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %.sroa.0.043.i ; 3 uses
  %i.bf = invoke noundef zeroext i1 @_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBQ_13SemanticsImpl22descend_node_at_offsets0_0INtB5_15KMergePredicateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB2C_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2y_3map3MapINtNtNtB2A_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB6o_9HirFileIdB3O_ENCNvBM_26ancestors_with_macros_file0ENCNvBM_21ancestors_with_macros0ENCNvBM_27token_ancestors_with_macros0EE11kmerge_predCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.be)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.o
  br i1 %i.bf, label %bb.p, label %_RINvNtCscFGNKo4Sl5v_9itertools11kmerge_impl9sift_downINtB2_8HeadTailINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4d_13SemanticsImpl22descend_node_at_offsets_00EENCNvXs4_B2_INtB2_8KMergeByB14_NCB47_s0_0ENtNtNtB1b_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

.invoke:                                          ; preds = %bb.n, %.noexc4, %.lr.ph.i, %bb.j, %bb.i
  %i.bg = phi i64 [ %.sroa.0.0.lcssa.i, %bb.j ], [ %.sroa.010.0.lcssa.i, %bb.i ], [ %i.ba, %.noexc4 ], [ %.sroa.010.042.i, %.lr.ph.i ], [ %.sroa.0.043.i, %bb.n ]
  %i.bh = phi ptr [ @4, %bb.j ], [ @3, %bb.i ], [ @6, %.noexc4 ], [ @5, %.lr.ph.i ], [ @7, %bb.n ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef range(i64 0, 72057594037927936) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #41
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_1
