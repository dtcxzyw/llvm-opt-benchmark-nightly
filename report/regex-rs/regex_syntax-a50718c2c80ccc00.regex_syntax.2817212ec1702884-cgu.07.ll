Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.07?download=true
inline.NumInlined: 347
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs3roNzt6HBWW_12regex_syntax6parserNtB2_13ParserBuilder5build:bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6615
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx, align 8, !dbg !6615
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6615
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx, align 8, !dbg !6615
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !6615
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.12.0..sroa_idx, align 8, !dbg !6615
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !6615
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !6615
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !6615
  store i64 1, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !6615
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !6615
  store i64 1, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !6615
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !6615
  store i32 0, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !6615
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 188, !dbg !6615
  store i32 %i.b, ptr %.sroa.18.0..sroa_idx, align 4, !dbg !6615
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !6615
  %i.h = load <3 x i8>, ptr %i.c, align 4, !dbg !6613, !alias.scope !6609
  %i.i = shufflevector <3 x i8> %i.h, <3 x i8> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>, !dbg !6613
  store <4 x i8> %i.i, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !6615
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !6615
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !6615
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !dbg !6615
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !6615
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !6615
  store i64 0, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !6615
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 238, !dbg !6615
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 2, !dbg !6615
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 239, !dbg !6615
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !6615
  ret void, !dbg !6619
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8as_sliceB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !6620 {
bb.a:
    #dbg_value(ptr %0, !6644, !DIExpression(), !6646)
    #dbg_value(ptr %0, !6647, !DIExpression(), !6659)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6682
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6682, !nonnull !671, !noundef !671 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6683
  %.val9 = load ptr, ptr %i.c, align 8, !dbg !6683, !nonnull !671, !noundef !671
    #dbg_value(ptr poison, !6660, !DIExpression(), !6628)
    #dbg_value(i64 2, !6665, !DIExpression(), !6636)
    #dbg_value(ptr %.val9, !6679, !DIExpression(), !6637)
    #dbg_value(ptr %i.b, !6680, !DIExpression(), !6637)
    #dbg_value(ptr %.val9, !6673, !DIExpression(), !6638)
    #dbg_value(ptr %i.b, !6674, !DIExpression(), !6638)
    #dbg_value(ptr %i.b, !6669, !DIExpression(), !6639)
    #dbg_value(ptr %.val9, !6668, !DIExpression(), !6639)
  %i.d = ptrtoint ptr %.val9 to i64, !dbg !6684
  %i.e = ptrtoint ptr %i.b to i64, !dbg !6684
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !6684
  %i.g = lshr exact i64 %i.f, 1, !dbg !6684
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !6685
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !6685
  ret { ptr, i64 } %i.i, !dbg !6685
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8as_sliceB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !6686 {
bb.a:
    #dbg_value(ptr %0, !6710, !DIExpression(), !6712)
    #dbg_value(ptr %0, !6713, !DIExpression(), !6725)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6748
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6748, !nonnull !671, !noundef !671 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6749
  %.val9 = load ptr, ptr %i.c, align 8, !dbg !6749, !nonnull !671, !noundef !671
    #dbg_value(ptr poison, !6726, !DIExpression(), !6694)
    #dbg_value(i64 8, !6731, !DIExpression(), !6702)
    #dbg_value(ptr %.val9, !6745, !DIExpression(), !6703)
    #dbg_value(ptr %i.b, !6746, !DIExpression(), !6703)
    #dbg_value(ptr %.val9, !6739, !DIExpression(), !6704)
    #dbg_value(ptr %i.b, !6740, !DIExpression(), !6704)
    #dbg_value(ptr %i.b, !6735, !DIExpression(), !6705)
    #dbg_value(ptr %.val9, !6734, !DIExpression(), !6705)
  %i.d = ptrtoint ptr %.val9 to i64, !dbg !6750
  %i.e = ptrtoint ptr %i.b to i64, !dbg !6750
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !6750
  %i.g = lshr exact i64 %i.f, 3, !dbg !6750
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !6751
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !6751
  ret { ptr, i64 } %i.i, !dbg !6751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8as_sliceB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 !dbg !6753 {
bb.a:
    #dbg_value(ptr %0, !6773, !DIExpression(), !6775)
    #dbg_value(ptr %0, !6776, !DIExpression(), !6784)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6785
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6785, !nonnull !671, !noundef !671 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6786
  %.val9 = load ptr, ptr %i.c, align 8, !dbg !6786, !nonnull !671, !noundef !671
    #dbg_value(ptr poison, !2164, !DIExpression(), !6759)
    #dbg_value(i64 48, !2169, !DIExpression(), !6763)
    #dbg_value(ptr %.val9, !2184, !DIExpression(), !6764)
    #dbg_value(ptr %i.b, !2185, !DIExpression(), !6764)
    #dbg_value(ptr %.val9, !2178, !DIExpression(), !6765)
    #dbg_value(ptr %i.b, !2179, !DIExpression(), !6765)
    #dbg_value(ptr %i.b, !2173, !DIExpression(), !6766)
    #dbg_value(ptr %.val9, !2172, !DIExpression(), !6766)
  %i.d = ptrtoint ptr %.val9 to i64, !dbg !6787
  %i.e = ptrtoint ptr %i.b to i64, !dbg !6787
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !6787
  %i.g = udiv exact i64 %i.f, 48, !dbg !6787
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !6788
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !6788
  ret { ptr, i64 } %i.i, !dbg !6788
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs_NtCs3roNzt6HBWW_12regex_syntax6parserNtB4_6Parser3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) initializes((0, 196), (200, 240)) %0) unnamed_addr #5 !dbg !393 {
bb.a:
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !6791)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !6791)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !6792)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !6792)
    #dbg_value(ptr undef, !2098, !DIExpression(), !6792)
    #dbg_value(ptr undef, !2109, !DIExpression(), !6794)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, i8 0, i64 16, i1 false), !dbg !6798, !alias.scope !6797
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx8.i, i8 0, i64 24, i1 false), !dbg !6798, !alias.scope !6797
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6798, !alias.scope !6797
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6798, !alias.scope !6797
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6798, !alias.scope !6797
    #dbg_value(ptr undef, !2105, !DIExpression(), !6791)
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !6799
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.sroa.5.0..sroa_idx.i, i8 2, i64 6, i1 false), !dbg !6800
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.6.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx9.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !6799
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !6799
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !6799, !alias.scope !6797
  store i64 1, ptr %.sroa.15.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !6799
  store i64 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !6799
  store i32 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 188, !dbg !6799
  store i32 250, ptr %.sroa.18.0..sroa_idx.i, align 4, !dbg !6799, !alias.scope !6797
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !6799
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !6799
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !6799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !6799, !alias.scope !6797
  store i32 0, ptr %.sroa.19.0..sroa_idx.i, align 8, !dbg !6799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !6799
  store i64 0, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !6799, !alias.scope !6797
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 238, !dbg !6799
  store i8 10, ptr %.sroa.5.0..sroa_idx.i, align 2, !dbg !6799, !alias.scope !6797
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 239, !dbg !6799
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !dbg !6799, !alias.scope !6797
  ret void, !dbg !6801
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs3roNzt6HBWW_12regex_syntax6parserNtB4_6Parser5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6816 {
bb.a:
    #dbg_declare(ptr poison, !6883, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !6821)
    #dbg_declare(ptr poison, !6883, !DIExpression(DW_OP_LLVM_fragment, 448, 192), !6821)
    #dbg_declare(ptr poison, !6893, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !6900)
    #dbg_declare(ptr poison, !6893, !DIExpression(DW_OP_LLVM_fragment, 448, 192), !6900)
    #dbg_declare(ptr poison, !6901, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !6932)
    #dbg_declare(ptr poison, !6901, !DIExpression(DW_OP_LLVM_fragment, 448, 192), !6932)
    #dbg_declare(ptr poison, !6934, !DIExpression(DW_OP_LLVM_fragment, 192, 832), !6837)
    #dbg_declare(ptr poison, !6942, !DIExpression(DW_OP_LLVM_fragment, 192, 832), !6947)
    #dbg_declare(ptr poison, !6948, !DIExpression(DW_OP_LLVM_fragment, 192, 832), !6977)
    #dbg_declare(ptr poison, !6892, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !6978)
    #dbg_declare(ptr poison, !6892, !DIExpression(DW_OP_LLVM_fragment, 448, 192), !6978)
    #dbg_declare(ptr poison, !6858, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !6979)
    #dbg_declare(ptr poison, !6858, !DIExpression(DW_OP_LLVM_fragment, 448, 192), !6979)
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.611 = alloca [48 x i8], align 8          ; 6 uses
    #dbg_declare(ptr poison, !6941, !DIExpression(DW_OP_LLVM_fragment, 192, 832), !6980)
    #dbg_declare(ptr poison, !6855, !DIExpression(DW_OP_LLVM_fragment, 192, 832), !6981)
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !6852, !DIExpression(), !6982)
    #dbg_value(ptr %2, !6853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6982)
    #dbg_value(i64 %3, !6853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6982)
    #dbg_declare(ptr %i.c, !6854, !DIExpression(), !6983)
    #dbg_declare(ptr %i.b, !6973, !DIExpression(), !6984)
    #dbg_declare(ptr %i.a, !6928, !DIExpression(), !6985)
    #dbg_declare(ptr poison, !6857, !DIExpression(), !6986)
    #dbg_declare(ptr poison, !6929, !DIExpression(), !6987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6976
  call void @_RNvMs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !7002
  %i.d = load i64, ptr %i.b, align 8, !dbg !7003, !range !6988, !noundef !671 ; 2 uses
  %.not = icmp eq i64 %i.d, -1, !dbg !7003
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7004
  %i.f = load i64, ptr %i.e, align 8, !dbg !7004  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7004
  %i.h = load ptr, ptr %i.g, align 8, !dbg !7004  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !7005

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.d, !6948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6989)
    #dbg_value(i64 %i.f, !6948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6989)
    #dbg_value(ptr %i.h, !6948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6989)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7006
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.625.0..sroa_idx, i64 104, i1 false), !dbg !7006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7008
    #dbg_value(i64 %i.d, !6855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6990)
    #dbg_value(i64 %i.d, !6941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6991)
    #dbg_value(i64 %i.f, !6855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6990)
    #dbg_value(i64 %i.f, !6941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6991)
    #dbg_value(ptr %i.h, !6855, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6990)
    #dbg_value(ptr %i.h, !6941, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6991)
    #dbg_value(i64 %i.d, !6942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6992)
    #dbg_value(i64 %i.d, !6934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6993)
    #dbg_value(i64 %i.f, !6942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6992)
    #dbg_value(i64 %i.f, !6934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6993)
    #dbg_value(ptr %i.h, !6942, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6992)
    #dbg_value(ptr %i.h, !6934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6993)
  store i64 %i.d, ptr %0, align 8, !dbg !7007
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7007
  store i64 %i.f, ptr %.sroa.445.0..sroa_idx, align 8, !dbg !7007
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7007
  store ptr %i.h, ptr %.sroa.546.0..sroa_idx, align 8, !dbg !7007
  br label %bb.g, !dbg !7009

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7008
    #dbg_value(i64 %i.f, !6856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6995)
    #dbg_value(ptr %i.h, !6856, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6995)
  store i64 %i.f, ptr %i.c, align 8, !dbg !7010
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7010
  store ptr %i.h, ptr %i.i, align 8, !dbg !7010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611), !dbg !6931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6931
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !6931
  invoke void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_10Translator9translate(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.d, !dbg !7011

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #19
          to label %bb.j unwind label %bb.i, !dbg !7012

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !dbg !7013, !range !6988, !noundef !671 ; 2 uses
  %.not41 = icmp eq i64 %i.l, -1, !dbg !7013
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !7014
  br i1 %.not41, label %bb.f, label %bb.h, !dbg !7015

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7016
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, i64 48, i1 false), !dbg !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611), !dbg !7018
  store i64 -2, ptr %0, align 8, !dbg !7017
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c), !dbg !7012
  br label %bb.g, !dbg !7019

