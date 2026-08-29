Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex-9ce8876e423090b4.regex.6a0fe4e1bbca0ee6-cgu.0?download=true
inline.NumInlined: 417
inline.NumDeleted: 202
begin_hunk_0_@_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder15line_terminator:bb.a
    #dbg_value(ptr %0, !12618, !DIExpression(), !12620)
    #dbg_value(i8 %1, !12619, !DIExpression(), !12620)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder15line_terminator(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i8 noundef %1), !dbg !12621 ; 0 uses
  ret ptr %0, !dbg !12622
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !12623 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !12628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12629)
    #dbg_value(i64 %2, !12628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12630
  store ptr %1, ptr %i.a, align 8, !dbg !12630
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12630
  store i64 %2, ptr %i.b, align 8, !dbg !12630
  call void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej1_BS_EB7_(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !dbg !12631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12632
  ret void, !dbg !12633
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 !dbg !12634 {
bb.a:
    #dbg_value(ptr %1, !12660, !DIExpression(), !12661)
  tail call void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder16build_one_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1), !dbg !12662
  ret void, !dbg !12663
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8regexset5bytesNtB2_8RegexSet5empty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12664 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [184 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !12701, !DIExpression(), !12706)
    #dbg_declare(ptr poison, !12707, !DIExpression(), !12719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12720
  call void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.b), !dbg !12721
    #dbg_value(ptr %i.b, !12722, !DIExpression(), !12744)
  invoke void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder16build_many_bytes(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b)
          to label %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder5build.exit unwind label %bb.b, !dbg !12746

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12747

.body:                                            ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.h, %bb.d ]
    #dbg_value(ptr %i.b, !12748, !DIExpression(), !12756)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex8builders7BuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs96z5GJ9HwjO_5regex8builders5bytes15RegexSetBuilderEBH_.exit unwind label %bb.h, !dbg !12758

_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder5build.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12759), !dbg !12762
  call void @llvm.experimental.noalias.scope.decl(metadata !12763), !dbg !12762
    #dbg_declare(ptr %i.c, !12765, !DIExpression(), !12775)
    #dbg_declare(ptr %i.a, !12773, !DIExpression(), !12777)
  %i.e = load ptr, ptr %i.c, align 8, !dbg !12778, !alias.scope !12763, !noalias !12759, !noundef !46
  %i.f = icmp eq ptr %i.e, null, !dbg !12778
  br i1 %i.f, label %bb.c, label %bb.g, !dbg !12779, !prof !2839

bb.c:                                             ; preds = %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder5build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12780, !noalias !12781
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !12780, !noalias !12759
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.e unwind label %bb.d, !dbg !12782, !noalias !12781

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %.body unwind label %bb.f, !dbg !12783, !noalias !12781

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12784, !noalias !12781
  unreachable, !dbg !12784

bb.g:                                             ; preds = %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder5build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !12785, !alias.scope !12781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12786
    #dbg_value(ptr %i.b, !12748, !DIExpression(), !12787)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex8builders7BuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.b), !dbg !12789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12747
  ret void, !dbg !12790

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12791
  unreachable, !dbg !12791

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs96z5GJ9HwjO_5regex8builders5bytes15RegexSetBuilderEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !12791
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8regexset6stringNtB2_8RegexSet5empty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12792 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [184 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !12803, !DIExpression(), !12805)
    #dbg_declare(ptr poison, !12806, !DIExpression(), !12815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12816
  call void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.b), !dbg !12817
    #dbg_value(ptr %i.b, !12818, !DIExpression(), !12840)
  invoke void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder17build_many_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b)
          to label %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder5build.exit unwind label %bb.b, !dbg !12842

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12843

.body:                                            ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.h, %bb.d ]
    #dbg_value(ptr %i.b, !12844, !DIExpression(), !12852)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex8builders7BuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs96z5GJ9HwjO_5regex8builders6string15RegexSetBuilderEBH_.exit unwind label %bb.h, !dbg !12854

_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder5build.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12855), !dbg !12858
  call void @llvm.experimental.noalias.scope.decl(metadata !12859), !dbg !12858
    #dbg_declare(ptr %i.c, !12861, !DIExpression(), !12871)
    #dbg_declare(ptr %i.a, !12869, !DIExpression(), !12873)
  %i.e = load ptr, ptr %i.c, align 8, !dbg !12874, !alias.scope !12859, !noalias !12855, !noundef !46
  %i.f = icmp eq ptr %i.e, null, !dbg !12874
  br i1 %i.f, label %bb.c, label %bb.g, !dbg !12875, !prof !2839

bb.c:                                             ; preds = %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder5build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12876, !noalias !12877
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !12876, !noalias !12855
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.e unwind label %bb.d, !dbg !12878, !noalias !12877

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %.body unwind label %bb.f, !dbg !12879, !noalias !12877

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12880, !noalias !12877
  unreachable, !dbg !12880

bb.g:                                             ; preds = %_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder5build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !12881, !alias.scope !12877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12882
    #dbg_value(ptr %i.b, !12844, !DIExpression(), !12883)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex8builders7BuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.b), !dbg !12885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12843
  ret void, !dbg !12886

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12887
  unreachable, !dbg !12887

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs96z5GJ9HwjO_5regex8builders6string15RegexSetBuilderEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !12887
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_13RefUnwindSafeNtNtB2d_6marker4SendNtB42_4SyncEL_EE13with_capacityCs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1448 x i8]) align 8 captures(none) dereferenceable(1448) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12888 {
bb.a:
  %i.a = alloca [64 x i8], align 64               ; 9 uses
    #dbg_value(ptr poison, !12904, !DIExpression(), !12912)
    #dbg_value(ptr poison, !12922, !DIExpression(), !12934)
    #dbg_value(ptr poison, !12929, !DIExpression(), !12935)
  %i.b = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %2, !12895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12936)
    #dbg_value(ptr %3, !12895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12936)
    #dbg_value(i64 %1, !12894, !DIExpression(), !12936)
    #dbg_declare(ptr %i.b, !12896, !DIExpression(), !12937)
    #dbg_declare(ptr %i.a, !12938, !DIExpression(), !12945)
    #dbg_declare(ptr poison, !12947, !DIExpression(), !12954)
    #dbg_declare(ptr poison, !12963, !DIExpression(), !12970)
    #dbg_declare(ptr poison, !12972, !DIExpression(), !12984)
    #dbg_value(i64 1, !12986, !DIExpression(), !12991)
    #dbg_value(i64 1, !12993, !DIExpression(), !12997)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12999
    #dbg_value(ptr undef, !12037, !DIExpression(DW_OP_deref), !13000)
    #dbg_value(ptr undef, !12041, !DIExpression(DW_OP_deref), !13000)
  %..i = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !13002 ; 3 uses
    #dbg_value(i64 %..i, !12961, !DIExpression(), !13003)
    #dbg_value(i64 %..i, !12953, !DIExpression(), !13004)
    #dbg_value(i64 %..i, !12969, !DIExpression(), !13005)
    #dbg_value(i64 %..i, !12978, !DIExpression(), !13006)
    #dbg_value(i64 64, !12979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13006)
    #dbg_value(i64 64, !12979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13006)
    #dbg_value(i64 %..i, !13007, !DIExpression(), !13041)
    #dbg_value(i64 %..i, !13043, !DIExpression(), !13064)
    #dbg_value(i64 %..i, !13066, !DIExpression(), !13092)
    #dbg_value(i64 %..i, !13094, !DIExpression(), !13101)
    #dbg_value(i64 %..i, !13103, !DIExpression(), !13113)
    #dbg_value(i1 false, !13028, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13041)
    #dbg_declare(ptr poison, !13029, !DIExpression(), !13115)
    #dbg_value(i64 64, !13030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13041)
    #dbg_value(i64 64, !13030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13041)
    #dbg_value(i64 64, !13063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13064)
    #dbg_value(i64 64, !13097, !DIExpression(), !13101)
    #dbg_value(i64 64, !13112, !DIExpression(), !13113)
    #dbg_value(i64 64, !13063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13064)
    #dbg_value(ptr poison, !13089, !DIExpression(), !13116)
    #dbg_value(i64 %1, !13100, !DIExpression(DW_OP_constu, 288230376151711743, DW_OP_gt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13117)
    #dbg_value(i64 %1, !13118, !DIExpression(DW_OP_constu, 288230376151711743, DW_OP_gt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13121)
    #dbg_value(i64 %..i, !13090, !DIExpression(DW_OP_constu, 6, DW_OP_shl, DW_OP_stack_value), !13123)
    #dbg_value(i64 %..i, !13098, !DIExpression(DW_OP_constu, 6, DW_OP_shl, DW_OP_stack_value), !13117)
  %.not.i = icmp ugt i64 %1, 144115188075855871
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !13124, !prof !13125

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.p, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe10UnwindSafeNtB2E_13RefUnwindSafeNtNtB4_6marker4SendNtB3D_4SyncEL_EECs96z5GJ9HwjO_5regex(ptr nonnull %2, ptr nonnull %3) #20
          to label %bb.n unwind label %bb.l, !dbg !13126

bb.c:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %4 = shl nuw nsw i64 %..i, 6, !dbg !13127       ; 2 uses
    #dbg_value(i64 %4, !13090, !DIExpression(), !13123)
    #dbg_value(i64 %4, !13098, !DIExpression(), !13117)
    #dbg_value(i64 64, !13031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13128)
    #dbg_value(i64 %4, !13031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13128)
    #dbg_value(i64 64, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13129)
    #dbg_value(i64 64, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13143)
    #dbg_value(i64 %4, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13129)
    #dbg_value(i64 %4, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13143)
    #dbg_value(i64 %4, !3851, !DIExpression(), !13156)
    #dbg_value(i64 %4, !3851, !DIExpression(), !13157)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13128, !noalias !13158
    #dbg_value(ptr poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13161)
    #dbg_value(i64 poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13161)
    #dbg_value(ptr poison, !13153, !DIExpression(), !13162)
    #dbg_value(ptr poison, !13147, !DIExpression(), !13163)
    #dbg_value(i64 64, !13154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13162)
    #dbg_value(i64 64, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13163)
    #dbg_value(i64 %4, !13154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13162)
    #dbg_value(i64 %4, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13163)
    #dbg_value(i8 0, !13149, !DIExpression(), !13163)
    #dbg_value(i64 64, !3876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13164)
    #dbg_value(i64 %4, !3876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13164)
    #dbg_value(i1 false, !3850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13143)
  %i.d = tail call noundef align 64 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) 64) #23, !dbg !13166, !noalias !13158 ; 3 uses
    #dbg_value(ptr %i.d, !13035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13161)
    #dbg_value(i64 poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13161)
  %i.e = icmp eq ptr %i.d, null, !dbg !13167
  br i1 %i.e, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit, !dbg !13168

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.4.0.ph = phi i64 [ 64, %bb.d ], [ 0, %bb.a ]
  %.sroa.9.0.ph = phi i64 [ %4, %bb.d ], [ undef, %bb.a ]
    #dbg_value(i64 %.sroa.4.0.ph, !12982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13169)
    #dbg_value(i64 %.sroa.9.0.ph, !12982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13169)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.9.0.ph) #24
          to label %bb.m unwind label %bb.c, !dbg !13170

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit: ; preds = %bb.d
  store i64 %..i, ptr %i.b, align 8, !dbg !13171
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13171 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !dbg !13171
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13171 ; 2 uses
  store i64 0, ptr %i.g, align 8, !dbg !13171
    #dbg_value(i64 0, !12898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13172)
    #dbg_value(i64 %..i, !12898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13172)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
    #dbg_value(i64 0, !12898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13172)
    #dbg_value(ptr undef, !12929, !DIExpression(), !12935)
    #dbg_value(ptr undef, !12922, !DIExpression(), !12934)
    #dbg_value(ptr undef, !12904, !DIExpression(), !12912)
    #dbg_value(ptr undef, !12911, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13173)
  br label %bb.g, !dbg !12913

bb.f:                                             ; preds = %bb.k
    #dbg_value(i64 0, !12900, !DIExpression(), !13174)
    #dbg_value(i64 -1, !12902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13175)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13177
  store ptr %2, ptr %i.h, align 8, !dbg !13177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13177
  store ptr %3, ptr %i.i, align 8, !dbg !13177
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13177
  store i64 0, ptr %i.j, align 8, !dbg !13177
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13177
  store i64 -1, ptr %i.k, align 8, !dbg !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13126
  ret void, !dbg !13178

bb.g:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit, %bb.k
  %i.l = phi ptr [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit ], [ %i.r, %bb.k ]
  %i.m = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit ], [ %i.t, %bb.k ], !dbg !13179 ; 3 uses
  %.sroa.0.050 = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex.exit ], [ %i.u, %bb.k ]
    #dbg_value(i64 %.sroa.0.050, !12923, !DIExpression(), !13193)
    #dbg_value(i64 %.sroa.0.050, !12990, !DIExpression(), !12991)
    #dbg_value(i64 %.sroa.0.050, !12996, !DIExpression(), !12997)
    #dbg_value(i64 %.sroa.0.050, !12898, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13172)
    #dbg_value(ptr %i.b, !12944, !DIExpression(), !13194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13195
  store i32 0, ptr %i.a, align 64, !dbg !13195
  store i8 0, ptr %.sroa.412.0..sroa_idx, align 4, !dbg !13195
  store i64 0, ptr %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx, align 8, !dbg !13195
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx, align 16, !dbg !13195
  store i64 0, ptr %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx, align 8, !dbg !13195
    #dbg_value(ptr %i.b, !13185, !DIExpression(), !13196)
    #dbg_value(ptr %i.b, !13197, !DIExpression(), !13203)
    #dbg_declare(ptr %i.a, !13186, !DIExpression(), !13205)
    #dbg_value(i64 64, !13206, !DIExpression(), !13210)
    #dbg_value(i64 %i.m, !13187, !DIExpression(), !13220)
    #dbg_value(i64 %i.m, !13221, !DIExpression(), !13227)
    #dbg_value(ptr %i.b, !13218, !DIExpression(), !13229)
  %i.n = load i64, ptr %i.b, align 8, !dbg !13230, !range !4019, !alias.scope !13231, !noalias !13234, !noundef !46
  %i.o = icmp eq i64 %i.m, %i.n, !dbg !13236
  br i1 %i.o, label %bb.h, label %bb.k, !dbg !13236

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE8grow_oneBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge unwind label %bb.i, !dbg !13237, !noalias !13234

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.f, align 8, !dbg !13238, !alias.scope !13231, !noalias !13234
  br label %bb.k, !dbg !13237

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 64 dereferenceable(64) %i.a) #20
          to label %.body unwind label %bb.j, !dbg !13259

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13260
  unreachable, !dbg !13260

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.b unwind label %bb.l, !dbg !13126

