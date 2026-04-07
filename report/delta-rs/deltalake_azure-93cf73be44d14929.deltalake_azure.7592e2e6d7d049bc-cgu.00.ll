begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !140, !nonnull !8, !noundef !8
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !140
  %i.s = load i64, ptr %i.e, align 8, !noalias !140, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !140
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !88, !alias.scope !143, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsa5Qem16B4JI_15deltalake_azure:bb.a
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsa5Qem16B4JI_15deltalake_azure.exit
    i64 1, label %bb.c
  ], !prof !146

default.unreachable:                              ; preds = %bb.a
  unreachable
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14insert_no_growCsa5Qem16B4JI_15deltalake_azure:bb.a
  %.val3 = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !147
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
end_hunk_3
begin_hunk_4_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14insert_no_growCsa5Qem16B4JI_15deltalake_azure:bb.a
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.b:                                             ; preds = %._crit_edge.i
  %i.l = load <16 x i8>, ptr %.val, align 16, !noalias !150
  %i.m = icmp slt <16 x i8> %i.l, zeroinitializer
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.n, 0
end_hunk_4
begin_hunk_5_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14insert_no_growCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.s = add i64 %i.r, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.s, %.val3             ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.t, align 1, !noalias !147
  %i.u = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
end_hunk_5
begin_hunk_6_@_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !153
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_6
begin_hunk_7_@_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !156
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_7
begin_hunk_8_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !159, !noundef !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE13drop_elementsCsa5Qem16B4JI_15deltalake_azure.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !162
  %.promoted4 = load ptr, ptr %i.a, align 8
  %.promoted7 = load ptr, ptr %i.f, align 8
  br label %bb.b
end_hunk_8
begin_hunk_9_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %.lcssa16 = phi ptr [ %.promoted4, %.preheader.i ], [ %.lcssa15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !162
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !162
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i9, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa16, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !166
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
end_hunk_9
begin_hunk_10_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !162
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %.lcssa15, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !159
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i unwind label %bb.c, !noalias !159

bb.c:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i unwind label %bb.d, !noalias !159

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !159
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !159
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE13drop_elementsCsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

end_hunk_10
begin_hunk_11_@_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !169, !noundef !8 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !169 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !169
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !169
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !169
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !172
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
end_hunk_11
begin_hunk_12_@_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !169
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
end_hunk_12
begin_hunk_13_@_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !175, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !181, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !181, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !182
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
end_hunk_13
begin_hunk_14_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !187
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
end_hunk_14
begin_hunk_15_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i unwind label %bb.e, !noalias !181

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.body.i.i.i unwind label %bb.f, !noalias !181

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !181
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i unwind label %bb.g, !noalias !181

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
end_hunk_15
begin_hunk_16_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.z, %bb.e ]
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #21
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !181

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsa5Qem16B4JI_15deltalake_azure.exit.i.i unwind label %bb.h, !noalias !181

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !181

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !181
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %.body.i.i.i
end_hunk_16
begin_hunk_17_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !181
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsa5Qem16B4JI_15deltalake_azure.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !181
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure.exit.i, label %bb.d

end_hunk_17
begin_hunk_18_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure.exit.i
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !175, !nonnull !8, !noundef !8
  %i.aq = sub i64 -48, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !175
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure.exit.i, %bb.k
end_hunk_18
begin_hunk_19_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !192, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !198, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !198, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !199
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
end_hunk_19
begin_hunk_20_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !204
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
end_hunk_20
begin_hunk_21_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !209, !alias.scope !210, !noalias !198, !noundef !8
  %i.aa = icmp slt i64 %i.z, -9223372036854775801
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i unwind label %bb.f, !noalias !198

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.body.i.i.i unwind label %bb.g, !noalias !198

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !198
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i unwind label %bb.h, !noalias !198

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
end_hunk_21
begin_hunk_22_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ab, %bb.f ]
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #21
          to label %common.resume.i.i.i unwind label %bb.l, !noalias !198

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !88, !alias.scope !215, !noalias !198, !noundef !8
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i2.i.i.i unwind label %bb.j, !noalias !198

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !198

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !198
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %.body.i.i.i
end_hunk_22
begin_hunk_23_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i2.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !198
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !198
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure.exit.i.i2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i
end_hunk_23
begin_hunk_24_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br i1 %i.as, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i
  %i.at = load ptr, ptr %0, align 8, !alias.scope !192, !nonnull !8, !noundef !8
  %i.au = sub i64 -48, %i.am
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !192
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure.exit.i, %bb.m
end_hunk_24
begin_hunk_25_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !220, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !226, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !226, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !227
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
end_hunk_25
begin_hunk_26_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !232
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
end_hunk_26
begin_hunk_27_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i.i unwind label %bb.e, !noalias !226

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i unwind label %bb.f, !noalias !226

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !226
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsa5Qem16B4JI_15deltalake_azure.exit.i.i.i.i.i: ; preds = %bb.e
end_hunk_27
begin_hunk_28_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.y = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.z = add i16 %.lcssa.i.i.i, -1
  %i.aa = and i16 %i.z, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !226
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i, label %bb.d

