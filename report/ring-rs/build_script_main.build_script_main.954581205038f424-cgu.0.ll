Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_main.build_script_main.954581205038f424-cgu.0?download=true
inline.NumInlined: 199
inline.NumDeleted: 104
begin_hunk_0_@_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3j_3VecB1n_E14extend_trustedB3_E0ECscOzg5arm0FQ_17build_script_main:bb.a
bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.i) #21
          to label %.noexc.i.i unwind label %bb.c ; 2 uses

.noexc.i.i:                                       ; preds = %bb.d
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  invoke void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.k, i64 %i.l) #21
          to label %.noexc10.i.i unwind label %bb.c

.noexc10.i.i:                                     ; preds = %.noexc.i.i
  invoke void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsaL1QbXo9JQH_3std4path7PathBufNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1X_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterReENvYB1f_INtNtBe_7convert4FromRB3K_E4fromEE0E0CscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #21
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.noexc10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2z_8for_each4callB1t_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3P_3VecB1t_E14extend_trustedBN_E0E0ECscOzg5arm0FQ_17build_script_main.exit, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRReNtNtCsaL1QbXo9JQH_3std4path7PathBufuNvYB1j_INtNtB4_7convert4FromB1g_E4fromNCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1j_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecB1j_E14extend_trustedINtBG_3MapINtNtNtB4_5slice4iter4IterB1h_EB1T_EE0E0E0ECscOzg5arm0FQ_17build_script_main.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2z_8for_each4callB1t_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3P_3VecB1t_E14extend_trustedBN_E0E0ECscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.e, %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3vec15set_len_on_drop12SetLenOnDropECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCsaL1QbXo9JQH_3std4path7PathBufB1G_EENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB1G_EEB2t_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1n_8adapters3map3MapINtNtB6_9into_iter8IntoIterTBG_BG_EENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0EEB3E_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterIB4_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes_0ENCB2r_s0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB16_3VecB1P_EEB2x_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1n_8adapters6filter6FilterIB2v_INtNtB6_9into_iter8IntoIterBG_ENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes_0ENCB3E_s0_0EEB3K_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core16perlasm_src_dsts0ENtNtNtBa_6traits8iterator8Iterator3mapTB1n_B1n_ENCB1Z_s_0EB25_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, ptr %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterTRSReB1q_EENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core16sources_for_arch0ENtNtNtBa_6traits8iterator8Iterator3mapNtNtCsaL1QbXo9JQH_3std4path7PathBufNCB1A_s_0EB1G_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes_0ENtNtNtBa_6traits8iterator8Iterator6filterNCB2n_s0_0EB2t_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1b_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEB1U_EE0B8_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.h = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.e, i64 %i.g, ptr %i.i, i64 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = call align 8 ptr @_RINvMs3_CsiHivYpkJ4Hu_2ccNtB6_5Build4fileNtNtCsaL1QbXo9JQH_3std4path7PathBufECscOzg5arm0FQ_17build_script_main(ptr align 8 %i.c, ptr nonnull align 8 %i.b) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldTNtNtCsaL1QbXo9JQH_3std4path7PathBufB10_EB10_INtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB10_EINtNtBa_6result6ResultB1I_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0NCINvNtB1N_16in_place_collect24write_in_place_with_dropB10_E0E0B3k_(ptr align 8 %0, ptr %1, ptr %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  invoke void @_RNCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0B7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.f, ptr nonnull align 8 %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = call { ptr, ptr } @_RNCINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCsaL1QbXo9JQH_3std4path7PathBufE0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g, ptr %1, ptr %2, ptr nonnull align 8 %i.i)
  ret { ptr, ptr } %i.j

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c) #23
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes_0NCIB2_B15_B1E_B2G_NCB3a_s0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0E0B3g_(ptr align 8 %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8
  %i.g = invoke zeroext i1 @_RNCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes_0B7_(ptr %i.f, ptr align 8 %3)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke { ptr, ptr } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEzENtNtNtB7_3ops9try_trait3Try11from_outputCsiHivYpkJ4Hu_2cc(ptr %1, ptr %2)
          to label %bb.m unwind label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store ptr %1, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = invoke zeroext i1 @_RNCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0B7_(ptr align 8 %i.m, ptr nonnull align 8 %i.j)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke { ptr, ptr } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEzENtNtNtB7_3ops9try_trait3Try11from_outputCsiHivYpkJ4Hu_2cc(ptr %1, ptr %2)
          to label %bb.h unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store ptr %1, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.r, align 8
  %i.s = call { ptr, ptr } @_RNCINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCsaL1QbXo9JQH_3std4path7PathBufE0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.p, ptr %1, ptr %2, ptr nonnull align 8 %i.q)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0B3g_.exit

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.j)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0B3g_.exit

bb.i:                                             ; preds = %bb.j
  br i1 %.sroa.02.0.ph.i, label %bb.l, label %.body.thread.thread

bb.j:                                             ; preds = %bb.f, %bb.d
  %.sroa.02.0.ph.i = phi i1 [ true, %bb.d ], [ false, %bb.f ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.j) #23
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.l:                                             ; preds = %bb.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #23
          to label %.body.thread.thread unwind label %bb.k

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0B3g_.exit: ; preds = %bb.g, %bb.h
  %.pn6.i = phi { ptr, ptr } [ %i.s, %bb.g ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %3)
  br label %bb.n

