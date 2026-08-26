Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.1?download=true
inline.NumInlined: 62
inline.NumDeleted: 49
begin_hunk_0_@_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !46
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 3 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 3 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j
  %i.n = add i64 %i.m, %i.h
  %i.o = and i64 %i.n, %i.j                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.r, ptr %i.q, i64 %i.g, i64 %i.o) #26
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.b, ptr %i.a, i64 8, i64 800) #26
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.b, ptr %i.a, i64 8, i64 1000) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_8ToString9to_stringCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !noalias !47
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !47
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1610612768, ptr %i.c, align 8, !noalias !47
  store ptr %i.b, ptr %i.a, align 8, !noalias !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @29, ptr %i.d, align 8, !noalias !47
  %i.e = invoke zeroext i1 @_RNvXsc_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b, !noalias !47

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.b) #27
          to label %bb.e unwind label %bb.d, !noalias !47

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCse4VeaA6Ikg_11proc_macro2(i1 zeroext %i.e, ptr nonnull @30, i64 55, ptr nonnull align 8 @32)
          to label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.b, !noalias !47

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !47
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsE_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsE_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtCsje5z0uo7eGy_12darling_core4util9over_ride8OverrideNtNtCs6bAnw1I7Lci_3syn4path4PathEENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs6bAnw1I7Lci_3syn4path4PathENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8, !noalias !50
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.e) #26, !noalias !50
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = tail call i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 4 %i.g) #26, !noalias !53 ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !noalias !53
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i unwind label %bb.d, !noalias !53

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.b) #27
          to label %bb.f unwind label %bb.e, !noalias !53

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !53
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i: ; preds = %bb.c
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.i.sroa.4.0.copyload = load ptr, ptr %.sroa.0.i.sroa.4.0..sroa_idx, align 8
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.i.sroa.5.0.copyload = load i64, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i, %bb.b
  %.sroa.44.0 = phi i32 [ undef, %bb.b ], [ %i.h, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.4.0 = phi i64 [ undef, %bb.b ], [ %.sroa.0.i.sroa.5.0.copyload, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.i.sroa.4.0.copyload, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %.sroa.0.i.sroa.0.0.copyload, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.44.0, ptr %.sroa.44.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #2 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueENtNtB7_5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %..i = select i1 %i.e, i64 3, i64 4
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %1, ptr %i.h) #26
  %i.i = add i64 %.sroa.0.0.i, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCse4VeaA6Ikg_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #26
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs6bAnw1I7Lci_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEp4ItemRB1c_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1g_(ptr %0, ptr align 8 %1) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB4_4ArgsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [80 x i8], align 8                ; 2 uses
  %i.z = alloca [96 x i8], align 8                ; 3 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [32 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 2 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.aj, align 8
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.ag) #26
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1M_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.w, ptr nonnull align 8 @41) #26
  br label %bb.bo

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.an = invoke i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3lenB4_(ptr nonnull align 8 %i.ai)
          to label %bb.d unwind label %.thread13

.thread13:                                        ; preds = %bb.s, %bb.bp, %bb.q, %bb.n, %.noexc, %bb.l, %bb.i, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 0, ptr nonnull align 8 @33)
          to label %bb.f unwind label %.thread13

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.aq, ptr nonnull align 8 @35)
          to label %bb.g unwind label %.thread13

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 1, ptr nonnull align 8 @36)
          to label %bb.j unwind label %.thread13

bb.i:                                             ; preds = %bb.j, %bb.d, %bb.g
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ %i.av, %bb.j ] ; 2 uses
  %i.at = invoke align 8 ptr @_RNvMs_NtCs6bAnw1I7Lci_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.ai)
          to label %bb.k unwind label %.thread13  ; 2 uses

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.au, ptr nonnull align 8 @37)
          to label %bb.i unwind label %.thread13

bb.k:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.af, align 8
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtCse4VeaA6Ikg_11proc_macro25IdentINtB7_9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.af, ptr nonnull align 8 @37)
          to label %.split unwind label %.thread13

.split:                                           ; preds = %bb.l
  %spec.select = select i1 %i.aw, i1 true, i1 %.sroa.0.0
  br i1 %spec.select, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %.sroa.0.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split, %bb.m
end_hunk_0
