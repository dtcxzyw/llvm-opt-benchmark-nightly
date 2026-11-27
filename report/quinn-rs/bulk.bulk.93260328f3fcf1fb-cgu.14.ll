Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.14?download=true
inline.NumInlined: 400
inline.NumDeleted: 194
begin_hunk_0_@_RINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB6_17CertificateParams16write_extensionsRNtNtB8_8key_pair7KeyPairECscDgBWNIBxoJ_4bulk:bb.a
  call void @_RINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB2_11certificateNtBR_17CertificateParams16write_extensionsRNtNtB2_8key_pair7KeyPairEs4_0ECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @4, i64 noundef 4, i1 noundef zeroext true), !dbg !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11588
  br label %bb.p, !dbg !11589

bb.r:                                             ; preds = %bb.n
    #dbg_value(ptr %i.bj, !11185, !DIExpression(), !11448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11590
    #dbg_value(ptr %.pre, !11269, !DIExpression(), !11451)
  store ptr %.pre, ptr %i.f, align 8, !dbg !11591
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11591
  store i8 -1, ptr %i.bv, align 8, !dbg !11591
  call void @_RINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB2_11certificateNtBR_17CertificateParams16write_extensionsRNtNtB2_8key_pair7KeyPairEs1_0ECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @3, i64 noundef 4, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !dbg !11592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11594
    #dbg_value(ptr %.pre, !11269, !DIExpression(), !11454)
  store ptr %.pre, ptr %i.e, align 8, !dbg !11595
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11595
  store i8 -1, ptr %i.bw, align 8, !dbg !11595
  call void @_RINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB2_11certificateNtBR_17CertificateParams16write_extensionsRNtNtB2_8key_pair7KeyPairEs2_0ECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @4, i64 noundef 4, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.bj), !dbg !11596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11597
  br label %bb.p, !dbg !11598

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0.037 = phi ptr [ %i.bn, %.lr.ph ], [ %i.bx, %bb.s ] ; 5 uses
    #dbg_value(ptr %.sroa.0.037, !11186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11430)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 56, !dbg !11599 ; 2 uses
    #dbg_value(ptr %i.bx, !11186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11430)
    #dbg_value(ptr %.sroa.0.037, !11188, !DIExpression(), !11455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11600
    #dbg_value(ptr %.pre, !11269, !DIExpression(), !11458)
  store ptr %.pre, ptr %i.b, align 8, !dbg !11601
  store i8 -1, ptr %i.bs, align 8, !dbg !11601
    #dbg_value(ptr %.sroa.0.037, !11460, !DIExpression(), !11465)
    #dbg_value(ptr %.sroa.0.037, !11466, !DIExpression(), !11471)
    #dbg_value(ptr %.sroa.0.037, !11472, !DIExpression(), !11479)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 8, !dbg !11602
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !11602, !nonnull !2661, !noundef !2661
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 16, !dbg !11603
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !11603, !noundef !2661
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 48, !dbg !11604
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !11604, !range !3698, !noundef !2661
  %i.ce = trunc nuw i8 %i.cd to i1, !dbg !11604
  call void @_RINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB2_11certificateNtBR_17CertificateParams16write_extensionsRNtNtB2_8key_pair7KeyPairEs5_0ECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bz, i64 noundef %i.cb, i1 noundef zeroext %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.037), !dbg !11605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11606
    #dbg_value(ptr undef, !11198, !DIExpression(), !11215)
    #dbg_value(ptr %i.bx, !11209, !DIExpression(), !11431)
    #dbg_value(ptr %i.bx, !11265, !DIExpression(), !11268)
    #dbg_value(ptr %i.bq, !11210, !DIExpression(), !11432)
    #dbg_value(ptr poison, !11434, !DIExpression(), !11440)
    #dbg_value(ptr poison, !11437, !DIExpression(), !11441)
  %i.cf = icmp eq ptr %i.bx, %i.bq, !dbg !11580
  br i1 %i.cf, label %._crit_edge, label %bb.s, !dbg !11439

