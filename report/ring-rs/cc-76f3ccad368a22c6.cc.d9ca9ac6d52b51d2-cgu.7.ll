Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.7?download=true
inline.NumInlined: 65
inline.NumDeleted: 5
begin_hunk_0_@_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsiHivYpkJ4Hu_2cc6ObjectENtB1j_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualB1j_:bb.a
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs_CsiHivYpkJ4Hu_2ccNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBB_2io5error5ErrorE4from(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1R_EE13from_residualB1T_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VechENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1j_EE13from_residualB1l_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1Y_EE13from_residualB20_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB20_EE13from_residualB22_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define noundef { ptr, ptr } @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEzEINtNtNtB7_3ops9try_trait12FromResidualIBy_zzEE13from_residualCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1j_EE13from_residualB1l_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualB1l_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs_CsiHivYpkJ4Hu_2ccNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBB_2io5error5ErrorE4from(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std7process6OutputNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1l_EE13from_residualB1n_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std7process7CommandNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1m_EE13from_residualB1o_(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1m_EE13from_residualBO_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualBO_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs_CsiHivYpkJ4Hu_2ccNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBB_2io5error5ErrorE4from(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool4ToolNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1f_EE13from_residualBO_(ptr nofree writeonly sret([152 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc5flags17RustcCodegenFlagsNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1u_EE13from_residualBO_(ptr nofree writeonly sret([144 x i8]) align 8 captures(none) initializes((0, 4), (8, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i32 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1o_EE13from_residualBO_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualB1u_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsiHivYpkJ4Hu_2cc6target6parser21TargetInfoParserInnerNtBQ_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1I_EE13from_residualBQ_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultQNtCsiHivYpkJ4Hu_2cc5BuildNtBN_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1a_EE13from_residualBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1I_EE13from_residualB1K_(ptr nofree writeonly sret([224 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufbENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1J_EE13from_residualB1L_(ptr nofree writeonly sret([232 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs_CsiHivYpkJ4Hu_2ccNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBB_2io5error5ErrorE4from(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsr_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr %1, i64 %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.l, %.thread ], [ %1, %.lr.ph ] ; 3 uses
  %.sroa.6.016 = phi i64 [ %i.k, %.thread ], [ %2, %.lr.ph ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.017, i64 %.sroa.6.016) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.l
  %i.h = invoke zeroext i1 @_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.l, %bb.b
  %.lcssa = phi ptr [ %i.f, %bb.b ], [ %7, %bb.l ] ; 2 uses
  %3 = ptrtoint ptr %.lcssa to i64                ; 4 uses
  %i.i = icmp eq ptr %.lcssa, null
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %.sroa.6.016, %3
  br i1 %i.j, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.k = sub nuw i64 %.sroa.6.016, %3             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 %3
  %4 = icmp eq i64 %i.k, 0
  br i1 %4, label %.loopexit, label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %3, i64 %.sroa.6.016, i64 %.sroa.6.016, ptr nonnull align 8 @123) #25
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8
  %i.m = trunc nuw i64 %.pre to i1
  br i1 %i.m, label %bb.k, label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.a, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.m, label %bb.n

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.d, %bb.a, %bb.j
  %.sroa.07.0 = phi ptr [ %i.p, %bb.j ], [ null, %bb.a ], [ null, %.thread ], [ @121, %bb.d ]
  ret ptr %.sroa.07.0

bb.k:                                             ; preds = %bb.g
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %5 = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.017, i64 %.sroa.6.016) ; 2 uses
  %6 = extractvalue { i64, ptr } %5, 0            ; 2 uses
  %7 = extractvalue { i64, ptr } %5, 1            ; 2 uses
  store i64 %6, ptr %i.a, align 8
  store ptr %7, ptr %i.c, align 8
  %8 = trunc nuw i64 %6 to i1
  br i1 %8, label %bb.c, label %bb.d

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c) #23
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCsiHivYpkJ4Hu_2cc(ptr %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a) #21 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr %0, ptr nonnull %i.d, i64 %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECsiHivYpkJ4Hu_2cc(ptr %0, ptr %i.g, ptr %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECsiHivYpkJ4Hu_2cc(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #17

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh18split_at_uncheckedCs93MrfdkTAtF_5shlex(ptr sret([32 x i8]) align 8, ptr, i64, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvNvMNtCsiHivYpkJ4Hu_2cc4toolNtB6_4Tool13with_features9is_zig_cc0B8_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE5Owned0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtBb_6string6StringEE9call_onceCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNCNvNtCsiHivYpkJ4Hu_2cc16windows_registry15find_vs_version0B5_(i8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNtCsiHivYpkJ4Hu_2cc15command_helpers25spawn_and_wait_for_output0B5_(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i8, i8 } @_RNCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB4_4Tool13with_featuress_0B6_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNvMNtCsiHivYpkJ4Hu_2cc4toolNtB6_4Tool13with_features19detect_family_inners0_0B8_(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNvMNtCsiHivYpkJ4Hu_2cc4toolNtB6_4Tool13with_features19detect_family_inners_0B8_(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build8assembles0_0B7_(ptr align 8, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB9_5Build8assembles0_00B9_(i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvYNvNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB9_11RandomState3new4KEYS27___rust_std_internal_init_fnINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceCsiHivYpkJ4Hu_2cc() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB15_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB17_6target6parser21TargetInfoParserInnerNtB17_5ErrorEE11get_or_initNvMB2s_B2q_32from_cargo_environment_variablesE0EB17_(ptr align 4, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCsaL1QbXo9JQH_3std4path4PathEINtNtCs3oUPovFnLWP_4core7convert5AsRefBI_E6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3cwd(ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #18

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsV_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3arg(ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsT_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB2_5AsRefBw_E6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB2_5AsRefB14_E6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr align 8, ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtB2_5AsRefNtBy_5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs15_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtNtNtB8_3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3new(ptr sret([200 x i8]) align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCs1xwejQucwHj_5alloc6string6StringINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterARej2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterReKj2_EECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsg_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2w_4Tool10to_command0ENtB2_12IntoIterator9into_iterB2y_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2g_4Tool10to_command0ENtNtNtB9_6traits8iterator8Iterator4nextB2i_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSRNtNtCsaL1QbXo9JQH_3std4path4PathNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterRNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
