Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.7?download=true
inline.NumInlined: 65
inline.NumDeleted: 5
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtCsiHivYpkJ4Hu_2cc5ErrorE3mapINtNtBM_6borrow3CoweENcNtB1O_5Owned0EB1m_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvYNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE5Owned0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtBb_6string6StringEE9call_onceCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools6VsVersNtNtCs1xwejQucwHj_5alloc6string6StringE3mapNtNtCsiHivYpkJ4Hu_2cc16windows_registry6VsVersNCNvB2j_15find_vs_version0EB2l_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = tail call i8 @_RNCNvNtCsiHivYpkJ4Hu_2cc16windows_registry15find_vs_version0B5_(i8 %i.c) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCsaL1QbXo9JQH_3std7process6OutputNtNtNtB5_2io5error5ErrorE7map_errNtCsiHivYpkJ4Hu_2cc5ErrorNCNvNtB1S_15command_helpers25spawn_and_wait_for_output0EB1S_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void @_RNCNvNtCsiHivYpkJ4Hu_2cc15command_helpers25spawn_and_wait_for_output0B5_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, ptr %i.e) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i8, i8 } @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyNtBM_5ErrorE14unwrap_or_elseNCNvMBK_NtBK_4Tool13with_featuress_0EBM_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = call { i8, i8 } @_RNCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB4_4Tool13with_featuress_0B6_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = insertvalue { i8, i8 } poison, i8 %i.f, 0
  %i.j = insertvalue { i8, i8 } %i.i, i8 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i8, i8 } [ %i.d, %bb.b ], [ %i.j, %bb.c ]
  ret { i8, i8 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCsiHivYpkJ4Hu_2cc8tempfile13NamedTempfileNtNtNtB5_2io5error5ErrorE7map_errNtBM_5ErrorNCNvNvMNtBM_4toolNtB2g_4Tool13with_features19detect_family_inners0_0EBM_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void @_RNCNvNvMNtCsiHivYpkJ4Hu_2cc4toolNtB6_4Tool13with_features19detect_family_inners0_0B8_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, ptr %i.e) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE7map_errNtCsiHivYpkJ4Hu_2cc5ErrorNCNvNvMNtB1i_4toolNtB1M_4Tool13with_features19detect_family_inners_0EB1i_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNvNvMNtCsiHivYpkJ4Hu_2cc4toolNtB6_4Tool13with_features19detect_family_inners_0B8_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE7or_elseBJ_NCNvMs4_CsiHivYpkJ4Hu_2ccNtB1r_5Build8assembles0_0EB1r_(ptr %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build8assembles0_0B7_(ptr align 8 %1, ptr align 8 %2, ptr nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultyNtNtNtB5_2io5error5ErrorE3mapuNCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1n_5Build8assembles0_00EB1n_(i64 %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  tail call void @_RNCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB9_5Build8assembles0_00B9_(i64 %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiHivYpkJ4Hu_2cc(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0, ptr align 8 %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiHivYpkJ4Hu_2cc(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %2 = icmp eq i8 %i.b, 0
  br i1 %2, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.35.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.4.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvYNvNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB9_11RandomState3new4KEYS27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceCsiHivYpkJ4Hu_2cc() #21 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.4.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.35.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command11current_dirINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtB8_4path4PathEECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCsaL1QbXo9JQH_3std4path4PathEINtNtCs3oUPovFnLWP_4core7convert5AsRefBI_E6as_refCsiHivYpkJ4Hu_2cc(ptr align 8 %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8 %1) #23
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3cwd(ptr align 8 %0, ptr %i.c, i64 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8 %1)
  ret ptr %0

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXsV_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8 %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #23
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.c, i64 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1)
  ret ptr %0

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXsT_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8 %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #23
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.c, i64 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1)
  ret ptr %0

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtB8_4path4PathECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.d, i64 %i.e)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.c, i64 %i.d)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB2_5AsRefBw_E6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.d, i64 %i.e)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argReECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8 %0, ptr %i.d, i64 %i.e)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB8_3ffi6os_str5OsStrEBP_ECsiHivYpkJ4Hu_2cc(ptr returned align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB2_5AsRefB14_E6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #21 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB2_5AsRefB14_E6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr nonnull align 8 %i.c, ptr %i.e, i64 %i.f, ptr %i.h, i64 %i.i)
  ret ptr %0
end_hunk_0
begin_hunk_1_@_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorE2okCsiHivYpkJ4Hu_2cc:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.05 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %.sroa.3.03 = phi i32 [ undef, %bb.c ], [ %i.d, %bb.b ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.05, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.03, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std7process6OutputNtNtNtB4_2io5error5ErrorE5is_okCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool4ToolNtBL_5ErrorE2okBL_(ptr nofree writeonly sret([152 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiHivYpkJ4Hu_2cc4tool4ToolNtB11_5ErrorEEB11_(ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load ptr, ptr %1, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtB11_5ErrorEEB11_(ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorE2okB1r_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load i64, ptr %1, align 8
  %.not1 = icmp eq i64 %i.c, -2
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorEEB1H_(ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE2okCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReRNtCsiHivYpkJ4Hu_2cc5ErrorE17unwrap_or_defaultBM_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_RNvXs0_NtCs3oUPovFnLWP_4core3strReNtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.merged = phi { ptr, i64 } [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorE17unwrap_or_defaultBK_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEEB10_(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.0.04 = phi i1 [ %i.d, %.thread ], [ false, %bb.b ]
  ret i1 %.sroa.0.04
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorE9unwrap_orBK_(ptr align 8 %0, i1 zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEEB10_(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.0.03 = phi i1 [ %i.d, %.thread ], [ %1, %bb.b ]
  ret i1 %.sroa.0.03
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbbE5is_okCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiHivYpkJ4Hu_2cc(i1 zeroext %0, i8 returned %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @17, ptr align 8 %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i8 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE2okCsiHivYpkJ4Hu_2cc(i64 %0) unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %not. = and i32 %i.a, 1
  %. = xor i32 %not., 1
  %.sroa.34.0.extract.shift = lshr i64 %0, 32
  %.sroa.34.0.extract.trunc = trunc nuw i64 %.sroa.34.0.extract.shift to i32
  %i.b = insertvalue { i32, i32 } poison, i32 %., 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %.sroa.34.0.extract.trunc, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCsiHivYpkJ4Hu_2cc(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  store i8 %.sroa.23.0.extract.trunc, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @18, ptr align 8 %3) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %0, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  ret i32 %.sroa.4.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorE5is_okBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -2
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCsiHivYpkJ4Hu_2cc(i32 %0) unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 133
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookupCsiHivYpkJ4Hu_2cc(i32 %0) #21
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -2
  %or.cond = icmp ult i32 %i.a, 35
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @19, ptr nonnull inttoptr (i64 143 to ptr), ptr nonnull align 8 @21) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 57
  %i.c = icmp samesign ugt i32 %1, 10
  %or.cond1 = and i1 %i.b, %i.c
  %i.d = add i32 %0, -65
  %i.e = and i32 %i.d, -33
  %i.f = add nuw nsw i32 %i.e, 10
  %i.g = add i32 %0, -48
  %.sroa.02.0 = select i1 %or.cond1, i32 %i.f, i32 %i.g ; 2 uses
  %i.h = icmp ult i32 %.sroa.02.0, %1
  %.sroa.0.0 = zext i1 %i.h to i32
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.02.0, 1
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB2_21TargetInfoParserInner32from_cargo_environment_variables(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [40 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  call void @_RNvNtCsiHivYpkJ4Hu_2cc9utilities13cargo_env_var(ptr nonnull sret([32 x i8]) align 8 %i.v, ptr nonnull @22, i64 6)
  %i.x = load i64, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.x, -2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.aa = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.w)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.x, %bb.e
  %.pn40 = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %.pn38, %bb.x ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.w) #23
          to label %bb.bm unwind label %bb.bh

bb.e:                                             ; preds = %bb.r, %bb.t, %bb.bk, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ac = extractvalue { ptr, i64 } %i.aa, 0
  %i.ad = extractvalue { ptr, i64 } %i.aa, 1
  invoke void @_RINvMNtCs3oUPovFnLWP_4core3stre10split_oncecECsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr %i.ac, i64 %i.ad, i32 45)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.o, ptr nonnull align 8 %i.w)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ae = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj41_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @23, ptr nonnull align 8 %i.p)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr %i.af, ptr %i.ag)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RINvMCsiHivYpkJ4Hu_2ccNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB3_(ptr nonnull sret([32 x i8]) align 8 %i.s, i8 6, ptr nonnull align 8 %i.r)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTReBJ_EE5ok_orNtCsiHivYpkJ4Hu_2cc5ErrorEBY_(ptr nonnull sret([40 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.259.8.copyload60 = load ptr, ptr %i.ai, align 8 ; 2 uses
  %.sroa.5.8..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.8.copyload62 = load i64, ptr %.sroa.5.8..sroa_idx61, align 8 ; 2 uses
end_hunk_1
