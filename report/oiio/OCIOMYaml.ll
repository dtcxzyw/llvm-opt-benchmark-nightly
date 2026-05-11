inline.NumInlined: 1914
inline.NumDeleted: 561
begin_hunk_0_@_ZN16OpenColorIO_v2_59OCIOMYaml15CheckDuplicatesERKN4YAML4NodeE:bb.a
  %4 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %5 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %7 = alloca %"class.YAML::detail::iterator_base", align 8 ; 23 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59OCIOMYaml15CheckDuplicatesERKN4YAML4NodeE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89, !noalias !72 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 10 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !72
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_59OCIOMYaml15CheckDuplicatesERKN4YAML4NodeE:bb.a
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !3, !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr %i.n, ptr %13, align 8, !tbaa !88, !alias.scope !72
  store ptr %i.p, ptr %i.s, align 8, !tbaa !89, !alias.scope !72
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_59OCIOMYaml15CheckDuplicatesERKN4YAML4NodeE:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !72
  %i.w = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr %i.n, ptr %13, align 8, !tbaa !88, !alias.scope !72
  store ptr %i.p, ptr %i.s, align 8, !tbaa !89, !alias.scope !72
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_59OCIOMYaml15CheckDuplicatesERKN4YAML4NodeE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !88, !alias.scope !72
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %14, align 8, !tbaa !89, !alias.scope !72
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_59OCIOMYaml22genericStrategyHandlerERKN4YAML4NodeES4_:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.YAML::detail::iterator_base", align 8 ; 19 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_59OCIOMYaml22genericStrategyHandlerERKN4YAML4NodeES4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89, !noalias !155 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.noexc51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 10 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !155
  %.not.i.i.i.i.i = icmp eq i8 %i.al, 0
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %.thread13.i

.thread13.i:                                      ; preds = %bb.k
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_59OCIOMYaml22genericStrategyHandlerERKN4YAML4NodeES4_:bb.a
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !3, !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.ah, ptr %16, align 8, !tbaa !88, !alias.scope !155
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !89, !alias.scope !155
  br label %bb.m

bb.l:                                             ; preds = %bb.k
end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_59OCIOMYaml22genericStrategyHandlerERKN4YAML4NodeES4_:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !155
  %i.aq = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.ah, ptr %16, align 8, !tbaa !88, !alias.scope !155
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !89, !alias.scope !155
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread13.i
end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_59OCIOMYaml22genericStrategyHandlerERKN4YAML4NodeES4_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !88, !alias.scope !155
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr null, ptr %17, align 8, !tbaa !89, !alias.scope !155
  br label %_ZNK4YAML4Node5beginEv.exit

bb.p:                                             ; preds = %bb.n, %bb.m
end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_59OCIOMYaml11loadOptionsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %11 = alloca %"struct.YAML::as_if", align 8     ; 4 uses
  %12 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %13 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %14 = alloca %"class.YAML::detail::iterator_base", align 8 ; 31 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_10
begin_hunk_11_@_ZN16OpenColorIO_v2_59OCIOMYaml11loadOptionsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89, !noalias !188 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 10 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !188
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  %31 = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_59OCIOMYaml11loadOptionsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !3, !noalias !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  store ptr %i.i, ptr %31, align 8, !tbaa !88, !alias.scope !188
  store ptr %i.k, ptr %i.n, align 8, !tbaa !89, !alias.scope !188
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_12
begin_hunk_13_@_ZN16OpenColorIO_v2_59OCIOMYaml11loadOptionsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !188
  %i.r = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  store ptr %i.i, ptr %31, align 8, !tbaa !88, !alias.scope !188
  store ptr %i.k, ptr %i.n, align 8, !tbaa !89, !alias.scope !188
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_13
begin_hunk_14_@_ZN16OpenColorIO_v2_59OCIOMYaml11loadOptionsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.i, ptr %i.w, align 8, !tbaa !88, !alias.scope !188
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr null, ptr %32, align 8, !tbaa !89, !alias.scope !188
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_14
begin_hunk_15_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %8 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %9 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.YAML::detail::iterator_base", align 8 ; 36 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %14 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 12 uses
end_hunk_15
begin_hunk_16_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89, !noalias !228 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 10 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !228
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_16
begin_hunk_17_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !3, !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  store ptr %i.l, ptr %41, align 8, !tbaa !88, !alias.scope !228
  store ptr %i.n, ptr %i.q, align 8, !tbaa !89, !alias.scope !228
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_17
begin_hunk_18_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !228
  %i.u = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  store ptr %i.l, ptr %41, align 8, !tbaa !88, !alias.scope !228
  store ptr %i.n, ptr %i.q, align 8, !tbaa !89, !alias.scope !228
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_18
begin_hunk_19_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.l, ptr %i.z, align 8, !tbaa !88, !alias.scope !228
  %42 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %42, align 8, !tbaa !89, !alias.scope !228
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_19
begin_hunk_20_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %26, i64 184
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 176
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %26, i64 8
end_hunk_20
begin_hunk_21_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.uh = add nsw i32 %i.ug, 1
  store i32 %i.uh, ptr %i.ue, align 4, !tbaa !3, !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.uc, ptr %i.cs, align 8, !tbaa !88, !alias.scope !249
  store ptr %i.ud, ptr %i.ct, align 8, !tbaa !89, !alias.scope !249
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc
end_hunk_21
begin_hunk_22_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %.pre.i260 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !249
  %i.uj = icmp eq i8 %.pre.i260, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.uc, ptr %i.cs, align 8, !tbaa !88, !alias.scope !249
  store ptr %i.ud, ptr %i.ct, align 8, !tbaa !89, !alias.scope !249
  br i1 %i.uj, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.thread13.i256