bb.k:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.g ], !dbg !13238 ; 2 uses
    #dbg_value(ptr %i.r, !13226, !DIExpression(), !13227)
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.m, !dbg !13261
    #dbg_value(ptr %i.s, !13189, !DIExpression(), !13262)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.s, ptr noundef nonnull align 64 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !13263
  %i.t = add i64 %i.m, 1, !dbg !13264             ; 2 uses
  store i64 %i.t, ptr %i.g, align 8, !dbg !13264, !alias.scope !13231, !noalias !13234
  %i.u = add nuw i64 %.sroa.0.050, 1, !dbg !13265 ; 2 uses
    #dbg_value(i64 %i.u, !12898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13266
    #dbg_value(ptr undef, !12929, !DIExpression(), !12935)
    #dbg_value(ptr undef, !12922, !DIExpression(), !12934)
    #dbg_value(ptr undef, !12904, !DIExpression(), !12912)
    #dbg_value(ptr undef, !12911, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13173)
  %exitcond.not = icmp eq i64 %i.u, %..i, !dbg !13267
  br i1 %exitcond.not, label %bb.f, label %bb.g, !dbg !12913

bb.l:                                             ; preds = %bb.b, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13268
  unreachable, !dbg !13268

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !13268
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #3 !dbg !13269 {
bb.a:
    #dbg_value(ptr poison, !13275, !DIExpression(), !13289)
    #dbg_value(i64 %1, !13276, !DIExpression(), !13289)
    #dbg_value(i64 %1, !13290, !DIExpression(), !13294)
    #dbg_value(i64 %1, !13296, !DIExpression(), !13302)
    #dbg_value(i64 %1, !13304, !DIExpression(), !13311)
    #dbg_value(i64 %1, !13313, !DIExpression(), !13317)
    #dbg_value(i64 %2, !13277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13289)
    #dbg_value(i64 %3, !13277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13289)
    #dbg_declare(ptr poison, !13319, !DIExpression(), !13338)
    #dbg_value(i64 %3, !13293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13294)
    #dbg_value(i64 %3, !13307, !DIExpression(), !13311)
    #dbg_value(i64 %3, !13316, !DIExpression(), !13317)
    #dbg_value(i64 %2, !13293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13294)
    #dbg_value(ptr poison, !13299, !DIExpression(), !13340)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !13341
  %4 = mul nuw i64 %3, %1, !dbg !13341            ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1, !dbg !13341
    #dbg_value(i1 %i.b, !13310, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13342)
    #dbg_value(i1 %i.b, !13343, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13346)
    #dbg_value(i64 %4, !13300, !DIExpression(), !13348)
    #dbg_value(i64 %4, !13308, !DIExpression(), !13342)
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !dbg !13349, !prof !13125
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !13349, !prof !13125

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %2, !13278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13350)
    #dbg_value(i64 %4, !13278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13350)
    #dbg_value(ptr poison, !4056, !DIExpression(), !13351)
    #dbg_value(i64 %2, !4080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13351)
    #dbg_value(i64 %3, !4080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13351)
    #dbg_value(i64 %3, !4087, !DIExpression(), !13353)
  %i.d = icmp eq i64 %.0.val, 0, !dbg !13355
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit, !dbg !13355

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
    #dbg_value(i64 %.0.val, !4094, !DIExpression(), !13353)
  %i.e = mul nuw i64 %3, %.0.val, !dbg !13356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %.8.val, !13286, !DIExpression(), !13357)
    #dbg_value(i64 %2, !13288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13357)
    #dbg_value(i64 %i.e, !13288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13357)
    #dbg_value(ptr poison, !13358, !DIExpression(), !13366)
    #dbg_value(ptr poison, !13368, !DIExpression(), !13378)
    #dbg_value(ptr %.8.val, !13363, !DIExpression(), !13366)
    #dbg_value(ptr %.8.val, !13374, !DIExpression(), !13378)
    #dbg_value(i64 %2, !13364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13366)
    #dbg_value(i64 %2, !13375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13378)
    #dbg_value(i64 %i.e, !13364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13366)
    #dbg_value(i64 %i.e, !13375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13378)
    #dbg_value(i64 %2, !13365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13366)
    #dbg_value(i64 %2, !13376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13378)
    #dbg_value(i64 %4, !13365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13366)
    #dbg_value(i64 %4, !13376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13378)
    #dbg_value(i8 0, !13377, !DIExpression(), !13378)
    #dbg_value(ptr poison, !13380, !DIExpression(), !13410)
    #dbg_value(ptr %.8.val, !13385, !DIExpression(), !13410)
    #dbg_value(ptr %.8.val, !13412, !DIExpression(), !13419)
    #dbg_value(i64 %2, !13386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(i64 %2, !13417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13419)
    #dbg_value(i64 %i.e, !13386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(i64 %i.e, !13417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13419)
    #dbg_value(i64 %2, !13387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(i64 %4, !13387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(i1 false, !13388, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13410)
    #dbg_value(i64 %i.e, !13389, !DIExpression(), !13421)
    #dbg_value(ptr poison, !13391, !DIExpression(), !13422)
    #dbg_value(i64 %4, !13392, !DIExpression(), !13423)
    #dbg_value(i64 %4, !13418, !DIExpression(), !13419)
  %i.f = icmp uge i64 %1, %.0.val, !dbg !13424
    #dbg_value(i1 true, !13425, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13432)
  tail call void @llvm.assume(i1 %i.f), !dbg !13434
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #23, !dbg !13435
    #dbg_value(ptr poison, !13284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13436)
    #dbg_value(ptr poison, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13437)
    #dbg_value(i64 poison, !13284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13436)
    #dbg_value(i64 poison, !13334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13437)
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !13438

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !13153, !DIExpression(), !13439)
    #dbg_value(ptr poison, !13147, !DIExpression(), !13441)
    #dbg_value(i64 %2, !13154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13439)
    #dbg_value(i64 %2, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13441)
    #dbg_value(i64 %4, !13154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13439)
    #dbg_value(i64 %4, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13441)
    #dbg_value(i8 0, !13149, !DIExpression(), !13441)
    #dbg_value(i64 %2, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13443)
    #dbg_value(i64 %2, !3876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13445)
    #dbg_value(i64 %4, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13443)
    #dbg_value(i64 %4, !3876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13445)
    #dbg_value(i1 false, !3850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13443)
    #dbg_value(i64 0, !13447, !DIExpression(), !13455)
    #dbg_value(i64 0, !13457, !DIExpression(), !13463)
    #dbg_value(i64 %4, !3851, !DIExpression(), !13465)
    #dbg_value(i64 %4, !13454, !DIExpression(), !13466)
    #dbg_value(i64 %4, !13462, !DIExpression(), !13468)
  %i.h = icmp eq i64 %1, 0, !dbg !13471
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !13471

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !13453, !DIExpression(), !13455)
    #dbg_value(i64 %2, !13461, !DIExpression(), !13463)
    #dbg_value(i64 %2, !13472, !DIExpression(), !13478)
  %i.i = inttoptr i64 %2 to ptr, !dbg !13480
    #dbg_value(ptr %i.i, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13437)
    #dbg_value(ptr %i.i, !13284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13436)
    #dbg_value(i64 poison, !13334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13437)
    #dbg_value(i64 poison, !13284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13436)
    #dbg_value(ptr poison, !13335, !DIExpression(), !13481)
  br label %bb.f, !dbg !13482

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13483
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !13484
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !13485

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13437)
    #dbg_value(ptr %.pn8, !13284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13436)
    #dbg_value(i64 poison, !13334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13437)
    #dbg_value(i64 poison, !13284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13436)
    #dbg_value(ptr poison, !13335, !DIExpression(), !13481)
  %i.k = icmp eq ptr %.pn8, null, !dbg !13486
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !13482

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13487
  store i64 %2, ptr %i.l, align 8, !dbg !13487
  br label %bb.g, !dbg !13488

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %4, !13284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13436)
    #dbg_value(i64 %4, !13334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13437)
    #dbg_value(ptr %.pn810, !13336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13489)
    #dbg_value(i64 %4, !13336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13489)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13490
  store ptr %.pn810, ptr %i.m, align 8, !dbg !13490
  br label %bb.g, !dbg !13491

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !13289
  store i64 %.sink11, ptr %i.n, align 8, !dbg !13289
  store i64 %.sink, ptr %0, align 8, !dbg !13289
  ret void, !dbg !13492
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !13008 {
bb.a:
    #dbg_value(i64 %1, !13007, !DIExpression(), !13493)
    #dbg_value(i64 %1, !13043, !DIExpression(), !13494)
    #dbg_value(i64 %1, !13066, !DIExpression(), !13496)
    #dbg_value(i64 %1, !13094, !DIExpression(), !13498)
    #dbg_value(i64 %1, !13103, !DIExpression(), !13500)
    #dbg_value(i64 %1, !13502, !DIExpression(), !13505)
    #dbg_value(i1 %2, !13028, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13493)
    #dbg_declare(ptr poison, !13029, !DIExpression(), !13507)
    #dbg_value(i64 %3, !13030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13493)
    #dbg_value(i64 %4, !13030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13493)
    #dbg_declare(ptr poison, !13508, !DIExpression(), !13515)
    #dbg_value(i64 %4, !13063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13494)
    #dbg_value(i64 %4, !13097, !DIExpression(), !13498)
    #dbg_value(i64 %4, !13112, !DIExpression(), !13500)
    #dbg_value(i64 %3, !13063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13494)
    #dbg_value(i64 %3, !13514, !DIExpression(), !13517)
    #dbg_value(ptr poison, !13089, !DIExpression(), !13518)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !13519
  %5 = mul nuw i64 %4, %1, !dbg !13519            ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1, !dbg !13519
    #dbg_value(i1 %i.b, !13100, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13520)
    #dbg_value(i1 %i.b, !13118, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13521)
    #dbg_value(i64 %5, !13090, !DIExpression(), !13523)
    #dbg_value(i64 %5, !13098, !DIExpression(), !13520)
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !dbg !13524, !prof !13125
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !13524, !prof !13125

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !13031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13525)
    #dbg_value(i64 %5, !13031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13525)
  %i.d = icmp eq i64 %5, 0, !dbg !13526
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !13526

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13527
  store i64 0, ptr %i.e, align 8, !dbg !13527
  br label %bb.f, !dbg !13528

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr, !dbg !13530
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13536
  store i64 0, ptr %i.g, align 8, !dbg !13536
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13536
  store ptr %i.f, ptr %i.h, align 8, !dbg !13536
  br label %bb.f, !dbg !13537

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13538)
    #dbg_value(i64 %3, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13542)
    #dbg_value(i64 %5, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13538)
    #dbg_value(i64 %5, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13542)
    #dbg_value(i64 %5, !3851, !DIExpression(), !13546)
    #dbg_value(i64 %5, !3851, !DIExpression(), !13547)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13525
    #dbg_value(ptr poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13548)
    #dbg_value(ptr poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13548)
    #dbg_value(i64 poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13548)
    #dbg_value(i64 poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13548)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !13549

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !13493
  ret void, !dbg !13550

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !13140, !DIExpression(), !13551)
    #dbg_value(ptr poison, !13133, !DIExpression(), !13552)
    #dbg_value(i64 %3, !13141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13551)
    #dbg_value(i64 %3, !13134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13552)
    #dbg_value(i64 %5, !13141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13551)
    #dbg_value(i64 %5, !13134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13552)
    #dbg_value(i8 1, !13135, !DIExpression(), !13552)
    #dbg_value(i64 %3, !13553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13556)
    #dbg_value(i64 %5, !13553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13556)
    #dbg_value(i1 true, !3850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13538)
  %i.i = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !13558
  br label %bb.h, !dbg !13559

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !13153, !DIExpression(), !13560)
    #dbg_value(ptr poison, !13147, !DIExpression(), !13561)
    #dbg_value(i64 %3, !13154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13560)
    #dbg_value(i64 %3, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13561)
    #dbg_value(i64 %5, !13154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13560)
    #dbg_value(i64 %5, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13561)
    #dbg_value(i8 0, !13149, !DIExpression(), !13561)
    #dbg_value(i64 %3, !3876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13562)
    #dbg_value(i64 %5, !3876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13562)
    #dbg_value(i1 false, !3850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13542)
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !13564
  br label %bb.h, !dbg !13565

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn29 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
    #dbg_value(ptr %.pn29, !13035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13548)
    #dbg_value(i64 poison, !13035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13548)
  %i.k = icmp eq ptr %.pn29, null, !dbg !13566
  br i1 %i.k, label %bb.i, label %bb.j, !dbg !13567

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13568
  store i64 %3, ptr %i.l, align 8, !dbg !13568
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13568
  store i64 %5, ptr %i.m, align 8, !dbg !13568
  br label %bb.f, !dbg !13569

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.pn29, !13037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13571)
    #dbg_value(i64 poison, !13037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13571)
  %i.n = icmp sgt i64 %1, -1, !dbg !13572
  tail call void @llvm.assume(i1 %i.n), !dbg !13572
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13573
  store i64 %1, ptr %i.o, align 8, !dbg !13573
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13573
  store ptr %.pn29, ptr %i.p, align 8, !dbg !13573
  br label %bb.f, !dbg !13537
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder10size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13574 {
bb.a:
    #dbg_value(ptr %0, !13579, !DIExpression(), !13581)
    #dbg_value(i64 %1, !13580, !DIExpression(), !13581)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder10size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13582 ; 0 uses
  ret ptr %0, !dbg !13583
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder14dfa_size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13584 {
bb.a:
    #dbg_value(ptr %0, !13587, !DIExpression(), !13589)
    #dbg_value(i64 %1, !13588, !DIExpression(), !13589)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder14dfa_size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13590 ; 0 uses
  ret ptr %0, !dbg !13591
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder15line_terminator(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i8 noundef %1) unnamed_addr #0 !dbg !13592 {
bb.a:
    #dbg_value(ptr %0, !13597, !DIExpression(), !13599)
    #dbg_value(i8 %1, !13598, !DIExpression(), !13599)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder15line_terminator(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i8 noundef %1), !dbg !13600 ; 0 uses
  ret ptr %0, !dbg !13601
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 !dbg !12723 {
bb.a:
    #dbg_value(ptr %1, !12722, !DIExpression(), !13602)
  tail call void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder16build_many_bytes(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1), !dbg !13603
  ret void, !dbg !13604
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder10size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13605 {
bb.a:
    #dbg_value(ptr %0, !13610, !DIExpression(), !13612)
    #dbg_value(i64 %1, !13611, !DIExpression(), !13612)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder10size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13613 ; 0 uses
  ret ptr %0, !dbg !13614
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder14dfa_size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13615 {
bb.a:
    #dbg_value(ptr %0, !13618, !DIExpression(), !13620)
    #dbg_value(i64 %1, !13619, !DIExpression(), !13620)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder14dfa_size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13621 ; 0 uses
  ret ptr %0, !dbg !13622
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder15line_terminator(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i8 noundef %1) unnamed_addr #0 !dbg !13623 {
bb.a:
    #dbg_value(ptr %0, !13628, !DIExpression(), !13630)
    #dbg_value(i8 %1, !13629, !DIExpression(), !13630)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder15line_terminator(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i8 noundef %1), !dbg !13631 ; 0 uses
  ret ptr %0, !dbg !13632
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 !dbg !12819 {
bb.a:
    #dbg_value(ptr %1, !12818, !DIExpression(), !13633)
  tail call void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder17build_many_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1), !dbg !13634
  ret void, !dbg !13635
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs96z5GJ9HwjO_5regex9find_byte9find_byte(i8 noundef %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13636 {
bb.a:
    #dbg_value(i8 %0, !13646, !DIExpression(), !13648)
    #dbg_value(ptr %1, !13647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13648)
    #dbg_value(i64 %2, !13647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13648)
    #dbg_value(ptr poison, !13649, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13679)
    #dbg_value(i8 %0, !13690, !DIExpression(), !13693)
    #dbg_value(ptr %1, !13691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13693)
    #dbg_value(ptr %1, !13685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13694)
    #dbg_value(i64 %2, !13691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13693)
    #dbg_value(i64 %2, !13685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13694)
    #dbg_value(i8 %0, !13684, !DIExpression(), !13694)
    #dbg_value(ptr undef, !13684, !DIExpression(DW_OP_deref), !13694)
    #dbg_value(ptr undef, !13649, !DIExpression(), !13679)
    #dbg_value(ptr %1, !13664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13679)
    #dbg_value(i64 %2, !13664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13679)
    #dbg_value(ptr %1, !13665, !DIExpression(), !13695)
    #dbg_value(ptr %1, !13696, !DIExpression(), !13705)
    #dbg_value(i64 %2, !13704, !DIExpression(), !13705)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !13707
    #dbg_value(ptr %i.a, !13667, !DIExpression(), !13708)
    #dbg_value(ptr poison, !13709, !DIExpression(DW_OP_deref, DW_OP_deref), !13730)
    #dbg_value(ptr %1, !13728, !DIExpression(), !13730)
    #dbg_value(ptr %1, !13732, !DIExpression(), !13739)
    #dbg_value(ptr %1, !13741, !DIExpression(), !13752)
    #dbg_value(ptr %i.a, !13729, !DIExpression(), !13730)
    #dbg_value(ptr %i.a, !13738, !DIExpression(), !13739)
    #dbg_value(ptr %i.a, !13748, !DIExpression(), !13752)
    #dbg_value(i8 0, !13754, !DIExpression(), !13775)
    #dbg_value(i8 %0, !13737, !DIExpression(), !13739)
    #dbg_value(i8 %0, !13747, !DIExpression(), !13752)
    #dbg_value(ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN, !13774, !DIExpression(), !13775)
    #dbg_value(ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN, !13777, !DIExpression(), !13784)
    #dbg_value(i8 0, !13783, !DIExpression(), !13784)
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !13786, !noalias !13787, !nonnull !46, !noundef !46
    #dbg_value(ptr %i.b, !13749, !DIExpression(), !13792)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!12917 = !DINamespace(name: "range", scope: !2153)
!12918 = !DISubroutineType(types: !12919)
!12919 = !{!495, !12920}
!12920 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !2111, size: 64, align: 64, dwarfAddressSpace: 0)
!12921 = !{!12922, !12923}
!12922 = !DILocalVariable(name: "self", arg: 1, scope: !12914, file: !12915, line: 1099, type: !12920)
!12923 = !DILocalVariable(name: "old", scope: !12924, file: !12915, line: 1101, type: !9, align: 64)
!12924 = distinct !DILexicalBlock(scope: !12914, file: !12915, line: 1101, column: 13)
!12925 = !DILocation(line: 1185, column: 14, scope: !12926, inlinedAt: !12932)
!12926 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs96z5GJ9HwjO_5regex", scope: !12927, file: !12915, line: 1184, type: !12918, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !12930, retainedNodes: !12928)
!12927 = !DINamespace(name: "{impl#6}", scope: !12917)
!12928 = !{!12929}
!12929 = !DILocalVariable(name: "self", arg: 1, scope: !12926, file: !12915, line: 1184, type: !12920)
!12930 = !{!12931}
!12931 = !DITemplateTypeParameter(name: "A", type: !9)
!12932 = !DILocation(line: 559, column: 22, scope: !12933)
!12933 = !DILexicalBlockFile(scope: !12899, file: !12889, discriminator: 2)
!12934 = !DILocation(line: 1099, column: 18, scope: !12914, inlinedAt: !12925)
!12935 = !DILocation(line: 1184, column: 13, scope: !12926, inlinedAt: !12932)
!12936 = !DILocation(line: 0, scope: !12888)
!12937 = !DILocation(line: 558, column: 17, scope: !12897)
!12938 = !DILocalVariable(name: "value", arg: 2, scope: !12939, file: !2628, line: 995, type: !686)
!12939 = distinct !DISubprogram(name: "push<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE4pushCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 995, type: !12940, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !12942, retainedNodes: !12943)
!12940 = !DISubroutineType(types: !12941)
!12941 = !{null, !5857, !686}
!12942 = !DISubprogram(name: "push<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE4pushCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 995, type: !12940, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!12943 = !{!12944, !12938}
!12944 = !DILocalVariable(name: "self", arg: 1, scope: !12939, file: !2628, line: 995, type: !5857)
!12945 = !DILocation(line: 995, column: 28, scope: !12939, inlinedAt: !12946)
!12946 = !DILocation(line: 560, column: 24, scope: !12899)
!12947 = !DILocalVariable(name: "alloc", scope: !12948, file: !2628, line: 968, type: !54, align: 8)
!12948 = distinct !DISubprogram(name: "with_capacity_in<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 968, type: !12949, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !12951, retainedNodes: !12952)
!12949 = !DISubroutineType(types: !12950)
!12950 = !{!676, !9, !54}
!12951 = !DISubprogram(name: "with_capacity_in<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 968, type: !12949, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!12952 = !{!12953, !12947}
!12953 = !DILocalVariable(name: "capacity", arg: 1, scope: !12948, file: !2628, line: 968, type: !9)
!12954 = !DILocation(line: 968, column: 46, scope: !12948, inlinedAt: !12955)
!12955 = !DILocation(line: 522, column: 9, scope: !12956, inlinedAt: !12962)
!12956 = distinct !DISubprogram(name: "with_capacity<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RNvMNtCs4wP2HXfJTCR_5alloc3vecINtB2_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBt_INtNtB4_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEEE13with_capacityCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 521, type: !12957, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !684, declaration: !12959, retainedNodes: !12960)
!12957 = !DISubroutineType(types: !12958)
!12958 = !{!676, !9}
!12959 = !DISubprogram(name: "with_capacity<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RNvMNtCs4wP2HXfJTCR_5alloc3vecINtB2_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBt_INtNtB4_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEEE13with_capacityCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 521, type: !12957, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !684)
!12960 = !{!12961}
!12961 = !DILocalVariable(name: "capacity", arg: 1, scope: !12956, file: !2628, line: 521, type: !9)
!12962 = !DILocation(line: 558, column: 30, scope: !12888)
!12963 = !DILocalVariable(name: "alloc", scope: !12964, file: !2875, line: 175, type: !54, align: 8)
!12964 = distinct !DISubprogram(name: "with_capacity_in<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 175, type: !12965, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !12967, retainedNodes: !12968)
!12965 = !DISubroutineType(types: !12966)
!12966 = !{!679, !9, !54}
!12967 = !DISubprogram(name: "with_capacity_in<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 175, type: !12965, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!12968 = !{!12969, !12963}
!12969 = !DILocalVariable(name: "capacity", arg: 1, scope: !12964, file: !2875, line: 175, type: !9)
!12970 = !DILocation(line: 175, column: 53, scope: !12964, inlinedAt: !12971)
!12971 = !DILocation(line: 969, column: 20, scope: !12948, inlinedAt: !12955)
!12972 = !DILocalVariable(name: "alloc", scope: !12973, file: !2875, line: 434, type: !54, align: 8)
!12973 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 434, type: !12974, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !56, declaration: !12976, retainedNodes: !12977)
!12974 = !DISubroutineType(types: !12975)
!12975 = !{!26, !9, !54, !3785}
!12976 = !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 434, type: !12974, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !56)
!12977 = !{!12978, !12972, !12979, !12980, !12982}
!12978 = !DILocalVariable(name: "capacity", arg: 1, scope: !12973, file: !2875, line: 434, type: !9)
!12979 = !DILocalVariable(name: "elem_layout", arg: 3, scope: !12973, file: !2875, line: 434, type: !3785)
!12980 = !DILocalVariable(name: "this", scope: !12981, file: !2875, line: 436, type: !26, align: 64)
!12981 = distinct !DILexicalBlock(scope: !12973, file: !2875, line: 436, column: 13)
!12982 = !DILocalVariable(name: "err", scope: !12983, file: !2875, line: 443, type: !11857, align: 64)
!12983 = distinct !DILexicalBlock(scope: !12973, file: !2875, line: 443, column: 13)
!12984 = !DILocation(line: 434, column: 42, scope: !12973, inlinedAt: !12985)
!12985 = !DILocation(line: 177, column: 20, scope: !12964, inlinedAt: !12971)
!12986 = !DILocalVariable(name: "n", scope: !12987, file: !12915, line: 263, type: !9, align: 64)
!12987 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !12988, file: !12915, line: 263, type: !12030, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !12989)
!12988 = !DINamespace(name: "{impl#49}", scope: !12917)
!12989 = !{!12990, !12986}
!12990 = !DILocalVariable(name: "start", arg: 1, scope: !12987, file: !12915, line: 263, type: !9)
!12991 = !DILocation(line: 0, scope: !12987, inlinedAt: !12992)
!12992 = !DILocation(line: 1103, column: 35, scope: !12924, inlinedAt: !12925)
!12993 = !DILocalVariable(name: "rhs", scope: !12994, file: !4089, line: 1001, type: !9, align: 64)
!12994 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !4090, file: !4089, line: 1001, type: !4091, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !12995)
!12995 = !{!12996, !12993}
!12996 = !DILocalVariable(name: "self", arg: 1, scope: !12994, file: !4089, line: 1001, type: !9)
!12997 = !DILocation(line: 0, scope: !12994, inlinedAt: !12998)
!12998 = !DILocation(line: 265, column: 28, scope: !12987, inlinedAt: !12992)
!12999 = !DILocation(line: 558, column: 17, scope: !12888)
!13000 = !DILocation(line: 0, scope: !12038, inlinedAt: !13001)
!13001 = distinct !DILocation(line: 558, column: 58, scope: !12888)
!13002 = !DILocation(line: 1099, column: 5, scope: !12038, inlinedAt: !13001)
!13003 = !DILocation(line: 0, scope: !12956, inlinedAt: !12962)
!13004 = !DILocation(line: 0, scope: !12948, inlinedAt: !12955)
!13005 = !DILocation(line: 0, scope: !12964, inlinedAt: !12971)
!13006 = !DILocation(line: 0, scope: !12973, inlinedAt: !12985)
!13007 = !DILocalVariable(name: "capacity", arg: 1, scope: !13008, file: !2875, line: 448, type: !9)
!13008 = distinct !DISubprogram(name: "try_allocate_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 447, type: !13009, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !56, declaration: !13026, retainedNodes: !13027)
!13009 = !DISubroutineType(types: !13010)
!13010 = !{!13011, !9, !358, !54, !3785}
!13011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<alloc::raw_vec::RawVecInner<alloc::alloc::Global>, alloc::collections::TryReserveError>", scope: !559, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13012, templateParams: !46, identifier: "a24dbc255b59ae14685640c70e1ca16c")
!13012 = !{!13013}
!13013 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13011, file: !2, size: 192, align: 64, elements: !13014, templateParams: !46, identifier: "67cdb627ce7ff747f5ed8e9d38e4cb86", discriminator: !13025)
!13014 = !{!13015, !13021}
!13015 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13013, file: !2, baseType: !13016, size: 192, align: 64, extraData: i64 0)
!13016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13011, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13017, templateParams: !13019, identifier: "c91018482588f665f9f336a3ad1edd94")
!13017 = !{!13018}
!13018 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13016, file: !2, baseType: !26, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!13019 = !{!13020, !11891}
!13020 = !DITemplateTypeParameter(name: "T", type: !26)
!13021 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13013, file: !2, baseType: !13022, size: 192, align: 64, extraData: i64 1)
!13022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13011, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13023, templateParams: !13019, identifier: "35a06a0c3cb9bad8aa5161d99f5c3b20")
!13023 = !{!13024}
!13024 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13022, file: !2, baseType: !11857, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!13025 = !DIDerivedType(tag: DW_TAG_member, scope: !13011, file: !2, baseType: !149, size: 64, align: 64, flags: DIFlagArtificial)
!13026 = !DISubprogram(name: "try_allocate_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 447, type: !13009, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !56)
!13027 = !{!13007, !13028, !13029, !13030, !13031, !13033, !13035, !13037, !13039}
!13028 = !DILocalVariable(name: "init", arg: 2, scope: !13008, file: !2875, line: 449, type: !358)
!13029 = !DILocalVariable(name: "alloc", arg: 3, scope: !13008, file: !2875, line: 450, type: !54)
!13030 = !DILocalVariable(name: "elem_layout", arg: 4, scope: !13008, file: !2875, line: 451, type: !3785)
!13031 = !DILocalVariable(name: "layout", scope: !13032, file: !2875, line: 455, type: !3785, align: 64)
!13032 = distinct !DILexicalBlock(scope: !13008, file: !2875, line: 455, column: 9)
!13033 = !DILocalVariable(name: "layout", scope: !13034, file: !2875, line: 456, type: !3785, align: 64)
!13034 = distinct !DILexicalBlock(scope: !13008, file: !2875, line: 456, column: 13)
!13035 = !DILocalVariable(name: "result", scope: !13036, file: !2875, line: 465, type: !3812, align: 64)
!13036 = distinct !DILexicalBlock(scope: !13032, file: !2875, line: 465, column: 9)
!13037 = !DILocalVariable(name: "ptr", scope: !13038, file: !2875, line: 470, type: !3797, align: 64)
!13038 = distinct !DILexicalBlock(scope: !13036, file: !2875, line: 470, column: 9)
!13039 = !DILocalVariable(name: "ptr", scope: !13040, file: !2875, line: 471, type: !3797, align: 64)
!13040 = distinct !DILexicalBlock(scope: !13036, file: !2875, line: 471, column: 13)
!13041 = !DILocation(line: 0, scope: !13008, inlinedAt: !13042)
!13042 = distinct !DILocation(line: 435, column: 15, scope: !12973, inlinedAt: !12985)
!13043 = !DILocalVariable(name: "cap", arg: 1, scope: !13044, file: !2875, line: 896, type: !9)
!13044 = distinct !DISubprogram(name: "layout_array", linkageName: "_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12layout_array", scope: !23, file: !2875, line: 896, type: !13045, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13062)
!13045 = !DISubroutineType(types: !13046)
!13046 = !{!13047, !9, !3785}
!13047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::alloc::layout::Layout, alloc::collections::TryReserveError>", scope: !559, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13048, templateParams: !46, identifier: "3a99be4d2d0518aaa3b0318e35c65b76")
!13048 = !{!13049}
!13049 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13047, file: !2, size: 192, align: 64, elements: !13050, templateParams: !46, identifier: "ac6eaeea2ca01dc953432081fa6cecaa", discriminator: !13061)
!13050 = !{!13051, !13057}
!13051 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13049, file: !2, baseType: !13052, size: 192, align: 64, extraData: i64 0)
!13052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13047, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13053, templateParams: !13055, identifier: "d30d1165b460cf02a647539a149fba54")
!13053 = !{!13054}
!13054 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13052, file: !2, baseType: !3785, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!13055 = !{!13056, !11891}
!13056 = !DITemplateTypeParameter(name: "T", type: !3785)
!13057 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13049, file: !2, baseType: !13058, size: 192, align: 64, extraData: i64 1)
!13058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13047, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13059, templateParams: !13055, identifier: "883c5314f69f53778d82c6b18999fa2a")
!13059 = !{!13060}
!13060 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13058, file: !2, baseType: !11857, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!13061 = !DIDerivedType(tag: DW_TAG_member, scope: !13047, file: !2, baseType: !149, size: 64, align: 64, flags: DIFlagArtificial)
!13062 = !{!13043, !13063}
!13063 = !DILocalVariable(name: "elem_layout", scope: !13044, file: !2875, line: 896, type: !3785, align: 64)
!13064 = !DILocation(line: 0, scope: !13044, inlinedAt: !13065)
!13065 = distinct !DILocation(line: 455, column: 28, scope: !13008, inlinedAt: !13042)
!13066 = !DILocalVariable(name: "n", arg: 2, scope: !13067, file: !6486, line: 532, type: !9)
!13067 = distinct !DISubprogram(name: "repeat_packed", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core5alloc6layoutNtB2_6Layout13repeat_packed", scope: !3785, file: !6486, line: 532, type: !13068, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13087, retainedNodes: !13088)
!13068 = !DISubroutineType(types: !13069)
!13069 = !{!13070, !13086, !9}
!13070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", scope: !559, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !13071, templateParams: !46, identifier: "668846a5c07cb6ed9a9f60e0a8b6e130")
!13071 = !{!13072}
!13072 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13070, file: !2, size: 128, align: 64, elements: !13073, templateParams: !46, identifier: "37a4f39be73b1d8c4a3f449b73d9a5e4", discriminator: !13085)
!13073 = !{!13074, !13081}
!13074 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13072, file: !2, baseType: !13075, size: 128, align: 64)
!13075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13070, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !13076, templateParams: !13078, identifier: "bdc46a3e6b73ad33a088145a9b6adaca")
!13076 = !{!13077}
!13077 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13075, file: !2, baseType: !3785, size: 128, align: 64, flags: DIFlagPublic)
!13078 = !{!13056, !13079}
!13079 = !DITemplateTypeParameter(name: "E", type: !13080)
!13080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LayoutError", scope: !3786, file: !2, align: 8, flags: DIFlagPublic, elements: !46, identifier: "2fe52bceafe3542edc5e24c39ab68647")
!13081 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13072, file: !2, baseType: !13082, size: 128, align: 64, extraData: i64 0)
!13082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13070, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !13083, templateParams: !13078, identifier: "9c1d0aeb9bf3975e7e28f62a2e025417")
!13083 = !{!13084}
!13084 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13082, file: !2, baseType: !13080, align: 8, flags: DIFlagPublic)
!13085 = !DIDerivedType(tag: DW_TAG_member, scope: !13070, file: !2, baseType: !149, size: 64, align: 64, flags: DIFlagArtificial)
!13086 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::alloc::layout::Layout", baseType: !3785, size: 64, align: 64, dwarfAddressSpace: 0)
!13087 = !DISubprogram(name: "repeat_packed", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core5alloc6layoutNtB2_6Layout13repeat_packed", scope: !3785, file: !6486, line: 532, type: !13068, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !46)
!13088 = !{!13089, !13066, !13090}
!13089 = !DILocalVariable(name: "self", arg: 1, scope: !13067, file: !6486, line: 532, type: !13086)
!13090 = !DILocalVariable(name: "size", scope: !13091, file: !6486, line: 533, type: !9, align: 64)
!13091 = distinct !DILexicalBlock(scope: !13067, file: !6486, line: 533, column: 54)
!13092 = !DILocation(line: 0, scope: !13067, inlinedAt: !13093)
!13093 = distinct !DILocation(line: 901, column: 17, scope: !13044, inlinedAt: !13065)
!13094 = !DILocalVariable(name: "rhs", arg: 2, scope: !13095, file: !4089, line: 1329, type: !9)
!13095 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj11checked_mul", scope: !4090, file: !4089, line: 1329, type: !11959, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13096)
!13096 = !{!13097, !13094, !13098, !13100}
!13097 = !DILocalVariable(name: "self", arg: 1, scope: !13095, file: !4089, line: 1329, type: !9)
!13098 = !DILocalVariable(name: "a", scope: !13099, file: !4089, line: 1330, type: !9, align: 64)
!13099 = distinct !DILexicalBlock(scope: !13095, file: !4089, line: 1330, column: 13)
!13100 = !DILocalVariable(name: "b", scope: !13099, file: !4089, line: 1330, type: !403, align: 8)
!13101 = !DILocation(line: 0, scope: !13095, inlinedAt: !13102)
!13102 = distinct !DILocation(line: 533, column: 39, scope: !13091, inlinedAt: !13093)
!13103 = !DILocalVariable(name: "rhs", arg: 2, scope: !13104, file: !4089, line: 3211, type: !9)
!13104 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj15overflowing_mul", scope: !4090, file: !4089, line: 3211, type: !13105, scopeLine: 3211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13111)
!13105 = !DISubroutineType(types: !13106)
!13106 = !{!13107, !9, !9}
!13107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !13108, templateParams: !46, identifier: "9b4293e0ef5b1e8459731bc2d47b2dc5")
!13108 = !{!13109, !13110}
!13109 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13107, file: !2, baseType: !9, size: 64, align: 64)
!13110 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !13107, file: !2, baseType: !403, size: 8, align: 8, offset: 64)
!13111 = !{!13112, !13103}
!13112 = !DILocalVariable(name: "self", arg: 1, scope: !13104, file: !4089, line: 3211, type: !9)
!13113 = !DILocation(line: 0, scope: !13104, inlinedAt: !13114)
!13114 = distinct !DILocation(line: 1330, column: 31, scope: !13095, inlinedAt: !13102)
!13115 = !DILocation(line: 450, column: 9, scope: !13008, inlinedAt: !13042)
!13116 = !DILocation(line: 532, column: 32, scope: !13067, inlinedAt: !13093)
!13117 = !DILocation(line: 0, scope: !13099, inlinedAt: !13102)
!13118 = !DILocalVariable(name: "b", arg: 1, scope: !13119, file: !12017, line: 477, type: !403)
!13119 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCsj6eKBz9Db1c_4core10intrinsics8unlikely", scope: !12018, file: !12017, line: 477, type: !12019, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13120)
!13120 = !{!13118}
!13121 = !DILocation(line: 0, scope: !13119, inlinedAt: !13122)
!13122 = distinct !DILocation(line: 1331, column: 16, scope: !13099, inlinedAt: !13102)
!13123 = !DILocation(line: 0, scope: !13091, inlinedAt: !13093)
!13124 = !DILocation(line: 478, column: 8, scope: !13119, inlinedAt: !13122)
!13125 = !{!"branch_weights", i32 2002, i32 2000}
!13126 = !DILocation(line: 565, column: 9, scope: !12888)
!13127 = !DILocation(line: 3212, column: 26, scope: !13104, inlinedAt: !13114)
!13128 = !DILocation(line: 0, scope: !13032, inlinedAt: !13042)
!13129 = !DILocation(line: 0, scope: !3845, inlinedAt: !13130)
!13130 = distinct !DILocation(line: 424, column: 9, scope: !13131, inlinedAt: !13136)
!13131 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global10alloc_impl", scope: !54, file: !3808, line: 423, type: !3836, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !3838, retainedNodes: !13132)
!13132 = !{!13133, !13134, !13135}
!13133 = !DILocalVariable(name: "self", arg: 1, scope: !13131, file: !3808, line: 423, type: !3829)
!13134 = !DILocalVariable(name: "layout", arg: 2, scope: !13131, file: !3808, line: 423, type: !3785)
!13135 = !DILocalVariable(name: "zeroed", scope: !13131, file: !3808, line: 423, type: !403, align: 8)
!13136 = distinct !DILocation(line: 547, column: 14, scope: !13137, inlinedAt: !13142)
!13137 = distinct !DISubprogram(name: "allocate_zeroed", linkageName: "_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator15allocate_zeroed", scope: !3809, file: !3808, line: 546, type: !13138, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13139)
!13138 = !DISubroutineType(cc: DW_CC_nocall, types: !3811)
!13139 = !{!13140, !13141}
!13140 = !DILocalVariable(name: "self", arg: 1, scope: !13137, file: !3808, line: 546, type: !3829)
!13141 = !DILocalVariable(name: "layout", arg: 2, scope: !13137, file: !3808, line: 546, type: !3785)
!13142 = distinct !DILocation(line: 468, column: 40, scope: !13032, inlinedAt: !13042)
!13143 = !DILocation(line: 0, scope: !3845, inlinedAt: !13144)
!13144 = distinct !DILocation(line: 424, column: 9, scope: !13145, inlinedAt: !13150)
!13145 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global10alloc_impl", scope: !54, file: !3808, line: 423, type: !3836, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !3838, retainedNodes: !13146)
!13146 = !{!13147, !13148, !13149}
!13147 = !DILocalVariable(name: "self", arg: 1, scope: !13145, file: !3808, line: 423, type: !3829)
!13148 = !DILocalVariable(name: "layout", arg: 2, scope: !13145, file: !3808, line: 423, type: !3785)
!13149 = !DILocalVariable(name: "zeroed", scope: !13145, file: !3808, line: 423, type: !403, align: 8)
!13150 = distinct !DILocation(line: 541, column: 14, scope: !13151, inlinedAt: !13155)
!13151 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate", scope: !3809, file: !3808, line: 540, type: !13138, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13152)
!13152 = !{!13153, !13154}
!13153 = !DILocalVariable(name: "self", arg: 1, scope: !13151, file: !3808, line: 540, type: !3829)
!13154 = !DILocalVariable(name: "layout", arg: 2, scope: !13151, file: !3808, line: 540, type: !3785)
!13155 = distinct !DILocation(line: 466, column: 47, scope: !13032, inlinedAt: !13042)
!13156 = !DILocation(line: 0, scope: !3852, inlinedAt: !13130)
!13157 = !DILocation(line: 0, scope: !3852, inlinedAt: !13144)
!13158 = !{!13159}
!13159 = distinct !{!13159, !13160, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex: argument 0"}
!13160 = distinct !{!13160, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex"}
!13161 = !DILocation(line: 0, scope: !13036, inlinedAt: !13042)
!13162 = !DILocation(line: 0, scope: !13151, inlinedAt: !13155)
!13163 = !DILocation(line: 0, scope: !13145, inlinedAt: !13150)
!13164 = !DILocation(line: 0, scope: !3877, inlinedAt: !13165)
!13165 = distinct !DILocation(line: 302, column: 73, scope: !3852, inlinedAt: !13144)
!13166 = !DILocation(line: 130, column: 9, scope: !3877, inlinedAt: !13165)
!13167 = !DILocation(line: 470, column: 25, scope: !13036, inlinedAt: !13042)
!13168 = !DILocation(line: 470, column: 19, scope: !13036, inlinedAt: !13042)
!13169 = !DILocation(line: 0, scope: !12983, inlinedAt: !12985)
!13170 = !DILocation(line: 443, column: 25, scope: !12983, inlinedAt: !12985)
!13171 = !DILocation(line: 969, column: 9, scope: !12948, inlinedAt: !12955)
!13172 = !DILocation(line: 0, scope: !12899)
!13173 = !DILocation(line: 2192, column: 26, scope: !12905, inlinedAt: !12913)
!13174 = !DILocation(line: 0, scope: !12901)
!13175 = !DILocation(line: 0, scope: !12903)
!13176 = !DILocation(line: 564, column: 28, scope: !12903)
!13177 = !DILocation(line: 564, column: 13, scope: !12903)
!13178 = !DILocation(line: 565, column: 10, scope: !12888)
!13179 = !DILocation(line: 1029, column: 19, scope: !13180, inlinedAt: !13192)
!13180 = distinct !DISubprogram(name: "push_mut<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE8push_mutCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 1027, type: !13181, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !13183, retainedNodes: !13184)
!13181 = !DISubroutineType(types: !13182)
!13182 = !{!7714, !5857, !686}
!13183 = !DISubprogram(name: "push_mut<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE8push_mutCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 1027, type: !13181, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!13184 = !{!13185, !13186, !13187, !13189}
!13185 = !DILocalVariable(name: "self", arg: 1, scope: !13180, file: !2628, line: 1027, type: !5857)
!13186 = !DILocalVariable(name: "value", arg: 2, scope: !13180, file: !2628, line: 1027, type: !686)
!13187 = !DILocalVariable(name: "len", scope: !13188, file: !2628, line: 1029, type: !9, align: 64)
!13188 = distinct !DILexicalBlock(scope: !13180, file: !2628, line: 1029, column: 9)
!13189 = !DILocalVariable(name: "end", scope: !13190, file: !2628, line: 1036, type: !13191, align: 64)
!13190 = distinct !DILexicalBlock(scope: !13188, file: !2628, line: 1036, column: 13)
!13191 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>", baseType: !686, size: 64, align: 64, dwarfAddressSpace: 0)
!13192 = distinct !DILocation(line: 996, column: 22, scope: !12939, inlinedAt: !12946)
!13193 = !DILocation(line: 0, scope: !12924, inlinedAt: !12925)
!13194 = !DILocation(line: 0, scope: !12939, inlinedAt: !12946)
!13195 = !DILocation(line: 560, column: 29, scope: !12899)
!13196 = !DILocation(line: 0, scope: !13180, inlinedAt: !13192)
!13197 = !DILocalVariable(name: "self", arg: 1, scope: !13198, file: !2628, line: 2050, type: !5857)
!13198 = distinct !DISubprogram(name: "as_mut_ptr<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBv_INtNtB6_5boxed3BoxNtNtNtBN_4meta5regex5CacheEEEEE10as_mut_ptrCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 2050, type: !13199, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !13201, retainedNodes: !13202)
!13199 = !DISubroutineType(types: !13200)
!13200 = !{!13191, !5857}
!13201 = !DISubprogram(name: "as_mut_ptr<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBv_INtNtB6_5boxed3BoxNtNtNtBN_4meta5regex5CacheEEEEE10as_mut_ptrCs96z5GJ9HwjO_5regex", scope: !676, file: !2628, line: 2050, type: !13199, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!13202 = !{!13197}
!13203 = !DILocation(line: 0, scope: !13198, inlinedAt: !13204)
!13204 = distinct !DILocation(line: 1036, column: 28, scope: !13188, inlinedAt: !13192)
!13205 = !DILocation(line: 1027, column: 32, scope: !13180, inlinedAt: !13192)
!13206 = !DILocalVariable(name: "elem_size", scope: !13207, file: !2875, line: 615, type: !9, align: 64)
!13207 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner8capacityCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 615, type: !4534, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !56, declaration: !4536, retainedNodes: !13208)
!13208 = !{!13209, !13206}
!13209 = !DILocalVariable(name: "self", arg: 1, scope: !13207, file: !2875, line: 615, type: !2878)
!13210 = !DILocation(line: 0, scope: !13207, inlinedAt: !13211)
!13211 = distinct !DILocation(line: 309, column: 20, scope: !13212, inlinedAt: !13219)
!13212 = distinct !DISubprogram(name: "capacity<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE8capacityCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 308, type: !13213, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !13216, retainedNodes: !13217)
!13213 = !DISubroutineType(types: !13214)
!13214 = !{!9, !13215}
!13215 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", baseType: !679, size: 64, align: 64, dwarfAddressSpace: 0)
!13216 = !DISubprogram(name: "capacity<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE8capacityCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 308, type: !13213, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!13217 = !{!13218}
!13218 = !DILocalVariable(name: "self", arg: 1, scope: !13212, file: !2875, line: 308, type: !13215)
!13219 = distinct !DILocation(line: 1032, column: 28, scope: !13188, inlinedAt: !13192)
!13220 = !DILocation(line: 0, scope: !13188, inlinedAt: !13192)
!13221 = !DILocalVariable(name: "count", arg: 2, scope: !13222, file: !2740, line: 936, type: !9)
!13222 = distinct !DISubprogram(name: "add<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB2z_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEE3addCs96z5GJ9HwjO_5regex", scope: !2741, file: !2740, line: 936, type: !13223, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !684, retainedNodes: !13225)
!13223 = !DISubroutineType(types: !13224)
!13224 = !{!13191, !13191, !9, !2192}
!13225 = !{!13226, !13221}
!13226 = !DILocalVariable(name: "self", arg: 1, scope: !13222, file: !2740, line: 936, type: !13191)
!13227 = !DILocation(line: 0, scope: !13222, inlinedAt: !13228)
!13228 = distinct !DILocation(line: 1036, column: 41, scope: !13188, inlinedAt: !13192)
!13229 = !DILocation(line: 308, column: 34, scope: !13212, inlinedAt: !13219)
!13230 = !DILocation(line: 616, column: 49, scope: !13207, inlinedAt: !13211)
!13231 = !{!13232}
!13232 = distinct !{!13232, !13233, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE8push_mutCs96z5GJ9HwjO_5regex: argument 0"}
!13233 = distinct !{!13233, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE8push_mutCs96z5GJ9HwjO_5regex"}
!13234 = !{!13235}
!13235 = distinct !{!13235, !13233, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEE8push_mutCs96z5GJ9HwjO_5regex: argument 1"}
!13236 = !DILocation(line: 1032, column: 12, scope: !13188, inlinedAt: !13192)
!13237 = !DILocation(line: 1033, column: 22, scope: !13188, inlinedAt: !13192)
!13238 = !DILocation(line: 611, column: 9, scope: !13239, inlinedAt: !13248)
!13239 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB8_3vec3VecINtNtB8_5boxed3BoxNtNtNtB1a_4meta5regex5CacheEEEEECs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 610, type: !13240, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !13247, declaration: !13246)
!13240 = !DISubroutineType(types: !13241)
!13241 = !{!13242, !2878}
!13242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", scope: !36, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !13243, templateParams: !684, identifier: "922ae3dabb13cf718eda8145bab63ff0")
!13243 = !{!13244}
!13244 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !13242, file: !2, baseType: !13245, size: 64, align: 64, flags: DIFlagPrivate)
!13245 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>", baseType: !686, size: 64, align: 64, dwarfAddressSpace: 0)
!13246 = !DISubprogram(name: "non_null<alloc::alloc::Global, regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB8_3vec3VecINtNtB8_5boxed3BoxNtNtNtB1a_4meta5regex5CacheEEEEECs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 610, type: !13240, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !13247)
!13247 = !{!57, !685}
!13248 = distinct !DILocation(line: 606, column: 14, scope: !13249, inlinedAt: !13253)
!13249 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB8_3vec3VecINtNtB8_5boxed3BoxNtNtNtB15_4meta5regex5CacheEEEEECs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 605, type: !13250, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !13247, declaration: !13252)
!13250 = !DISubroutineType(types: !13251)
!13251 = !{!13191, !2878}
!13252 = !DISubprogram(name: "ptr<alloc::alloc::Global, regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB8_3vec3VecINtNtB8_5boxed3BoxNtNtNtB15_4meta5regex5CacheEEEEECs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 605, type: !13250, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !13247)
!13253 = distinct !DILocation(line: 296, column: 20, scope: !13254, inlinedAt: !13258)
!13254 = distinct !DISubprogram(name: "ptr<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE3ptrCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 295, type: !13255, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !1317, declaration: !13257)
!13255 = !DISubroutineType(types: !13256)
!13256 = !{!13191, !13215}
!13257 = !DISubprogram(name: "ptr<regex_automata::util::pool::inner::CacheLine<std::sync::poison::mutex::Mutex<alloc::vec::Vec<alloc::boxed::Box<regex_automata::meta::regex::Cache, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEE3ptrCs96z5GJ9HwjO_5regex", scope: !679, file: !2875, line: 295, type: !13255, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1317)
!13258 = distinct !DILocation(line: 2053, column: 18, scope: !13198, inlinedAt: !13204)
!13259 = !DILocation(line: 1042, column: 5, scope: !13180, inlinedAt: !13192)
!13260 = !DILocation(line: 1027, column: 5, scope: !13180, inlinedAt: !13192)
!13261 = !DILocation(line: 970, column: 18, scope: !13222, inlinedAt: !13228)
!13262 = !DILocation(line: 0, scope: !13190, inlinedAt: !13192)
!13263 = !DILocation(line: 1037, column: 29, scope: !13190, inlinedAt: !13192)
!13264 = !DILocation(line: 1038, column: 13, scope: !13190, inlinedAt: !13192)
!13265 = !DILocation(line: 1013, column: 17, scope: !12994, inlinedAt: !12998)
!13266 = !DILocation(line: 560, column: 58, scope: !12899)
!13267 = !DILocation(line: 2192, column: 50, scope: !12905, inlinedAt: !12913)
!13268 = !DILocation(line: 519, column: 9, scope: !12888)
!13269 = distinct !DISubprogram(name: "finish_grow<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 544, type: !13270, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !56, declaration: !13272, retainedNodes: !13274)
!13270 = !DISubroutineType(cc: DW_CC_nocall, types: !13271)
!13271 = !{!11985, !2878, !9, !3785}
!13272 = !DISubprogram(name: "finish_grow<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 544, type: !13273, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !56)
!13273 = !DISubroutineType(types: !13271)
!13274 = !{!13275, !13276, !13277, !13278, !13280, !13282, !13284, !13286, !13288}
!13275 = !DILocalVariable(name: "self", arg: 1, scope: !13269, file: !2875, line: 545, type: !2878)
!13276 = !DILocalVariable(name: "cap", arg: 2, scope: !13269, file: !2875, line: 546, type: !9)
!13277 = !DILocalVariable(name: "elem_layout", arg: 3, scope: !13269, file: !2875, line: 547, type: !3785)
!13278 = !DILocalVariable(name: "new_layout", scope: !13279, file: !2875, line: 549, type: !3785, align: 64)
!13279 = distinct !DILexicalBlock(scope: !13269, file: !2875, line: 549, column: 9)
!13280 = !DILocalVariable(name: "residual", scope: !13281, file: !2875, line: 549, type: !11930, align: 64)
!13281 = distinct !DILexicalBlock(scope: !13269, file: !2875, line: 549, column: 56)
!13282 = !DILocalVariable(name: "val", scope: !13283, file: !2875, line: 549, type: !3785, align: 64)
!13283 = distinct !DILexicalBlock(scope: !13269, file: !2875, line: 549, column: 56)
!13284 = !DILocalVariable(name: "memory", scope: !13285, file: !2875, line: 551, type: !3812, align: 64)
!13285 = distinct !DILexicalBlock(scope: !13279, file: !2875, line: 551, column: 9)
!13286 = !DILocalVariable(name: "ptr", scope: !13287, file: !2875, line: 551, type: !35, align: 64)
!13287 = distinct !DILexicalBlock(scope: !13279, file: !2875, line: 551, column: 99)
!13288 = !DILocalVariable(name: "old_layout", scope: !13287, file: !2875, line: 551, type: !3785, align: 64)
!13289 = !DILocation(line: 0, scope: !13269)
!13290 = !DILocalVariable(name: "cap", arg: 1, scope: !13291, file: !2875, line: 896, type: !9)
!13291 = distinct !DISubprogram(name: "layout_array", linkageName: "_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12layout_array", scope: !23, file: !2875, line: 896, type: !13045, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13292)
!13292 = !{!13290, !13293}
!13293 = !DILocalVariable(name: "elem_layout", scope: !13291, file: !2875, line: 896, type: !3785, align: 64)
!13294 = !DILocation(line: 0, scope: !13291, inlinedAt: !13295)
!13295 = !DILocation(line: 549, column: 26, scope: !13269)
!13296 = !DILocalVariable(name: "n", arg: 2, scope: !13297, file: !6486, line: 532, type: !9)
!13297 = distinct !DISubprogram(name: "repeat_packed", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core5alloc6layoutNtB2_6Layout13repeat_packed", scope: !3785, file: !6486, line: 532, type: !13068, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13087, retainedNodes: !13298)
!13298 = !{!13299, !13296, !13300}
!13299 = !DILocalVariable(name: "self", arg: 1, scope: !13297, file: !6486, line: 532, type: !13086)
!13300 = !DILocalVariable(name: "size", scope: !13301, file: !6486, line: 533, type: !9, align: 64)
!13301 = distinct !DILexicalBlock(scope: !13297, file: !6486, line: 533, column: 54)
!13302 = !DILocation(line: 0, scope: !13297, inlinedAt: !13303)
!13303 = !DILocation(line: 901, column: 17, scope: !13291, inlinedAt: !13295)
!13304 = !DILocalVariable(name: "rhs", arg: 2, scope: !13305, file: !4089, line: 1329, type: !9)
!13305 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj11checked_mul", scope: !4090, file: !4089, line: 1329, type: !11959, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13306)
!13306 = !{!13307, !13304, !13308, !13310}
!13307 = !DILocalVariable(name: "self", arg: 1, scope: !13305, file: !4089, line: 1329, type: !9)
!13308 = !DILocalVariable(name: "a", scope: !13309, file: !4089, line: 1330, type: !9, align: 64)
!13309 = distinct !DILexicalBlock(scope: !13305, file: !4089, line: 1330, column: 13)
!13310 = !DILocalVariable(name: "b", scope: !13309, file: !4089, line: 1330, type: !403, align: 8)
!13311 = !DILocation(line: 0, scope: !13305, inlinedAt: !13312)
!13312 = !DILocation(line: 533, column: 39, scope: !13301, inlinedAt: !13303)
!13313 = !DILocalVariable(name: "rhs", arg: 2, scope: !13314, file: !4089, line: 3211, type: !9)
!13314 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj15overflowing_mul", scope: !4090, file: !4089, line: 3211, type: !13105, scopeLine: 3211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13315)
!13315 = !{!13316, !13313}
!13316 = !DILocalVariable(name: "self", arg: 1, scope: !13314, file: !4089, line: 3211, type: !9)
!13317 = !DILocation(line: 0, scope: !13314, inlinedAt: !13318)
!13318 = !DILocation(line: 1330, column: 31, scope: !13305, inlinedAt: !13312)
!13319 = !DILocalVariable(name: "e", scope: !13320, file: !2187, line: 967, type: !3823, align: 8)
!13320 = distinct !DILexicalBlock(scope: !13321, file: !2187, line: 967, column: 13)
!13321 = distinct !DISubprogram(name: "map_err<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, alloc::collections::TryReserveError, alloc::raw_vec::{impl#7}::finish_grow::{closure_env#0}<alloc::alloc::Global>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultINtNtNtB5_3ptr8non_null7NonNullShENtNtB5_5alloc10AllocErrorE7map_errNtNtCs4wP2HXfJTCR_5alloc11collections15TryReserveErrorNCNvMs5_NtB1S_7raw_vecNtB2O_11RawVecInner11finish_grow0ECs96z5GJ9HwjO_5regex", scope: !3812, file: !2187, line: 961, type: !13322, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !13330, declaration: !13329, retainedNodes: !13333)
!13322 = !DISubroutineType(types: !13323)
!13323 = !{!11985, !3812, !13324}
!13324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::alloc::Global>", scope: !13325, file: !2, size: 64, align: 64, elements: !13327, templateParams: !46, identifier: "c32804406dec5930609ad7589ef207d5")
!13325 = !DINamespace(name: "finish_grow", scope: !13326)
!13326 = !DINamespace(name: "{impl#7}", scope: !23)
!13327 = !{!13328}
!13328 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__new_layout", scope: !13324, file: !2, baseType: !13086, size: 64, align: 64)
!13329 = !DISubprogram(name: "map_err<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError, alloc::collections::TryReserveError, alloc::raw_vec::{impl#7}::finish_grow::{closure_env#0}<alloc::alloc::Global>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultINtNtNtB5_3ptr8non_null7NonNullShENtNtB5_5alloc10AllocErrorE7map_errNtNtCs4wP2HXfJTCR_5alloc11collections15TryReserveErrorNCNvMs5_NtB1S_7raw_vecNtB2O_11RawVecInner11finish_grow0ECs96z5GJ9HwjO_5regex", scope: !3812, file: !2187, line: 961, type: !13322, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !13330)
!13330 = !{!3821, !3822, !13331, !13332}
!13331 = !DITemplateTypeParameter(name: "F", type: !11857)
!13332 = !DITemplateTypeParameter(name: "O", type: !13324)
!13333 = !{!13334, !13335, !13336, !13319}
!13334 = !DILocalVariable(name: "self", arg: 1, scope: !13321, file: !2187, line: 961, type: !3812)
!13335 = !DILocalVariable(name: "op", scope: !13321, file: !2187, line: 961, type: !13324, align: 64)
!13336 = !DILocalVariable(name: "t", scope: !13337, file: !2187, line: 966, type: !3797, align: 64)
!13337 = distinct !DILexicalBlock(scope: !13321, file: !2187, line: 966, column: 13)
!13338 = !DILocation(line: 967, column: 17, scope: !13320, inlinedAt: !13339)
!13339 = !DILocation(line: 563, column: 16, scope: !13285)
!13340 = !DILocation(line: 532, column: 32, scope: !13297, inlinedAt: !13303)
!13341 = !DILocation(line: 3212, column: 26, scope: !13314, inlinedAt: !13318)
!13342 = !DILocation(line: 0, scope: !13309, inlinedAt: !13312)
!13343 = !DILocalVariable(name: "b", arg: 1, scope: !13344, file: !12017, line: 477, type: !403)
!13344 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCsj6eKBz9Db1c_4core10intrinsics8unlikely", scope: !12018, file: !12017, line: 477, type: !12019, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13345)
!13345 = !{!13343}
!13346 = !DILocation(line: 0, scope: !13344, inlinedAt: !13347)
!13347 = !DILocation(line: 1331, column: 16, scope: !13309, inlinedAt: !13312)
!13348 = !DILocation(line: 0, scope: !13301, inlinedAt: !13303)
!13349 = !DILocation(line: 478, column: 8, scope: !13344, inlinedAt: !13347)
!13350 = !DILocation(line: 0, scope: !13279)
!13351 = !DILocation(line: 0, scope: !4057, inlinedAt: !13352)
!13352 = distinct !DILocation(line: 551, column: 69, scope: !13287)
!13353 = !DILocation(line: 0, scope: !4088, inlinedAt: !13354)
!13354 = distinct !DILocation(line: 639, column: 53, scope: !4057, inlinedAt: !13352)
!13355 = !DILocation(line: 631, column: 39, scope: !4057, inlinedAt: !13352)
!13356 = !DILocation(line: 1401, column: 17, scope: !4088, inlinedAt: !13354)
!13357 = !DILocation(line: 0, scope: !13287)
!13358 = !DILocalVariable(name: "self", arg: 1, scope: !13359, file: !3808, line: 560, type: !3829)
!13359 = distinct !DISubprogram(name: "grow", linkageName: "_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow", scope: !3809, file: !3808, line: 559, type: !13360, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13362)
!13360 = !DISubroutineType(cc: DW_CC_nocall, types: !13361)
!13361 = !{!3812, !3829, !35, !3785, !3785}
!13362 = !{!13358, !13363, !13364, !13365}
!13363 = !DILocalVariable(name: "ptr", arg: 2, scope: !13359, file: !3808, line: 561, type: !35)
!13364 = !DILocalVariable(name: "old_layout", arg: 3, scope: !13359, file: !3808, line: 562, type: !3785)
!13365 = !DILocalVariable(name: "new_layout", arg: 4, scope: !13359, file: !3808, line: 563, type: !3785)
!13366 = !DILocation(line: 0, scope: !13359, inlinedAt: !13367)
!13367 = distinct !DILocation(line: 557, column: 28, scope: !13287)
!13368 = !DILocalVariable(name: "self", arg: 1, scope: !13369, file: !3808, line: 448, type: !3829)
!13369 = distinct !DISubprogram(name: "grow_impl", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global9grow_impl", scope: !54, file: !3808, line: 447, type: !13370, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13372, retainedNodes: !13373)
!13370 = !DISubroutineType(types: !13371)
!13371 = !{!3812, !3829, !35, !3785, !3785, !403}
!13372 = !DISubprogram(name: "grow_impl", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global9grow_impl", scope: !54, file: !3808, line: 447, type: !13370, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !46)
!13373 = !{!13368, !13374, !13375, !13376, !13377}
!13374 = !DILocalVariable(name: "ptr", arg: 2, scope: !13369, file: !3808, line: 449, type: !35)
!13375 = !DILocalVariable(name: "old_layout", arg: 3, scope: !13369, file: !3808, line: 450, type: !3785)
!13376 = !DILocalVariable(name: "new_layout", arg: 4, scope: !13369, file: !3808, line: 451, type: !3785)
!13377 = !DILocalVariable(name: "zeroed", scope: !13369, file: !3808, line: 452, type: !403, align: 8)
!13378 = !DILocation(line: 0, scope: !13369, inlinedAt: !13379)
!13379 = distinct !DILocation(line: 566, column: 23, scope: !13359, inlinedAt: !13367)
!13380 = !DILocalVariable(name: "self", arg: 1, scope: !13381, file: !3808, line: 329, type: !3829)
!13381 = distinct !DISubprogram(name: "grow_impl_runtime", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global17grow_impl_runtime", scope: !54, file: !3808, line: 328, type: !13382, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13383, retainedNodes: !13384)
!13382 = !DISubroutineType(cc: DW_CC_nocall, types: !13371)
!13383 = !DISubprogram(name: "grow_impl_runtime", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global17grow_impl_runtime", scope: !54, file: !3808, line: 328, type: !13370, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !46)
!13384 = !{!13380, !13385, !13386, !13387, !13388, !13389, !13391, !13392, !13394, !13396, !13398, !13400, !13402, !13404, !13406, !13408}
!13385 = !DILocalVariable(name: "ptr", arg: 2, scope: !13381, file: !3808, line: 330, type: !35)
!13386 = !DILocalVariable(name: "old_layout", arg: 3, scope: !13381, file: !3808, line: 331, type: !3785)
!13387 = !DILocalVariable(name: "new_layout", arg: 4, scope: !13381, file: !3808, line: 332, type: !3785)
!13388 = !DILocalVariable(name: "zeroed", arg: 5, scope: !13381, file: !3808, line: 333, type: !403)
!13389 = !DILocalVariable(name: "old_size", scope: !13390, file: !3808, line: 345, type: !9, align: 64)
!13390 = distinct !DILexicalBlock(scope: !13381, file: !3808, line: 345, column: 13)
!13391 = !DILocalVariable(name: "old_size", scope: !13390, file: !3808, line: 345, type: !3405, align: 64)
!13392 = !DILocalVariable(name: "new_size", scope: !13393, file: !3808, line: 346, type: !9, align: 64)
!13393 = distinct !DILexicalBlock(scope: !13390, file: !3808, line: 346, column: 17)
!13394 = !DILocalVariable(name: "raw_ptr", scope: !13395, file: !3808, line: 351, type: !3784, align: 64)
!13395 = distinct !DILexicalBlock(scope: !13393, file: !3808, line: 351, column: 17)
!13396 = !DILocalVariable(name: "ptr", scope: !13397, file: !3808, line: 352, type: !35, align: 64)
!13397 = distinct !DILexicalBlock(scope: !13395, file: !3808, line: 352, column: 17)
!13398 = !DILocalVariable(name: "residual", scope: !13399, file: !3808, line: 352, type: !3859, align: 8)
!13399 = distinct !DILexicalBlock(scope: !13395, file: !3808, line: 352, column: 66)
!13400 = !DILocalVariable(name: "val", scope: !13401, file: !3808, line: 352, type: !35, align: 64)
!13401 = distinct !DILexicalBlock(scope: !13395, file: !3808, line: 352, column: 66)
!13402 = !DILocalVariable(name: "old_size", scope: !13403, file: !3808, line: 364, type: !9, align: 64)
!13403 = distinct !DILexicalBlock(scope: !13381, file: !3808, line: 364, column: 13)
!13404 = !DILocalVariable(name: "new_ptr", scope: !13405, file: !3808, line: 365, type: !3797, align: 64)
!13405 = distinct !DILexicalBlock(scope: !13403, file: !3808, line: 365, column: 17)
!13406 = !DILocalVariable(name: "residual", scope: !13407, file: !3808, line: 365, type: !3859, align: 8)
!13407 = distinct !DILexicalBlock(scope: !13403, file: !3808, line: 365, column: 66)
!13408 = !DILocalVariable(name: "val", scope: !13409, file: !3808, line: 365, type: !3797, align: 64)
!13409 = distinct !DILexicalBlock(scope: !13403, file: !3808, line: 365, column: 66)
!13410 = !DILocation(line: 0, scope: !13381, inlinedAt: !13411)
!13411 = distinct !DILocation(line: 454, column: 9, scope: !13369, inlinedAt: !13379)
!13412 = !DILocalVariable(name: "ptr", arg: 1, scope: !13413, file: !3808, line: 227, type: !35)
!13413 = distinct !DISubprogram(name: "realloc_nonnull", linkageName: "_RNvNtCs4wP2HXfJTCR_5alloc5alloc15realloc_nonnull", scope: !55, file: !3808, line: 227, type: !13414, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13416)
!13414 = !DISubroutineType(types: !13415)
!13415 = !{!3784, !35, !3785, !9}
!13416 = !{!13412, !13417, !13418}
!13417 = !DILocalVariable(name: "layout", arg: 2, scope: !13413, file: !3808, line: 227, type: !3785)
!13418 = !DILocalVariable(name: "new_size", arg: 3, scope: !13413, file: !3808, line: 227, type: !9)
!13419 = !DILocation(line: 0, scope: !13413, inlinedAt: !13420)
!13420 = distinct !DILocation(line: 351, column: 31, scope: !13393, inlinedAt: !13411)
!13421 = !DILocation(line: 0, scope: !13390, inlinedAt: !13411)
!13422 = !DILocation(line: 345, column: 13, scope: !13390, inlinedAt: !13411)
!13423 = !DILocation(line: 0, scope: !13393, inlinedAt: !13411)
!13424 = !DILocation(line: 349, column: 40, scope: !13393, inlinedAt: !13411)
!13425 = !DILocalVariable(name: "cond", arg: 1, scope: !13426, file: !13427, line: 202, type: !403)
!13426 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsj6eKBz9Db1c_4core4hint16assert_unchecked", scope: !13428, file: !13427, line: 202, type: !13429, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13431)
!13427 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "720ecb12dbf1a304509abd161627e0e2")
!13428 = !DINamespace(name: "hint", scope: !32)
!13429 = !DISubroutineType(types: !13430)
!13430 = !{null, !403, !2192}
!13431 = !{!13425}
!13432 = !DILocation(line: 0, scope: !13426, inlinedAt: !13433)
!13433 = distinct !DILocation(line: 349, column: 17, scope: !13393, inlinedAt: !13411)
!13434 = !DILocation(line: 210, column: 9, scope: !13426, inlinedAt: !13433)
!13435 = !DILocation(line: 228, column: 14, scope: !13413, inlinedAt: !13420)
!13436 = !DILocation(line: 0, scope: !13285)
!13437 = !DILocation(line: 0, scope: !13321, inlinedAt: !13339)
!13438 = !DILocation(line: 551, column: 22, scope: !13279)
!13439 = !DILocation(line: 0, scope: !13151, inlinedAt: !13440)
!13440 = distinct !DILocation(line: 560, column: 24, scope: !13279)
!13441 = !DILocation(line: 0, scope: !13145, inlinedAt: !13442)
!13442 = distinct !DILocation(line: 541, column: 14, scope: !13151, inlinedAt: !13440)
!13443 = !DILocation(line: 0, scope: !3845, inlinedAt: !13444)
!13444 = distinct !DILocation(line: 424, column: 9, scope: !13145, inlinedAt: !13442)
!13445 = !DILocation(line: 0, scope: !3877, inlinedAt: !13446)
!13446 = distinct !DILocation(line: 302, column: 73, scope: !3852, inlinedAt: !13444)
!13447 = !DILocalVariable(name: "len", scope: !13448, file: !2778, line: 1350, type: !9, align: 64)
!13448 = distinct !DISubprogram(name: "cast_slice<u8>", linkageName: "_RNvMs2_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE10cast_sliceCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 1350, type: !13449, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !41, declaration: !13451, retainedNodes: !13452)
!13449 = !DISubroutineType(types: !13450)
!13450 = !{!3797, !35, !9}
!13451 = !DISubprogram(name: "cast_slice<u8>", linkageName: "_RNvMs2_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE10cast_sliceCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 1350, type: !13449, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41)
!13452 = !{!13453, !13447, !13454}
!13453 = !DILocalVariable(name: "self", arg: 1, scope: !13448, file: !2778, line: 1350, type: !35)
!13454 = !DILocalVariable(name: "len", arg: 2, scope: !13448, file: !2778, line: 1350, type: !9)
!13455 = !DILocation(line: 0, scope: !13448, inlinedAt: !13456)
!13456 = distinct !DILocation(line: 299, column: 43, scope: !3845, inlinedAt: !13444)
!13457 = !DILocalVariable(name: "len", scope: !13458, file: !2778, line: 1393, type: !9, align: 64)
!13458 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullShE20slice_from_raw_partsCs96z5GJ9HwjO_5regex", scope: !3797, file: !2778, line: 1393, type: !13449, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !41, declaration: !13459, retainedNodes: !13460)
!13459 = !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullShE20slice_from_raw_partsCs96z5GJ9HwjO_5regex", scope: !3797, file: !2778, line: 1393, type: !13449, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41)
!13460 = !{!13461, !13457, !13462}
!13461 = !DILocalVariable(name: "data", arg: 1, scope: !13458, file: !2778, line: 1393, type: !35)
!13462 = !DILocalVariable(name: "len", arg: 2, scope: !13458, file: !2778, line: 1393, type: !9)
!13463 = !DILocation(line: 0, scope: !13458, inlinedAt: !13464)
!13464 = distinct !DILocation(line: 1351, column: 9, scope: !13448, inlinedAt: !13456)
!13465 = !DILocation(line: 0, scope: !3852, inlinedAt: !13444)
!13466 = !DILocation(line: 0, scope: !13448, inlinedAt: !13467)
!13467 = distinct !DILocation(line: 304, column: 24, scope: !3856, inlinedAt: !13444)
!13468 = !DILocation(line: 0, scope: !13458, inlinedAt: !13469)
!13469 = distinct !DILocation(line: 1351, column: 9, scope: !13470, inlinedAt: !13467)
!13470 = !DILexicalBlockFile(scope: !13448, file: !2778, discriminator: 2)
!13471 = !DILocation(line: 298, column: 9, scope: !3845, inlinedAt: !13444)
!13472 = !DILocalVariable(name: "self", arg: 1, scope: !13473, file: !2778, line: 411, type: !35)
!13473 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 411, type: !13474, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !41, declaration: !13476, retainedNodes: !13477)
!13474 = !DISubroutineType(types: !13475)
!13475 = !{!3784, !35}
!13476 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 411, type: !13474, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41)
!13477 = !{!13472}
!13478 = !DILocation(line: 0, scope: !13473, inlinedAt: !13479)
!13479 = distinct !DILocation(line: 1395, column: 43, scope: !13458, inlinedAt: !13464)
!13480 = !DILocation(line: 417, column: 18, scope: !13473, inlinedAt: !13479)
!13481 = !DILocation(line: 961, column: 38, scope: !13321, inlinedAt: !13339)
!13482 = !DILocation(line: 965, column: 9, scope: !13321, inlinedAt: !13339)
!13483 = !DILocation(line: 302, scope: !3852, inlinedAt: !13444)
!13484 = !DILocation(line: 130, column: 9, scope: !3877, inlinedAt: !13446)
!13485 = !DILocation(line: 302, column: 31, scope: !3852, inlinedAt: !13444)
!13486 = !DILocation(line: 965, column: 15, scope: !13321, inlinedAt: !13339)
!13487 = !DILocation(line: 967, column: 23, scope: !13320, inlinedAt: !13339)
!13488 = !DILocation(line: 967, column: 32, scope: !13321, inlinedAt: !13339)
!13489 = !DILocation(line: 0, scope: !13337, inlinedAt: !13339)
!13490 = !DILocation(line: 966, column: 22, scope: !13337, inlinedAt: !13339)
!13491 = !DILocation(line: 969, column: 5, scope: !13321, inlinedAt: !13339)
!13492 = !DILocation(line: 564, column: 6, scope: !13269)
!13493 = !DILocation(line: 0, scope: !13008)
!13494 = !DILocation(line: 0, scope: !13044, inlinedAt: !13495)
!13495 = !DILocation(line: 455, column: 28, scope: !13008)
!13496 = !DILocation(line: 0, scope: !13067, inlinedAt: !13497)
!13497 = !DILocation(line: 901, column: 17, scope: !13044, inlinedAt: !13495)
!13498 = !DILocation(line: 0, scope: !13095, inlinedAt: !13499)
!13499 = !DILocation(line: 533, column: 39, scope: !13091, inlinedAt: !13497)
!13500 = !DILocation(line: 0, scope: !13104, inlinedAt: !13501)
!13501 = !DILocation(line: 1330, column: 31, scope: !13095, inlinedAt: !13499)
!13502 = !DILocalVariable(name: "val", arg: 1, scope: !13503, file: !12072, line: 40, type: !9)
!13503 = distinct !DISubprogram(name: "new_unchecked", linkageName: "_RNvMs1z_NtNtCsj6eKBz9Db1c_4core3num11niche_typesNtB6_14UsizeNoHighBit13new_unchecked", scope: !48, file: !12072, line: 40, type: !12073, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !12075, retainedNodes: !13504)
!13504 = !{!13502}
!13505 = !DILocation(line: 0, scope: !13503, inlinedAt: !13506)
!13506 = !DILocation(line: 480, column: 27, scope: !13038)
!13507 = !DILocation(line: 450, column: 9, scope: !13008)
!13508 = !DILocalVariable(name: "alloc", arg: 1, scope: !13509, file: !2875, line: 569, type: !54)
!13509 = distinct !DISubprogram(name: "new_in<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6new_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 569, type: !13510, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !56, declaration: !13512, retainedNodes: !13513)
!13510 = !DISubroutineType(types: !13511)
!13511 = !{!26, !54, !3791}
!13512 = !DISubprogram(name: "new_in<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6new_inCs96z5GJ9HwjO_5regex", scope: !26, file: !2875, line: 569, type: !13510, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !56)
!13513 = !{!13508, !13514}
!13514 = !DILocalVariable(name: "align", arg: 2, scope: !13509, file: !2875, line: 569, type: !3791)
!13515 = !DILocation(line: 569, column: 21, scope: !13509, inlinedAt: !13516)
!13516 = !DILocation(line: 462, column: 23, scope: !13032)
!13517 = !DILocation(line: 0, scope: !13509, inlinedAt: !13516)
!13518 = !DILocation(line: 532, column: 32, scope: !13067, inlinedAt: !13497)
!13519 = !DILocation(line: 3212, column: 26, scope: !13104, inlinedAt: !13501)
!13520 = !DILocation(line: 0, scope: !13099, inlinedAt: !13499)
!13521 = !DILocation(line: 0, scope: !13119, inlinedAt: !13522)
!13522 = !DILocation(line: 1331, column: 16, scope: !13099, inlinedAt: !13499)
!13523 = !DILocation(line: 0, scope: !13091, inlinedAt: !13497)
!13524 = !DILocation(line: 478, column: 8, scope: !13119, inlinedAt: !13522)
!13525 = !DILocation(line: 0, scope: !13032)
!13526 = !DILocation(line: 461, column: 12, scope: !13032)
!13527 = !DILocation(line: 457, column: 30, scope: !13008)
!13528 = !DILocation(line: 0, scope: !13529)
!13529 = !DILexicalBlockFile(scope: !13008, file: !4677, discriminator: 0)
!13530 = !DILocation(line: 105, column: 18, scope: !13531, inlinedAt: !13535)
!13531 = distinct !DISubprogram(name: "without_provenance<u8>", linkageName: "_RNvMs0_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE18without_provenanceCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 103, type: !13532, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !41, declaration: !13534)
!13532 = !DISubroutineType(types: !13533)
!13533 = !{!35, !959}
!13534 = !DISubprogram(name: "without_provenance<u8>", linkageName: "_RNvMs0_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullhE18without_provenanceCs96z5GJ9HwjO_5regex", scope: !35, file: !2778, line: 103, type: !13532, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41)
!13535 = !DILocation(line: 570, column: 41, scope: !13509, inlinedAt: !13516)
!13536 = !DILocation(line: 462, column: 20, scope: !13032)
!13537 = !DILocation(line: 483, column: 5, scope: !13008)
!13538 = !DILocation(line: 0, scope: !3845, inlinedAt: !13539)
!13539 = distinct !DILocation(line: 424, column: 9, scope: !13131, inlinedAt: !13540)
!13540 = distinct !DILocation(line: 547, column: 14, scope: !13137, inlinedAt: !13541)
!13541 = distinct !DILocation(line: 468, column: 40, scope: !13032)
!13542 = !DILocation(line: 0, scope: !3845, inlinedAt: !13543)
!13543 = distinct !DILocation(line: 424, column: 9, scope: !13145, inlinedAt: !13544)
!13544 = distinct !DILocation(line: 541, column: 14, scope: !13151, inlinedAt: !13545)
!13545 = distinct !DILocation(line: 466, column: 47, scope: !13032)
!13546 = !DILocation(line: 0, scope: !3852, inlinedAt: !13539)
!13547 = !DILocation(line: 0, scope: !3852, inlinedAt: !13543)
!13548 = !DILocation(line: 0, scope: !13036)
!13549 = !DILocation(line: 465, column: 22, scope: !13032)
!13550 = !DILocation(line: 483, column: 6, scope: !13008)
!13551 = !DILocation(line: 0, scope: !13137, inlinedAt: !13541)
!13552 = !DILocation(line: 0, scope: !13131, inlinedAt: !13540)
!13553 = !DILocalVariable(name: "layout", arg: 1, scope: !13554, file: !3808, line: 284, type: !3785)
!13554 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_RNvNtCs4wP2HXfJTCR_5alloc5alloc12alloc_zeroed", scope: !55, file: !3808, line: 284, type: !3782, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13555)
!13555 = !{!13553}
!13556 = !DILocation(line: 0, scope: !13554, inlinedAt: !13557)
!13557 = distinct !DILocation(line: 302, column: 43, scope: !3852, inlinedAt: !13539)
!13558 = !DILocation(line: 290, column: 9, scope: !13554, inlinedAt: !13557)
!13559 = !DILocation(line: 468, column: 62, scope: !13032)
!13560 = !DILocation(line: 0, scope: !13151, inlinedAt: !13545)
!13561 = !DILocation(line: 0, scope: !13145, inlinedAt: !13544)
!13562 = !DILocation(line: 0, scope: !3877, inlinedAt: !13563)
!13563 = distinct !DILocation(line: 302, column: 73, scope: !3852, inlinedAt: !13543)
!13564 = !DILocation(line: 130, column: 9, scope: !3877, inlinedAt: !13563)
!13565 = !DILocation(line: 466, column: 62, scope: !13032)
!13566 = !DILocation(line: 470, column: 25, scope: !13036)
!13567 = !DILocation(line: 470, column: 19, scope: !13036)
!13568 = !DILocation(line: 472, column: 30, scope: !13036)
!13569 = !DILocation(line: 0, scope: !13570)
!13570 = !DILexicalBlockFile(scope: !13032, file: !4677, discriminator: 0)
!13571 = !DILocation(line: 0, scope: !13038)
!13572 = !DILocation(line: 42, column: 26, scope: !13503, inlinedAt: !13506)
!13573 = !DILocation(line: 478, column: 9, scope: !13038)
!13574 = distinct !DISubprogram(name: "size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder10size_limit", scope: !12709, file: !12514, line: 2447, type: !13575, scopeLine: 2447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13577, retainedNodes: !13578)
!13575 = !DISubroutineType(types: !13576)
!13576 = !{!12752, !12752, !9}
!13577 = !DISubprogram(name: "size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder10size_limit", scope: !12709, file: !12514, line: 2447, type: !13575, scopeLine: 2447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13578 = !{!13579, !13580}
!13579 = !DILocalVariable(name: "self", arg: 1, scope: !13574, file: !12514, line: 2447, type: !12752)
!13580 = !DILocalVariable(name: "bytes", arg: 2, scope: !13574, file: !12514, line: 2447, type: !9)
!13581 = !DILocation(line: 0, scope: !13574)
!13582 = !DILocation(line: 2448, column: 26, scope: !13574)
!13583 = !DILocation(line: 2450, column: 10, scope: !13574)
!13584 = distinct !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder14dfa_size_limit", scope: !12709, file: !12514, line: 2490, type: !13575, scopeLine: 2490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13585, retainedNodes: !13586)
!13585 = !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder14dfa_size_limit", scope: !12709, file: !12514, line: 2490, type: !13575, scopeLine: 2490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13586 = !{!13587, !13588}
!13587 = !DILocalVariable(name: "self", arg: 1, scope: !13584, file: !12514, line: 2491, type: !12752)
!13588 = !DILocalVariable(name: "bytes", arg: 2, scope: !13584, file: !12514, line: 2492, type: !9)
!13589 = !DILocation(line: 0, scope: !13584)
!13590 = !DILocation(line: 2494, column: 26, scope: !13584)
!13591 = !DILocation(line: 2496, column: 10, scope: !13584)
!13592 = distinct !DISubprogram(name: "line_terminator", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder15line_terminator", scope: !12709, file: !12514, line: 2292, type: !13593, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13595, retainedNodes: !13596)
!13593 = !DISubroutineType(types: !13594)
!13594 = !{!12752, !12752, !40}
!13595 = !DISubprogram(name: "line_terminator", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB4_15RegexSetBuilder15line_terminator", scope: !12709, file: !12514, line: 2292, type: !13593, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13596 = !{!13597, !13598}
!13597 = !DILocalVariable(name: "self", arg: 1, scope: !13592, file: !12514, line: 2292, type: !12752)
!13598 = !DILocalVariable(name: "byte", arg: 2, scope: !13592, file: !12514, line: 2292, type: !40)
!13599 = !DILocation(line: 0, scope: !13592)
!13600 = !DILocation(line: 2293, column: 26, scope: !13592)
!13601 = !DILocation(line: 2295, column: 10, scope: !13592)
!13602 = !DILocation(line: 0, scope: !12723)
!13603 = !DILocation(line: 1991, column: 26, scope: !12723)
!13604 = !DILocation(line: 1992, column: 10, scope: !12723)
!13605 = distinct !DISubprogram(name: "size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder10size_limit", scope: !12808, file: !12514, line: 1263, type: !13606, scopeLine: 1263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13608, retainedNodes: !13609)
!13606 = !DISubroutineType(types: !13607)
!13607 = !{!12848, !12848, !9}
!13608 = !DISubprogram(name: "size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder10size_limit", scope: !12808, file: !12514, line: 1263, type: !13606, scopeLine: 1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13609 = !{!13610, !13611}
!13610 = !DILocalVariable(name: "self", arg: 1, scope: !13605, file: !12514, line: 1263, type: !12848)
!13611 = !DILocalVariable(name: "bytes", arg: 2, scope: !13605, file: !12514, line: 1263, type: !9)
!13612 = !DILocation(line: 0, scope: !13605)
!13613 = !DILocation(line: 1264, column: 26, scope: !13605)
!13614 = !DILocation(line: 1266, column: 10, scope: !13605)
!13615 = distinct !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder14dfa_size_limit", scope: !12808, file: !12514, line: 1306, type: !13606, scopeLine: 1306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13616, retainedNodes: !13617)
!13616 = !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder14dfa_size_limit", scope: !12808, file: !12514, line: 1306, type: !13606, scopeLine: 1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13617 = !{!13618, !13619}
!13618 = !DILocalVariable(name: "self", arg: 1, scope: !13615, file: !12514, line: 1307, type: !12848)
!13619 = !DILocalVariable(name: "bytes", arg: 2, scope: !13615, file: !12514, line: 1308, type: !9)
!13620 = !DILocation(line: 0, scope: !13615)
!13621 = !DILocation(line: 1310, column: 26, scope: !13615)
!13622 = !DILocation(line: 1312, column: 10, scope: !13615)
!13623 = distinct !DISubprogram(name: "line_terminator", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder15line_terminator", scope: !12808, file: !12514, line: 1108, type: !13624, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, declaration: !13626, retainedNodes: !13627)
!13624 = !DISubroutineType(types: !13625)
!13625 = !{!12848, !12848, !40}
!13626 = !DISubprogram(name: "line_terminator", linkageName: "_RNvMs_NtNtCs96z5GJ9HwjO_5regex8builders6stringNtB4_15RegexSetBuilder15line_terminator", scope: !12808, file: !12514, line: 1108, type: !13624, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !46)
!13627 = !{!13628, !13629}
!13628 = !DILocalVariable(name: "self", arg: 1, scope: !13623, file: !12514, line: 1108, type: !12848)
!13629 = !DILocalVariable(name: "byte", arg: 2, scope: !13623, file: !12514, line: 1108, type: !40)
!13630 = !DILocation(line: 0, scope: !13623)
!13631 = !DILocation(line: 1109, column: 26, scope: !13623)
!13632 = !DILocation(line: 1111, column: 10, scope: !13623)
!13633 = !DILocation(line: 0, scope: !12819)
!13634 = !DILocation(line: 812, column: 26, scope: !12819)
!13635 = !DILocation(line: 813, column: 10, scope: !12819)
!13636 = distinct !DISubprogram(name: "find_byte", linkageName: "_RNvNtCs96z5GJ9HwjO_5regex9find_byte9find_byte", scope: !13638, file: !13637, line: 5, type: !13639, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13645)
!13637 = !DIFile(filename: "src/find_byte.rs", directory: "/opt-bench/work/regex-rs/regex", checksumkind: CSK_MD5, checksum: "c155bf8c4f3810db21a7abbff7867616")
!13638 = !DINamespace(name: "find_byte", scope: !136)
!13639 = !DISubroutineType(types: !13640)
!13640 = !{!495, !40, !13641}
!13641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !2, size: 128, align: 64, elements: !13642, templateParams: !46, identifier: "5137121b88caf77bcbd112ac0bb55398")
!13642 = !{!13643, !13644}
!13643 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !13641, file: !2, baseType: !1949, size: 64, align: 64)
!13644 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !13641, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!13645 = !{!13646, !13647}
!13646 = !DILocalVariable(name: "needle", arg: 1, scope: !13636, file: !13637, line: 5, type: !40)
!13647 = !DILocalVariable(name: "haystack", arg: 2, scope: !13636, file: !13637, line: 5, type: !13641)
!13648 = !DILocation(line: 0, scope: !13636)
!13649 = !DILocalVariable(name: "find_raw", arg: 2, scope: !13650, file: !13651, line: 1127, type: !13658)
!13650 = distinct !DISubprogram(name: "search_slice_with_raw<memchr::memchr::memchr::{closure_env#0}>", linkageName: "_RINvNtNtNtCsdnbpgXzNiEQ_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs96z5GJ9HwjO_5regex", scope: !13652, file: !13651, line: 1125, type: !13656, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !13677, retainedNodes: !13663)
!13651 = !DIFile(filename: "src/arch/generic/memchr.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/memchr-2.8.3", checksumkind: CSK_MD5, checksum: "b39ab98f848850dfe7d7e948f527651e")
!13652 = !DINamespace(name: "memchr", scope: !13653)
!13653 = !DINamespace(name: "generic", scope: !13654)
!13654 = !DINamespace(name: "arch", scope: !13655)
!13655 = !DINamespace(name: "memchr", scope: null)
!13656 = !DISubroutineType(types: !13657)
!13657 = !{!495, !13641, !13658}
!13658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !13659, file: !2, size: 64, align: 64, elements: !13661, templateParams: !46, identifier: "dcf714cab14db7768957ea7732149476")
!13659 = !DINamespace(name: "memchr", scope: !13660)
!13660 = !DINamespace(name: "memchr", scope: !13655)
!13661 = !{!13662}
!13662 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__needle", scope: !13658, file: !2, baseType: !3441, size: 64, align: 64)
!13663 = !{!13664, !13649, !13665, !13667, !13669, !13671, !13673, !13675}
!13664 = !DILocalVariable(name: "haystack", arg: 1, scope: !13650, file: !13651, line: 1126, type: !13641)
!13665 = !DILocalVariable(name: "start", scope: !13666, file: !13651, line: 1132, type: !39, align: 64)
!13666 = distinct !DILexicalBlock(scope: !13650, file: !13651, line: 1132, column: 5)
!13667 = !DILocalVariable(name: "end", scope: !13668, file: !13651, line: 1133, type: !39, align: 64)
!13668 = distinct !DILexicalBlock(scope: !13666, file: !13651, line: 1133, column: 5)
!13669 = !DILocalVariable(name: "found", scope: !13670, file: !13651, line: 1134, type: !39, align: 64)
!13670 = distinct !DILexicalBlock(scope: !13668, file: !13651, line: 1134, column: 5)
!13671 = !DILocalVariable(name: "residual", scope: !13672, file: !13651, line: 1134, type: !2514, align: 8)
!13672 = distinct !DILexicalBlock(scope: !13668, file: !13651, line: 1134, column: 37)
!13673 = !DILocalVariable(name: "val", scope: !13674, file: !13651, line: 1134, type: !39, align: 64)
!13674 = distinct !DILexicalBlock(scope: !13668, file: !13651, line: 1134, column: 37)
!13675 = !DILocalVariable(name: "idx", scope: !13676, file: !13651, line: 1135, type: !9, align: 64)
!13676 = distinct !DILexicalBlock(scope: !13670, file: !13651, line: 1135, column: 5)
!13677 = !{!13678}
!13678 = !DITemplateTypeParameter(name: "impl FnMut(*const u8, *const u8) -> Option<*const u8>", type: !13658)
!13679 = !DILocation(line: 0, scope: !13650, inlinedAt: !13680)
!13680 = distinct !DILocation(line: 31, column: 9, scope: !13681, inlinedAt: !13686)
!13681 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtCsdnbpgXzNiEQ_6memchr6memchr6memchr", scope: !13660, file: !13682, line: 27, type: !13639, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13683)
!13682 = !DIFile(filename: "src/memchr.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/memchr-2.8.3", checksumkind: CSK_MD5, checksum: "e9fc167866a6fa629d9ff559c404edd3")
!13683 = !{!13684, !13685}
!13684 = !DILocalVariable(name: "needle", arg: 1, scope: !13681, file: !13682, line: 27, type: !40)
!13685 = !DILocalVariable(name: "haystack", arg: 2, scope: !13681, file: !13682, line: 27, type: !13641)
!13686 = distinct !DILocation(line: 13, column: 9, scope: !13687, inlinedAt: !13692)
!13687 = distinct !DISubprogram(name: "imp", linkageName: "_RNvNvNtCs96z5GJ9HwjO_5regex9find_byte9find_byte3imp", scope: !13688, file: !13637, line: 12, type: !13639, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13689)
!13688 = !DINamespace(name: "find_byte", scope: !13638)
!13689 = !{!13690, !13691}
!13690 = !DILocalVariable(name: "needle", arg: 1, scope: !13687, file: !13637, line: 12, type: !40)
!13691 = !DILocalVariable(name: "haystack", arg: 2, scope: !13687, file: !13637, line: 12, type: !13641)
!13692 = distinct !DILocation(line: 16, column: 5, scope: !13636)
!13693 = !DILocation(line: 0, scope: !13687, inlinedAt: !13692)
!13694 = !DILocation(line: 0, scope: !13681, inlinedAt: !13686)
!13695 = !DILocation(line: 0, scope: !13666, inlinedAt: !13680)
!13696 = !DILocalVariable(name: "self", arg: 1, scope: !13697, file: !13698, line: 837, type: !39)
!13697 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPh3addCs96z5GJ9HwjO_5regex", scope: !13699, file: !13698, line: 837, type: !13701, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !41, retainedNodes: !13703)
!13698 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "25118ae25e729b7c815218b31622724c")
!13699 = !DINamespace(name: "{impl#0}", scope: !13700)
!13700 = !DINamespace(name: "const_ptr", scope: !31)
!13701 = !DISubroutineType(types: !13702)
!13702 = !{!39, !39, !9, !2192}
!13703 = !{!13696, !13704}
!13704 = !DILocalVariable(name: "count", arg: 2, scope: !13697, file: !13698, line: 837, type: !9)
!13705 = !DILocation(line: 0, scope: !13697, inlinedAt: !13706)
!13706 = distinct !DILocation(line: 1133, column: 21, scope: !13666, inlinedAt: !13680)
!13707 = !DILocation(line: 871, column: 18, scope: !13697, inlinedAt: !13706)
!13708 = !DILocation(line: 0, scope: !13668, inlinedAt: !13680)
!13709 = !DILocalVariable(name: "needle", scope: !13710, file: !13682, line: 27, type: !40, align: 8)
!13710 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsdnbpgXzNiEQ_6memchr6memchr6memchr0Cs96z5GJ9HwjO_5regex", scope: !13659, file: !13682, line: 31, type: !13711, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, templateParams: !46, retainedNodes: !13727)
!13711 = !DISubroutineType(types: !13712)
!13712 = !{!13713, !13726, !39, !39}
!13713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<*const u8>", scope: !381, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !13714, templateParams: !46, identifier: "bb343fc409ff91eaf29ccccade475cd9")
!13714 = !{!13715}
!13715 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13713, file: !2, size: 128, align: 64, elements: !13716, templateParams: !46, identifier: "59ccd83de6189a65d561a78b531b8848", discriminator: !13725)
!13716 = !{!13717, !13721}
!13717 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !13715, file: !2, baseType: !13718, size: 128, align: 64, extraData: i64 0)
!13718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !13713, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !46, templateParams: !13719, identifier: "d7c78a3ffb2dc878f8c86cd580dabdd4")
!13719 = !{!13720}
!13720 = !DITemplateTypeParameter(name: "T", type: !39)
!13721 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !13715, file: !2, baseType: !13722, size: 128, align: 64, extraData: i64 1)
!13722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !13713, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !13723, templateParams: !13719, identifier: "d3d4a15ae4b9a7b17587aecc3eb5ff32")
!13723 = !{!13724}
!13724 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13722, file: !2, baseType: !39, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
end_hunk_1
