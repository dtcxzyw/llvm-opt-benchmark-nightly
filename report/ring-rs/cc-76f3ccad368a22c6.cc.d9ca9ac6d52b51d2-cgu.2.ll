Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.2?download=true
begin_hunk_0_@_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCsiHivYpkJ4Hu_2cc:bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB16_3BoxppE21try_clone_from_ref_in16DeallocDropGuardNtNtB18_5alloc6GlobalEEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #22
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %.sroa.01.0, %bb.c ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  ret { ptr, i64 } %i.i

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB5_8PeekableINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B28_NtB28_5Build8assemble0EIB1r_IB1H_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENvYB3g_NtNtNtBb_3ops5deref5Deref5derefEEE4peekB28_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path4PathEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1N_8PeekableINtNtB1P_5chain5ChainINtNtB1P_3map3MapINtNtNtB5_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B3D_NtB3D_5Build8assemble0EIB2V_IB3c_INtNtCs1xwejQucwHj_5alloc4sync3ArcBN_EENvYB4L_NtNtNtB5_3ops5deref5Deref5derefEEE4peek0EB3D_(ptr align 8 %0, ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %. = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.
}

; Function Attrs: inlinehint nonlazybind uwtable
define nonnull ptr @_RNvMse_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE3newCsiHivYpkJ4Hu_2cc(i8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 8, i64 24, i1 zeroext false) #21
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #25
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %0, ptr %.sroa.3.0..sroa_idx, align 8
  ret ptr %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE9drop_slowCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtB4_4sync6atomic6AtomicbERNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheE9drop_slowBI_(ptr align 8 %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc10BuildCacheEBD_(ptr nonnull align 8 %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCsiHivYpkJ4Hu_2cc10BuildCacheRNtNtBG_5alloc6GlobalEEB1c_(ptr nonnull align 8 %i.a) #22
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCsiHivYpkJ4Hu_2cc10BuildCacheRNtNtBG_5alloc6GlobalEEB1c_(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathE11from_raw_inCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %1, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathE9drop_slowCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsaL1QbXo9JQH_3std4path4PathRNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE11from_raw_inCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %1, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes5SliceE11from_raw_inCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %1, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE11from_raw_inCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %1, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i
  %i.l = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  store i64 1, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsiHivYpkJ4Hu_2cc(i64 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %0) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RINvMso_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsq_B6_Bx_18allocate_for_slice0NCB17_s_0ECsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RINvMso_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcShE19allocate_for_layoutNCNvMsq_B6_Bx_18allocate_for_slice0NCB17_s_0ECsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit
  %i.l = insertvalue { ptr, i64 } %i.i, i64 %0, 1
  store i64 1, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.m, align 8
  ret { ptr, i64 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1, i1 zeroext false) #21
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookupCsiHivYpkJ4Hu_2cc(i32 %0) unnamed_addr #9 {
bb.a:
  %i.a = lshr i32 %0, 8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760
  %i.c = zext i1 %i.b to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288
  %i.e = zext i1 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ]
  %i.j = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = lshr i8 %i.n, 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBr_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEINtB2_10EquivalentBq_E10equivalentCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.05.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.01.05.i.i.i ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.k, i64 %i.m, ptr %i.n, i64 %i.p) #21 ; 2 uses
  %i.r = add nuw i64 %.sroa.01.05.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.c
  %or.cond.i.i.i = select i1 %i.q, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.lcssa.ph.i.i.i = xor i1 %i.q, true
  br label %_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit

_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b, %._crit_edge.loopexit.i.i.i
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.lcssa.ph.i.i.i, %._crit_edge.loopexit.i.i.i ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtB2_10EquivalentBq_E10equivalentCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.a, i64 %i.c, ptr %i.d, i64 %i.f) #21
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrowneINtB2_10EquivalentINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEE10equivalentCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %i.a, i64 %i.c) #21
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvXNtCs3oUPovFnLWP_4core6borrowINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBv_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEINtB2_6BorrowBu_E6borrowCsiHivYpkJ4Hu_2cc(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvXNtCs3oUPovFnLWP_4core6borrowINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtB2_6BorrowBu_E6borrowCsiHivYpkJ4Hu_2cc(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB2_5AsRefB14_E6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.a) #21
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefeE6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtB6_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05.i ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05.i ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.e, i64 %i.g, ptr %i.h, i64 %i.j) #21 ; 2 uses
  %i.l = add nuw i64 %.sroa.01.05.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %1
  %or.cond.i = select i1 %i.k, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.lcssa.ph.i = xor i1 %i.k, true
  br label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc.exit

