inline.NumInlined: 177
inline.NumDeleted: 86
begin_hunk_0_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !163
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %.lcssa15, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !160
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !170
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -32
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !210, !alias.scope !211, !noalias !199, !noundef !8
end_hunk_3
begin_hunk_4_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i.i unwind label %bb.e, !noalias !227
end_hunk_4