end_hunk_22
begin_hunk_23_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a

bb.gg:                                            ; preds = %.noexc262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.uc, ptr %i.cs, align 8, !tbaa !88, !alias.scope !249
  store ptr null, ptr %i.ct, align 8, !tbaa !89, !alias.scope !249
  br label %bb.gn

bb.gh:                                            ; preds = %bb.gf, %bb.ge
end_hunk_23
begin_hunk_24_@_ZN16OpenColorIO_v2_59OCIOMYaml13loadOverridesERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  br i1 %.0.i.i.i284, label %bb.hy, label %bb.il

bb.hy:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit298
  %i.ym = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i299 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i.i299, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit303, label %bb.hz

end_hunk_24
begin_hunk_25_@_ZN16OpenColorIO_v2_59OCIOMYaml10loadParamsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %3 = alloca %"struct.YAML::as_if", align 8      ; 4 uses
  %4 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %5 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %6 = alloca %"class.YAML::detail::iterator_base", align 8 ; 36 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %9 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 9 uses
end_hunk_25
begin_hunk_26_@_ZN16OpenColorIO_v2_59OCIOMYaml10loadParamsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89, !noalias !283 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 10 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !283
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_26
begin_hunk_27_@_ZN16OpenColorIO_v2_59OCIOMYaml10loadParamsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !3, !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr %i.i, ptr %23, align 8, !tbaa !88, !alias.scope !283
  store ptr %i.k, ptr %i.n, align 8, !tbaa !89, !alias.scope !283
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_27
begin_hunk_28_@_ZN16OpenColorIO_v2_59OCIOMYaml10loadParamsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !283
  %i.r = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr %i.i, ptr %23, align 8, !tbaa !88, !alias.scope !283
  store ptr %i.k, ptr %i.n, align 8, !tbaa !89, !alias.scope !283
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_28
begin_hunk_29_@_ZN16OpenColorIO_v2_59OCIOMYaml10loadParamsERKN4YAML4NodeERSt10shared_ptrINS_23ConfigMergingParametersEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.i, ptr %i.w, align 8, !tbaa !88, !alias.scope !283
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %24, align 8, !tbaa !89, !alias.scope !283
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_29
begin_hunk_30_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %19 = alloca %"struct.YAML::as_if", align 8     ; 4 uses
  %20 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %21 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %22 = alloca %"class.YAML::detail::iterator_base", align 8 ; 34 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %25 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 12 uses
end_hunk_30
begin_hunk_31_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89, !noalias !324 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 10 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !324
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  %67 = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_31
begin_hunk_32_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !3, !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false)
  store ptr %i.r, ptr %67, align 8, !tbaa !88, !alias.scope !324
  store ptr %i.t, ptr %i.w, align 8, !tbaa !89, !alias.scope !324
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_32
begin_hunk_33_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !324
  %i.aa = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false)
  store ptr %i.r, ptr %67, align 8, !tbaa !88, !alias.scope !324
  store ptr %i.t, ptr %i.w, align 8, !tbaa !89, !alias.scope !324
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_33
begin_hunk_34_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.r, ptr %i.af, align 8, !tbaa !88, !alias.scope !324
  %68 = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr null, ptr %68, align 8, !tbaa !89, !alias.scope !324
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_34
begin_hunk_35_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %47, i64 184
  %i.by = getelementptr inbounds nuw i8, ptr %47, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %47, i64 176
  %i.ca = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %46, i64 40 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %47, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %47, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %47, i64 8