_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc.exit: ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.lcssa.ph.i, %._crit_edge.loopexit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2w_4Tool10to_command0ENtB2_12IntoIterator9into_iterB2y_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectNtCs93MrfdkTAtF_5shlex5ShlexNtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB8_3BoxppE21try_clone_from_ref_inINtB2_16DeallocDropGuardNtNtBa_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr %i.e, ptr %i.g, i64 %i.a, i64 %i.c) #21
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4 %i.a, ptr %1, i64 %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr %i.a, ptr %1, i64 %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB8_5OsStrENtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull %i.f, i64 %i.e) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs18_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_4IntoNtB19_8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoINtNtCs1xwejQucwHj_5alloc4sync3ArceEE4intoCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvXs18_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvXs18_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEE4intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call { ptr, i64 } @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i64 1, i64 %1) #21
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.09.0.i.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.311.sroa.3.0.i.i.i = phi ptr [ undef, %bb.a ], [ %i.e, %bb.b ]
  store i64 %.sroa.09.0.i.i.i, ptr %i.b, align 8
  %.sroa.311.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.311.0..sroa_idx.i.i.i, align 8
  %.sroa.311.sroa.2.0..sroa.311.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.311.sroa.2.0..sroa.311.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.311.sroa.3.0..sroa.311.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.311.sroa.3.0.i.i.i, ptr %.sroa.311.sroa.3.0..sroa.311.0..sroa_idx.sroa_idx.i.i.i, align 8
  invoke void @_RNvXs0_NtCs3oUPovFnLWP_4core5cloneeNtB5_13CloneToUninit15clone_to_uninitCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nonnull %.sroa.01.0.i.i.i)
          to label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxeEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB16_3BoxppE21try_clone_from_ref_in16DeallocDropGuardNtNtB18_5alloc6GlobalEEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 1, i64 %1) #25
  unreachable

_RNvXs3_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxeEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.c
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENCNvMs4_CsiHivYpkJ4Hu_2ccNtB2G_5Build15cuda_file_count0ENtNtNtB9_6traits8iterator8Iterator5countB2G_(ptr %0, ptr %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b) #21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.0.0 = select i1 %i.f, i64 %i.h, i64 -1
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = call { ptr, ptr } @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapjNCINvNvXs1_NtNtB1V_8adapters6filterINtB2K_6FilterppEB1P_5count8to_usizeRBJ_NCNvMs4_CsiHivYpkJ4Hu_2ccNtB3U_5Build15cuda_file_count0E0EB3U_(ptr %i.i, ptr %i.j) #21 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  %i.n = call i64 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2O_6filterINtB3x_6FilterppEB1W_5count8to_usizeB3g_NCNvMs4_CsiHivYpkJ4Hu_2ccNtB4w_5Build15cuda_file_count0E0NCINvXsK_NtB20_5accumjNtB5s_3Sum3sumINtB2M_3MapBF_B3m_EE0E0EB4w_(ptr %i.l, ptr %i.m, i64 0) #21 ; 2 uses
  call void @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtB5_15SpecAssumeCount27assume_count_le_upper_boundCsiHivYpkJ4Hu_2cc(i64 %i.n, i64 %.sroa.0.0) #21
  ret i64 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2g_4Tool10to_command0ENtNtNtB9_6traits8iterator8Iterator4nextB2i_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2p_4Tool10to_command0EB2r_(ptr align 8 %0, ptr nonnull align 8 %i.a) #21
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1w_15BytesIsNotEmptyENtNtNtB9_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { ptr, i64 } @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nonnull %i.a) #21
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4fromCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = invoke { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %i.e) #21
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.b
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i: ; preds = %.noexc
  %i.i = extractvalue { i64, i64 } %i.f, 1
  %i.j = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.g, i64 %i.i)
          to label %.noexc2 unwind label %bb.d    ; 2 uses

.noexc2:                                          ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = invoke { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.k, i64 %i.l, i1 zeroext false) #21
          to label %.noexc3 unwind label %bb.d    ; 2 uses

.noexc3:                                          ; preds = %.noexc2
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc3
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.k, i64 %i.l) #25
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %.noexc2, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i, %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0) #22
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.noexc3
  store i64 1, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.c, i64 %i.e, i1 false)
  %i.s = insertvalue { ptr, i64 } %i.m, i64 %i.e, 1
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0)
  ret { ptr, i64 } %i.s

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1d_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_6borrow3CowBH_EE4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = invoke { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %i.g) #21
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i

