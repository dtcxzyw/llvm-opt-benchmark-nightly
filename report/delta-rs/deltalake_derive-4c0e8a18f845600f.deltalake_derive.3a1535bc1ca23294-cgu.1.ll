Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-4c0e8a18f845600f.deltalake_derive.3a1535bc1ca23294-cgu.1?download=true
inline.NumInlined: 47
inline.NumDeleted: 38
begin_hunk_0_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr4MetaECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBM_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBM_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([240 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 5, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtCsbjGuDcEILED_11proc_macro25IdentNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtNtCs7nQiqFc7Txl_3syn4attr13MetaNameValueNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualBM_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsbjGuDcEILED_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CsjJ0p09o2jmV_10proc_macroNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 4 %i.h) #18, !noalias !48 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !48
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.d, !noalias !48

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr nonnull align 4 %i.b) #20
          to label %bb.f unwind label %bb.e, !noalias !48

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !48
  unreachable

bb.f:                                             ; preds = %bb.d
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
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsr_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys00B5_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve(ptr sret([40 x i8]) align 8, ptr byval([40 x i8]) align 8, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop(ptr byval([40 x i8]) align 8) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2g_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2g_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2z_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBQ_4data5FieldENtB2_12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtB2_12IntoIterator9into_iterB2t_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B42_IB40_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3j_EB4M_EINtNtNtB4_6traits7collect12FromIteratorIB40_B3j_B4M_EE9from_iterBQ_E0B5p_EB2n_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtB2_12IntoIterator9into_iterB2t_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B43_IB41_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3k_EB4N_EINtNtNtB4_6traits7collect12FromIteratorIB41_B3k_B4N_EE9from_iterBQ_E0B5q_EB2n_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtB2_12IntoIterator9into_iterB2f_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1B_5error5ErrorENCINvXso_B3M_IB3K_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB33_EB4w_EINtNtNtB4_6traits7collect12FromIteratorIB3K_B33_B4w_EE9from_iterBQ_E0B59_EB29_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbjGuDcEILED_11proc_macro2(i64, i64, i64) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr align 8) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mivhH47tD_9addr2line(ptr align 8, i64, i64, i64, i64) unnamed_addr #15

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs7nQiqFc7Txl_3syn2ty8printingNtB7_8TypePathNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtB1p_5token5CommaEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsbjGuDcEILED_11proc_macro211TokenStream4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvXs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsU_CsjJ0p09o2jmV_10proc_macroNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs6Po7BT7Nknu_5alloc6string6StringECsl1mHGn7pXMx_12convert_case(ptr align 8, i64) unnamed_addr #6

end_hunk_0
