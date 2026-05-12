inline.NumInlined: 47
inline.NumDeleted: 38
begin_hunk_0_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 2 uses
  %i.k = trunc i32 %0 to i1
  br i1 %i.k, label %bb.b, label %bb.f

end_hunk_0
begin_hunk_1_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %.pre.i8 = load i64, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.af = phi i64 [ %i.z, %bb.f ], [ %.pre.i8, %bb.h ]
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
end_hunk_1
begin_hunk_2_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %1, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load i64, ptr %i.aa, align 8
end_hunk_2
begin_hunk_3_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.pre.i.i = load i64, ptr %i.y, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.q:                                             ; preds = %bb.l, %bb.j
  %i.ay = phi i64 [ %i.aj, %bb.j ], [ %.pre.i.i, %bb.l ]
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
end_hunk_4
begin_hunk_5_@_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  store i64 %i.bc, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 %1, ptr nonnull align 8 %2, ptr %3)
  br label %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.r:                                             ; preds = %bb.k
end_hunk_5
begin_hunk_6_@_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive
define hidden void @_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -9223372036854775808
end_hunk_6
begin_hunk_7_@_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CsjJ0p09o2jmV_10proc_macroNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 4 %i.h) #18, !noalias !48 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !48
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.d, !noalias !48
end_hunk_7
begin_hunk_8_@_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.b
end_hunk_8