end_hunk_35
begin_hunk_36_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %53, i64 184
  %i.di = getelementptr inbounds nuw i8, ptr %53, i64 168
  %i.dj = getelementptr inbounds nuw i8, ptr %53, i64 176
  %i.dk = getelementptr inbounds nuw i8, ptr %52, i64 32 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %52, i64 40 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %53, i64 8
end_hunk_36
begin_hunk_37_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.afs = add nsw i32 %i.afr, 1
  store i32 %i.afs, ptr %i.afp, align 4, !tbaa !3, !noalias !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  store ptr %i.afn, ptr %i.ca, align 8, !tbaa !88, !alias.scope !350
  store ptr %i.afo, ptr %i.cb, align 8, !tbaa !89, !alias.scope !350
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iu
end_hunk_37
begin_hunk_38_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %.pre.i419 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !350
  %i.afu = icmp eq i8 %.pre.i419, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  store ptr %i.afn, ptr %i.ca, align 8, !tbaa !88, !alias.scope !350
  store ptr %i.afo, ptr %i.cb, align 8, !tbaa !89, !alias.scope !350
  br i1 %i.afu, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %.thread13.i415
end_hunk_38
begin_hunk_39_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a

bb.iy:                                            ; preds = %.noexc421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  store ptr %i.afn, ptr %i.ca, align 8, !tbaa !88, !alias.scope !350
  store ptr null, ptr %i.cb, align 8, !tbaa !89, !alias.scope !350
  br label %bb.jf

bb.iz:                                            ; preds = %bb.ix, %bb.iw
end_hunk_39
begin_hunk_40_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  br i1 %.0.i.i.i454, label %bb.lv, label %bb.mh

bb.lv:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit469
  %i.anu = load ptr, ptr %i.cb, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i470 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i.i470, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit475, label %bb.lw

end_hunk_40
begin_hunk_41_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %i.aqa = add nsw i32 %i.apz, 1
  store i32 %i.aqa, ptr %i.apx, align 4, !tbaa !3, !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  store ptr %i.apv, ptr %i.dk, align 8, !tbaa !88, !alias.scope !376
  store ptr %i.apw, ptr %i.dl, align 8, !tbaa !89, !alias.scope !376
  br label %bb.nc

bb.nb:                                            ; preds = %bb.na
end_hunk_41
begin_hunk_42_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  %.pre.i497 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !376
  %i.aqc = icmp eq i8 %.pre.i497, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  store ptr %i.apv, ptr %i.dk, align 8, !tbaa !88, !alias.scope !376
  store ptr %i.apw, ptr %i.dl, align 8, !tbaa !89, !alias.scope !376
  br i1 %i.aqc, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %.thread13.i493
end_hunk_42
begin_hunk_43_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a

bb.ne:                                            ; preds = %.noexc499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  store ptr %i.apv, ptr %i.dk, align 8, !tbaa !88, !alias.scope !376
  store ptr null, ptr %i.dl, align 8, !tbaa !89, !alias.scope !376
  br label %bb.nl

bb.nf:                                            ; preds = %bb.nd, %bb.nc
end_hunk_43
begin_hunk_44_@_ZN16OpenColorIO_v2_59OCIOMYaml4loadERKN4YAML4NodeERSt10shared_ptrINS_12ConfigMergerEEPKc:bb.a
  br i1 %.0.i.i.i533, label %bb.qb, label %bb.qz

bb.qb:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit548
  %i.ayc = load ptr, ptr %i.dl, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i549 = icmp eq ptr %i.ayc, null
  br i1 %.not.i.i.i549, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit554, label %bb.qc

end_hunk_44
begin_hunk_45_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %5 = alloca %"struct.YAML::as_if", align 8      ; 4 uses
  %6 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 12 uses
  %7 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %8 = alloca %"class.YAML::detail::iterator_base", align 8 ; 30 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 10 uses
  %11 = alloca %"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy", align 8 ; 12 uses
end_hunk_45
begin_hunk_46_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89, !noalias !427 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 10 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !427
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread13.i

.thread13.i:                                      ; preds = %bb.e
end_hunk_46
begin_hunk_47_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !3, !noalias !427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  store ptr %i.j, ptr %21, align 8, !tbaa !88, !alias.scope !427
  store ptr %i.l, ptr %i.o, align 8, !tbaa !89, !alias.scope !427
  br label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_47