.body.thread:                                     ; preds = %bb.o
  br i1 %.sroa.02.0.ph, label %bb.q, label %.body.thread.thread

bb.n:                                             ; preds = %bb.m, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0B3g_.exit
  %.pn6 = phi { ptr, ptr } [ %i.h, %bb.m ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1E_zENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes0_0NCINvNtB1J_16in_place_collect24write_in_place_with_dropB15_E0E0B3g_.exit ]
  ret { ptr, ptr } %.pn6

bb.o:                                             ; preds = %bb.c, %bb.a
  %.sroa.02.0.ph = phi i1 [ true, %bb.a ], [ false, %bb.c ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %3) #23
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.thread.thread:                              ; preds = %bb.l, %bb.i, %bb.q, %.body.thread
  %.pn20 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread ], [ %lpad.thr_comm, %bb.q ], [ %lpad.thr_comm.i, %bb.l ], [ %lpad.thr_comm.i, %bb.i ]
  resume { ptr, i32 } %.pn20

bb.q:                                             ; preds = %.body.thread
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d) #23
          to label %.body.thread.thread unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableCscOzg5arm0FQ_17build_script_main(ptr nofree readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0CscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String9from_utf8CscOzg5arm0FQ_17build_script_main(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.d, i64 %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %1) #23
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCsaL1QbXo9JQH_3std4path7PathBuf8containsCscOzg5arm0FQ_17build_script_main(ptr nofree readonly align 8 captures(address) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i.i.i.i.i = alloca [39 x i8], align 1  ; 5 uses
  %.sroa.311.i.i.i.i.i = alloca [39 x i8], align 1 ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.213.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.218.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.34.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.34.sroa.2.0..sroa.34.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  %.sroa.67.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %.not.not.not.i.not.not.not.i.not.not.not7.not = icmp eq i64 %1, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not7.not, label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB5_13SliceContains14slice_containsCscOzg5arm0FQ_17build_script_main.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.i.i, %bb.a
  %.sroa.0.0.i8 = phi ptr [ %i.r, %_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.i.i ], [ %0, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8, i64 24 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.0.0.i8, i64 8
  %.val2.i.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.sroa.0.0.i8, i64 16
  %.val3.i.i = load i64, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.d, ptr %.val2.i.i, i64 %.val3.i.i)
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = load i64, ptr %i.g, align 8
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.c, ptr %i.u, i64 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.311.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.h, align 8              ; 3 uses
  %i.x = load i64, ptr %i.i, align 8              ; 2 uses
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.z = load i8, ptr %i.j, align 8
  %i.aa = load i8, ptr %i.k, align 8
  %i.ab = icmp eq i8 %i.z, %i.aa
  %i.ac = load i8, ptr %i.l, align 1
  %i.ad = icmp eq i8 %i.ac, 2
  %or.cond.i.i.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = load i8, ptr %i.m, align 1
  %i.af = icmp eq i8 %i.ae, 2
  %or.cond5.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.af, i1 false
  %.pre6.i.i.i.i = load ptr, ptr %i.d, align 8    ; 3 uses
  br i1 %or.cond5.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i.i.i.i
  %i.ag = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pre6.i.i.i.i, %bb.d ], [ %.pre6.i.i.i.i, %bb.b ]
  %i.ah = load i8, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.c, align 8
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.pre6.i.i.i.i, ptr %i.ai, i64 %i.w)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aj, label %_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.thread.i.i, label %bb.c

_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.thread.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.311.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB5_13SliceContains14slice_containsCscOzg5arm0FQ_17build_script_main.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.311.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.213.0..sroa_idx.i.i.i.i.i, i64 39, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ak = load i8, ptr %i.o, align 2
  %i.al = load i8, ptr %i.j, align 8
  %i.am = load i8, ptr %i.l, align 1
  store ptr %i.ag, ptr %i.b, align 8
  store i64 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  store i8 %i.ah, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.311.i.i.i.i.i, i64 39, i1 false)
  store i8 %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  store i8 %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1
  store i8 %i.ak, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 2
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = load i8, ptr %i.p, align 8              ; 2 uses
  %.not19.i.i.i.i.i = icmp eq i8 %i.ao, -1
  br i1 %.not19.i.i.i.i.i, label %_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.218.0..sroa_idx.i.i.i.i.i, i64 39, i1 false)
  br label %_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.i.i

_RNCNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB7_13SliceContains14slice_contains0CscOzg5arm0FQ_17build_script_main.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ap = load i8, ptr %i.q, align 2
  %i.aq = load i8, ptr %i.k, align 8
  %i.ar = load i8, ptr %i.m, align 1
  store ptr %i.an, ptr %i.a, align 8
  store i64 %i.x, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 8
  store i8 %i.ao, ptr %.sroa.34.0..sroa_idx.i.i.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.34.sroa.2.0..sroa.34.0..sroa_idx.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.i.i.i.i.i, i64 39, i1 false)
end_hunk_0