end_hunk_28
begin_hunk_29_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !220, !nonnull !8, !noundef !8
  %i.ak = sub nuw nsw i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !220
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i, %bb.g
end_hunk_29
begin_hunk_30_@_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !237
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  %i.g = icmp eq i64 %i.c, 0
end_hunk_30
begin_hunk_31_@llvm.umin.i64
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!142 = distinct !{!142, !"_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!145 = distinct !{!145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsa5Qem16B4JI_15deltalake_azure"}
!146 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!149 = distinct !{!149, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!152 = distinct !{!152, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!155 = distinct !{!155, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!158 = distinct !{!158, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE13drop_elementsCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!161 = distinct !{!161, !"_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE13drop_elementsCsa5Qem16B4JI_15deltalake_azure"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!164 = distinct !{!164, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure"}
!165 = !{!163}
!166 = !{!167, !163, !160}
!167 = distinct !{!167, !168, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!168 = distinct !{!168, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!171 = distinct !{!171, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure"}
!172 = !{!173, !170}
!173 = distinct !{!173, !174, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!174 = distinct !{!174, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!177 = distinct !{!177, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!180 = distinct !{!180, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsa5Qem16B4JI_15deltalake_azure"}
!181 = !{!179, !176}
!182 = !{!183, !185, !179, !176}
!183 = distinct !{!183, !184, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!184 = distinct !{!184, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!185 = distinct !{!185, !186, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!186 = distinct !{!186, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure"}
!187 = !{!188, !190, !179, !176}
!188 = distinct !{!188, !189, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!189 = distinct !{!189, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!190 = distinct !{!190, !191, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!191 = distinct !{!191, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!194 = distinct !{!194, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!197 = distinct !{!197, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure"}
!198 = !{!196, !193}
!199 = !{!200, !202, !196, !193}
!200 = distinct !{!200, !201, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!201 = distinct !{!201, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!202 = distinct !{!202, !203, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBW_14AttributeValueEE3newCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!203 = distinct !{!203, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBW_14AttributeValueEE3newCsa5Qem16B4JI_15deltalake_azure"}
!204 = !{!205, !207, !196, !193}
!205 = distinct !{!205, !206, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!206 = distinct !{!206, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!207 = distinct !{!207, !208, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!208 = distinct !{!208, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure"}
!209 = !{i64 0, i64 -9223372036854775801}
!210 = !{!211, !213}
!211 = distinct !{!211, !212, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!212 = distinct !{!212, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsa5Qem16B4JI_15deltalake_azure"}
!213 = distinct !{!213, !214, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!214 = distinct !{!214, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsa5Qem16B4JI_15deltalake_azure"}
!215 = !{!216, !218, !213}
!216 = distinct !{!216, !217, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!217 = distinct !{!217, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsa5Qem16B4JI_15deltalake_azure"}
!218 = distinct !{!218, !219, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!219 = distinct !{!219, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECsa5Qem16B4JI_15deltalake_azure"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!222 = distinct !{!222, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!225 = distinct !{!225, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure"}
!226 = !{!224, !221}
!227 = !{!228, !230, !224, !221}
!228 = distinct !{!228, !229, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!229 = distinct !{!229, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!230 = distinct !{!230, !231, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!231 = distinct !{!231, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure"}
!232 = !{!233, !235, !224, !221}
!233 = distinct !{!233, !234, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!234 = distinct !{!234, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!235 = distinct !{!235, !236, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!236 = distinct !{!236, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure"}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!239 = distinct !{!239, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!240 = distinct !{!240, !241, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!241 = distinct !{!241, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure"}
end_hunk_31