begin_hunk_48_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !427
  %i.s = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  store ptr %i.j, ptr %21, align 8, !tbaa !88, !alias.scope !427
  store ptr %i.l, ptr %i.o, align 8, !tbaa !89, !alias.scope !427
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13.i
end_hunk_48
begin_hunk_49_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.j, ptr %i.x, align 8, !tbaa !88, !alias.scope !427
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %22, align 8, !tbaa !89, !alias.scope !427
  br label %_ZNK4YAML4Node5beginEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_49
begin_hunk_50_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 184
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 8
end_hunk_50
begin_hunk_51_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %i.ng = add nsw i32 %i.nf, 1                    ; 2 uses
  store i32 %i.ng, ptr %i.nd, align 4, !tbaa !3, !noalias !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.nb, ptr %i.bx, align 8, !tbaa !88, !alias.scope !448
  store ptr %i.nc, ptr %i.by, align 8, !tbaa !89, !alias.scope !448
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea
end_hunk_51
begin_hunk_52_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  %.pre.i157 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !448
  %i.ni = icmp eq i8 %.pre.i157, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.nb, ptr %i.bx, align 8, !tbaa !88, !alias.scope !448
  store ptr %i.nc, ptr %i.by, align 8, !tbaa !89, !alias.scope !448
  br i1 %i.ni, label %bb.ed, label %._crit_edge331

._crit_edge331:                                   ; preds = %bb.eb
end_hunk_52
begin_hunk_53_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a

bb.ee:                                            ; preds = %.noexc159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.nb, ptr %i.bx, align 8, !tbaa !88, !alias.scope !448
  store ptr null, ptr %i.by, align 8, !tbaa !89, !alias.scope !448
  br label %bb.el

bb.ef:                                            ; preds = %bb.ed, %bb.ec
end_hunk_53
begin_hunk_54_@_ZN16OpenColorIO_v2_59OCIOMYaml11countMergesERKN4YAML4NodeE:bb.a
  br i1 %.0.i.i.i191, label %bb.hb, label %bb.hq

bb.hb:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit205
  %i.vi = load ptr, ptr %i.by, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i206 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i206, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit210, label %bb.hc

end_hunk_54
begin_hunk_55_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %2 = alloca %"struct.YAML::as_if", align 8      ; 4 uses
  %3 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %4 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 7 uses
  %5 = alloca %"class.YAML::detail::iterator_base", align 8 ; 23 uses
  %6 = alloca %"class.YAML::detail::iterator_base", align 8 ; 19 uses
  %7 = alloca %"struct.YAML::detail::iterator_value", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !32, !range !41, !noundef !45
end_hunk_55
begin_hunk_56_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89, !noalias !530 ; 10 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i20, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 10 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !530
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.k, label %.thread13.i

.thread13.i:                                      ; preds = %bb.j
end_hunk_56
begin_hunk_57_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !3, !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.ae, ptr %9, align 8, !tbaa !88, !alias.scope !530
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !89, !alias.scope !530
  br label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_57
begin_hunk_58_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !530
  %i.an = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.ae, ptr %9, align 8, !tbaa !88, !alias.scope !530
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !89, !alias.scope !530
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread13.i
end_hunk_58
begin_hunk_59_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ae, ptr %i.as, align 8, !tbaa !88, !alias.scope !530
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %10, align 8, !tbaa !89, !alias.scope !530
  br label %_ZNK4YAML4Node5beginEv.exit

bb.o:                                             ; preds = %bb.m, %bb.l
end_hunk_59
begin_hunk_60_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !89, !noalias !539 ; 10 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i22, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 10 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !539
  %.not.i.i.i.i.i23 = icmp eq i8 %i.bs, 0
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i.i23, label %bb.y, label %.thread13.i24

.thread13.i24:                                    ; preds = %bb.x
end_hunk_60
begin_hunk_61_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !3, !noalias !539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store ptr %i.bo, ptr %11, align 8, !tbaa !88, !alias.scope !539
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !89, !alias.scope !539
  br label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_61
begin_hunk_62_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  %.pre.i28 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !539
  %i.bx = icmp eq i8 %.pre.i28, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store ptr %i.bo, ptr %11, align 8, !tbaa !88, !alias.scope !539
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !89, !alias.scope !539
  br i1 %i.bx, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
end_hunk_62
begin_hunk_63_@_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !88, !alias.scope !539
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %12, align 8, !tbaa !89, !alias.scope !539
  br label %_ZNK4YAML4Node3endEv.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
end_hunk_63