bb.c:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.c
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i: ; preds = %.noexc.i
  %i.k = extractvalue { i64, i64 } %i.h, 1
  %i.l = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.i, i64 %i.k)
          to label %.noexc2.i unwind label %bb.e  ; 2 uses

.noexc2.i:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = invoke { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.m, i64 %i.n, i1 zeroext false) #21
          to label %.noexc3.i unwind label %bb.e  ; 2 uses

.noexc3.i:                                        ; preds = %.noexc2.i
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %.noexc3.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.m, i64 %i.n) #25
          to label %.noexc4.i unwind label %bb.e

.noexc4.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %.noexc2.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b) #22
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.r

_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %.noexc3.i
  store i64 1, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr readonly align 1 %i.e, i64 %i.g, i1 false)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %i.y) #21 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i2

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i2: ; preds = %bb.h
  %i.ac = extractvalue { i64, i64 } %i.z, 1
  %i.ad = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ad, 1      ; 2 uses
  %i.ag = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.ae, i64 %i.af, i1 zeroext false) #21 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i2
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.ae, i64 %i.af) #25
  unreachable

_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i2
  store i64 1, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr readonly align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit
  %.pn3 = phi { ptr, i64 } [ %i.o, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit ], [ %i.ag, %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit ]
  %.pn4 = phi i64 [ %i.g, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit ], [ %i.y, %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit ]
  %.pn = insertvalue { ptr, i64 } %.pn3, i64 %.pn4, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArceENtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = tail call zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr nonnull %i.e, i64 %i.d, ptr align 8 %1)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1k_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.d, i64 %i.f, ptr %i.g, i64 %i.i) #21 ; 2 uses
  %i.k = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %2
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.j, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB7_4sync8ArcInnerNtCsiHivYpkJ4Hu_2cc10BuildCacheEEENtNtNtBO_3ops4drop4Drop4dropB20_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.b, ptr %i.a, i64 8, i64 376) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 4
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.f, ptr %i.e, i64 8, i64 %i.d) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @_RNvXsA_NtCs3oUPovFnLWP_4core3nummNtNtNtB7_3str6traits7FromStr8from_strCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add i64 %1, %i.c                ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp ult i64 %.sroa.15.0.i, 9
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5666.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5666.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not55.i = icmp eq i64 %i.h, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.ac, %bb.g ], [ 0, %.preheader.i ], [ %i.r, %.preheader58.i ]
  %i.e = zext i32 %.sroa.045.1.i to i64
  %i.f = shl nuw i64 %i.e, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i29 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc:bb.a
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBI_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheE9drop_slowBI_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbERNtNtB7_5alloc6GlobalENtNtNtBO_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f, ptr %i.g, i64 8, i64 24) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtCsiHivYpkJ4Hu_2cc10BuildCacheRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f, ptr %i.g, i64 8, i64 376) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtCsaL1QbXo9JQH_3std4path4PathRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8
  %i.i = load i64, ptr %i.b, align 8
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g, ptr %i.h, i64 8, i64 %i.k) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakeRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8
  %i.i = load i64, ptr %i.b, align 8
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g, ptr %i.h, i64 8, i64 %i.k) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsQ_NtCsaL1QbXo9JQH_3std4pathINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_4PathEINtNtCs3oUPovFnLWP_4core7convert4FromRB12_E4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i.i
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsV_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr nonnull %i.d, i64 %i.c, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheENtNtCs3oUPovFnLWP_4core7default7Default7defaultBI_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [360 x i8], align 8               ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 8, i64 376, i1 zeroext false) #21
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 8, i64 376) #25
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  invoke void @_RNvXsd_CsiHivYpkJ4Hu_2ccNtB5_10BuildCacheNtNtCs3oUPovFnLWP_4core7default7Default7defaultB5_(ptr nonnull sret([360 x i8]) align 8 %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtBG_4sync8ArcInnerNtCsiHivYpkJ4Hu_2cc10BuildCacheEEEEB2d_(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsiHivYpkJ4Hu_2cc.exit
  store i64 1, ptr %i.d, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.210.0..sroa_idx, align 8
  %.sroa.311.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.311.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(360) %i.a, i64 360, i1 false)
  ret ptr %i.d

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec15set_len_on_dropNtB4_12SetLenOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = load ptr, ptr %0, align 8
  %i.g = call ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4 %i.f, ptr nonnull %i.d, i64 %i.e) ; 3 uses
  %.not.i.not = icmp eq ptr %i.g, null
  br i1 %.not.i.not, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.h, align 8
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.h, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

