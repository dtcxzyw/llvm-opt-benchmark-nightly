Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.14?download=true
inline.NumInlined: 819
inline.NumDeleted: 323
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !1338
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !1341, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !1341 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !1341
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !1341
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1341
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1341
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -1280 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !1341
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [80 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false)
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
  %i.b = load i64, ptr %0, align 8, !range !87, !noundef !3
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
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1344
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1344 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1344
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1344
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !1359, !noalias !1360, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !1361
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1359, !noalias !1360, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !1362
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.at, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #30
          to label %.body unwind label %bb.m, !noalias !1359

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !1365
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1361
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1361

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.k, !noalias !1361

bb.k:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #30
          to label %.body.i.i unwind label %bb.l, !noalias !1361

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1361
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48                ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1361
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1361
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.b) #30
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1360, !noalias !1359
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1359, !noalias !1360, !noundef !3
  store i64 %i.bf, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1360, !noalias !1359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 96) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1368
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1368 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1368
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !1368
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !1383, !noalias !1384, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !1385
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1383, !noalias !1384, !noundef !3 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !1386
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.e) #30
          to label %.body unwind label %bb.p, !noalias !1383

bb.j:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bi, %bb.o ]
  %.sroa.013.029.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.o ] ; 2 uses
  %.sroa.814.027.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.ar, %bb.o ] ; 2 uses
  %.sroa.1015.026.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.au, %bb.o ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.027.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.6.028.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.013.029.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !1389
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -1536 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.al to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.028.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.027.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [96 x i8], ptr %.sroa.013.1.i.i, i64 %i.as ; 4 uses
  %i.au = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1385
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -96
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.av)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1385

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1392
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !1402

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1392
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 -48
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %bb.o unwind label %bb.k, !noalias !1403

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body.i.i.i unwind label %bb.l, !noalias !1403

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1403
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #30
          to label %.body.i.i unwind label %bb.n, !noalias !1385

bb.n:                                             ; preds = %.body.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1385
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = ptrtoint ptr %i.at to i64
  %i.bd = sub i64 %i.ah, %i.bc
  %i.be = sdiv exact i64 %i.bd, 96                ; 2 uses
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [96 x i8], ptr %.sroa.0.0, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1385
  %i.bi = add nsw i64 %i.be, 1
  %i.bj = icmp eq i64 %i.au, 0
  br i1 %i.bj, label %.loopexit, label %bb.j

bb.p:                                             ; preds = %.body.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1385
  unreachable

bb.q:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.e) #30
          to label %bb.s unwind label %bb.r

.loopexit:                                        ; preds = %bb.o, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1384, !noalias !1383
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1383, !noalias !1384, !noundef !3
  store i64 %i.bm, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1384, !noalias !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.r:                                             ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 96) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1406
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1406 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1406
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !1406
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !1421, !noalias !1422, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !1423
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1421, !noalias !1422, !noundef !3 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !1424
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.e) #30
          to label %.body unwind label %bb.p, !noalias !1421

bb.j:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bi, %bb.o ]
  %.sroa.013.029.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.o ] ; 2 uses
  %.sroa.814.027.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.ar, %bb.o ] ; 2 uses
  %.sroa.1015.026.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.au, %bb.o ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.027.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.6.028.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.013.029.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !1427
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -1536 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.al to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.028.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.027.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [96 x i8], ptr %.sroa.013.1.i.i, i64 %i.as ; 4 uses
  %i.au = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1423
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -96
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.av)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1423

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1430
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !1440

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1430
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 -48
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %bb.o unwind label %bb.k, !noalias !1441

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body.i.i.i unwind label %bb.l, !noalias !1441

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1441
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #30
          to label %.body.i.i unwind label %bb.n, !noalias !1423

bb.n:                                             ; preds = %.body.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1423
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = ptrtoint ptr %i.at to i64
  %i.bd = sub i64 %i.ah, %i.bc
  %i.be = sdiv exact i64 %i.bd, 96                ; 2 uses
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [96 x i8], ptr %.sroa.0.0, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !1423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1423
  %i.bi = add nsw i64 %i.be, 1
  %i.bj = icmp eq i64 %i.au, 0
  br i1 %i.bj, label %.loopexit, label %bb.j

bb.p:                                             ; preds = %.body.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1423
  unreachable

bb.q:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.e) #30
          to label %bb.s unwind label %bb.r