._crit_edge:                                      ; preds = %bb.s, %bb.p
  store i64 -1, ptr %0, align 8, !dbg !11607
  ret void, !dbg !11608
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB6_17CertificateParams3newINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1c_6string6StringEECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11616 {
bb.a:
    #dbg_declare(ptr poison, !11694, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !11702)
    #dbg_declare(ptr poison, !11703, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !11731)
    #dbg_value(ptr poison, !11732, !DIExpression(), !11738)
    #dbg_value(ptr poison, !11759, !DIExpression(), !11761)
    #dbg_value(ptr poison, !11762, !DIExpression(), !11768)
  %i.a = alloca [328 x i8], align 8               ; 19 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.07 = alloca [320 x i8], align 8          ; 14 uses
    #dbg_declare(ptr poison, !11697, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !11769)
    #dbg_declare(ptr poison, !11691, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !11770)
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
    #dbg_declare(ptr %1, !11689, !DIExpression(), !11771)
    #dbg_declare(ptr %i.d, !11727, !DIExpression(), !11772)
    #dbg_declare(ptr %i.c, !11773, !DIExpression(), !11787)
    #dbg_declare(ptr %i.c, !11788, !DIExpression(), !11795)
    #dbg_declare(ptr poison, !11690, !DIExpression(), !11796)
    #dbg_declare(ptr poison, !11728, !DIExpression(), !11797)
    #dbg_value(i64 24, !11733, !DIExpression(), !11798)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !11730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11730
    #dbg_declare(ptr %1, !11800, !DIExpression(), !11649)
    #dbg_declare(ptr %1, !11808, !DIExpression(), !11652)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !dbg !11861, !alias.scope !11813 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.copyload, !11742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11814)
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11861
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx30, align 8, !dbg !11861, !alias.scope !11813, !nonnull !2661, !noundef !2661 ; 3 uses
    #dbg_value(ptr %.sroa.4.0.copyload, !11742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11814)
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11861
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx31, align 8, !dbg !11861, !alias.scope !11813 ; 2 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !11742, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11814)
    #dbg_value(i64 %.sroa.0.0.copyload, !11743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11815)
    #dbg_value(ptr %.sroa.4.0.copyload, !11743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11815)
    #dbg_value(i64 %.sroa.5.0.copyload, !11743, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11815)
    #dbg_value(ptr %.sroa.4.0.copyload, !11745, !DIExpression(), !11816)
    #dbg_value(ptr %.sroa.4.0.copyload, !11746, !DIExpression(), !11817)
    #dbg_value(ptr %.sroa.4.0.copyload, !11818, !DIExpression(), !11824)
    #dbg_value(ptr undef, !11762, !DIExpression(), !11768)
    #dbg_value(i64 %.sroa.5.0.copyload, !11821, !DIExpression(), !11824)
  %i.e = icmp ult i64 %.sroa.5.0.copyload, 384307168202282326, !dbg !11862
  tail call void @llvm.assume(i1 %i.e), !dbg !11863
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, !dbg !11864
    #dbg_value(ptr %i.f, !11747, !DIExpression(), !11825)
    #dbg_value(ptr undef, !11759, !DIExpression(), !11761)
    #dbg_value(ptr undef, !11732, !DIExpression(), !11738)
    #dbg_value(i64 %.sroa.0.0.copyload, !11827, !DIExpression(), !11833)
  %i.g = icmp sgt i64 %.sroa.0.0.copyload, -1, !dbg !11865
  tail call void @llvm.assume(i1 %i.g), !dbg !11865
    #dbg_value(ptr %.sroa.4.0.copyload, !11834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11853)
    #dbg_value(i64 %.sroa.0.0.copyload, !11834, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11853)
    #dbg_value(ptr %.sroa.4.0.copyload, !11834, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11853)
    #dbg_value(ptr %i.f, !11834, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11853)
  store ptr %.sroa.4.0.copyload, ptr %i.c, align 8, !dbg !11866
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11866
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11866
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11866
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11866
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !11866
  store ptr %i.f, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !11866
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2q_17CertificateParams3newINtB1b_3VecB1U_EE0ENtB2s_7SanTypeINtNtB6_6result6ResultzNtNtB2s_5error5ErrorENCINvXso_B42_IB40_IB3t_B3L_EB4m_EINtNtNtB4_6traits7collect12FromIteratorIB40_B3L_B4m_EE9from_iterBQ_E0B4Z_ECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !dbg !11867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11868
  %i.h = load i64, ptr %i.d, align 8, !dbg !11869, !range !3688, !noundef !2661 ; 2 uses
  %.not = icmp eq i64 %i.h, -1, !dbg !11869
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !11870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11871
  br i1 %.not, label %bb.c, label %bb.b, !dbg !11872

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.h, !11703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11857)
    #dbg_value(i64 %i.h, !11691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11858)
    #dbg_value(i64 %i.h, !11697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11859)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !11871
    #dbg_value(i64 %i.h, !11694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11860)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11873
  store i64 %i.h, ptr %i.j, align 8, !dbg !11873
  store i64 -1, ptr %0, align 8, !dbg !11873
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !11874
  br label %bb.h, !dbg !11875

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !11874
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07), !dbg !11877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11878
  invoke void @_RNvXs0_NtCscbFFjjIlwRm_5rcgen11certificateNtB5_17CertificateParamsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a)
          to label %bb.e unwind label %bb.d, !dbg !11878

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #13
          to label %common.resume unwind label %bb.i, !dbg !11879

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 288, !dbg !11877
  %.sroa.07.288..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 288, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.288..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !dbg !11877
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 304, !dbg !11877
  %.sroa.07.304..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 304, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.304..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !dbg !11877
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 192, !dbg !11877
  %.sroa.07.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 192, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !11877
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11877
  %.sroa.07.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 24, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.07.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !11877
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320, !dbg !11877
  %i.q = load i8, ptr %i.p, align 8, !dbg !11877, !range !3844, !noundef !2661
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 321, !dbg !11877
  %i.s = load i8, ptr %i.r, align 1, !dbg !11877
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !11877
  %.sroa.07.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 96, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !11877
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !11877
  %.sroa.07.120..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 120, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.120..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !11877
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 216, !dbg !11877
  %.sroa.07.216..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 216, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.07.216..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !dbg !11877
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !11877
  %.sroa.07.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 144, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.144..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !11877
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !11877
  %.sroa.07.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 168, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !11877
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 322, !dbg !11877
  %i.z = load i8, ptr %i.y, align 2, !dbg !11877, !range !3698, !noundef !2661
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 264, !dbg !11877
  %.sroa.07.264..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 264, !dbg !11877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.264..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !11877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.07, i64 320, i1 false), !dbg !11880
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !11880
  %2 = zext nneg i8 %i.q to i16, !dbg !11880
  %3 = freeze i8 %i.s, !dbg !11880
  %4 = zext i8 %3 to i16, !dbg !11880
  %5 = shl nuw i16 %4, 8, !dbg !11880
  %6 = or disjoint i16 %5, %2, !dbg !11880
  store i16 %6, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !11880
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 322, !dbg !11880
  store i8 %i.z, ptr %.sroa.16.0..sroa_idx, align 2, !dbg !11880
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07), !dbg !11881
    #dbg_value(ptr %i.a, !3979, !DIExpression(), !11668)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.f, !dbg !11882

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3985, !DIExpression(), !11670)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCscbFFjjIlwRm_5rcgen7SanTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g, !dbg !11883

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !11882
  unreachable, !dbg !11882

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !11884

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.e
    #dbg_value(ptr %i.a, !3985, !DIExpression(), !11672)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCscbFFjjIlwRm_5rcgen7SanTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !11885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11875
  br label %bb.h, !dbg !11875

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEECscDgBWNIBxoJ_4bulk.exit, %bb.b
  ret void, !dbg !11886