bb.f:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %0, ptr nonnull align 8 @4, ptr %i.j, ptr %i.k)
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.e, %bb.b, %bb.f
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.f ], [ false, %bb.b ], [ true, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = load ptr, ptr %0, align 8
  %i.g = call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr %i.f, ptr nonnull %i.d, i64 %i.e) ; 3 uses
  %.not.i.not = icmp eq ptr %i.g, null
  br i1 %.not.i.not, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.h, align 8
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.h, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

bb.f:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %0, ptr nonnull align 8 @8, ptr %i.j, ptr %i.k)
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.e, %bb.b, %bb.f
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.f ], [ false, %bb.b ], [ true, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsc_NtNtCsaL1QbXo9JQH_3std4sync14reentrant_lockINtB5_18ReentrantLockGuardINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered10linewriter10LineWriterNtNtNtB9_2io5stdio9StdoutRawEEENtNtNtB1h_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std6thread2id8ThreadIdE6map_oryNCNvMsd_NtNtBO_4sync14reentrant_lockNtB1G_3Tid3set0ECsiHivYpkJ4Hu_2cc(i64 0, i64 0) #21
  tail call void @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic12atomic_storeyKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, i64 %i.i, i8 0) #21
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = atomicrmw xchg ptr %i.k, i32 0 release, align 4
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr nonnull align 4 %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 8, i64 24, i1 zeroext false) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #25
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #22
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsiHivYpkJ4Hu_2cc.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @119, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaL1QbXo9JQH_3std4path4PathENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@_RNvXso_NtCs3oUPovFnLWP_4core3numlNtNtNtB7_3str6traits7FromStr8from_strCsiHivYpkJ4Hu_2cc:bb.a
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i8 45, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.k [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = add i64 %1, -1
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = add i64 %1, -1                           ; 3 uses
  %i.g = icmp ult i64 %1, 9
  br i1 %i.g, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.e
  %.not106135.i = icmp eq i64 %i.f, 0
  br i1 %.not106135.i, label %.loopexit.i, label %.lr.ph139.i

.loopexit.i:                                      ; preds = %bb.i, %bb.j, %bb.o, %bb.p, %.preheader.i, %.preheader114.i
  %.sroa.087.1.i = phi i32 [ %i.ag, %bb.j ], [ %i.bf, %bb.p ], [ %i.av, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.w, %bb.i ]
  %i.h = zext i32 %.sroa.087.1.i to i64
  %i.i = shl nuw i64 %i.h, 32
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.0.1134.i = phi ptr [ %i.j, %bb.i ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.26.1133.i = phi i64 [ %i.k, %bb.i ], [ %i.f, %bb.e ]
  %.sroa.087.0132.i = phi i32 [ %i.w, %bb.i ], [ 0, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1134.i, i64 1
  %i.k = add i64 %.sroa.26.1133.i, -1             ; 2 uses
  %i.l = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.087.0132.i, i32 10) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0
  %i.n = extractvalue { i32, i1 } %i.l, 1
  %i.o = load i8, ptr %.sroa.0.1134.i, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.p, i32 10) #21 ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.q, 0
  %i.s = trunc i32 %i.r to i1                     ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  br i1 %i.s, label %bb.h, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.g:                                             ; preds = %.lr.ph.i
  %spec.select.i = select i1 %i.s, i64 769, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.h:                                             ; preds = %bb.f
  %i.t = extractvalue { i32, i32 } %i.q, 1
  %i.u = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.m, i32 %i.t) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  %.not105.i = icmp eq i64 %i.k, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph139.i:                                      ; preds = %.preheader114.i, %bb.j
  %.sroa.0.2138.i = phi ptr [ %i.af, %bb.j ], [ %i.e, %.preheader114.i ] ; 2 uses
  %.sroa.26.2137.i = phi i64 [ %i.ae, %bb.j ], [ %i.f, %.preheader114.i ]
  %.sroa.087.2136.i = phi i32 [ %i.ag, %bb.j ], [ 0, %.preheader114.i ]
  %i.x = load i8, ptr %.sroa.0.2138.i, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.y, i32 10) #21 ; 2 uses
  %i.aa = extractvalue { i32, i32 } %i.z, 0
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.j:                                             ; preds = %.lr.ph139.i
  %i.ac = extractvalue { i32, i32 } %i.z, 1
  %i.ad = mul i32 %.sroa.087.2136.i, 10
  %i.ae = add nsw i64 %.sroa.26.2137.i, -1        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.2138.i, i64 1
  %i.ag = sub i32 %i.ad, %i.ac                    ; 2 uses
  %.not106.i = icmp eq i64 %i.ae, 0
  br i1 %.not106.i, label %.loopexit.i, label %.lr.ph139.i