.loopexit:                                        ; preds = %bb.o, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1422, !noalias !1421
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1421, !noalias !1422, !noundef !3
  store i64 %i.bm, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1422, !noalias !1421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.r:                                             ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 72) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = add nuw i64 %i.k, 8
  %i.m = and i64 %i.l, -16                        ; 3 uses
  %i.n = add i64 %i.f, 17                         ; 2 uses
  %i.o = add i64 %i.n, %i.m                       ; 5 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.o, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1444
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1444 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1444
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !1444
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.m
  %i.w = icmp ult i64 %i.f, 8
  %i.x = lshr i64 %i.h, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i = select i1 %i.w, i64 %i.f, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.n, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.f, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !1459, !noalias !1460, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !1461
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1459, !noalias !1460, !noundef !3 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !1462
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ai = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #30
          to label %.body unwind label %bb.p, !noalias !1459

bb.j:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bj, %bb.o ]
  %.sroa.013.029.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.o ] ; 2 uses
  %.sroa.814.027.i.i = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.as, %bb.o ] ; 2 uses
  %.sroa.1015.026.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.av, %bb.o ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.027.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ak = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.6.028.i.i, %bb.j ] ; 2 uses
  %i.al = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.013.029.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ak, align 16, !noalias !1465
  %i.am = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -1152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.028.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.027.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i, i64 %i.at ; 4 uses
  %i.av = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1461
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1461

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1468
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !1475

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1468
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.o unwind label %bb.k, !noalias !1476

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body.i.i.i unwind label %bb.l, !noalias !1476

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1476
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.az, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #30
          to label %.body.i.i unwind label %bb.n, !noalias !1461

bb.n:                                             ; preds = %.body.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1461
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1468
  %i.bd = ptrtoint ptr %i.au to i64
  %i.be = sub i64 %i.ai, %i.bd
  %i.bf = sdiv exact i64 %i.be, 72                ; 2 uses
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [72 x i8], ptr %.sroa.0.0, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1461
  %i.bj = add nsw i64 %i.bf, 1
  %i.bk = icmp eq i64 %i.av, 0
  br i1 %i.bk, label %.loopexit, label %bb.j

bb.p:                                             ; preds = %.body.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1461
  unreachable

bb.q:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.d) #30
          to label %bb.s unwind label %bb.r

.loopexit:                                        ; preds = %bb.o, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1460, !noalias !1459
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1459, !noalias !1460, !noundef !3
  store i64 %i.bn, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1460, !noalias !1459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.r:                                             ; preds = %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEENtNtBT_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.k

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
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1478
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1478 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1478
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1478
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.b, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !1489, !noalias !1490, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.s, i64 %.pre-phi, i1 false), !noalias !1493
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1489, !noalias !1490, !noundef !3 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !1494
  %i.w = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = ptrtoint ptr %i.s to i64
  br label %bb.i