bb.i:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !11887
  unreachable, !dbg !11887
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCslIemzedAtQF_5bench5stats14TransferResultB1i_ENtCsbHiBx3jRrxb_6anyhow5ErrorEE5drainNtNtNtBK_3ops5range9RangeFullECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !11897 {
bb.a:
    #dbg_value(ptr %1, !11932, !DIExpression(), !11942)
    #dbg_value(ptr %1, !11943, !DIExpression(), !11950)
    #dbg_value(ptr %1, !11951, !DIExpression(), !11958)
    #dbg_value(ptr %1, !11959, !DIExpression(), !11965)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12005 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !12005, !noundef !2661 ; 3 uses
    #dbg_value(i64 %i.b, !11934, !DIExpression(), !11966)
  %i.c = icmp ult i64 %i.b, 144115188075855872, !dbg !12006
  tail call void @llvm.assume(i1 %i.c), !dbg !12007
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECscDgBWNIBxoJ_4bulk(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !dbg !12008 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !12008 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !12008 ; 3 uses
    #dbg_value(i64 %i.e, !11935, !DIExpression(), !11967)
    #dbg_value(i64 %i.e, !11955, !DIExpression(), !11958)
    #dbg_value(i64 %i.e, !11968, !DIExpression(), !11974)
    #dbg_value(i64 %i.f, !11936, !DIExpression(), !11967)
  store i64 %i.e, ptr %i.a, align 8, !dbg !12009
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12010
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12010, !nonnull !2661, !noundef !2661 ; 2 uses
    #dbg_value(ptr %i.h, !11971, !DIExpression(), !11974)
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.e, !dbg !12011
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !11978, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11991)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !11994, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12000)
    #dbg_value(ptr %i.i, !11937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12001)
    #dbg_value(ptr %i.i, !11992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12002)
    #dbg_value(ptr %i.i, !11985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12003)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !11937, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12001)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !11992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12002)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !11985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12003)
  %i.j = sub i64 %i.b, %i.f, !dbg !12012
    #dbg_value(ptr %i.i, !11986, !DIExpression(), !12004)
    #dbg_value(ptr %i.i, !11997, !DIExpression(), !12000)
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.f, !dbg !12013
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12014
  store i64 %i.f, ptr %i.l, align 8, !dbg !12014
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12014
  store i64 %i.j, ptr %i.m, align 8, !dbg !12014
  store ptr %i.i, ptr %0, align 8, !dbg !12014
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12014
  store ptr %i.k, ptr %i.n, align 8, !dbg !12014
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12014
  store ptr %1, ptr %i.o, align 8, !dbg !12014
  ret void, !dbg !12015
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !12024 {
bb.a:
    #dbg_value(ptr %1, !12058, !DIExpression(), !12068)
    #dbg_value(ptr %1, !12069, !DIExpression(), !12072)
    #dbg_value(ptr %1, !12073, !DIExpression(), !12077)
    #dbg_value(ptr %1, !12078, !DIExpression(), !12084)
    #dbg_value(i64 %2, !12059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12068)
    #dbg_value(i64 %3, !12059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12068)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12122 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !12122, !noundef !2661 ; 3 uses
    #dbg_value(i64 %i.b, !12060, !DIExpression(), !12085)
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !12123
  tail call void @llvm.assume(i1 %i.c), !dbg !12124
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECscDgBWNIBxoJ_4bulk(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !dbg !12125 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !12125 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !12125 ; 3 uses
    #dbg_value(i64 %i.e, !12061, !DIExpression(), !12086)
    #dbg_value(i64 %i.e, !12074, !DIExpression(), !12077)
    #dbg_value(i64 %i.e, !12087, !DIExpression(), !12093)
    #dbg_value(i64 %i.f, !12062, !DIExpression(), !12086)
  store i64 %i.e, ptr %i.a, align 8, !dbg !12126
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12127
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12127, !nonnull !2661, !noundef !2661 ; 2 uses
    #dbg_value(ptr %i.h, !12090, !DIExpression(), !12093)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e, !dbg !12128
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12097, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12110)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12117)
    #dbg_value(ptr %i.i, !12063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12118)
    #dbg_value(ptr %i.i, !12111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12119)
    #dbg_value(ptr %i.i, !12104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12120)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12063, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12118)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12119)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12120)
  %i.j = sub i64 %i.b, %i.f, !dbg !12129
    #dbg_value(ptr %i.i, !12105, !DIExpression(), !12121)
    #dbg_value(ptr %i.i, !12114, !DIExpression(), !12117)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f, !dbg !12130
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12131
  store i64 %i.f, ptr %i.l, align 8, !dbg !12131
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12131
  store i64 %i.j, ptr %i.m, align 8, !dbg !12131
  store ptr %i.i, ptr %0, align 8, !dbg !12131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12131
  store ptr %i.k, ptr %i.n, align 8, !dbg !12131
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12131
  store ptr %1, ptr %i.o, align 8, !dbg !12131
  ret void, !dbg !12132
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !12140 {
bb.a:
    #dbg_value(ptr %1, !12173, !DIExpression(), !12180)
    #dbg_value(ptr %1, !12181, !DIExpression(), !12187)
    #dbg_value(ptr %1, !12188, !DIExpression(), !12192)
    #dbg_value(ptr %1, !12193, !DIExpression(), !12196)
    #dbg_value(i64 %2, !12174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12180)
    #dbg_value(i64 %3, !12174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12180)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12233 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !12233, !noundef !2661 ; 3 uses
    #dbg_value(i64 %i.b, !12175, !DIExpression(), !12197)
  %i.c = icmp sgt i64 %i.b, -1, !dbg !12234
  tail call void @llvm.assume(i1 %i.c), !dbg !12235
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECscDgBWNIBxoJ_4bulk(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !dbg !12236 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !12236 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !12236 ; 3 uses
    #dbg_value(i64 %i.e, !12176, !DIExpression(), !12198)
    #dbg_value(i64 %i.e, !12189, !DIExpression(), !12192)
    #dbg_value(i64 %i.e, !12199, !DIExpression(), !12205)
    #dbg_value(i64 %i.f, !12177, !DIExpression(), !12198)
  store i64 %i.e, ptr %i.a, align 8, !dbg !12237
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12238
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12238, !nonnull !2661, !noundef !2661 ; 2 uses
    #dbg_value(ptr %i.h, !12202, !DIExpression(), !12205)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e, !dbg !12239
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12209, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12219)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12222, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12228)
    #dbg_value(ptr %i.i, !12178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12229)
    #dbg_value(ptr %i.i, !12220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12230)
    #dbg_value(ptr %i.i, !12213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12231)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12229)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12230)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !12213, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12231)
  %i.j = sub i64 %i.b, %i.f, !dbg !12240
    #dbg_value(ptr %i.i, !12214, !DIExpression(), !12232)
    #dbg_value(ptr %i.i, !12225, !DIExpression(), !12228)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f, !dbg !12241
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12242
  store i64 %i.f, ptr %i.l, align 8, !dbg !12242
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12242
  store i64 %i.j, ptr %i.m, align 8, !dbg !12242
  store ptr %i.i, ptr %0, align 8, !dbg !12242
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12242
  store ptr %i.k, ptr %i.n, align 8, !dbg !12242
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12242
  store ptr %1, ptr %i.o, align 8, !dbg !12242
  ret void, !dbg !12243
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscbFFjjIlwRm_5rcgen6IssuerRNtNtBE_8key_pair7KeyPairEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12244 {
bb.a:
    #dbg_value(ptr %0, !12290, !DIExpression(), !12294)
    #dbg_value(ptr %0, !12296, !DIExpression(), !12247)
  %i.a = load i64, ptr %0, align 8, !dbg !12324, !range !3843, !alias.scope !12302, !noundef !2661
  %i.b = icmp eq i64 %i.a, -1, !dbg !12324
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtCscbFFjjIlwRm_5rcgen17DistinguishedNameEECscDgBWNIBxoJ_4bulk.exit, label %bb.b, !dbg !12324

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4352, !DIExpression(), !12251)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12325
end_hunk_0
