Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.09?download=true
inline.NumInlined: 75
inline.NumDeleted: 10
begin_hunk_0_@_RNvXs_NtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6ParserNtNtCskKLDkoKarTP_4core7default7Default7defaultB6_:bb.a
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.n, %bb.p ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_type9ErrorTypeEEB13_(ptr nonnull align 8 %i.d) #16
          to label %bb.l unwind label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn = phi { ptr, i32 } [ %i.p, %bb.u ], [ %i.o, %bb.s ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.c) #16
          to label %bb.o unwind label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtB1k_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshx33xqnyVJN_3syn(ptr nonnull align 8 %i.b) #16
          to label %bb.r unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = extractvalue { i32, i8 } %i.i, 1
  %i.s = extractvalue { i32, i8 } %i.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i8 %i.r, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  ret void

bb.w:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.x:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5array4iter8IntoIterbKj100_EB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((8, 9)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5array4iter8IntoIterbKj100_EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #18 ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0          ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.c, ptr %.sroa.36.0..sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6filter6FilterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B2f_NtB2f_5Graph13retain_states0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B1O_NtB1O_5Graph13retain_states0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Q_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range14RangeInclusivehEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range14RangeInclusivehEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1A_5StateEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBS_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter6ChunksTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs17_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_6ChunksTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #18 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = ptrtoint ptr %i.b to i64
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5LinesENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserENtNtNtB8_6traits8iterator8Iterator4nextB1d_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 3 uses
  call void @_RNvXs0_NtNtCs2SM5xCHwwDm_13logos_codegen6parser6nestedNtB5_15AttributeParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([80 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  store i64 %i.d, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCshx33xqnyVJN_3syn5parseNvYNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = call { ptr, i64 } @_RNvMNtCshx33xqnyVJN_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_RNvNtCshx33xqnyVJN_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #16
          to label %bb.v unwind label %bb.u

bb.c:                                             ; preds = %.invoke, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn11parse_quote10ParseQuote5parseINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtBP_5parse11ParseBufferEE9call_onceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.u, %bb.k ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #16
          to label %bb.b unwind label %bb.u

bb.f:                                             ; preds = %.invoke10, %bb.i, %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.h, align 8
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @57)
          to label %.invoke unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i) #16
          to label %bb.e unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @56)
          to label %.invoke10 unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.w = invoke { ptr, ptr } @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = invoke { i32, i8 } @_RNvNtCshx33xqnyVJN_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.x, ptr %i.y)
          to label %bb.q unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aa = extractvalue { i32, i8 } %i.z, 1        ; 2 uses
  %.not6.not = icmp eq i8 %i.aa, -1
  br i1 %.not6.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = extractvalue { i32, i8 } %i.z, 0
  invoke void @_RNvNtCshx33xqnyVJN_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ab, i8 %i.aa)
          to label %bb.s unwind label %bb.k

.thread:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %.invoke10

bb.t:                                             ; preds = %.invoke
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  ret void

.invoke10:                                        ; preds = %bb.n, %bb.s
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %.invoke10, %bb.i, %.thread
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.c

bb.u:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.v:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @_RNvXsh_NtNtCskKLDkoKarTP_4core3ops5arithRhINtB5_3AddhE3addCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly captures(none) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = add i8 %i.a, %1
  ret i8 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
end_hunk_0