bb.i:                                             ; preds = %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.lr.ph.i.i
  %.sroa.013.026.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.x, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.1015.023.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.i ] ; 2 uses
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.i ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !1497
  %i.ac = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -384 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ac to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.i ], [ %i.ad, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i.i, i64 %i.ah ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1500, !noalias !1503, !nonnull !3, !noundef !3 ; 2 uses
  %i.ak = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !1505
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.j:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.loopexit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.an = add i64 %.sroa.1015.023.i.i, -1         ; 2 uses
  %i.ao = add i16 %.lcssa.i.i.i, -1
  %i.ap = and i16 %i.ao, %.lcssa.i.i.i
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.z, %i.aq
  %.neg.i.i = sdiv exact i64 %i.ar, -24
  %i.as = getelementptr inbounds [24 x i8], ptr %.sroa.0.0, i64 %.neg.i.i ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !noalias !1493
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.as, i64 -8
  store ptr %.val.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1493
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %_RNvYTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB7_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !1489, !noalias !1490, !noundef !3
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 120) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.q, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1506
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1506 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1506
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !1506
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.o
  %i.y = icmp ult i64 %i.h, 8
  %i.z = lshr i64 %i.j, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i = select i1 %i.y, i64 %i.h, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !1521, !noalias !1522, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.ab, i64 %.pre-phi, i1 false), !noalias !1523
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1521, !noalias !1522, !noundef !3 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !1524
  %i.af = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.am = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.u, %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %.pn.pn.i.i.i.i, %bb.k ], [ %i.bk, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.sroa.012.033.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #30
          to label %.body unwind label %bb.w, !noalias !1521

bb.j:                                             ; preds = %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.lr.ph.i.i
  %.sroa.012.033.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bs, %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.013.032.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.031.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.814.030.i.i = phi i16 [ %i.ag, %.lr.ph.i.i ], [ %i.aw, %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.1015.029.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %i.az, %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.030.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ao = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.sroa.6.031.i.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.sroa.013.032.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ao, align 16, !noalias !1527
  %i.aq = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -1920 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aq to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.031.i.i, %bb.j ], [ %i.as, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.032.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.030.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.at = add i16 %.lcssa.i.i.i, -1
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = and i16 %i.at, %.lcssa.i.i.i
  %i.ax = sub nsw i64 0, %i.av
  %i.ay = getelementptr inbounds [120 x i8], ptr %.sroa.013.1.i.i, i64 %i.ax ; 6 uses
  %i.az = add i64 %.sroa.1015.029.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1523
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1540
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1523

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1540
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -96
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.m unwind label %bb.l, !noalias !1541

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.n ], [ %i.bc, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i unwind label %bb.t, !noalias !1541

bb.l:                                             ; preds = %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1540
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.p unwind label %bb.o, !noalias !1541

bb.n:                                             ; preds = %bb.r, %bb.o
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.be, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.k unwind label %bb.t, !noalias !1541

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 -48 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !87, !alias.scope !1542, !noalias !1541, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bg, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1540
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.s unwind label %bb.r, !noalias !1541

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.n unwind label %bb.t, !noalias !1541

bb.s:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1540
  br label %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.t:                                             ; preds = %bb.r, %bb.n, %bb.k
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1541
  unreachable

_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.s ], [ -9223372036854775808, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1543
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ak, align 8, !alias.scope !1544, !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1540
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.u, !noalias !1523

bb.u:                                             ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #30
          to label %.body.i.i unwind label %bb.v, !noalias !1523

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1523
  unreachable

_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bm = ptrtoint ptr %i.ay to i64
  %i.bn = sub i64 %i.am, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 120               ; 2 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [120 x i8], ptr %.sroa.0.0, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.br, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !1523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1523
  %i.bs = add nsw i64 %i.bo, 1
  %i.bt = icmp eq i64 %i.az, 0
  br i1 %i.bt, label %.loopexit, label %bb.j

bb.w:                                             ; preds = %.body.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1523
  unreachable

bb.x:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.f) #30
          to label %bb.z unwind label %bb.y

.loopexit:                                        ; preds = %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1522, !noalias !1521
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1521, !noalias !1522, !noundef !3
  store i64 %i.bw, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1522, !noalias !1521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.y:                                             ; preds = %.body
  %i.bx = landingpad { ptr, i32 }
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
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1545
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1545 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1545
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1545
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.j, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.5.0 = phi i64 [ %i.b, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ] ; 3 uses
  %.sroa.09.0 = phi ptr [ %i.r, %bb.h ], [ null, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !1550, !noalias !1553, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.s, i64 %.pre-phi, i1 false), !noalias !1555
  %i.t = xor i64 %i.b, -1
  %i.u = getelementptr [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0, -1
  %i.w = getelementptr [24 x i8], ptr %.sroa.09.0, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = mul i64 %.sroa.5.0, 24
  %i.y = add i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !1555
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !1550, !noalias !1553
  store <2 x i64> %i.aa, ptr %.sroa.8.0..sroa_idx5, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_3vec3VecBP_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1556, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1562, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1562, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1563
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.86.019.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.019.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1566
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.019.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 7 uses
  %i.v = add i64 %.sroa.107.018.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !87, !alias.scope !1569, !noalias !1562, !noundef !3
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %bb.h unwind label %bb.f, !noalias !1562

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1574, !noalias !1562 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.aa, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1581, !noalias !1562, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1582
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1574, !noalias !1562 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1581, !noalias !1562, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1585
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #30
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !1562

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.l unwind label %bb.j, !noalias !1562

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1588, !noalias !1562 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ah, label %common.resume.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !1588, !noalias !1562, !nonnull !3, !noundef !3
  %i.aj = mul nuw i64 %.val2.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1562
  br label %common.resume.i.i.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1588, !noalias !1562 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val1.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !1588, !noalias !1562, !nonnull !3, !noundef !3
  %i.am = mul nuw i64 %.val.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1562
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.k, %bb.j, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.z, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.n:                                             ; preds = %.body.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1562
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ao = icmp eq i64 %i.v, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ap = mul i64 %i.b, 48                        ; 2 uses
  %i.aq = add i64 %i.ap, 48                       ; 2 uses
  %i.ar = add i64 %i.b, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  tail call void @llvm.assume(i1 %i.at)
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !1556, !nonnull !3, !noundef !3
  %i.ax = sub i64 -48, %i.ap
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1556
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1591, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b
end_hunk_0