bb.k:                                             ; preds = %bb.d, %bb.c
  %.sroa.26.0.i = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.ah = icmp ult i64 %.sroa.26.0.i, 8
  br i1 %i.ah, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.k
  %.not108144.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not108144.i, label %.loopexit.i, label %.lr.ph148.i

.preheader111.i:                                  ; preds = %bb.k, %bb.o
  %.sroa.0.3143.i = phi ptr [ %i.ai, %bb.o ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %.sroa.26.3142.i = phi i64 [ %i.aj, %bb.o ], [ %.sroa.26.0.i, %bb.k ]
  %.sroa.087.3141.i = phi i32 [ %i.av, %bb.o ], [ 0, %bb.k ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.3143.i, i64 1
  %i.aj = add i64 %.sroa.26.3142.i, -1            ; 2 uses
  %i.ak = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.087.3141.i, i32 10) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0
  %i.am = extractvalue { i32, i1 } %i.ak, 1
  %i.an = load i8, ptr %.sroa.0.3143.i, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.ao, i32 10) #21 ; 2 uses
  %i.aq = extractvalue { i32, i32 } %i.ap, 0
  %i.ar = trunc i32 %i.aq to i1                   ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader111.i
  br i1 %i.ar, label %bb.n, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.m:                                             ; preds = %.preheader111.i
  %spec.select109.i = select i1 %i.ar, i64 513, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.n:                                             ; preds = %bb.l
  %i.as = extractvalue { i32, i32 } %i.ap, 1
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.al, i32 %i.as) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.au, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %.not107.i = icmp eq i64 %i.aj, 0
  br i1 %.not107.i, label %.loopexit.i, label %.preheader111.i

.lr.ph148.i:                                      ; preds = %.preheader.i, %bb.p
  %.sroa.0.4147.i = phi ptr [ %i.be, %bb.p ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4146.i = phi i64 [ %i.bd, %bb.p ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.087.4145.i = phi i32 [ %i.bf, %bb.p ], [ 0, %.preheader.i ]
  %i.aw = load i8, ptr %.sroa.0.4147.i, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.ax, i32 10) #21 ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %bb.p, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.p:                                             ; preds = %.lr.ph148.i
  %i.bb = extractvalue { i32, i32 } %i.ay, 1
  %i.bc = mul i32 %.sroa.087.4145.i, 10
  %i.bd = add nsw i64 %.sroa.26.4146.i, -1        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.4147.i, i64 1
  %i.bf = add i32 %i.bb, %i.bc                    ; 2 uses
  %.not108.i = icmp eq i64 %i.bd, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph148.i

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.f, %bb.h, %.lr.ph139.i, %bb.l, %bb.n, %.lr.ph148.i, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.g, %bb.m
  %.sroa.12.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.i, %.loopexit.i ], [ %spec.select109.i, %bb.m ], [ 257, %.lr.ph139.i ], [ 257, %.lr.ph148.i ], [ 1, %bb.a ], [ %spec.select.i, %bb.g ], [ 257, %bb.b ], [ 513, %bb.n ], [ 257, %bb.l ], [ 257, %bb.f ], [ 769, %bb.h ]
  ret i64 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtBN_5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e) #21
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.g) #21
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.g) #21
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull ptr @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBb_3fmt5Write10write_charCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %1, ptr nonnull %i.a, i64 4) #21 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = load ptr, ptr %0, align 8
  %i.f = call ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4 %i.e, ptr %i.c, i64 %i.d) ; 3 uses
  %.not.i = icmp ne ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %i.g, align 8
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.d
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBb_3fmt5Write9write_fmtCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21, !inline_history !53 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = load ptr, ptr %0, align 8
  %i.g = call ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4 %i.f, ptr nonnull %i.d, i64 %i.e), !inline_history !53 ; 3 uses
  %.not.i.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i.not.i, label %_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.e unwind label %bb.d, !inline_history !53

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.h, align 8
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.h, align 8
  br label %_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc.exit

bb.f:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr align 8 %0, ptr nonnull align 8 @4, ptr %i.j, ptr %i.k), !inline_history !53
  br label %_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc.exit

_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB4_12SpecWriteFmt14spec_write_fmtCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.f ], [ false, %bb.b ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %1, ptr nonnull %i.a, i64 4) #21 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = load ptr, ptr %0, align 8
  %i.f = call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr %i.e, ptr %i.c, i64 %i.d) ; 3 uses
  %.not.i = icmp ne ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit
end_hunk_2