bb.g:                                             ; preds = %bb.b, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7012
  ret void, !dbg !7019

bb.h:                                             ; preds = %bb.e
    #dbg_value(i64 %i.l, !6901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6996)
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !7020
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx, i64 24, i1 false), !dbg !7020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7016
    #dbg_value(i64 %i.l, !6858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6997)
    #dbg_value(i64 %i.l, !6892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6998)
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611, i64 48, i1 false), !dbg !7016
    #dbg_value(i64 %i.l, !6893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6999)
    #dbg_value(i64 %i.l, !6883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7000)
  store i64 -1, ptr %0, align 8, !dbg !7021
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7021
  store i64 %i.l, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !7021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611), !dbg !7018
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c), !dbg !7012
  br label %bb.g, !dbg !7012

bb.i:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7022
  unreachable, !dbg !7022

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !7022
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3roNzt6HBWW_12regex_syntax6parser5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7023 {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 27 uses
    #dbg_value(ptr %1, !7037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7039)
    #dbg_value(i64 %2, !7037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7039)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7042
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !7027)
    #dbg_value(ptr poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !7027)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !7028)
    #dbg_value(ptr poison, !2098, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !7028)
    #dbg_value(ptr undef, !2098, !DIExpression(), !7028)
    #dbg_value(ptr undef, !2109, !DIExpression(), !7030)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i8 0, i64 16, i1 false), !dbg !7043, !alias.scope !7040
  %.sroa.5.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx8.i.i, i8 0, i64 24, i1 false), !dbg !7043, !alias.scope !7040
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !dbg !7043, !alias.scope !7040
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !dbg !7043, !alias.scope !7040
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !dbg !7043, !alias.scope !7040
    #dbg_value(ptr undef, !2105, !DIExpression(), !7027)
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232, !dbg !7044
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.sroa.5.0..sroa_idx.i.i, i8 2, i64 6, i1 false), !dbg !7045, !alias.scope !7041
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !7044
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !7044
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !7044
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !7044
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.12.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !7044
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !7044, !alias.scope !7040
  store i64 1, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !7044
  store i64 1, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184, !dbg !7044
  store i32 0, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 188, !dbg !7044
  store i32 250, ptr %.sroa.18.0..sroa_idx.i.i, align 4, !dbg !7044, !alias.scope !7040
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192, !dbg !7044
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200, !dbg !7044
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216, !dbg !7044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !dbg !7044, !alias.scope !7040
  store i32 0, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7041
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224, !dbg !7044
  store i64 0, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7044, !alias.scope !7040
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 238, !dbg !7044
  store i8 10, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !dbg !7044, !alias.scope !7040
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 239, !dbg !7044
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 1, !dbg !7044, !alias.scope !7040
  invoke void @_RNvMs_NtCs3roNzt6HBWW_12regex_syntax6parserNtB4_6Parser5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b, !dbg !7046

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax6parser6ParserEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.a) #19
          to label %bb.e unwind label %bb.d, !dbg !7047

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax6parser6ParserEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.a), !dbg !7047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7047
  ret void, !dbg !7048

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7049
  unreachable, !dbg !7049

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !7049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtB9_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB5_8Iterator9size_hintB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 !dbg !7050 {
bb.a:
    #dbg_value(ptr %1, !7065, !DIExpression(), !7068)
  %i.a = load ptr, ptr %1, align 8, !dbg !7085, !nonnull !671, !noundef !671
  %.val = load i8, ptr %i.a, align 1, !dbg !7086, !range !2114, !noundef !671
    #dbg_value(ptr poison, !7070, !DIExpression(), !7053)
  %i.b = zext nneg i8 %.val to i64, !dbg !7087    ; 2 uses
  store i64 %i.b, ptr %0, align 8, !dbg !7088, !alias.scope !7084
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7088
  store i64 1, ptr %i.c, align 8, !dbg !7088, !alias.scope !7084
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7088
  store i64 %i.b, ptr %i.d, align 8, !dbg !7088, !alias.scope !7084
  ret void, !dbg !7089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtB9_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB5_8Iterator9size_hintB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 !dbg !7090 {
bb.a:
    #dbg_value(ptr %1, !7101, !DIExpression(), !7104)
  %i.a = load ptr, ptr %1, align 8, !dbg !7107, !nonnull !671, !align !7105, !noundef !671
  %.val = load i32, ptr %i.a, align 4, !dbg !7108, !range !2272, !noundef !671
    #dbg_value(ptr poison, !2274, !DIExpression(), !7092)
  %i.b = icmp ne i32 %.val, -1, !dbg !7109
  %i.c = zext i1 %i.b to i64, !dbg !7109          ; 2 uses
  store i64 %i.c, ptr %0, align 8, !dbg !7110, !alias.scope !7106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7110
  store i64 1, ptr %i.d, align 8, !dbg !7110, !alias.scope !7106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7110
  store i64 %i.c, ptr %i.e, align 8, !dbg !7110, !alias.scope !7106
  ret void, !dbg !7111
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEENtNtNtB10_3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7122 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !7264, !DIExpression(), !7271)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
    #dbg_value(ptr %0, !7252, !DIExpression(), !7288)
    #dbg_declare(ptr %i.d, !7255, !DIExpression(), !7289)
    #dbg_declare(ptr %i.c, !7274, !DIExpression(), !7290)
    #dbg_declare(ptr %i.c, !7291, !DIExpression(), !7297)
    #dbg_declare(ptr poison, !7301, !DIExpression(), !7311)
    #dbg_declare(ptr poison, !7312, !DIExpression(), !7324)
    #dbg_declare(ptr poison, !7318, !DIExpression(), !7325)
    #dbg_declare(ptr poison, !7326, !DIExpression(), !7333)
    #dbg_declare(ptr poison, !7328, !DIExpression(), !7334)
    #dbg_declare(ptr poison, !7335, !DIExpression(), !7347)
    #dbg_declare(ptr poison, !7342, !DIExpression(), !7348)
    #dbg_value(i64 0, !7349, !DIExpression(), !7356)
    #dbg_declare(ptr poison, !7276, !DIExpression(), !7367)
    #dbg_value(ptr %0, !7305, !DIExpression(), !7368)
    #dbg_value(ptr %0, !7317, !DIExpression(), !7369)
    #dbg_value(ptr %0, !7327, !DIExpression(), !7370)
    #dbg_value(ptr poison, !7341, !DIExpression(), !7371)
    #dbg_value(ptr %0, !7372, !DIExpression(), !7152)
    #dbg_declare(ptr poison, !7375, !DIExpression(), !7153)
    #dbg_declare(ptr poison, !7376, !DIExpression(), !7154)
    #dbg_declare(ptr poison, !7377, !DIExpression(), !7155)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7384, !nonnull !671, !noundef !671 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !7384 ; 3 uses
  %.not6.i = icmp eq ptr %.promoted.i, %i.f, !dbg !7468
  br i1 %.not6.i, label %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1K_3ops9try_traitINtB2N_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1C_8for_each4callBK_INvNtB1K_3mem4dropBK_EE0E0B39_EBO_.exit, label %_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBT_.exit.preheader.i, !dbg !7469

_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBT_.exit.preheader.i: ; preds = %bb.a
  %.promoted7.i = ptrtoaddr ptr %.promoted.i to i64, !dbg !7468
  %i.g = ptrtoaddr ptr %i.f to i64
    #dbg_value(ptr poison, !7402, !DIExpression(), !7173)
    #dbg_value(ptr %0, !7408, !DIExpression(), !7174)
    #dbg_value(ptr %0, !7401, !DIExpression(), !7175)
    #dbg_value(ptr %i.f, !7403, !DIExpression(), !7176)
    #dbg_value(ptr poison, !7388, !DIExpression(), !7177)
    #dbg_value(ptr poison, !7389, !DIExpression(), !7178)
  %i.h = add i64 %i.g, -2, !dbg !7469
  %i.i = sub i64 %i.h, %.promoted7.i, !dbg !7469
  %i.j = and i64 %i.i, -2, !dbg !7469
  %i.k = getelementptr i8, ptr %.promoted.i, i64 %i.j, !dbg !7469
  %scevgep.i = getelementptr i8, ptr %i.k, i64 2, !dbg !7469
  store ptr %scevgep.i, ptr %0, align 8, !dbg !7470, !alias.scope !7384
  br label %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1K_3ops9try_traitINtB2N_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1C_8for_each4callBK_INvNtB1K_3mem4dropBK_EE0E0B39_EBO_.exit, !dbg !7469

_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1K_3ops9try_traitINtB2N_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1C_8for_each4callBK_INvNtB1K_3mem4dropBK_EE0E0B39_EBO_.exit: ; preds = %bb.a, %_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBT_.exit.preheader.i
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7350, !DIExpression(), !7356)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !dbg !7471
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !dbg !7471
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7472
  %i.m = load i64, ptr %i.l, align 8, !dbg !7472, !noundef !671
  %i.n = icmp eq i64 %i.m, 0, !dbg !7472
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !7472

bb.b:                                             ; preds = %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1K_3ops9try_traitINtB2N_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1C_8for_each4callBK_INvNtB1K_3mem4dropBK_EE0E0B39_EBO_.exit
    #dbg_value(ptr %0, !7411, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7417)
end_hunk_0
