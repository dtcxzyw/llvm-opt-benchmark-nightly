Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.01?download=true
inline.NumInlined: 672
inline.NumDeleted: 269
begin_hunk_0_@_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter5teddy5TeddyE3newB6_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12785
  store i64 1, ptr %i.l, align 8, !dbg !12785
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 544, !dbg !12785
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !12785
    #dbg_declare(ptr %i.b, !12760, !DIExpression(), !12707)
    #dbg_value(i64 8, !5500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12709)
    #dbg_value(i64 8, !5506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12711)
    #dbg_value(i64 8, !5523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12713)
    #dbg_value(i64 552, !5500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12709)
    #dbg_value(i64 552, !5506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12711)
    #dbg_value(i64 552, !5523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12713)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5521, !DIExpression(), !12711)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5527, !DIExpression(), !12713)
    #dbg_value(i8 0, !5528, !DIExpression(), !12713)
    #dbg_value(i64 8, !5530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12715)
    #dbg_value(i64 8, !5553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12717)
    #dbg_value(i64 552, !5530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12715)
    #dbg_value(i64 552, !5553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12717)
    #dbg_value(i1 false, !5534, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12715)
    #dbg_value(i64 552, !5535, !DIExpression(), !12718)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !12787, !noalias !12766
  %i.m = call noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 552, i64 noundef range(i64 8, 33) 8) #26, !dbg !12788, !noalias !12766 ; 3 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !12789
  br i1 %i.n, label %bb.i, label %bb.l, !dbg !12790, !prof !5556

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #27
          to label %.noexc unwind label %bb.j, !dbg !12791, !noalias !12766

.noexc:                                           ; preds = %bb.i
  unreachable, !dbg !12791

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !12768, !DIExpression(), !12723)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtBI_4util9prefilter5teddy5TeddyEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(536) %i.k)
          to label %.body unwind label %bb.k, !dbg !12792

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !12793
  unreachable, !dbg !12793

bb.l:                                             ; preds = %bb.h
    #dbg_value(ptr %i.m, !12764, !DIExpression(), !12724)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.m, ptr noundef nonnull align 8 dereferenceable(552) %i.b, i64 552, i1 false), !dbg !12794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12795
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.m, 0, !dbg !12796
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @12, 1, !dbg !12796
  ret { ptr, ptr } %i.r, !dbg !12796

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body20 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.m ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body20, !dbg !12797

bb.m:                                             ; preds = %bb.b, %bb.e
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.g, %bb.e ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddy5TeddyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %0) #24
          to label %.body unwind label %bb.n, !dbg !12774

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !12797
  unreachable, !dbg !12797
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter6memchr6MemchrE3newB6_(i8 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12799 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(i8 %0, !12860, !DIExpression(), !12863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12903
  store ptr null, ptr %i.c, align 8, !dbg !12903
  call void @_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newAAINtNtCsj6eKBz9Db1c_4core6option6OptionReEj1_B1S_B1c_B1P_EBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c), !dbg !12902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12904
  call void @llvm.experimental.noalias.scope.decl(metadata !12864), !dbg !12905
    #dbg_declare(ptr %i.d, !5466, !DIExpression(), !12803)
    #dbg_declare(ptr %i.a, !5495, !DIExpression(), !12804)
  %i.e = load i64, ptr %i.d, align 8, !dbg !12906, !range !5497, !alias.scope !12864, !noundef !1995
  %.not.i = icmp eq i64 %i.e, -1, !dbg !12906
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit, label %bb.b, !dbg !12907, !prof !5498

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12908, !noalias !12864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !12908
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %bb.d unwind label %bb.c, !dbg !12909, !noalias !12864

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %common.resume unwind label %bb.e, !dbg !12910, !noalias !12864

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !12911, !noalias !12864
  unreachable, !dbg !12911

common.resume:                                    ; preds = %bb.h, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.o, %bb.g ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !12863

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !12912
  %i.i = load ptr, ptr %i.h, align 8, !dbg !12912, !alias.scope !12864, !nonnull !1995, !noundef !1995 ; 2 uses
    #dbg_value(ptr %i.i, !12861, !DIExpression(), !12865)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12913
    #dbg_value(ptr %i.i, !12866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12888)
    #dbg_value(i8 %0, !12866, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12914
  store i64 1, ptr %i.b, align 8, !dbg !12914
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12914
  store i64 1, ptr %i.j, align 8, !dbg !12914
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12914 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !dbg !12914
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12914
  store i8 %0, ptr %i.l, align 8, !dbg !12914
    #dbg_declare(ptr %i.b, !12889, !DIExpression(), !12814)
    #dbg_value(i64 8, !5500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12816)
    #dbg_value(i64 8, !5506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12818)
    #dbg_value(i64 8, !5523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12820)
    #dbg_value(i64 32, !5500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12816)
    #dbg_value(i64 32, !5506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12818)
    #dbg_value(i64 32, !5523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12820)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5521, !DIExpression(), !12818)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5527, !DIExpression(), !12820)
    #dbg_value(i8 0, !5528, !DIExpression(), !12820)
    #dbg_value(i64 8, !5530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12822)
    #dbg_value(i64 8, !5553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12824)
    #dbg_value(i64 32, !5530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12822)
    #dbg_value(i64 32, !5553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12824)
    #dbg_value(i1 false, !5534, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12822)
    #dbg_value(i64 32, !5535, !DIExpression(), !12825)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !12915, !noalias !12895
  %i.m = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 32, i64 noundef range(i64 8, 33) 8) #26, !dbg !12916, !noalias !12895 ; 3 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !12917
  br i1 %i.n, label %bb.f, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr6MemchrEEE3newB17_.exit, !dbg !12918, !prof !5556

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.g, !dbg !12919, !noalias !12895

.noexc:                                           ; preds = %bb.f
  unreachable, !dbg !12919

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !12897, !DIExpression(), !12830)
    #dbg_value(ptr %i.k, !4705, !DIExpression(), !12832)
    #dbg_value(ptr %i.k, !4401, !DIExpression(), !12834)
    #dbg_value(ptr %i.k, !4408, !DIExpression(), !12836)
    #dbg_value(ptr %i.k, !4414, !DIExpression(), !12838)
    #dbg_value(i64 1, !4423, !DIExpression(), !12840)
    #dbg_value(i8 1, !4425, !DIExpression(), !12840)
    #dbg_value(i64 1, !4427, !DIExpression(), !12842)
    #dbg_value(i8 1, !4429, !DIExpression(), !12842)
    #dbg_value(ptr %i.i, !4424, !DIExpression(), !12843)
    #dbg_value(ptr %i.i, !4428, !DIExpression(), !12842)
  %i.p = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !12920, !noalias !12901
  %i.q = icmp eq i64 %i.p, 1, !dbg !12921
  br i1 %i.q, label %bb.h, label %common.resume, !dbg !12921

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !4049, !DIExpression(), !12855)
  fence acquire, !dbg !12922
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #25
          to label %common.resume unwind label %bb.i, !dbg !12923

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !12924
  unreachable, !dbg !12924

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr6MemchrEEE3newB17_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
    #dbg_value(ptr %i.m, !12893, !DIExpression(), !12856)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !12925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12926
  %i.s = insertvalue { ptr, ptr } poison, ptr %i.m, 0, !dbg !12927
  %i.t = insertvalue { ptr, ptr } %i.s, ptr @13, 1, !dbg !12927
  ret { ptr, ptr } %i.t, !dbg !12927
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter6memchr7Memchr2E3newB6_(i8 noundef %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12929 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(i8 %0, !12990, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12993)
    #dbg_value(i8 %1, !12990, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13034
  store ptr null, ptr %i.c, align 8, !dbg !13034
  call void @_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newAAINtNtCsj6eKBz9Db1c_4core6option6OptionReEj1_B1S_B1c_B1P_EBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c), !dbg !13033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13035
  call void @llvm.experimental.noalias.scope.decl(metadata !12994), !dbg !13036
    #dbg_declare(ptr %i.d, !5466, !DIExpression(), !12933)
    #dbg_declare(ptr %i.a, !5495, !DIExpression(), !12934)
  %i.e = load i64, ptr %i.d, align 8, !dbg !13037, !range !5497, !alias.scope !12994, !noundef !1995
  %.not.i = icmp eq i64 %i.e, -1, !dbg !13037
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit, label %bb.b, !dbg !13038, !prof !5498

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13039, !noalias !12994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13039
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %bb.d unwind label %bb.c, !dbg !13040, !noalias !12994

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %common.resume unwind label %bb.e, !dbg !13041, !noalias !12994

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !13042, !noalias !12994
  unreachable, !dbg !13042

common.resume:                                    ; preds = %bb.h, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !12993

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13043
  %i.i = load ptr, ptr %i.h, align 8, !dbg !13043, !alias.scope !12994, !nonnull !1995, !noundef !1995 ; 2 uses
    #dbg_value(ptr %i.i, !12991, !DIExpression(), !12995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13044
    #dbg_value(i8 %0, !12996, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !13018)
    #dbg_value(i8 %1, !12996, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !13018)
    #dbg_value(ptr %i.i, !12996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13045
  store i64 1, ptr %i.b, align 8, !dbg !13045
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13045
  store i64 1, ptr %i.j, align 8, !dbg !13045
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13045 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !dbg !13045
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13045
  %2 = zext i8 %0 to i16, !dbg !13045
  %3 = zext i8 %1 to i16, !dbg !13045
  %4 = shl nuw i16 %3, 8, !dbg !13045
  %5 = or disjoint i16 %4, %2, !dbg !13045
  store i16 %5, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !13045
    #dbg_declare(ptr %i.b, !13020, !DIExpression(), !12944)
    #dbg_value(i64 8, !5500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12946)
    #dbg_value(i64 8, !5506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12948)
    #dbg_value(i64 8, !5523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12950)
    #dbg_value(i64 32, !5500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12946)
    #dbg_value(i64 32, !5506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12948)
    #dbg_value(i64 32, !5523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12950)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5521, !DIExpression(), !12948)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5527, !DIExpression(), !12950)
    #dbg_value(i8 0, !5528, !DIExpression(), !12950)
    #dbg_value(i64 8, !5530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12952)
    #dbg_value(i64 8, !5553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12954)
    #dbg_value(i64 32, !5530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12952)
    #dbg_value(i64 32, !5553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12954)
    #dbg_value(i1 false, !5534, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12952)
    #dbg_value(i64 32, !5535, !DIExpression(), !12955)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !13046, !noalias !13026
  %i.l = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 32, i64 noundef range(i64 8, 33) 8) #26, !dbg !13047, !noalias !13026 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !13048
  br i1 %i.m, label %bb.f, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr7Memchr2EEE3newB17_.exit, !dbg !13049, !prof !5556

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.g, !dbg !13050, !noalias !13026

.noexc:                                           ; preds = %bb.f
  unreachable, !dbg !13050

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !13028, !DIExpression(), !12960)
    #dbg_value(ptr %i.k, !4712, !DIExpression(), !12962)
    #dbg_value(ptr %i.k, !4401, !DIExpression(), !12964)
    #dbg_value(ptr %i.k, !4408, !DIExpression(), !12966)
    #dbg_value(ptr %i.k, !4414, !DIExpression(), !12968)
    #dbg_value(i64 1, !4423, !DIExpression(), !12970)
    #dbg_value(i8 1, !4425, !DIExpression(), !12970)
    #dbg_value(i64 1, !4427, !DIExpression(), !12972)
    #dbg_value(i8 1, !4429, !DIExpression(), !12972)
    #dbg_value(ptr %i.i, !4424, !DIExpression(), !12973)
    #dbg_value(ptr %i.i, !4428, !DIExpression(), !12972)
  %i.o = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !13051, !noalias !13032
  %i.p = icmp eq i64 %i.o, 1, !dbg !13052
  br i1 %i.p, label %bb.h, label %common.resume, !dbg !13052

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !4049, !DIExpression(), !12985)
  fence acquire, !dbg !13053
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #25
          to label %common.resume unwind label %bb.i, !dbg !13054

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !13055
  unreachable, !dbg !13055

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr7Memchr2EEE3newB17_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
    #dbg_value(ptr %i.l, !13024, !DIExpression(), !12986)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !13056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13057
  %i.r = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !13058
  %i.s = insertvalue { ptr, ptr } %i.r, ptr @14, 1, !dbg !13058
  ret { ptr, ptr } %i.s, !dbg !13058
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter6memchr7Memchr3E3newB6_(i24 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13060 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(i24 %0, !13121, !DIExpression(), !13124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13165
  store ptr null, ptr %i.c, align 8, !dbg !13165
  call void @_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newAAINtNtCsj6eKBz9Db1c_4core6option6OptionReEj1_B1S_B1c_B1P_EBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c), !dbg !13164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13166
  call void @llvm.experimental.noalias.scope.decl(metadata !13125), !dbg !13167
    #dbg_declare(ptr %i.d, !5466, !DIExpression(), !13064)
    #dbg_declare(ptr %i.a, !5495, !DIExpression(), !13065)
  %i.e = load i64, ptr %i.d, align 8, !dbg !13168, !range !5497, !alias.scope !13125, !noundef !1995
  %.not.i = icmp eq i64 %i.e, -1, !dbg !13168
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit, label %bb.b, !dbg !13169, !prof !5498

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13170, !noalias !13125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13170
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %bb.d unwind label %bb.c, !dbg !13171, !noalias !13125

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %common.resume unwind label %bb.e, !dbg !13172, !noalias !13125

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !13173, !noalias !13125
  unreachable, !dbg !13173

common.resume:                                    ; preds = %bb.h, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !13124

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13174
  %i.i = load ptr, ptr %i.h, align 8, !dbg !13174, !alias.scope !13125, !nonnull !1995, !noundef !1995 ; 2 uses
    #dbg_value(ptr %i.i, !13122, !DIExpression(), !13126)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13175
    #dbg_value(i24 %0, !13128, !DIExpression(DW_OP_LLVM_fragment, 64, 24), !13150)
    #dbg_value(ptr %i.i, !13128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13176
  store i64 1, ptr %i.b, align 8, !dbg !13176
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13176
  store i64 1, ptr %i.j, align 8, !dbg !13176
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13176 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !dbg !13176
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13176
  store i24 %0, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !13176
    #dbg_declare(ptr %i.b, !13151, !DIExpression(), !13075)
    #dbg_value(i64 8, !5500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13077)
    #dbg_value(i64 8, !5506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13079)
    #dbg_value(i64 8, !5523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13081)
    #dbg_value(i64 32, !5500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13077)
    #dbg_value(i64 32, !5506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13079)
    #dbg_value(i64 32, !5523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13081)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5521, !DIExpression(), !13079)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5527, !DIExpression(), !13081)
    #dbg_value(i8 0, !5528, !DIExpression(), !13081)
    #dbg_value(i64 8, !5530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13083)
    #dbg_value(i64 8, !5553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13085)
    #dbg_value(i64 32, !5530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13083)
    #dbg_value(i64 32, !5553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13085)
    #dbg_value(i1 false, !5534, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13083)
    #dbg_value(i64 32, !5535, !DIExpression(), !13086)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !13177, !noalias !13157
  %i.l = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 32, i64 noundef range(i64 8, 33) 8) #26, !dbg !13178, !noalias !13157 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !13179
  br i1 %i.m, label %bb.f, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr7Memchr3EEE3newB17_.exit, !dbg !13180, !prof !5556

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.g, !dbg !13181, !noalias !13157

.noexc:                                           ; preds = %bb.f
  unreachable, !dbg !13181

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !13159, !DIExpression(), !13091)
    #dbg_value(ptr %i.k, !4719, !DIExpression(), !13093)
    #dbg_value(ptr %i.k, !4401, !DIExpression(), !13095)
    #dbg_value(ptr %i.k, !4408, !DIExpression(), !13097)
    #dbg_value(ptr %i.k, !4414, !DIExpression(), !13099)
    #dbg_value(i64 1, !4423, !DIExpression(), !13101)
    #dbg_value(i8 1, !4425, !DIExpression(), !13101)
    #dbg_value(i64 1, !4427, !DIExpression(), !13103)
    #dbg_value(i8 1, !4429, !DIExpression(), !13103)
    #dbg_value(ptr %i.i, !4424, !DIExpression(), !13104)
    #dbg_value(ptr %i.i, !4428, !DIExpression(), !13103)
  %i.o = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !13182, !noalias !13163
  %i.p = icmp eq i64 %i.o, 1, !dbg !13183
  br i1 %i.p, label %bb.h, label %common.resume, !dbg !13183

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !4049, !DIExpression(), !13116)
  fence acquire, !dbg !13184
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #25
          to label %common.resume unwind label %bb.i, !dbg !13185

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !13186
  unreachable, !dbg !13186

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3PreNtNtNtNtB17_4util9prefilter6memchr7Memchr3EEE3newB17_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
    #dbg_value(ptr %i.l, !13155, !DIExpression(), !13117)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !13187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13188
  %i.r = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !13189
  %i.s = insertvalue { ptr, ptr } %i.r, ptr @15, 1, !dbg !13189
  ret { ptr, ptr } %i.s, !dbg !13189
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter6memmem6MemmemE3newB6_(ptr noalias nofree noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(288) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13191 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [352 x i8], align 32              ; 8 uses
    #dbg_declare(ptr %0, !13227, !DIExpression(DW_OP_LLVM_fragment, 0, 2304), !13243)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail:bb.a
    #dbg_value(i64 16, !4519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15046)
    #dbg_value(i64 16, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15048)
    #dbg_value(i64 16, !4528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15050)
  br label %common.resume, !dbg !15189

bb.h:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit
    #dbg_value(ptr null, !5895, !DIExpression(), !15028)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !dbg !15190, !noalias !15156
  unreachable, !dbg !15190

_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !15191
  %i.x = load i32, ptr %i.w, align 4, !dbg !15191, !range !5919, !alias.scope !15157, !noalias !15156, !noundef !1995
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15191
  %i.z = load i32, ptr %i.y, align 8, !dbg !15191, !alias.scope !15157, !noalias !15156
  %i.aa = insertvalue { i32, i32 } poison, i32 %i.x, 0, !dbg !15192
  %i.ab = insertvalue { i32, i32 } %i.aa, i32 %i.z, 1, !dbg !15192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15193, !noalias !15156
  br label %bb.o, !dbg !15194

bb.i:                                             ; preds = %bb.a, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1520, !dbg !15195 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15159), !dbg !15196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15160), !dbg !15196
    #dbg_value(ptr %i.ac, !5922, !DIExpression(), !15055)
    #dbg_value(ptr %2, !5935, !DIExpression(), !15055)
    #dbg_value(ptr %2, !5940, !DIExpression(), !15057)
    #dbg_value(ptr %2, !5945, !DIExpression(), !15059)
    #dbg_value(ptr %i.ac, !5947, !DIExpression(), !15061)
  %i.ad = load i64, ptr %i.ac, align 16, !dbg !15197, !range !5002, !alias.scope !15159, !noundef !1995 ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 2, !dbg !15197
  br i1 %.not.i, label %select.unfold23, label %bb.j, !dbg !15198

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.ac, !5936, !DIExpression(), !15062)
    #dbg_value(ptr %i.ac, !5953, !DIExpression(), !15064)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !15199
  %i.af = load i8, ptr %i.ae, align 8, !dbg !15199, !range !5698, !alias.scope !15160, !noundef !1995
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !15199
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !15160
  %i.aj = icmp ugt i64 %i.ai, 128
  %or.cond.i = select i1 %i.ag, i1 %i.aj, i1 false, !dbg !15200
  br i1 %or.cond.i, label %select.unfold23, label %bb.k, !dbg !15200

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !15201
  %i.al = load i64, ptr %i.ak, align 8, !dbg !15201, !alias.scope !15160, !noundef !1995
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !15201
  %i.an = load i64, ptr %i.am, align 8, !dbg !15201, !alias.scope !15160, !noundef !1995
    #dbg_value(ptr poison, !5958, !DIExpression(), !15066)
    #dbg_value(i64 %i.an, !5964, !DIExpression(), !15068)
    #dbg_value(i64 %i.al, !5968, !DIExpression(), !15068)
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.al), !dbg !15202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15161), !dbg !15203
    #dbg_value(ptr %i.ac, !5972, !DIExpression(), !15072)
    #dbg_value(i64 262144, !5980, !DIExpression(), !15075)
    #dbg_value(i64 64, !5993, !DIExpression(), !15077)
    #dbg_value(i64 64, !5997, !DIExpression(), !15079)
    #dbg_value(i64 64, !6004, !DIExpression(), !15081)
    #dbg_value(i64 1, !6012, !DIExpression(), !15083)
    #dbg_value(ptr %i.ac, !5991, !DIExpression(), !15084)
    #dbg_value(i64 %i.ad, !5984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15075)
    #dbg_value(i64 poison, !5984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15075)
  %i.ap = trunc nuw i64 %i.ad to i1, !dbg !15204
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1528, !dbg !15204
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !15204, !alias.scope !15161, !noalias !15160
  %i.as = shl i64 %i.ar, 3, !dbg !15204
  %.sroa.0.0.i19 = select i1 %i.ap, i64 %i.as, i64 2097152, !dbg !15204 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i19, !5976, !DIExpression(), !15085)
    #dbg_value(i64 %.sroa.0.0.i19, !6015, !DIExpression(), !15087)
    #dbg_value(i64 64, !6016, !DIExpression(), !15087)
  %i.at = and i64 %.sroa.0.0.i19, 56, !dbg !15205
  %i.au = icmp ne i64 %i.at, 0, !dbg !15205
  %i.av = lshr i64 %.sroa.0.0.i19, 6, !dbg !15205
  %i.aw = zext i1 %i.au to i64, !dbg !15205
  %.sroa.0.0.i.i = add nuw nsw i64 %i.av, %i.aw, !dbg !15205 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !5977, !DIExpression(), !15088)
    #dbg_value(i64 %.sroa.0.0.i.i, !5994, !DIExpression(), !15077)
    #dbg_value(i64 %.sroa.0.0.i.i, !6000, !DIExpression(), !15079)
    #dbg_value(i64 %.sroa.0.0.i.i, !6010, !DIExpression(), !15081)
  %i.ax = shl nuw i64 %.sroa.0.0.i.i, 6, !dbg !15206
  %i.ay = icmp samesign ugt i64 %.sroa.0.0.i.i, 288230376151711743, !dbg !15206
    #dbg_value(i1 %i.ay, !6002, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15089)
    #dbg_value(i1 %i.ay, !6019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15091)
    #dbg_value(i64 %i.ax, !5978, !DIExpression(), !15092)
    #dbg_value(i64 %i.ax, !6001, !DIExpression(), !15089)
  br i1 %i.ay, label %bb.l, label %bb.m, !dbg !15207, !prof !5556

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 -1, !5978, !DIExpression(), !15092)
    #dbg_value(i64 -1, !6001, !DIExpression(), !15089)
  br label %bb.m, !dbg !15208

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i = phi i64 [ -1, %bb.l ], [ %i.ax, %bb.k ], !dbg !15209
    #dbg_value(i64 %.sroa.03.0.i, !6001, !DIExpression(), !15089)
    #dbg_value(i64 %.sroa.03.0.i, !5978, !DIExpression(), !15092)
    #dbg_value(ptr %i.ac, !6024, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15094)
    #dbg_value(ptr %i.ac, !6033, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15096)
    #dbg_value(ptr %i.ac, !6035, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15098)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1568, !dbg !15210
  %i.ba = load ptr, ptr %i.az, align 16, !dbg !15210, !alias.scope !15161, !noalias !15160, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.ba, !6039, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15101)
    #dbg_value(ptr %i.ba, !6044, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15103)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 336, !dbg !15211
  %i.bc = load i64, ptr %i.bb, align 16, !dbg !15211, !noalias !15162, !noundef !1995 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0, !dbg !15212
  br i1 %i.bd, label %bb.n, label %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit, !dbg !15212

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !dbg !15212, !noalias !15162
  unreachable, !dbg !15212

_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit: ; preds = %bb.m
  %i.be = udiv i64 %.sroa.03.0.i, %i.bc, !dbg !15212
    #dbg_value(i64 %i.be, !6013, !DIExpression(), !15083)
  %i.bf = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %i.be, i64 1), !dbg !15213
  %i.bg = icmp ugt i64 %i.ao, %i.bf, !dbg !15214
  br i1 %i.bg, label %select.unfold23, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit, !dbg !15215

bb.o:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit, %select.unfold23, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit
  %.pn14 = phi { i32, i32 } [ %i.ab, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit ], [ %i.bt, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit ], [ %i.bx, %select.unfold23 ]
  ret { i32, i32 } %.pn14, !dbg !15216

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit: ; preds = %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit
    #dbg_value(ptr undef, !15132, !DIExpression(), !15135)
    #dbg_value(ptr %i.ac, !15139, !DIExpression(), !15144)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1312, !dbg !15217
    #dbg_value(ptr %i.bh, !15140, !DIExpression(), !15144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15218
  %i.bi = tail call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_23BoundedBacktrackerCache3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac), !dbg !15219
  call fastcc void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16try_search_slots(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(56) %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4) #28, !dbg !15220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15163), !dbg !15221
    #dbg_declare(ptr %i.d, !5901, !DIExpression(), !15107)
    #dbg_declare(ptr %i.c, !5917, !DIExpression(), !15108)
  %i.bj = load i32, ptr %i.d, align 8, !dbg !15222, !range !5919, !alias.scope !15163, !noundef !1995
  %i.bk = trunc nuw i32 %i.bj to i1, !dbg !15223
  br i1 %i.bk, label %bb.p, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit, !dbg !15223, !prof !5556

bb.p:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15224, !noalias !15164
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15224
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !15224, !alias.scope !15163, !nonnull !1995, !align !5920, !noundef !1995
  store ptr %i.bm, ptr %i.c, align 8, !dbg !15224, !noalias !15164
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
          to label %bb.q unwind label %bb.r, !dbg !15225, !noalias !15163

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !5220, !DIExpression(), !15111)
    #dbg_value(ptr poison, !5225, !DIExpression(), !15113)
    #dbg_value(ptr poison, !5231, !DIExpression(), !15115)
    #dbg_value(ptr %.val.i20, !5232, !DIExpression(), !15116)
    #dbg_value(i64 8, !5233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15117)
    #dbg_value(i64 16, !5233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15117)
    #dbg_value(ptr poison, !4508, !DIExpression(), !15119)
    #dbg_value(ptr poison, !4515, !DIExpression(), !15121)
    #dbg_value(ptr %.val.i20, !4512, !DIExpression(), !15119)
    #dbg_value(ptr %.val.i20, !4518, !DIExpression(), !15121)
    #dbg_value(ptr %.val.i20, !4521, !DIExpression(), !15123)
    #dbg_value(ptr %.val.i20, !4527, !DIExpression(), !15125)
    #dbg_value(i64 8, !4513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15119)
    #dbg_value(i64 8, !4519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15121)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15123)
    #dbg_value(i64 8, !4528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15125)
    #dbg_value(i64 16, !4513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15119)
    #dbg_value(i64 16, !4519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15121)
    #dbg_value(i64 16, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15123)
    #dbg_value(i64 16, !4528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15125)
  br label %common.resume, !dbg !15226

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit: ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !15227
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !15227, !range !5919, !alias.scope !15163, !noundef !1995
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15227
  %i.br = load i32, ptr %i.bq, align 8, !dbg !15227, !alias.scope !15163
  %i.bs = insertvalue { i32, i32 } poison, i32 %i.bp, 0, !dbg !15228
  %i.bt = insertvalue { i32, i32 } %i.bs, i32 %i.br, 1, !dbg !15228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15229
  br label %bb.o, !dbg !15230

select.unfold23:                                  ; preds = %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit, %bb.i, %bb.j
    #dbg_value(ptr %0, !15133, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !15165)
    #dbg_value(ptr %0, !15146, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !15166)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1096, !dbg !15231
    #dbg_value(ptr %i.bu, !15147, !DIExpression(), !15151)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1472, !dbg !15232 ; 2 uses
  %i.bw = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv), !dbg !15233
  %i.bx = tail call fastcc { i32, i32 } @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12search_slots(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(216) %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4) #28, !dbg !15234
  br label %bb.o, !dbg !15230
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA16try_search_slots(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15245 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !15304, !DIExpression(), !15319)
    #dbg_value(ptr %2, !15305, !DIExpression(), !15319)
    #dbg_value(ptr %3, !15306, !DIExpression(), !15319)
    #dbg_value(ptr %4, !15307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15319)
    #dbg_value(ptr %4, !15320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15324)
    #dbg_value(ptr %4, !15320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15326)
    #dbg_value(i64 %5, !15307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15319)
    #dbg_value(i64 %5, !15320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15324)
    #dbg_value(i64 %5, !15320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15326)
    #dbg_declare(ptr %i.d, !15310, !DIExpression(), !15327)
    #dbg_declare(ptr %i.c, !15328, !DIExpression(), !15348)
    #dbg_declare(ptr %i.b, !15314, !DIExpression(), !15349)
    #dbg_declare(ptr %i.a, !15328, !DIExpression(), !15351)
    #dbg_value(i64 0, !15352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15360)
    #dbg_value(i64 0, !15370, !DIExpression(), !15374)
    #dbg_value(i64 0, !15375, !DIExpression(), !15379)
    #dbg_value(i64 0, !15352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15386)
    #dbg_value(i64 0, !15370, !DIExpression(), !15392)
    #dbg_value(ptr %1, !15393, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15396)
    #dbg_value(ptr %1, !15397, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15400)
    #dbg_value(ptr %1, !15401, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15404)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15506
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15506, !nonnull !1995, !noundef !1995 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 386, !dbg !15399
  %i.h = load i8, ptr %i.g, align 2, !dbg !15399, !range !5698, !noundef !1995
  %i.i = trunc nuw i8 %i.h to i1, !dbg !15399
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !15507

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15406, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15409)
    #dbg_value(ptr %1, !15397, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15411)
    #dbg_value(ptr %1, !15401, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15414)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 387, !dbg !15410
  %i.k = load i8, ptr %i.j, align 1, !dbg !15410, !range !5698, !noundef !1995
  %i.l = trunc nuw i8 %i.k to i1, !dbg !15410
    #dbg_value(i8 %i.k, !15308, !DIExpression(), !15415)
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !15508

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) #25, !dbg !15509
  br label %bb.y, !dbg !15510

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !15397, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15419)
    #dbg_value(ptr %1, !15401, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15424)
    #dbg_value(ptr %i.f, !15425, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15428)
    #dbg_value(ptr %i.f, !15429, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15432)
    #dbg_value(ptr %i.f, !15433, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15436)
    #dbg_value(ptr %i.f, !15437, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15441)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 312, !dbg !15511
  %i.n = load ptr, ptr %i.m, align 8, !dbg !15511, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.n, !15444, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15447)
    #dbg_value(ptr %i.n, !15448, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15451)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !15512
  %i.p = load i64, ptr %i.o, align 8, !dbg !15512, !noundef !1995 ; 2 uses
  %i.q = icmp ult i64 %i.p, 1152921504606846976, !dbg !15513
  tail call void @llvm.assume(i1 %i.q), !dbg !15514
  %i.r = shl nuw nsw i64 %i.p, 1, !dbg !15515     ; 2 uses
    #dbg_value(i64 %i.r, !15309, !DIExpression(), !15452)
    #dbg_value(i64 %i.r, !15376, !DIExpression(), !15379)
    #dbg_value(i64 %5, !15362, !DIExpression(), !15453)
    #dbg_value(i64 %5, !15365, !DIExpression(), !15454)
    #dbg_value(i64 %5, !15367, !DIExpression(), !15455)
    #dbg_value(i64 %5, !15352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15360)
    #dbg_value(i64 %5, !15354, !DIExpression(), !15360)
    #dbg_value(i64 %5, !15371, !DIExpression(), !15374)
    #dbg_value(i64 %5, !15388, !DIExpression(), !15456)
    #dbg_value(i64 %5, !15365, !DIExpression(), !15457)
    #dbg_value(i64 %5, !15367, !DIExpression(), !15458)
    #dbg_value(i64 %5, !15352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15386)
    #dbg_value(i64 %5, !15354, !DIExpression(), !15386)
    #dbg_value(i64 %5, !15371, !DIExpression(), !15392)
  %.not = icmp samesign ult i64 %5, %i.r, !dbg !15516
  br i1 %.not, label %bb.e, label %bb.f, !dbg !15516

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !15459, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15462)
    #dbg_value(ptr %1, !15397, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15464)
    #dbg_value(ptr %1, !15401, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !15467)
    #dbg_value(ptr %i.f, !15468, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !15471)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 360, !dbg !15517
  %i.t = load i64, ptr %i.s, align 8, !dbg !15517, !noundef !1995 ; 2 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952, !dbg !15518
  tail call void @llvm.assume(i1 %i.u), !dbg !15519
  %i.v = icmp eq i64 %i.t, 1, !dbg !15520
  br i1 %i.v, label %bb.g, label %bb.h, !dbg !15520

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) #25, !dbg !15521
  br label %bb.y, !dbg !15522

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !dbg !15524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15347
  call void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2) #25, !dbg !15525
  %i.w = load i32, ptr %i.c, align 8, !dbg !15526, !range !5919, !noundef !1995
  %i.x = trunc nuw i32 %i.w to i1, !dbg !15527
  br i1 %i.x, label %bb.i, label %bb.j, !dbg !15527

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15528
  call void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.r), !dbg !15529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15350
    #dbg_value(ptr %i.b, !15473, !DIExpression(), !15476)
    #dbg_value(ptr %i.b, !15477, !DIExpression(), !15480)
    #dbg_value(ptr %i.b, !15481, !DIExpression(), !15484)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15530
  %i.z = load ptr, ptr %i.y, align 8, !dbg !15530, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15531
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15531, !noundef !1995 ; 3 uses
  invoke void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab)
          to label %bb.o unwind label %bb.n, !dbg !15532

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15533
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !15533, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15534
    #dbg_value(ptr %i.ad, !15312, !DIExpression(), !15488)
    #dbg_value(ptr %i.ad, !15489, !DIExpression(), !15495)
    #dbg_value(ptr %i.ad, !15490, !DIExpression(), !15496)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15535
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !15535
  br label %bb.m, !dbg !15536

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !15537
  %i.ag = load <2 x i32>, ptr %i.af, align 4, !dbg !15537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15534
    #dbg_value(i32 poison, !15311, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !15498)
    #dbg_value(i32 poison, !15311, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !15498)
    #dbg_value(ptr %i.d, !15361, !DIExpression(), !15453)
    #dbg_value(ptr %i.d, !15364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15454)
    #dbg_value(ptr %i.d, !15368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15455)
    #dbg_value(ptr %i.d, !15353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15360)
    #dbg_value(i64 2, !15364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15454)
    #dbg_value(i64 2, !15368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15455)
    #dbg_value(i64 2, !15353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15360)
  %i.ah = icmp samesign ult i64 %5, 3
  br i1 %i.ah, label %bb.k, label %bb.l, !dbg !15538, !prof !6188

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.d, !15321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15324)
    #dbg_value(i64 %5, !15321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15324)
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !dbg !15539
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !15540
  store <2 x i32> %i.ag, ptr %i.ai, align 4, !dbg !15540
  br label %bb.m, !dbg !15541

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !dbg !15542
  unreachable, !dbg !15542

bb.m:                                             ; preds = %bb.k, %bb.i
  %storemerge = phi i32 [ 0, %bb.k ], [ 1, %bb.i ], !dbg !15543
  store i32 %storemerge, ptr %0, align 8, !dbg !15543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15544
  br label %bb.y, !dbg !15522

bb.n:                                             ; preds = %bb.u, %bb.t, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.aa, !dbg !15545

bb.o:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.a, align 8, !dbg !15546, !range !5919, !noundef !1995
  %i.al = trunc nuw i32 %i.ak to i1, !dbg !15547
  br i1 %i.al, label %bb.p, label %bb.s, !dbg !15547

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15548
  %i.an = load ptr, ptr %i.am, align 8, !dbg !15548, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15549
    #dbg_value(ptr %i.an, !15316, !DIExpression(), !15499)
    #dbg_value(ptr %i.an, !15489, !DIExpression(), !15502)
    #dbg_value(ptr %i.an, !15491, !DIExpression(), !15503)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15550
  store ptr %i.an, ptr %i.ao, align 8, !dbg !15550
  store i32 1, ptr %0, align 8, !dbg !15550
    #dbg_value(ptr %i.b, !4166, !DIExpression(), !15288)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit unwind label %bb.q, !dbg !15551

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15290)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.r, !dbg !15552

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !15551
  unreachable, !dbg !15551

common.resume:                                    ; preds = %bb.n, %bb.w, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.w ], [ %i.ap, %bb.q ], [ %i.aj, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !15319

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit: ; preds = %bb.p
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15292)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !15553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15545
  br label %bb.y, !dbg !15522

bb.s:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !15554
  %6 = load i32, ptr %i.ar, align 4, !dbg !15554, !range !5919, !noundef !1995
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15554
  %8 = load i32, ptr %7, align 8, !dbg !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15549
    #dbg_value(i32 %6, !15315, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !15504)
    #dbg_value(i32 %8, !15315, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !15504)
    #dbg_value(ptr %i.b, !15387, !DIExpression(), !15505)
    #dbg_value(ptr poison, !15364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15457)
    #dbg_value(ptr poison, !15368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15458)
    #dbg_value(ptr poison, !15353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15386)
    #dbg_value(i64 %i.ab, !15364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15457)
    #dbg_value(i64 %i.ab, !15368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15458)
    #dbg_value(i64 %i.ab, !15353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15386)
  %.not45 = icmp ugt i64 %5, %i.ab
  br i1 %.not45, label %bb.u, label %bb.t, !dbg !15555, !prof !3653

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.z, !15364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15457)
    #dbg_value(ptr %i.z, !15368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15458)
    #dbg_value(ptr %i.z, !15353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15386)
    #dbg_value(ptr %i.z, !15321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15326)
    #dbg_value(i64 %5, !15321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15326)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
          to label %bb.v unwind label %bb.n, !dbg !15556

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #27
          to label %bb.z unwind label %bb.n, !dbg !15557

bb.v:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15558
  store i32 %8, ptr %i.as, align 8, !dbg !15558
  %9 = zext nneg i32 %6 to i64, !dbg !15558
  %10 = shl nuw nsw i64 %9, 32, !dbg !15558
  store i64 %10, ptr %0, align 8, !dbg !15558
    #dbg_value(ptr %i.b, !4166, !DIExpression(), !15294)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit47 unwind label %bb.w, !dbg !15559

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15296)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.x, !dbg !15560

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !15559
  unreachable, !dbg !15559

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit47: ; preds = %bb.v
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15298)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !15561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15545
  br label %bb.y, !dbg !15562

bb.y:                                             ; preds = %bb.f, %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit, %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit47
  ret void, !dbg !15562

bb.z:                                             ; preds = %bb.u
  unreachable

bb.aa:                                            ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !15563
  unreachable, !dbg !15563
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12search_slots(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15576 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !15628, !DIExpression(), !15645)
    #dbg_value(ptr %1, !15629, !DIExpression(), !15645)
    #dbg_value(ptr %2, !15630, !DIExpression(), !15645)
    #dbg_value(ptr %3, !15631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15645)
    #dbg_value(ptr %3, !15646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15650)
    #dbg_value(ptr %3, !15646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15652)
    #dbg_value(i64 %4, !15631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15645)
    #dbg_value(i64 %4, !15646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15650)
    #dbg_value(i64 %4, !15646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15652)
    #dbg_declare(ptr %i.f, !15653, !DIExpression(), !15671)
    #dbg_declare(ptr %i.e, !15653, !DIExpression(), !15673)
    #dbg_declare(ptr %i.d, !15640, !DIExpression(), !15674)
    #dbg_declare(ptr %i.c, !15641, !DIExpression(), !15675)
    #dbg_declare(ptr %i.c, !15676, !DIExpression(), !15688)
    #dbg_declare(ptr %i.b, !15642, !DIExpression(), !15689)
    #dbg_declare(ptr %i.a, !15643, !DIExpression(), !15690)
    #dbg_declare(ptr %i.a, !15691, !DIExpression(), !15701)
    #dbg_value(i64 0, !15702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15710)
    #dbg_value(i64 0, !15720, !DIExpression(), !15724)
    #dbg_value(i64 0, !15725, !DIExpression(), !15729)
    #dbg_value(i64 0, !15702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15736)
    #dbg_value(i64 0, !15720, !DIExpression(), !15742)
    #dbg_value(ptr %0, !15743, !DIExpression(), !15746)
    #dbg_value(ptr %0, !15747, !DIExpression(), !15750)
    #dbg_value(ptr %0, !15751, !DIExpression(), !15754)
  %i.g = load ptr, ptr %0, align 8, !dbg !15841, !nonnull !1995, !noundef !1995 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 386, !dbg !15749
  %i.i = load i8, ptr %i.h, align 2, !dbg !15749, !range !5698, !noundef !1995
  %i.j = trunc nuw i8 %i.i to i1, !dbg !15749
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !15842

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !15756, !DIExpression(), !15759)
    #dbg_value(ptr %0, !15747, !DIExpression(), !15761)
    #dbg_value(ptr %0, !15751, !DIExpression(), !15764)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 387, !dbg !15760
  %i.l = load i8, ptr %i.k, align 1, !dbg !15760, !range !5698, !noundef !1995
  %i.m = trunc nuw i8 %i.l to i1, !dbg !15760
    #dbg_value(i8 %i.l, !15632, !DIExpression(), !15765)
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !15843

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15670
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM16search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4) #25, !dbg !15844
  %i.n = load i64, ptr %i.f, align 8, !dbg !15845, !range !4476, !noundef !1995
  %i.o = trunc nuw i64 %i.n to i1, !dbg !15846
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !15846

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !15747, !DIExpression(), !15768)
    #dbg_value(ptr %0, !15751, !DIExpression(), !15773)
    #dbg_value(ptr %i.g, !15774, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15777)
    #dbg_value(ptr %i.g, !15778, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15781)
    #dbg_value(ptr %i.g, !15782, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15785)
    #dbg_value(ptr %i.g, !15786, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !15790)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 312, !dbg !15847
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15847, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.q, !15793, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15796)
    #dbg_value(ptr %i.q, !15797, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15800)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !15848
  %i.s = load i64, ptr %i.r, align 8, !dbg !15848, !noundef !1995 ; 2 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976, !dbg !15849
  tail call void @llvm.assume(i1 %i.t), !dbg !15850
  %i.u = shl nuw nsw i64 %i.s, 1, !dbg !15851     ; 2 uses
    #dbg_value(i64 %i.u, !15636, !DIExpression(), !15801)
    #dbg_value(i64 %i.u, !15726, !DIExpression(), !15729)
    #dbg_value(i64 %4, !15712, !DIExpression(), !15802)
    #dbg_value(i64 %4, !15715, !DIExpression(), !15803)
    #dbg_value(i64 %4, !15717, !DIExpression(), !15804)
    #dbg_value(i64 %4, !15702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15710)
    #dbg_value(i64 %4, !15704, !DIExpression(), !15710)
    #dbg_value(i64 %4, !15721, !DIExpression(), !15724)
    #dbg_value(i64 %4, !15738, !DIExpression(), !15805)
    #dbg_value(i64 %4, !15715, !DIExpression(), !15806)
    #dbg_value(i64 %4, !15717, !DIExpression(), !15807)
    #dbg_value(i64 %4, !15702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15736)
    #dbg_value(i64 %4, !15704, !DIExpression(), !15736)
    #dbg_value(i64 %4, !15721, !DIExpression(), !15742)
  %.not = icmp samesign ult i64 %4, %i.u, !dbg !15852
  br i1 %.not, label %bb.g, label %bb.h, !dbg !15852

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !15853
  %i.w = load i32, ptr %i.v, align 8, !dbg !15853, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15854
    #dbg_value(i64 poison, !15633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15808)
    #dbg_value(i32 %i.w, !15633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15808)
  br label %bb.t, !dbg !15855

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15854
  br label %bb.t, !dbg !15856

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !15810, !DIExpression(), !15813)
    #dbg_value(ptr %0, !15747, !DIExpression(), !15815)
    #dbg_value(ptr %0, !15751, !DIExpression(), !15818)
    #dbg_value(ptr %i.g, !15819, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !15822)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 360, !dbg !15857
  %i.y = load i64, ptr %i.x, align 8, !dbg !15857, !noundef !1995 ; 2 uses
  %i.z = icmp ult i64 %i.y, 2305843009213693952, !dbg !15858
  tail call void @llvm.assume(i1 %i.z), !dbg !15859
  %i.aa = icmp eq i64 %i.y, 1, !dbg !15860
  br i1 %i.aa, label %bb.i, label %bb.j, !dbg !15860

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15672
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM16search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4) #25, !dbg !15861
  %i.ab = load i64, ptr %i.e, align 8, !dbg !15862, !range !4476, !noundef !1995
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !15863
  br i1 %i.ac, label %bb.w, label %bb.x, !dbg !15863

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !dbg !15865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15866
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM16search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2) #25, !dbg !15867
    #dbg_value(ptr %i.d, !15711, !DIExpression(), !15802)
    #dbg_value(ptr %i.d, !15714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15803)
    #dbg_value(ptr %i.d, !15718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15804)
    #dbg_value(ptr %i.d, !15703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15710)
    #dbg_value(i64 2, !15714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15803)
    #dbg_value(i64 2, !15718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15804)
    #dbg_value(i64 2, !15703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15710)
  %i.ad = icmp samesign ult i64 %4, 3
  br i1 %i.ad, label %bb.k, label %bb.l, !dbg !15868, !prof !6188

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15869
  call void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.u), !dbg !15870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15871
    #dbg_value(ptr %i.b, !15823, !DIExpression(), !15826)
    #dbg_value(ptr %i.b, !15827, !DIExpression(), !15830)
    #dbg_value(ptr %i.b, !15831, !DIExpression(), !15834)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15872
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !15872, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15873
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !15873, !noundef !1995 ; 3 uses
  invoke void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM16search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef %i.ah)
          to label %bb.n unwind label %bb.m, !dbg !15874

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr %i.d, !15647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15650)
    #dbg_value(i64 %4, !15647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15650)
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36), !dbg !15875
  %i.ai = load i64, ptr %i.c, align 8, !dbg !15876, !range !4476, !noundef !1995 ; 2 uses
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !15877
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15877
  %i.al = load i32, ptr %i.ak, align 8, !dbg !15877
  %.sroa.9.0 = select i1 %i.aj, i32 %i.al, i32 undef, !dbg !15877
  %i.am = trunc nuw nsw i64 %i.ai to i32, !dbg !15877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15879
  br label %bb.t, !dbg !15880

end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches:bb.a
    #dbg_value(ptr %1, !16519, !DIExpression(), !16369)
    #dbg_value(ptr %2, !16520, !DIExpression(), !16369)
    #dbg_value(ptr %i.a, !16521, !DIExpression(), !16369)
    #dbg_value(ptr %i.a, !16526, !DIExpression(), !16372)
    #dbg_value(ptr %0, !16532, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16375)
  %i.r = load i8, ptr %i.i, align 2, !dbg !16641, !range !5698, !noalias !16534, !noundef !1995
  %i.s = trunc nuw i8 %i.r to i1, !dbg !16641
  br i1 %i.s, label %bb.c, label %bb.d, !dbg !16642

bb.c:                                             ; preds = %.split.us.i
    #dbg_value(ptr %0, !16535, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16380)
  %i.t = load i8, ptr %i.j, align 1, !dbg !16643, !range !5698, !noalias !16534, !noundef !1995
    #dbg_value(i8 %i.t, !16522, !DIExpression(), !16381)
  %i.u = trunc nuw i8 %i.t to i1, !dbg !16644
  br label %bb.d, !dbg !16642

bb.d:                                             ; preds = %bb.c, %.split.us.i
  %.sroa.01.0.not.i.us.i = phi i1 [ %i.u, %bb.c ], [ false, %.split.us.i ], !dbg !16645
    #dbg_value(i8 poison, !16522, !DIExpression(), !16381)
  %i.v = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !16646, !noalias !16465 ; 2 uses
    #dbg_value(ptr %i.v, !16537, !DIExpression(), !16390)
  %.not.i.us.i = icmp eq ptr %i.v, null, !dbg !16647
  br i1 %.not.i.us.i, label %bb.e, label %.loopexit, !dbg !16648

bb.e:                                             ; preds = %bb.d
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.a, align 8, !dbg !16649, !alias.scope !16513, !noalias !16507 ; 2 uses
  %i.w = trunc nuw i64 %.sroa.05.0.copyload.i.us.i to i1, !dbg !16650
  %brmerge.not.i.us.i = select i1 %i.w, i1 %.sroa.01.0.not.i.us.i, i1 false, !dbg !16650, !prof !6228
  br i1 %brmerge.not.i.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !16650, !prof !6229

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i: ; preds = %bb.e
  %i.x = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !16651, !noalias !16465 ; 2 uses
    #dbg_value(ptr %i.x, !16554, !DIExpression(), !16395)
  %.not.us.i = icmp eq ptr %i.x, null, !dbg !16652
  br i1 %.not.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, label %.loopexit, !dbg !16653

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i
  %.sroa.03.0.copyload.us.pre.i = load i64, ptr %i.a, align 8, !dbg !16654, !noalias !16507
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !16653

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, %bb.e
  %.sroa.03.0.copyload.us.i = phi i64 [ %.sroa.03.0.copyload.us.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i ], [ %.sroa.05.0.copyload.i.us.i, %bb.e ], !dbg !16654
    #dbg_value(ptr %i.a, !16558, !DIExpression(), !16398)
  %i.y = trunc nuw i64 %.sroa.03.0.copyload.us.i to i1, !dbg !16655
  br i1 %i.y, label %bb.f, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16655

bb.f:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i
  %.sroa.7.0.copyload.us.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !16654, !noalias !16507
    #dbg_value(i64 poison, !16486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16399)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16486, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16399)
  call void @llvm.experimental.noalias.scope.decl(metadata !16560), !dbg !16656
    #dbg_value(ptr %3, !16561, !DIExpression(), !16409)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16579, !DIExpression(), !16409)
    #dbg_value(ptr poison, !16581, !DIExpression(), !16412)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16415)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16585, !DIExpression(), !16420)
  %i.z = zext i32 %.sroa.7.0.copyload.us.i to i64, !dbg !16657 ; 2 uses
  %.not.i16.us.i = icmp ugt i64 %i.l, %i.z, !dbg !16658
  br i1 %.not.i16.us.i, label %bb.g, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16658

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.m, !16592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16420)
    #dbg_value(i64 %i.l, !16592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16420)
    #dbg_value(ptr poison, !16581, !DIExpression(), !16422)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16424)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z, !dbg !16659 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !16660, !range !5698, !noalias !16598, !noundef !1995
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !16660
  br i1 %i.ac, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %bb.h, !dbg !16660

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.promoted.i, 1, !dbg !16661
  store i64 %i.ad, ptr %i.n, align 8, !dbg !16661, !alias.scope !16599
    #dbg_value(ptr poison, !16581, !DIExpression(), !16430)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16432)
  store i8 1, ptr %i.aa, align 1, !dbg !16662, !noalias !16598
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16663

.split.i:                                         ; preds = %bb.b, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i
  %i.ae = phi i64 [ %i.as, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16512), !dbg !16640
  call void @llvm.experimental.noalias.scope.decl(metadata !16513), !dbg !16640
    #dbg_value(ptr %0, !16514, !DIExpression(), !16369)
    #dbg_value(ptr %1, !16519, !DIExpression(), !16369)
    #dbg_value(ptr %2, !16520, !DIExpression(), !16369)
    #dbg_value(ptr %i.a, !16521, !DIExpression(), !16369)
    #dbg_value(ptr %i.a, !16526, !DIExpression(), !16372)
    #dbg_value(ptr %0, !16532, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16375)
  %i.af = load i8, ptr %i.i, align 2, !dbg !16641, !range !5698, !noalias !16610, !noundef !1995
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !16641
  br i1 %i.ag, label %bb.i, label %bb.j, !dbg !16642

bb.i:                                             ; preds = %.split.i
    #dbg_value(ptr %0, !16535, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16380)
  %i.ah = load i8, ptr %i.j, align 1, !dbg !16643, !range !5698, !noalias !16610, !noundef !1995
    #dbg_value(i8 %i.ah, !16522, !DIExpression(), !16381)
  %i.ai = trunc nuw i8 %i.ah to i1, !dbg !16644
  br label %bb.j, !dbg !16642

bb.j:                                             ; preds = %bb.i, %.split.i
  %.sroa.01.0.not.i.i = phi i1 [ %i.ai, %bb.i ], [ false, %.split.i ], !dbg !16645
    #dbg_value(i8 poison, !16522, !DIExpression(), !16381)
  %i.aj = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !16646, !noalias !16465 ; 2 uses
    #dbg_value(ptr %i.aj, !16537, !DIExpression(), !16390)
  %.not.i.i = icmp eq ptr %i.aj, null, !dbg !16647
  br i1 %.not.i.i, label %bb.k, label %.loopexit, !dbg !16648

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !16649, !alias.scope !16513, !noalias !16507 ; 2 uses
  %i.ak = trunc nuw i64 %.sroa.05.0.copyload.i.i to i1, !dbg !16650
  %brmerge.not.i.i = select i1 %i.ak, i1 %.sroa.01.0.not.i.i, i1 false, !dbg !16650, !prof !6228
  br i1 %brmerge.not.i.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !16650, !prof !6229

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i: ; preds = %bb.k
  %i.al = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !16651, !noalias !16465 ; 2 uses
    #dbg_value(ptr %i.al, !16554, !DIExpression(), !16395)
  %.not.i = icmp eq ptr %i.al, null, !dbg !16652
  br i1 %.not.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, label %.loopexit, !dbg !16653

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i
  %.sroa.03.0.copyload.pre.i = load i64, ptr %i.a, align 8, !dbg !16654, !noalias !16507
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !16653

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, %bb.k
  %.sroa.03.0.copyload.i = phi i64 [ %.sroa.03.0.copyload.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i ], [ %.sroa.05.0.copyload.i.i, %bb.k ], !dbg !16654
    #dbg_value(ptr %i.a, !16558, !DIExpression(), !16398)
  %i.am = trunc nuw i64 %.sroa.03.0.copyload.i to i1, !dbg !16655
  br i1 %i.am, label %bb.l, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16655

bb.l:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !16654, !noalias !16507
    #dbg_value(i64 poison, !16486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16399)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16486, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16399)
  call void @llvm.experimental.noalias.scope.decl(metadata !16560), !dbg !16656
    #dbg_value(ptr %3, !16561, !DIExpression(), !16409)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16579, !DIExpression(), !16409)
    #dbg_value(ptr poison, !16581, !DIExpression(), !16412)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16415)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16585, !DIExpression(), !16420)
  %i.an = zext i32 %.sroa.7.0.copyload.i to i64, !dbg !16657 ; 2 uses
  %.not.i16.i = icmp ugt i64 %i.l, %i.an, !dbg !16658
  br i1 %.not.i16.i, label %bb.m, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, !dbg !16658

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.m, !16592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16420)
    #dbg_value(i64 %i.l, !16592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16420)
    #dbg_value(ptr poison, !16581, !DIExpression(), !16422)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16424)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.an, !dbg !16659 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !16660, !range !5698, !noalias !16598, !noundef !1995
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !16660
  br i1 %i.aq, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, label %bb.n, !dbg !16660

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %i.ae, 1, !dbg !16661           ; 2 uses
  store i64 %i.ar, ptr %i.n, align 8, !dbg !16661, !alias.scope !16599
    #dbg_value(ptr poison, !16581, !DIExpression(), !16430)
    #dbg_value(ptr poison, !16583, !DIExpression(), !16432)
  store i8 1, ptr %i.ao, align 1, !dbg !16662, !noalias !16598
  br label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, !dbg !16663

_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ar, %bb.n ] ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.l, !dbg !16664
  br i1 %i.at, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %.split.i, !dbg !16665

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16666, !noalias !16507
    #dbg_value(ptr null, !16611, !DIExpression(), !16623)
  br label %bb.p, !dbg !16667

bb.o:                                             ; preds = %bb.a
    #dbg_value(ptr null, !16457, !DIExpression(), !16461)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !dbg !16668
  unreachable, !dbg !16668

.loopexit:                                        ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, %bb.j, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.x, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i ], [ %i.v, %bb.d ], [ %i.al, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i ], [ %i.aj, %bb.j ], !dbg !16669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16666, !noalias !16507
    #dbg_value(ptr %.sroa.0.0.i, !16611, !DIExpression(), !16623)
    #dbg_value(ptr %.sroa.0.0.i, !16620, !DIExpression(), !16624)
    #dbg_value(ptr %.sroa.0.0.i, !16625, !DIExpression(), !16630)
    #dbg_value(ptr %.sroa.0.0.i, !16631, !DIExpression(), !16634)
  %i.au = call noundef i64 @_RNvXsc_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %.sroa.0.0.i), !dbg !16670 ; 0 uses
  br label %bb.p, !dbg !16671

bb.p:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, %.loopexit
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread ], !dbg !16623
  ret i64 %.sroa.0.0, !dbg !16672
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16702 {
bb.a:
  %.sroa.01.i.sroa.15 = alloca [736 x i8], align 16 ; 3 uses
  %i.a = alloca [720 x i8], align 16              ; 9 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [448 x i8], align 8               ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [104 x i8], align 8               ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 20 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
    #dbg_value(ptr poison, !18690, !DIExpression(), !16716)
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.050.i.sroa.7 = alloca [1800 x i8], align 8 ; 8 uses
  %i.m = alloca [32 x i8], align 16               ; 6 uses
  %i.n = alloca [1440 x i8], align 16             ; 11 uses
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !16747)
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [448 x i8], align 8               ; 8 uses
  %i.q = alloca [128 x i8], align 8               ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  %i.s = alloca [376 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !16749)
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 512, 576), !16749)
  %i.t = alloca [32 x i8], align 16               ; 6 uses
  %i.u = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.624.i.sroa.7 = alloca [48 x i8], align 8 ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !16751)
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 448, 640), !16751)
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.615.i.sroa.7 = alloca [40 x i8], align 8 ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !18716, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !16753)
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [448 x i8], align 8              ; 8 uses
  %i.ab = alloca [128 x i8], align 8              ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 13 uses
    #dbg_value(ptr poison, !18772, !DIExpression(), !16759)
    #dbg_value(ptr poison, !18784, !DIExpression(), !16760)
  %i.ad = alloca [8 x i8], align 8                ; 15 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 13 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [544 x i8], align 32             ; 13 uses
  %i.ak = alloca [528 x i8], align 8              ; 4 uses
  %i.al = alloca [544 x i8], align 32             ; 6 uses
  %i.am = alloca [2000 x i8], align 16            ; 15 uses
  %i.an = alloca [2768 x i8], align 16            ; 19 uses
  %i.ao = alloca [2032 x i8], align 16            ; 18 uses
  %i.ap = alloca [2000 x i8], align 16            ; 15 uses
    #dbg_declare(ptr poison, !18786, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18794)
    #dbg_declare(ptr poison, !18795, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18814)
    #dbg_declare(ptr poison, !18811, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18816)
    #dbg_declare(ptr poison, !18811, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18816)
    #dbg_declare(ptr poison, !18818, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18840)
    #dbg_declare(ptr poison, !18818, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18840)
    #dbg_declare(ptr poison, !18818, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18840)
    #dbg_declare(ptr poison, !18678, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18843)
    #dbg_declare(ptr poison, !18844, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18866)
    #dbg_declare(ptr poison, !18844, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18866)
    #dbg_declare(ptr poison, !18844, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18866)
    #dbg_declare(ptr poison, !18844, !DIExpression(DW_OP_LLVM_fragment, 16000, 5888), !18866)
    #dbg_declare(ptr poison, !18678, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18843)
    #dbg_declare(ptr poison, !18678, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18843)
    #dbg_declare(ptr poison, !18678, !DIExpression(DW_OP_LLVM_fragment, 16000, 5888), !18843)
  %i.aq = alloca [1984 x i8], align 16            ; 19 uses
  %.sroa.14.sroa.14.sroa.15 = alloca [120 x i8], align 16 ; 14 uses
  %.sroa.14.sroa.15 = alloca [1800 x i8], align 8 ; 14 uses
  %.sroa.14.sroa.19 = alloca [7 x i8], align 1    ; 14 uses
    #dbg_declare(ptr poison, !18676, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18870)
    #dbg_declare(ptr poison, !18871, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18887)
    #dbg_declare(ptr poison, !18871, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18887)
    #dbg_declare(ptr poison, !18871, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18887)
    #dbg_declare(ptr poison, !18871, !DIExpression(DW_OP_LLVM_fragment, 16000, 128), !18887)
    #dbg_declare(ptr poison, !18676, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18870)
    #dbg_declare(ptr poison, !18676, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18870)
    #dbg_declare(ptr poison, !18676, !DIExpression(DW_OP_LLVM_fragment, 16000, 128), !18870)
  %i.ar = alloca [1984 x i8], align 16            ; 18 uses
  %.sroa.15.sroa.16.sroa.17 = alloca [120 x i8], align 16 ; 15 uses
  %.sroa.15.sroa.17 = alloca [1800 x i8], align 8 ; 15 uses
  %.sroa.15.sroa.21 = alloca [7 x i8], align 1    ; 15 uses
  %.sroa.26223 = alloca [16 x i8], align 16       ; 5 uses
    #dbg_declare(ptr poison, !18674, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18889)
    #dbg_declare(ptr poison, !18890, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18912)
    #dbg_declare(ptr poison, !18890, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18912)
    #dbg_declare(ptr poison, !18890, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18912)
    #dbg_declare(ptr poison, !18674, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18889)
    #dbg_declare(ptr poison, !18674, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18889)
  %.sroa.11.sroa.12 = alloca [120 x i8], align 16 ; 27 uses
    #dbg_declare(ptr %.sroa.11.sroa.12, !18913, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !16799)
  %.sroa.12.sroa.0 = alloca [1800 x i8], align 8  ; 27 uses
  %.sroa.12.sroa.14 = alloca [7 x i8], align 1    ; 26 uses
    #dbg_declare(ptr %.sroa.12.sroa.0, !18913, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !16799)
    #dbg_declare(ptr %.sroa.12.sroa.14, !18913, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !16799)
    #dbg_value(ptr poison, !18928, !DIExpression(), !16804)
    #dbg_value(ptr poison, !18936, !DIExpression(), !16805)
  %.sroa.5181.sroa.6.sroa.7 = alloca [120 x i8], align 16 ; 6 uses
  %.sroa.5181.sroa.7 = alloca [1800 x i8], align 8 ; 6 uses
  %.sroa.5181.sroa.11 = alloca [7 x i8], align 1  ; 6 uses
    #dbg_declare(ptr poison, !18672, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18938)
    #dbg_declare(ptr poison, !18672, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18938)
    #dbg_declare(ptr poison, !18789, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18939)
    #dbg_declare(ptr poison, !18671, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18940)
  %i.as = alloca [32 x i8], align 16              ; 21 uses
  %.sroa.20 = alloca [120 x i8], align 16         ; 12 uses
  %.sroa.24 = alloca [1800 x i8], align 8         ; 5 uses
    #dbg_declare(ptr %.sroa.20, !18810, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18941)
    #dbg_declare(ptr %.sroa.24, !18810, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18941)
  %.sroa.615.sroa.8 = alloca [120 x i8], align 16 ; 7 uses
    #dbg_declare(ptr %.sroa.11.sroa.12, !18670, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18942)
    #dbg_declare(ptr %.sroa.12.sroa.0, !18670, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18942)
    #dbg_declare(ptr %.sroa.12.sroa.14, !18670, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18942)
  %i.at = alloca [24 x i8], align 8               ; 14 uses
    #dbg_value(ptr poison, !18943, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !18971)
  %i.au = alloca [32 x i8], align 16              ; 19 uses
    #dbg_value(ptr %1, !18662, !DIExpression(), !18972)
    #dbg_value(ptr %2, !18663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18972)
    #dbg_value(i64 %3, !18663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18972)
    #dbg_declare(ptr %i.au, !18664, !DIExpression(), !18973)
    #dbg_declare(ptr %i.at, !18667, !DIExpression(), !18974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !20582
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18975), !dbg !20583
    #dbg_value(ptr %1, !18976, !DIExpression(), !16818)
    #dbg_value(ptr %1, !18981, !DIExpression(), !16821)
    #dbg_value(i32 1, !18988, !DIExpression(), !16824)
    #dbg_value(ptr %1, !18994, !DIExpression(), !16827)
    #dbg_value(ptr %1, !18999, !DIExpression(), !16830)
  %i.av = load ptr, ptr %1, align 8, !dbg !20584, !alias.scope !18975, !nonnull !1995, !noundef !1995 ; 15 uses
    #dbg_value(ptr %i.av, !19002, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !16835)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184, !dbg !20585
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !20585, !noalias !18975, !nonnull !1995, !noundef !1995
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 60, !dbg !20585
  %i.az = load i32, ptr %i.ay, align 4, !dbg !20585, !noalias !18975, !noundef !1995
    #dbg_value(i32 %i.az, !18992, !DIExpression(), !16824)
  %i.ba = trunc i32 %i.az to i1, !dbg !20586
  br i1 %i.ba, label %bb.c, label %bb.b, !dbg !20587

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.av, !19008, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16838)
    #dbg_value(ptr %i.av, !19015, !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value), !16846)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 136, !dbg !20588
  %i.bc = load i8, ptr %i.bb, align 8, !dbg !20588, !range !5098, !alias.scope !19030, !noundef !1995
  %.not.i = icmp eq i8 %i.bc, -1, !dbg !20588
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 112, !dbg !20589
  %.sroa.01.0.i = select i1 %.not.i, ptr @68, ptr %i.bd, !dbg !20589 ; 4 uses
    #dbg_value(ptr %.sroa.01.0.i, !19031, !DIExpression(), !16852)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 24, !dbg !20590
  %i.bf = load i8, ptr %i.be, align 8, !dbg !20590, !range !4000, !noundef !1995 ; 2 uses
  %.not8.i = icmp eq i8 %i.bf, 2, !dbg !20590
  br i1 %.not8.i, label %bb.f, label %bb.d, !dbg !20591

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20592
  store i8 2, ptr %i.bg, align 8, !dbg !20592
  br label %bb.at, !dbg !20593

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !18665, !DIExpression(), !19034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19035), !dbg !20594
    #dbg_value(ptr poison, !19036, !DIExpression(), !16857)
    #dbg_value(i64 1, !19041, !DIExpression(), !16863)
    #dbg_value(i8 0, !19043, !DIExpression(), !16863)
    #dbg_value(i64 1, !19050, !DIExpression(), !16866)
    #dbg_value(i8 0, !19052, !DIExpression(), !16866)
    #dbg_value(ptr poison, !19047, !DIExpression(), !16867)
    #dbg_value(ptr poison, !19054, !DIExpression(), !16870)
  %i.bh = load ptr, ptr %.sroa.01.0.i, align 8, !dbg !20595, !alias.scope !19035, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.bh, !19042, !DIExpression(), !16873)
    #dbg_value(ptr %i.bh, !19051, !DIExpression(), !16866)
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !dbg !20596, !noalias !19056
    #dbg_value(i64 %i.bi, !19048, !DIExpression(), !16875)
  %i.bj = icmp slt i64 %i.bi, 0, !dbg !20597
  br i1 %i.bj, label %bb.e, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !dbg !20597

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !20598
  unreachable, !dbg !20598

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 16, !dbg !20599
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !20599, !alias.scope !19035, !noundef !1995
  %i.bm = load <2 x ptr>, ptr %.sroa.01.0.i, align 8, !dbg !20600, !alias.scope !19035
  store <2 x ptr> %i.bm, ptr %i.au, align 16, !dbg !20601
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !20601
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !20601
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20601
  store i8 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !20601
  br label %bb.at, !dbg !20602

bb.f:                                             ; preds = %bb.b
  %i.bn = getelementptr i8, ptr %i.av, i64 148, !dbg !20603
  %.val85 = load i8, ptr %i.bn, align 4, !dbg !20603, !range !4000, !noundef !1995
    #dbg_value(ptr poison, !19057, !DIExpression(), !16878)
    #dbg_value(i8 1, !19063, !DIExpression(), !16882)
    #dbg_value(i8 %.val85, !19067, !DIExpression(), !16882)
  %.sroa.0.0.i90.not = icmp eq i8 %.val85, 0, !dbg !20604
  br i1 %.sroa.0.0.i90.not, label %bb.g, label %bb.h, !dbg !20605

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20606
  store i8 2, ptr %i.bo, align 8, !dbg !20606
  br label %bb.at, !dbg !20607

bb.h:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.av, i64 146, !dbg !20608 ; 2 uses
  %.val86 = load i8, ptr %i.bp, align 2, !dbg !20608, !range !4000, !noundef !1995
    #dbg_value(ptr poison, !19070, !DIExpression(), !16885)
    #dbg_value(i8 1, !19076, !DIExpression(), !16889)
    #dbg_value(i8 %.val86, !19080, !DIExpression(), !16889)
  %.sroa.0.0.i91 = icmp ne i8 %.val86, 0, !dbg !20609 ; 2 uses
    #dbg_value(i1 %.sroa.0.0.i91, !18666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !20610
  call void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter8prefixesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, i1 noundef zeroext %.sroa.0.0.i91, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3), !dbg !20611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19084), !dbg !20612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
    #dbg_value(ptr poison, !19085, !DIExpression(), !16920)
    #dbg_value(ptr poison, !19142, !DIExpression(), !16923)
    #dbg_value(ptr poison, !19147, !DIExpression(), !16927)
    #dbg_value(ptr poison, !19147, !DIExpression(), !16929)
    #dbg_value(ptr poison, !19147, !DIExpression(), !16931)
    #dbg_value(ptr %i.at, !19104, !DIExpression(), !16920)
    #dbg_value(ptr %i.at, !19157, !DIExpression(), !16934)
    #dbg_value(ptr %i.at, !19162, !DIExpression(), !16937)
    #dbg_value(ptr %i.at, !19162, !DIExpression(), !16939)
    #dbg_declare(ptr %i.aj, !19107, !DIExpression(), !16940)
    #dbg_declare(ptr %i.aj, !19113, !DIExpression(DW_OP_plus_uconst, 32), !16941)
    #dbg_declare(ptr %i.ak, !19114, !DIExpression(), !16942)
    #dbg_declare(ptr %i.aj, !19115, !DIExpression(DW_OP_plus_uconst, 8), !16943)
    #dbg_declare(ptr %i.ai, !19116, !DIExpression(), !16944)
    #dbg_value(ptr %i.av, !19169, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16947)
  %i.bq = load i8, ptr %i.bp, align 2, !dbg !20613, !range !4000, !noalias !19084, !noundef !1995
    #dbg_value(i8 poison, !19105, !DIExpression(), !16948)
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !20683

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !20655
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, !dbg !20687

.thread576:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !20669, !noalias !19410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !20688
  br label %bb.aq, !dbg !20689

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECs9GYDdpCSJ4S_14regex_automata.exit7.i
  %i.ei = extractvalue { ptr, ptr } %i.dw, 0, !dbg !20674 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !20669, !noalias !19410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !20688
  %.not72 = icmp eq ptr %i.ei, null, !dbg !20690
  br i1 %.not72, label %bb.aq, label %bb.al, !dbg !20689

bb.aq:                                            ; preds = %.thread576, %bb.ap
    #dbg_value(ptr %i.at, !19446, !DIExpression(), !19449)
    #dbg_value(ptr %i.at, !19450, !DIExpression(), !19453)
    #dbg_value(ptr %i.at, !19454, !DIExpression(), !19458)
  %i.ej = load i64, ptr %i.at, align 8, !dbg !20691, !range !4759, !noundef !1995
  %.not73 = icmp eq i64 %i.ej, -1, !dbg !20691
  br i1 %.not73, label %bb.as, label %bb.ar, !dbg !20692

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %i.at, !19459, !DIExpression(), !19473)
    #dbg_value(ptr %i.at, !19470, !DIExpression(), !19474)
    #dbg_value(ptr %i.at, !19475, !DIExpression(), !19479)
    #dbg_value(ptr %i.at, !19490, !DIExpression(), !19494)
    #dbg_value(ptr %i.at, !19495, !DIExpression(), !19501)
  %i.ek = load ptr, ptr %i.bs, align 8, !dbg !20693, !nonnull !1995, !noundef !1995
  %i.el = load i64, ptr %i.bu, align 8, !dbg !20694, !noundef !1995
    #dbg_value(ptr %i.ek, !18967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18971)
    #dbg_value(i64 %i.el, !18967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18971)
    #dbg_value(ptr undef, !18943, !DIExpression(), !18971)
    #dbg_value(ptr %i.ek, !18968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19516)
    #dbg_value(i64 %i.el, !18968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19516)
    #dbg_value(ptr poison, !19517, !DIExpression(DW_OP_deref), !17167)
    #dbg_value(ptr %i.ek, !19520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17167)
    #dbg_value(i64 %i.el, !19520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17167)
  invoke void @_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB3_9Prefilter3newNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.au, i1 noundef zeroext %.sroa.0.0.i91, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ek, i64 noundef range(i64 0, 288230376151711744) %i.el)
          to label %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new0B7_.exit unwind label %bb.w, !dbg !20695

bb.as:                                            ; preds = %bb.aq
    #dbg_value(ptr null, !19459, !DIExpression(), !19473)
    #dbg_value(ptr poison, !18967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18971)
    #dbg_value(i64 poison, !18967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18971)
    #dbg_value(ptr undef, !18943, !DIExpression(), !18971)
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20696
  store i8 2, ptr %i.em, align 8, !dbg !20696
  br label %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new0B7_.exit, !dbg !20697

_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new0B7_.exit: ; preds = %bb.ar, %bb.as
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at), !dbg !20655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !20655
  br label %bb.at, !dbg !20607

bb.at:                                            ; preds = %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new0B7_.exit, %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !18813
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20), !dbg !18813
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24), !dbg !18813
    #dbg_value(ptr poison, !19522, !DIExpression(), !17170)
    #dbg_value(ptr poison, !19527, !DIExpression(), !17174)
    #dbg_value(i64 1, !19532, !DIExpression(), !17177)
    #dbg_value(i8 0, !19534, !DIExpression(), !17177)
    #dbg_value(i64 1, !19536, !DIExpression(), !17180)
    #dbg_value(i8 0, !19538, !DIExpression(), !17180)
    #dbg_value(ptr %i.av, !19533, !DIExpression(), !17181)
    #dbg_value(ptr %i.av, !19537, !DIExpression(), !17180)
  %i.en = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !20698
    #dbg_value(i64 %i.en, !19530, !DIExpression(), !17182)
  %i.eo = icmp slt i64 %i.en, 0, !dbg !20699
  br i1 %i.eo, label %bb.au, label %_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !dbg !20699

bb.au:                                            ; preds = %bb.at
  call void @llvm.trap(), !dbg !20700
  unreachable, !dbg !20700

bb.av:                                            ; preds = %bb.ax, %.body102
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20701
  unreachable, !dbg !20701

.body:                                            ; preds = %bb.dv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i, %bb.ip, %bb.il, %bb.if, %.body.i131, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i, %bb.hd, %bb.ht, %bb.ic, %bb.fx, %bb.eo, %bb.fr, %bb.fu, %bb.ed
  %.pn = phi { ptr, i32 } [ %i.pe, %bb.hd ], [ %i.rn, %bb.ip ], [ %i.rh, %bb.il ], [ %i.qj, %bb.ht ], [ %.pn.i120, %bb.eo ], [ %i.qy, %bb.if ], [ %i.np, %bb.fx ], [ %i.km, %bb.ed ], [ %i.ni, %bb.fr ], [ %.pn3951.i, %bb.fu ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i ], [ %.pn15.i, %bb.ic ], [ %.pn15.i, %.body.i131 ], [ %.pn117.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i ], [ %.pn117.i, %bb.dv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19540), !dbg !20702
    #dbg_value(ptr %i.au, !3998, !DIExpression(), !17186)
  %i.eq = load i8, ptr %i.ev, align 8, !dbg !20703, !range !4000, !alias.scope !19540, !noundef !1995
  %i.er = icmp eq i8 %i.eq, 2, !dbg !20703
  br i1 %i.er, label %common.resume, label %bb.aw, !dbg !20703

bb.aw:                                            ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !19541), !dbg !20703
    #dbg_value(ptr %i.au, !4002, !DIExpression(), !17190)
  call void @llvm.experimental.noalias.scope.decl(metadata !19542), !dbg !20704
    #dbg_value(ptr %i.au, !4007, !DIExpression(), !17194)
  call void @llvm.experimental.noalias.scope.decl(metadata !19543), !dbg !20705
    #dbg_value(ptr %i.au, !4014, !DIExpression(), !17198)
    #dbg_value(ptr %i.au, !4017, !DIExpression(), !17200)
    #dbg_value(i64 1, !4027, !DIExpression(), !17202)
    #dbg_value(i8 1, !4033, !DIExpression(), !17202)
    #dbg_value(i64 1, !4035, !DIExpression(), !17204)
    #dbg_value(i8 1, !4040, !DIExpression(), !17204)
  %i.es = load ptr, ptr %i.au, align 16, !dbg !20706, !alias.scope !19544, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.es, !4032, !DIExpression(), !17206)
    #dbg_value(ptr %i.es, !4039, !DIExpression(), !17204)
  %i.et = atomicrmw add ptr %i.es, i64 -1 release, align 8, !dbg !20707, !noalias !19544
  %i.eu = icmp eq i64 %i.et, 1, !dbg !20708
  br i1 %i.eu, label %bb.ax, label %common.resume, !dbg !20708

bb.ax:                                            ; preds = %bb.aw
    #dbg_value(i8 2, !4049, !DIExpression(), !17208)
  fence acquire, !dbg !20709
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au) #25
          to label %common.resume unwind label %bb.av, !dbg !20710

_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !20711
    #dbg_value(ptr %i.au, !19545, !DIExpression(), !19551)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20712 ; 4 uses
  %i.ew = load i8, ptr %i.ev, align 8, !dbg !20712, !range !4000, !noundef !1995 ; 6 uses
  %.not74 = icmp eq i8 %i.ew, 2, !dbg !20712
  br i1 %.not74, label %bb.ba, label %bb.ay, !dbg !20713

bb.ay:                                            ; preds = %_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    #dbg_value(ptr %i.au, !19548, !DIExpression(), !19552)
  call void @llvm.experimental.noalias.scope.decl(metadata !19553), !dbg !20714
    #dbg_value(ptr %i.au, !19036, !DIExpression(), !17214)
    #dbg_value(i64 1, !19041, !DIExpression(), !17217)
    #dbg_value(i8 0, !19043, !DIExpression(), !17217)
    #dbg_value(i64 1, !19050, !DIExpression(), !17219)
    #dbg_value(i8 0, !19052, !DIExpression(), !17219)
    #dbg_value(ptr %i.au, !19047, !DIExpression(), !17220)
    #dbg_value(ptr %i.au, !19054, !DIExpression(), !17222)
  %i.ex = load ptr, ptr %i.au, align 16, !dbg !20715, !alias.scope !19553, !nonnull !1995, !noundef !1995 ; 2 uses
    #dbg_value(ptr %i.ex, !19042, !DIExpression(), !17224)
    #dbg_value(ptr %i.ex, !19051, !DIExpression(), !17219)
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !dbg !20716, !noalias !19554
    #dbg_value(i64 %i.ey, !19048, !DIExpression(), !17226)
  %i.ez = icmp slt i64 %i.ey, 0, !dbg !20717
  br i1 %i.ez, label %bb.az, label %bb.dy, !dbg !20717

bb.az:                                            ; preds = %bb.ay
  call void @llvm.trap(), !dbg !20718
  unreachable, !dbg !20718

bb.ba:                                            ; preds = %_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.dy
  %.sink659 = phi i8 [ %i.ew, %bb.dy ], [ 2, %_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %i.fa = phi ptr [ %i.ex, %bb.dy ], [ undef, %_RNvXsm_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfoNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 2 uses
  %.sroa.6429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !20719
  store i8 %.sink659, ptr %.sroa.6429.0..sroa_idx, align 8, !dbg !20719
  call void @llvm.experimental.noalias.scope.decl(metadata !19555), !dbg !18813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.av, ptr %i.ad, align 8, !noalias !19556
    #dbg_declare(ptr %i.ad, !18740, !DIExpression(), !17231)
    #dbg_declare(ptr %i.as, !18741, !DIExpression(), !17232)
    #dbg_value(ptr %2, !18742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17233)
    #dbg_value(i64 %3, !18742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17233)
    #dbg_declare(ptr %i.ac, !18745, !DIExpression(), !17234)
    #dbg_declare(ptr %i.ab, !19557, !DIExpression(), !17249)
    #dbg_declare(ptr %i.y, !18748, !DIExpression(), !17250)
    #dbg_declare(ptr %i.x, !19593, !DIExpression(), !17263)
    #dbg_declare(ptr %i.v, !18751, !DIExpression(), !17264)
    #dbg_declare(ptr %i.u, !19620, !DIExpression(), !17277)
    #dbg_declare(ptr %i.s, !18754, !DIExpression(), !17278)
    #dbg_declare(ptr %i.r, !18758, !DIExpression(), !17279)
    #dbg_declare(ptr %i.q, !19557, !DIExpression(), !17281)
    #dbg_declare(ptr %i.n, !18756, !DIExpression(), !17282)
    #dbg_declare(ptr %i.n, !18762, !DIExpression(), !17283)
    #dbg_value(i8 10, !18743, !DIExpression(), !17284)
  %i.fb = getelementptr i8, ptr %i.av, i64 144, !dbg !20720
  %.val124.i = load i8, ptr %i.fb, align 8, !dbg !20720, !range !5698, !noalias !19556, !noundef !1995
  %i.fc = getelementptr i8, ptr %i.av, i64 145, !dbg !20720
  %.val125.i = load i8, ptr %i.fc, align 1, !dbg !20720, !noalias !19556
    #dbg_value(ptr poison, !19647, !DIExpression(), !17287)
  %i.fd = trunc nuw i8 %.val124.i to i1, !dbg !20721
    #dbg_value(i8 poison, !18743, !DIExpression(), !17284)
    #dbg_value(ptr %i.av, !19653, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17291)
    #dbg_value(ptr %i.av, !19659, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17294)
    #dbg_value(ptr %i.av, !19661, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17297)
    #dbg_value(ptr %i.av, !19664, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17300)
    #dbg_value(ptr %i.av, !19669, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17303)
    #dbg_value(i8 10, !19674, !DIExpression(), !17307)
    #dbg_value(i8 1, !19681, !DIExpression(), !17311)
    #dbg_value(i64 poison, !19685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17315)
    #dbg_value(i64 poison, !19685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17315)
    #dbg_value(i8 0, !19692, !DIExpression(), !17319)
    #dbg_value(i8 10, !19657, !DIExpression(), !17320)
    #dbg_value(i8 %.val124.i, !19678, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17307)
    #dbg_value(i8 poison, !19678, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !17307)
  %.sroa.01.0.i.i = select i1 %i.fd, i8 %.val125.i, i8 10, !dbg !20722 ; 2 uses
    #dbg_value(i8 %.sroa.01.0.i.i, !19657, !DIExpression(), !17320)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.av, i64 147, !dbg !20723
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !20723, !range !4000, !alias.scope !19699, !noalias !19556, !noundef !1995 ; 2 uses
    #dbg_value(i8 %i.ff, !19682, !DIExpression(), !17311)
  %.not.i.i = icmp eq i8 %i.ff, 2, !dbg !20724
  %.sroa.02.0.i.i = select i1 %.not.i.i, i8 1, i8 %i.ff, !dbg !20725 ; 2 uses
    #dbg_value(i8 %.sroa.02.0.i.i, !19700, !DIExpression(), !17325)
  %i.fg = icmp samesign ult i8 %.sroa.02.0.i.i, 2, !dbg !20726
  call void @llvm.assume(i1 %i.fg), !dbg !20726
    #dbg_value(i8 %.sroa.02.0.i.i, !18744, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !17326)
    #dbg_value(i8 %.sroa.02.0.i.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !17327)
    #dbg_value(i8 %.sroa.02.0.i.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !17330)
    #dbg_value(i8 %.sroa.02.0.i.i, !19713, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !17333)
    #dbg_value(i8 0, !18744, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !17326)
    #dbg_value(i8 0, !19704, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !17327)
    #dbg_value(i8 0, !19707, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !17330)
    #dbg_value(i8 0, !19713, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !17333)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.av, i64 48, !dbg !20727
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !20727, !range !5002, !alias.scope !19699, !noalias !19556, !noundef !1995 ; 2 uses
    #dbg_value(i64 %i.fi, !19689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17315)
    #dbg_value(i64 poison, !19689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17315)
  %.not22.i.i = icmp eq i64 %i.fi, 2, !dbg !20728 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.av, i64 56, !dbg !20729
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !20729, !alias.scope !19699, !noalias !19556
  %.sroa.5.0.i.i = select i1 %.not22.i.i, i64 10485760, i64 %i.fk, !dbg !20729 ; 2 uses
  %.sroa.03.0.i.i = select i1 %.not22.i.i, i64 1, i64 %i.fi, !dbg !20729 ; 4 uses
    #dbg_value(i64 %.sroa.03.0.i.i, !19711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17334)
    #dbg_value(i64 %.sroa.5.0.i.i, !19711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17334)
  %i.fl = icmp samesign ult i64 %.sroa.03.0.i.i, 2, !dbg !20730
  call void @llvm.assume(i1 %i.fl), !dbg !20730
    #dbg_value(i64 %.sroa.03.0.i.i, !18744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17326)
    #dbg_value(i64 %.sroa.03.0.i.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17327)
    #dbg_value(i64 %.sroa.03.0.i.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17330)
    #dbg_value(i64 %.sroa.03.0.i.i, !19713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17333)
    #dbg_value(i64 %.sroa.5.0.i.i, !18744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17326)
    #dbg_value(i64 %.sroa.5.0.i.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17327)
    #dbg_value(i64 %.sroa.5.0.i.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17330)
    #dbg_value(i64 %.sroa.5.0.i.i, !19713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17333)
    #dbg_value(i8 0, !18744, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !17326)
    #dbg_value(i8 0, !19704, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !17327)
    #dbg_value(i8 0, !19707, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !17330)
    #dbg_value(i8 0, !19713, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !17333)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.av, i64 154, !dbg !20731
  %i.fn = load i8, ptr %i.fm, align 2, !dbg !20731, !range !5098, !alias.scope !19699, !noalias !19556, !noundef !1995 ; 2 uses
    #dbg_value(i8 %i.fn, !19696, !DIExpression(), !17319)
  %.not23.i.i = icmp eq i8 %i.fn, -1, !dbg !20732
  %.sroa.04.0.i.i = select i1 %.not23.i.i, i8 0, i8 %i.fn, !dbg !20733 ; 2 uses
    #dbg_value(i8 %.sroa.04.0.i.i, !19717, !DIExpression(), !17335)
  %i.fo = icmp samesign ult i8 %.sroa.04.0.i.i, 3, !dbg !20734
  call void @llvm.assume(i1 %i.fo), !dbg !20734
    #dbg_value(i8 %.sroa.04.0.i.i, !18744, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !17326)
    #dbg_value(i8 %.sroa.04.0.i.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !17327)
    #dbg_value(i8 %.sroa.04.0.i.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !17330)
    #dbg_value(i8 %.sroa.04.0.i.i, !19713, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !17333)
    #dbg_value(i8 1, !18744, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !17326)
    #dbg_value(i8 1, !19704, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !17327)
    #dbg_value(i8 1, !19707, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !17330)
    #dbg_value(i8 1, !19713, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !17333)
    #dbg_value(i8 %.sroa.01.0.i.i, !18744, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !17326)
    #dbg_value(i8 %.sroa.01.0.i.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !17327)
    #dbg_value(i8 %.sroa.01.0.i.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !17330)
    #dbg_value(i8 %.sroa.01.0.i.i, !19713, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !17333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !20735, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !20736, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !20736, !noalias !19556
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.aa)
          to label %bb.bf unwind label %bb.bd, !dbg !20736, !noalias !19556

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i: ; preds = %bb.bj, %.body141.i, %bb.be, %bb.bd
  %.pn115.i = phi { ptr, i32 } [ %i.fv, %bb.bd ], [ %i.fw, %bb.be ], [ %.pn113.i, %bb.bj ], [ %.pn113.i, %.body141.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19724), !dbg !20737
    #dbg_value(ptr %i.as, !3998, !DIExpression(), !17339)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !20738
  %i.fq = load i8, ptr %i.fp, align 8, !dbg !20738, !range !4000, !alias.scope !19725, !noundef !1995
  %i.fr = icmp eq i8 %i.fq, 2, !dbg !20738
  br i1 %i.fr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i, label %bb.bb, !dbg !20738

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19726), !dbg !20738
    #dbg_value(ptr %i.as, !4002, !DIExpression(), !17343)
  call void @llvm.experimental.noalias.scope.decl(metadata !19727), !dbg !20739
    #dbg_value(ptr %i.as, !4007, !DIExpression(), !17347)
  call void @llvm.experimental.noalias.scope.decl(metadata !19728), !dbg !20740
    #dbg_value(ptr %i.as, !4014, !DIExpression(), !17351)
    #dbg_value(ptr %i.as, !4017, !DIExpression(), !17353)
    #dbg_value(i64 1, !4027, !DIExpression(), !17355)
    #dbg_value(i8 1, !4033, !DIExpression(), !17355)
    #dbg_value(i64 1, !4035, !DIExpression(), !17357)
    #dbg_value(i8 1, !4040, !DIExpression(), !17357)
  %i.fs = load ptr, ptr %i.as, align 16, !dbg !20741, !alias.scope !19729, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.fs, !4032, !DIExpression(), !17359)
    #dbg_value(ptr %i.fs, !4039, !DIExpression(), !17357)
  %i.ft = atomicrmw add ptr %i.fs, i64 -1 release, align 8, !dbg !20742, !noalias !19730
  %i.fu = icmp eq i64 %i.ft, 1, !dbg !20743
  br i1 %i.fu, label %bb.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i, !dbg !20743

bb.bc:                                            ; preds = %bb.bb
    #dbg_value(i8 2, !4049, !DIExpression(), !17361)
  fence acquire, !dbg !20744
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i unwind label %bb.cg, !dbg !20745, !noalias !19731

bb.bd:                                            ; preds = %bb.dt, %bb.dq, %bb.ba
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i

bb.be:                                            ; preds = %bb.bg, %bb.bf
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.aa) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i unwind label %bb.cg, !dbg !20746, !noalias !19732

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !20747, !noalias !19556
    #dbg_value(ptr undef, !18784, !DIExpression(), !16760)
    #dbg_value(ptr undef, !18772, !DIExpression(), !16759)
  %i.fx = icmp eq i64 %.sroa.03.0.i.i, 0, !dbg !20748
  %.sroa.5.0.i129.i = select i1 %i.fx, i64 undef, i64 %.sroa.5.0.i.i, !dbg !20748
  %i.fy = getelementptr inbounds nuw i8, ptr %i.z, i64 18, !dbg !20749
  %4 = zext nneg i8 %.sroa.02.0.i.i to i16, !dbg !20749 ; 2 uses
  store i16 %4, ptr %i.fy, align 2, !dbg !20749, !alias.scope !19733, !noalias !19556
  store i64 %.sroa.03.0.i.i, ptr %i.z, align 8, !dbg !20749, !alias.scope !19733, !noalias !19556
  %i.fz = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !20749
  store i64 %.sroa.5.0.i129.i, ptr %i.fz, align 8, !dbg !20749, !alias.scope !19733, !noalias !19556
  %i.ga = getelementptr inbounds nuw i8, ptr %i.z, i64 20, !dbg !20749
  %5 = zext nneg i8 %.sroa.04.0.i.i to i16, !dbg !20749
  %6 = shl nuw nsw i16 %5, 8, !dbg !20749
  store i16 %6, ptr %i.ga, align 4, !dbg !20749, !alias.scope !19733, !noalias !19556
  %i.gb = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !20749
  store i8 1, ptr %i.gb, align 8, !dbg !20749, !alias.scope !19733, !noalias !19556
  %i.gc = getelementptr inbounds nuw i8, ptr %i.z, i64 17, !dbg !20749
  store i8 %.sroa.01.0.i.i, ptr %i.gc, align 1, !dbg !20749, !alias.scope !19733, !noalias !19556
  %i.gd = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.bg unwind label %bb.be, !dbg !20750, !noalias !19732

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !20751, !noalias !19556
  invoke void @_RINvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB6_8Compiler19build_many_from_hirRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBc_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ab, ptr noundef nonnull align 8 %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3)
          to label %bb.bh unwind label %bb.be, !dbg !20752, !noalias !19732

bb.bh:                                            ; preds = %bb.bg
  %i.ge = load i64, ptr %i.ab, align 8, !dbg !20753, !range !19734, !noalias !19556, !noundef !1995 ; 2 uses
  %.not.i109 = icmp eq i64 %i.ge, -2, !dbg !20753
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !20754 ; 2 uses
  br i1 %.not.i109, label %bb.bi, label %bb.dt, !dbg !20755

bb.bi:                                            ; preds = %bb.bh
  %i.gg = load ptr, ptr %i.gf, align 8, !dbg !20756, !noalias !19556, !nonnull !1995, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !20757, !noalias !19556
    #dbg_value(ptr %i.gg, !18747, !DIExpression(), !17364)
  store ptr %i.gg, ptr %i.ac, align 8, !dbg !20758, !noalias !19556
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.aa)
          to label %bb.bl unwind label %bb.bk, !dbg !20746, !noalias !19732

.body141.i:                                       ; preds = %bb.dn, %bb.dm, %.body.i, %bb.bk
  %.pn113.i = phi { ptr, i32 } [ %.pn111.i, %.body.i ], [ %i.gk, %bb.bk ], [ %i.iz, %bb.dn ], [ %i.iz, %bb.dm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19735), !dbg !20759
    #dbg_value(ptr %i.ac, !4061, !DIExpression(), !17368)
  call void @llvm.experimental.noalias.scope.decl(metadata !19736), !dbg !20760
    #dbg_value(ptr %i.ac, !4066, !DIExpression(), !17372)
  call void @llvm.experimental.noalias.scope.decl(metadata !19737), !dbg !20761
    #dbg_value(ptr %i.ac, !4072, !DIExpression(), !17376)
    #dbg_value(ptr %i.ac, !5046, !DIExpression(), !17378)
    #dbg_value(i64 1, !4074, !DIExpression(), !17380)
    #dbg_value(i8 1, !4076, !DIExpression(), !17380)
    #dbg_value(i64 1, !4078, !DIExpression(), !17382)
    #dbg_value(i8 1, !4080, !DIExpression(), !17382)
  %i.gh = load ptr, ptr %i.ac, align 8, !dbg !20762, !alias.scope !19738, !noalias !19556, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.gh, !4075, !DIExpression(), !17384)
    #dbg_value(ptr %i.gh, !4079, !DIExpression(), !17382)
  %i.gi = atomicrmw add ptr %i.gh, i64 -1 release, align 8, !dbg !20763, !noalias !19739
  %i.gj = icmp eq i64 %i.gi, 1, !dbg !20764
  br i1 %i.gj, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i, !dbg !20764

bb.bj:                                            ; preds = %.body141.i
    #dbg_value(i8 2, !4049, !DIExpression(), !17386)
  fence acquire, !dbg !20765
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i unwind label %bb.cg, !dbg !20766, !noalias !19732

bb.bk:                                            ; preds = %bb.do, %bb.bo, %bb.bi
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body141.i

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !20746, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !20767, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.i.sroa.7), !dbg !20768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !20768, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !20769, !noalias !19556
    #dbg_value(ptr %i.as, !19740, !DIExpression(), !17393)
  %.not100.i = icmp eq i8 %i.ew, 2, !dbg !20770   ; 3 uses
  br i1 %.not100.i, label %bb.bo, label %bb.bm, !dbg !20771

bb.bm:                                            ; preds = %bb.bl
    #dbg_value(ptr %i.as, !19741, !DIExpression(), !17394)
  call void @llvm.experimental.noalias.scope.decl(metadata !19746), !dbg !20772
    #dbg_value(ptr %i.as, !19036, !DIExpression(), !17398)
    #dbg_value(i64 1, !19041, !DIExpression(), !17401)
    #dbg_value(i8 0, !19043, !DIExpression(), !17401)
    #dbg_value(i64 1, !19050, !DIExpression(), !17403)
    #dbg_value(i8 0, !19052, !DIExpression(), !17403)
    #dbg_value(ptr %i.as, !19047, !DIExpression(), !17404)
    #dbg_value(ptr %i.as, !19054, !DIExpression(), !17406)
    #dbg_value(ptr %i.fa, !19042, !DIExpression(), !17407)
    #dbg_value(ptr %i.fa, !19051, !DIExpression(), !17403)
  %i.gl = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !dbg !20773, !noalias !19747
    #dbg_value(i64 %i.gl, !19048, !DIExpression(), !17409)
  %i.gm = icmp slt i64 %i.gl, 0, !dbg !20774
  br i1 %i.gm, label %bb.bn, label %bb.bp, !dbg !20774

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.trap(), !dbg !20775
  unreachable, !dbg !20775

bb.bo:                                            ; preds = %bb.bp, %bb.bl
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !20776
  store i8 %i.ew, ptr %.sroa.6167.0..sroa_idx.i, align 8, !dbg !20776, !noalias !19556
  invoke void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB2_6PikeVM3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.bq unwind label %bb.bk, !dbg !20768, !noalias !19732

bb.bp:                                            ; preds = %bb.bm
  %i.gn = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !20777
  %i.go = load ptr, ptr %i.gn, align 8, !dbg !20778, !alias.scope !19748, !nonnull !1995, !align !5920, !noundef !1995
  %i.gp = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !20779
  %i.gq = load i64, ptr %i.gp, align 16, !dbg !20779, !alias.scope !19748, !noundef !1995
  store ptr %i.fa, ptr %i.w, align 8, !dbg !20780, !noalias !19556
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !20780
  store ptr %i.go, ptr %.sroa.4165.0..sroa_idx.i, align 8, !dbg !20780, !noalias !19556
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !20780
  store i64 %i.gq, ptr %.sroa.5166.0..sroa_idx.i, align 8, !dbg !20780, !noalias !19556
  br label %bb.bo, !dbg !20781

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !20782, !noalias !19556
  %i.gr = load i64, ptr %i.x, align 8, !dbg !20783, !range !19749, !noalias !19556, !noundef !1995 ; 2 uses
  %.not101.i = icmp eq i64 %i.gr, -3, !dbg !20783
  %i.gs = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !20784
  %.sroa.615.i.sroa.0.0.copyload557 = load ptr, ptr %i.gs, align 8, !dbg !20784, !noalias !19556 ; 2 uses
  %.sroa.615.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !20784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.sroa.7.0..sroa_idx, i64 40, i1 false), !dbg !20784, !noalias !19556
  br i1 %.not101.i, label %bb.bs, label %bb.br, !dbg !20785

bb.br:                                            ; preds = %bb.bq
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56, !dbg !20786
  %.sroa.20.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.20, i64 40, !dbg !20786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.20.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.566.0..sroa_idx.i, i64 80, i1 false), !dbg !20786, !noalias !19750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !20787, !noalias !19556
    #dbg_value(i64 %i.gr, !18716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17411)
    #dbg_value(ptr %.sroa.615.i.sroa.0.0.copyload557, !18810, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19751)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.sroa.7, i64 40, i1 false), !dbg !20787, !noalias !19750
    #dbg_value(i64 %i.gr, !18810, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19751)
    #dbg_value(i128 -1, !18810, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19751)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.i.sroa.7), !dbg !20788
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i, !dbg !20789

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !20787, !noalias !19556
  store ptr %.sroa.615.i.sroa.0.0.copyload557, ptr %i.y, align 8, !dbg !20768, !noalias !19556
  %.sroa.615.i.sroa.7.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !20768 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.sroa.7.0..sroa_idx559, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.i.sroa.7, i64 40, i1 false), !dbg !20768, !noalias !19556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.i.sroa.7), !dbg !20788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !20790, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624.i.sroa.7), !dbg !20791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !20791, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !20792, !noalias !19556
    #dbg_value(ptr %i.as, !19740, !DIExpression(), !17413)
  br i1 %.not100.i, label %bb.bv, label %bb.bt, !dbg !20793

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.as, !19742, !DIExpression(), !17414)
  call void @llvm.experimental.noalias.scope.decl(metadata !19754), !dbg !20794
    #dbg_value(ptr %i.as, !19036, !DIExpression(), !17418)
    #dbg_value(i64 1, !19041, !DIExpression(), !17421)
    #dbg_value(i8 0, !19043, !DIExpression(), !17421)
    #dbg_value(i64 1, !19050, !DIExpression(), !17423)
    #dbg_value(i8 0, !19052, !DIExpression(), !17423)
    #dbg_value(ptr %i.as, !19047, !DIExpression(), !17424)
    #dbg_value(ptr %i.as, !19054, !DIExpression(), !17426)
  %i.gt = load ptr, ptr %i.as, align 16, !dbg !20795, !alias.scope !19755, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.gt, !19042, !DIExpression(), !17428)
    #dbg_value(ptr %i.gt, !19051, !DIExpression(), !17423)
  %i.gu = atomicrmw add ptr %i.gt, i64 1 monotonic, align 8, !dbg !20796, !noalias !19756
    #dbg_value(i64 %i.gu, !19048, !DIExpression(), !17430)
  %i.gv = icmp slt i64 %i.gu, 0, !dbg !20797
  br i1 %i.gv, label %bb.bu, label %bb.bx, !dbg !20797

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.trap(), !dbg !20798
  unreachable, !dbg !20798

bb.bv:                                            ; preds = %bb.bx, %bb.bs
  %.sroa.6171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !20799
  store i8 %i.ew, ptr %.sroa.6171.0..sroa_idx.i, align 8, !dbg !20799, !noalias !19556
  invoke void @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.by unwind label %bb.bw, !dbg !20791, !noalias !19732

.body.i:                                          ; preds = %bb.dg, %bb.df, %bb.cb, %bb.bw
  %.pn111.i = phi { ptr, i32 } [ %.pn109.i, %bb.cb ], [ %i.gw, %bb.bw ], [ %i.ii, %bb.dg ], [ %i.ii, %bb.df ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y) #24
          to label %.body141.i unwind label %bb.cg, !dbg !20800, !noalias !19732

bb.bw:                                            ; preds = %bb.dh, %bb.bv
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bx:                                            ; preds = %bb.bt
  %i.gx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !20801
  %i.gy = load i64, ptr %i.gx, align 16, !dbg !20801, !alias.scope !19755, !noundef !1995
  %i.gz = load <2 x ptr>, ptr %i.as, align 16, !dbg !20802, !alias.scope !19755
  store <2 x ptr> %i.gz, ptr %i.t, align 16, !dbg !20803, !noalias !19556
  %.sroa.5170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !20803
  store i64 %i.gy, ptr %.sroa.5170.0..sroa_idx.i, align 16, !dbg !20803, !noalias !19556
  br label %bb.bv, !dbg !20804

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !20805, !noalias !19556
  %i.ha = load i64, ptr %i.u, align 8, !dbg !20806, !range !19749, !noalias !19556, !noundef !1995 ; 2 uses
  %.not103.i = icmp eq i64 %i.ha, -3, !dbg !20806
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !20807
  %.sroa.624.i.sroa.0.0.copyload560 = load ptr, ptr %i.hb, align 8, !dbg !20807, !noalias !19556 ; 2 uses
  %.sroa.624.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !20807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.i.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !20807, !noalias !19556
  br i1 %.not103.i, label %bb.ca, label %bb.bz, !dbg !20808

bb.bz:                                            ; preds = %bb.by
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64, !dbg !20809
  %.sroa.20.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.20, i64 48, !dbg !20809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.20.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.575.0..sroa_idx.i, i64 72, i1 false), !dbg !20809, !noalias !19750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !20810, !noalias !19556
    #dbg_value(i64 %i.ha, !18716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17431)
    #dbg_value(ptr %.sroa.624.i.sroa.0.0.copyload560, !18810, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19751)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.i.sroa.7, i64 48, i1 false), !dbg !20810, !noalias !19750
    #dbg_value(i64 %i.ha, !18810, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19751)
    #dbg_value(i128 -1, !18810, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19751)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.sroa.7), !dbg !20811
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers18BoundedBacktrackerEBH_.exit.i, !dbg !20812

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !20810, !noalias !19556
  store ptr %.sroa.624.i.sroa.0.0.copyload560, ptr %i.v, align 8, !dbg !20791, !noalias !19556
  %.sroa.624.i.sroa.7.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !20791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.i.sroa.7.0..sroa_idx562, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.i.sroa.7, i64 48, i1 false), !dbg !20791, !noalias !19556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.sroa.7), !dbg !20811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !20813, !noalias !19556
  invoke void @_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3new(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.ce unwind label %bb.cc, !dbg !20814, !noalias !19732

bb.cb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i, %bb.cc
  %.pn109.i = phi { ptr, i32 } [ %i.hc, %bb.cc ], [ %.pn107.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers18BoundedBacktrackerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.v) #24
          to label %.body.i unwind label %bb.cg, !dbg !20815, !noalias !19732

bb.cc:                                            ; preds = %bb.cz, %bb.ca
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i: ; preds = %bb.co, %bb.cn, %bb.ci, %bb.cd
  %.pn107.i = phi { ptr, i32 } [ %i.hd, %bb.cd ], [ %i.hg, %bb.ci ], [ %i.hl, %bb.cn ], [ %i.hl, %bb.co ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers7OnePassEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.s) #24
          to label %bb.cb unwind label %bb.cg, !dbg !20816, !noalias !19732

bb.cd:                                            ; preds = %bb.cy, %bb.ch
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i

bb.ce:                                            ; preds = %bb.ca
  %.val121.i = load ptr, ptr %i.ad, align 8, !dbg !20817, !noalias !19556, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.he = getelementptr i8, ptr %.val121.i, i64 149, !dbg !20818
  %.val127.i = load i8, ptr %i.he, align 1, !dbg !20818, !range !4000, !noalias !19732, !noundef !1995
    #dbg_value(ptr poison, !19758, !DIExpression(), !17434)
    #dbg_value(i8 1, !19761, !DIExpression(), !17438)
    #dbg_value(i8 %.val127.i, !19762, !DIExpression(), !17438)
  %.sroa.0.0.i132.not.i = icmp eq i8 %.val127.i, 0, !dbg !20819
  br i1 %.sroa.0.0.i132.not.i, label %bb.cf, label %bb.ch, !dbg !20820

bb.cf:                                            ; preds = %bb.ce
    #dbg_value(i8 0, !18757, !DIExpression(), !17439)
    #dbg_value(ptr null, !18755, !DIExpression(), !17439)
  store i128 2, ptr %i.n, align 16, !dbg !20821, !noalias !19556
  br label %bb.dz, !dbg !20822

bb.cg:                                            ; preds = %bb.dv, %bb.co, %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i, %bb.cb, %.body.i, %bb.bj, %bb.be, %bb.bc
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20823, !noalias !19731
  unreachable, !dbg !20823

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !20824, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !20825, !noalias !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !20825, !noalias !19556
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.p)
          to label %bb.cj unwind label %bb.cd, !dbg !20825, !noalias !19732

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.p) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i unwind label %bb.cg, !dbg !20826, !noalias !19732

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20827, !noalias !19556
    #dbg_value(i64 %.sroa.03.0.i.i, !19765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17442)
    #dbg_value(i64 %.sroa.5.0.i.i, !19765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17442)
    #dbg_value(i8 1, !19765, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !17442)
    #dbg_value(i8 %.sroa.01.0.i.i, !19765, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !17442)
    #dbg_value(i8 %.sroa.02.0.i.i, !19765, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !17442)
    #dbg_value(i32 512, !19765, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !17442)
    #dbg_value(i1 true, !19767, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17443)
    #dbg_value(i8 1, !19765, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !17442)
  store i64 %.sroa.03.0.i.i, ptr %i.o, align 8, !dbg !20828, !alias.scope !19769, !noalias !19556
  %.sroa.0152.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20828
  store i64 %.sroa.5.0.i.i, ptr %.sroa.0152.sroa.4.0..sroa_idx.i, align 8, !dbg !20828, !alias.scope !19769, !noalias !19556
  %.sroa.0152.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !20828
  store i8 1, ptr %.sroa.0152.sroa.5.0..sroa_idx.i, align 8, !dbg !20828, !alias.scope !19769, !noalias !19556
  %.sroa.0152.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 17, !dbg !20828
  store i8 %.sroa.01.0.i.i, ptr %.sroa.0152.sroa.6.0..sroa_idx.i, align 1, !dbg !20828, !alias.scope !19769, !noalias !19556
  %.sroa.0152.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 18, !dbg !20828
  %7 = or disjoint i16 %4, 256, !dbg !20828
  store i16 %7, ptr %.sroa.0152.sroa.7.0..sroa_idx.i, align 2, !dbg !20828, !alias.scope !19769, !noalias !19556
  %.sroa.5155.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20, !dbg !20828
  store i32 512, ptr %.sroa.5155.0..sroa_idx156.i, align 4, !dbg !20828, !alias.scope !19769, !noalias !19556
  %i.hh = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.ck unwind label %bb.ci, !dbg !20829, !noalias !19732

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20830, !noalias !19556
  invoke void @_RINvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB6_8Compiler19build_many_from_hirRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBc_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.q, ptr noundef nonnull align 8 %i.hh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3)
          to label %bb.cl unwind label %bb.ci, !dbg !20831, !noalias !19732

bb.cl:                                            ; preds = %bb.ck
  %i.hi = load i64, ptr %i.q, align 8, !dbg !20832, !range !19734, !noalias !19556, !noundef !1995 ; 2 uses
  %.not105.i = icmp eq i64 %i.hi, -2, !dbg !20832
  br i1 %.not105.i, label %bb.cm, label %bb.cy, !dbg !20833

bb.cm:                                            ; preds = %bb.cl
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !20834
  %i.hk = load ptr, ptr %i.hj, align 8, !dbg !20834, !noalias !19556, !nonnull !1995, !noundef !1995 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20835, !noalias !19556
    #dbg_value(ptr %i.hk, !18760, !DIExpression(), !17447)
  store ptr %i.hk, ptr %i.r, align 8, !dbg !20836, !noalias !19556
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.p)
          to label %bb.cp unwind label %bb.cn, !dbg !20826, !noalias !19732

bb.cn:                                            ; preds = %bb.cv, %bb.cm
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19770), !dbg !20837
    #dbg_value(ptr %i.r, !4061, !DIExpression(), !17451)
  call void @llvm.experimental.noalias.scope.decl(metadata !19771), !dbg !20838
    #dbg_value(ptr %i.r, !4066, !DIExpression(), !17455)
  call void @llvm.experimental.noalias.scope.decl(metadata !19772), !dbg !20839
    #dbg_value(ptr %i.r, !4072, !DIExpression(), !17459)
    #dbg_value(ptr %i.r, !5046, !DIExpression(), !17461)
    #dbg_value(i64 1, !4074, !DIExpression(), !17463)
    #dbg_value(i8 1, !4076, !DIExpression(), !17463)
    #dbg_value(i64 1, !4078, !DIExpression(), !17465)
    #dbg_value(i8 1, !4080, !DIExpression(), !17465)
  %i.hm = load ptr, ptr %i.r, align 8, !dbg !20840, !alias.scope !19773, !noalias !19556, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.hm, !4075, !DIExpression(), !17467)
    #dbg_value(ptr %i.hm, !4079, !DIExpression(), !17465)
  %i.hn = atomicrmw add ptr %i.hm, i64 -1 release, align 8, !dbg !20841, !noalias !19774
  %i.ho = icmp eq i64 %i.hn, 1, !dbg !20842
  br i1 %i.ho, label %bb.co, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i, !dbg !20842

bb.co:                                            ; preds = %bb.cn
    #dbg_value(i8 2, !4049, !DIExpression(), !17469)
  fence acquire, !dbg !20843
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit136.i unwind label %bb.cg, !dbg !20844, !noalias !19732

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20826, !noalias !19556
  %.val119.i = load ptr, ptr %i.ad, align 8, !dbg !20845, !noalias !19556, !nonnull !1995, !noundef !1995 ; 2 uses
    #dbg_value(i8 0, !18761, !DIExpression(), !17470)
  %i.hp = getelementptr i8, ptr %.val119.i, i64 149, !dbg !20846
  %.val126.i = load i8, ptr %i.hp, align 1, !dbg !20846, !range !4000, !noalias !19732, !noundef !1995
    #dbg_value(ptr poison, !19758, !DIExpression(), !17472)
    #dbg_value(i8 1, !19761, !DIExpression(), !17474)
    #dbg_value(i8 %.val126.i, !19762, !DIExpression(), !17474)
  %.sroa.0.0.i137.not.i = icmp eq i8 %.val126.i, 0, !dbg !20847
  br i1 %.sroa.0.0.i137.not.i, label %bb.cq, label %bb.cs, !dbg !20848

bb.cq:                                            ; preds = %bb.cp
  store i128 2, ptr %i.n, align 16, !dbg !20849, !alias.scope !19775, !noalias !19556
  br label %bb.cr, !dbg !20850

bb.cr:                                            ; preds = %bb.cx, %bb.cq
  %.sroa.050.i.sroa.0.0.copyload.pre = phi i128 [ 2, %bb.cq ], [ %.sroa.050.i.sroa.0.0.copyload.pre.pre, %bb.cx ], !dbg !20851
  %.pre193.i = phi ptr [ %.val119.i, %bb.cq ], [ %.pre193.pre.i, %bb.cx ], !dbg !20852
  %i.hq = phi ptr [ %i.hk, %bb.cq ], [ %.pre.i, %bb.cx ], !dbg !20853
    #dbg_value(ptr %i.hq, !18755, !DIExpression(), !17439)
    #dbg_value(i8 0, !18757, !DIExpression(), !17439)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !20837, !noalias !19556
  br label %bb.dz, !dbg !20822

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !20854, !noalias !19556
    #dbg_value(ptr %i.as, !19740, !DIExpression(), !17480)
  br i1 %.not100.i, label %bb.cv, label %bb.ct, !dbg !20855

bb.ct:                                            ; preds = %bb.cs
    #dbg_value(ptr %i.as, !19744, !DIExpression(), !17481)
  call void @llvm.experimental.noalias.scope.decl(metadata !19779), !dbg !20856
    #dbg_value(ptr %i.as, !19036, !DIExpression(), !17485)
    #dbg_value(i64 1, !19041, !DIExpression(), !17488)
    #dbg_value(i8 0, !19043, !DIExpression(), !17488)
    #dbg_value(i64 1, !19050, !DIExpression(), !17490)
    #dbg_value(i8 0, !19052, !DIExpression(), !17490)
    #dbg_value(ptr %i.as, !19047, !DIExpression(), !17491)
    #dbg_value(ptr %i.as, !19054, !DIExpression(), !17493)
  %i.hr = load ptr, ptr %i.as, align 16, !dbg !20857, !alias.scope !19780, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.hr, !19042, !DIExpression(), !17495)
    #dbg_value(ptr %i.hr, !19051, !DIExpression(), !17490)
  %i.hs = atomicrmw add ptr %i.hr, i64 1 monotonic, align 8, !dbg !20858, !noalias !19781
    #dbg_value(i64 %i.hs, !19048, !DIExpression(), !17497)
  %i.ht = icmp slt i64 %i.hs, 0, !dbg !20859
  br i1 %i.ht, label %bb.cu, label %bb.cw, !dbg !20859

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.trap(), !dbg !20860
  unreachable, !dbg !20860

bb.cv:                                            ; preds = %bb.cw, %bb.cs
  %.sroa.6181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !20861
  store i8 %i.ew, ptr %.sroa.6181.0..sroa_idx.i, align 8, !dbg !20861, !noalias !19556
  invoke void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_6Hybrid3new(ptr noalias nofree noundef nonnull sret([1440 x i8]) align 16 captures(none) dereferenceable(1440) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.cx unwind label %bb.cn, !dbg !20862, !noalias !19732

bb.cw:                                            ; preds = %bb.ct
  %i.hu = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !20863
  %i.hv = load i64, ptr %i.hu, align 16, !dbg !20863, !alias.scope !19780, !noundef !1995
  %i.hw = load <2 x ptr>, ptr %i.as, align 16, !dbg !20864, !alias.scope !19780
  store <2 x ptr> %i.hw, ptr %i.m, align 16, !dbg !20865, !noalias !19556
  %.sroa.5180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !20865
  store i64 %i.hv, ptr %.sroa.5180.0..sroa_idx.i, align 16, !dbg !20865, !noalias !19556
  br label %bb.cv, !dbg !20866

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !20867, !noalias !19556
  %.pre.i = load ptr, ptr %i.r, align 8, !dbg !20853, !noalias !19556
  %.pre193.pre.i = load ptr, ptr %i.ad, align 8, !dbg !20852, !noalias !19556
  %.sroa.050.i.sroa.0.0.copyload.pre.pre = load i128, ptr %i.n, align 16, !dbg !20851, !noalias !19556
  br label %bb.cr, !dbg !20868

bb.cy:                                            ; preds = %bb.cl
  %i.hx = inttoptr i64 %i.hi to ptr, !dbg !20833  ; 3 uses
  %.sroa.4177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !20869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4177.0..sroa_idx.i, i64 120, i1 false), !dbg !20869, !noalias !19750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20835, !noalias !19556
    #dbg_value(i64 -2, !18716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17498)
    #dbg_value(ptr %i.hx, !18716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17498)
    #dbg_value(i64 -2, !18810, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19751)
    #dbg_value(ptr %i.hx, !18810, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19751)
    #dbg_value(i128 -1, !18810, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19751)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.p)
          to label %bb.cz unwind label %bb.cd, !dbg !20826, !noalias !19732

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20826, !noalias !19556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !20837, !noalias !19556
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers7OnePassEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.s)
          to label %bb.da unwind label %bb.cc, !dbg !20816, !noalias !19732

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !20816, !noalias !19556
  call void @llvm.experimental.noalias.scope.decl(metadata !19782), !dbg !20815
    #dbg_value(ptr %i.v, !5137, !DIExpression(), !17502)
  call void @llvm.experimental.noalias.scope.decl(metadata !19783), !dbg !20870
    #dbg_value(ptr %i.v, !5144, !DIExpression(), !17506)
  %i.hy = load i64, ptr %i.v, align 8, !dbg !20871, !range !5002, !alias.scope !19784, !noalias !19556, !noundef !1995
  %i.hz = icmp eq i64 %i.hy, 2, !dbg !20871
  br i1 %i.hz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers18BoundedBacktrackerEBH_.exit.i, label %bb.db, !dbg !20871

bb.db:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !19785), !dbg !20871
    #dbg_value(ptr %i.v, !5151, !DIExpression(), !17510)
  call void @llvm.experimental.noalias.scope.decl(metadata !19786), !dbg !20872
    #dbg_value(ptr %i.v, !5156, !DIExpression(), !17514)
  call void @llvm.experimental.noalias.scope.decl(metadata !19787), !dbg !20873
    #dbg_value(ptr %i.v, !5163, !DIExpression(), !17518)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !20874 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19788), !dbg !20874
    #dbg_value(ptr %i.ia, !5092, !DIExpression(), !17522)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.v, i64 40, !dbg !20875
  %i.ic = load i8, ptr %i.ib, align 8, !dbg !20875, !range !5098, !alias.scope !19789, !noalias !19556, !noundef !1995 ; 2 uses
  %i.id = icmp eq i8 %i.ic, -1, !dbg !20875
  br i1 %i.id, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack6ConfigEBJ_.exit.i.i.i.i.i, label %bb.dc, !dbg !20875

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !19790), !dbg !20875
    #dbg_value(ptr %i.ia, !3998, !DIExpression(), !17526)
  %i.ie = icmp eq i8 %i.ic, 2, !dbg !20876
  br i1 %i.ie, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack6ConfigEBJ_.exit.i.i.i.i.i, label %bb.dd, !dbg !20876

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !19791), !dbg !20876
    #dbg_value(ptr %i.ia, !4002, !DIExpression(), !17530)
  call void @llvm.experimental.noalias.scope.decl(metadata !19792), !dbg !20877
    #dbg_value(ptr %i.ia, !4007, !DIExpression(), !17534)
  call void @llvm.experimental.noalias.scope.decl(metadata !19793), !dbg !20878
    #dbg_value(ptr %i.ia, !4014, !DIExpression(), !17538)
    #dbg_value(ptr %i.ia, !4017, !DIExpression(), !17540)
    #dbg_value(i64 1, !4027, !DIExpression(), !17542)
    #dbg_value(i8 1, !4033, !DIExpression(), !17542)
    #dbg_value(i64 1, !4035, !DIExpression(), !17544)
    #dbg_value(i8 1, !4040, !DIExpression(), !17544)
  %i.if = load ptr, ptr %i.ia, align 8, !dbg !20879, !alias.scope !19794, !noalias !19556, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.if, !4032, !DIExpression(), !17546)
    #dbg_value(ptr %i.if, !4039, !DIExpression(), !17544)
  %i.ig = atomicrmw add ptr %i.if, i64 -1 release, align 8, !dbg !20880, !noalias !19795
  %i.ih = icmp eq i64 %i.ig, 1, !dbg !20881
  br i1 %i.ih, label %bb.de, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack6ConfigEBJ_.exit.i.i.i.i.i, !dbg !20881

bb.de:                                            ; preds = %bb.dd
    #dbg_value(i8 2, !4049, !DIExpression(), !17548)
  fence acquire, !dbg !20882
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ia) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack6ConfigEBJ_.exit.i.i.i.i.i unwind label %bb.df, !dbg !20883, !noalias !19732

end_hunk_3
begin_hunk_4_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a
    #dbg_value(ptr %.val3.i.i.i, !4521, !DIExpression(), !18371)
    #dbg_value(ptr %.val3.i.i.i, !4527, !DIExpression(), !18373)
    #dbg_value(i64 8, !4513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18367)
    #dbg_value(i64 8, !4519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18369)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18371)
    #dbg_value(i64 8, !4528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18373)
    #dbg_value(i64 80, !4513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18367)
    #dbg_value(i64 80, !4519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18369)
    #dbg_value(i64 80, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18371)
    #dbg_value(i64 80, !4528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18373)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef 80, i64 noundef 8) #26, !dbg !21161, !noalias !20463, !inline_history !4667
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !21162 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20502), !dbg !21162
    #dbg_value(ptr %i.ou, !4002, !DIExpression(), !18377)
  call void @llvm.experimental.noalias.scope.decl(metadata !20503), !dbg !21163
    #dbg_value(ptr %i.ou, !4007, !DIExpression(), !18381)
  call void @llvm.experimental.noalias.scope.decl(metadata !20504), !dbg !21164
    #dbg_value(ptr %i.ou, !4014, !DIExpression(), !18385)
    #dbg_value(ptr %i.ou, !4017, !DIExpression(), !18387)
    #dbg_value(i64 1, !4027, !DIExpression(), !18389)
    #dbg_value(i8 1, !4033, !DIExpression(), !18389)
    #dbg_value(i64 1, !4035, !DIExpression(), !18391)
    #dbg_value(i8 1, !4040, !DIExpression(), !18391)
  %i.ov = load ptr, ptr %i.ou, align 8, !dbg !21165, !alias.scope !20505, !noalias !20461, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.ov, !4032, !DIExpression(), !18393)
    #dbg_value(ptr %i.ov, !4039, !DIExpression(), !18391)
  %i.ow = atomicrmw add ptr %i.ov, i64 -1 release, align 8, !dbg !21166, !noalias !20506
  %i.ox = icmp eq i64 %i.ow, 1, !dbg !21167
  br i1 %i.ox, label %bb.gz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i, !dbg !21167

bb.gz:                                            ; preds = %.body.i.i
    #dbg_value(i8 2, !4049, !DIExpression(), !18395)
  fence acquire, !dbg !21168
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ou) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i unwind label %bb.hf, !dbg !21169, !noalias !20463

bb.ha:                                            ; preds = %bb.gw
  %i.oy = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !21160
  %.val.i.i.i = load ptr, ptr %i.oy, align 8, !dbg !21160, !alias.scope !20501, !noalias !20461, !nonnull !1995, !noundef !1995
    #dbg_value(ptr poison, !4669, !DIExpression(), !18397)
    #dbg_value(ptr poison, !4674, !DIExpression(), !18399)
    #dbg_value(ptr poison, !4680, !DIExpression(), !18401)
    #dbg_value(ptr %.val.i.i.i, !4681, !DIExpression(), !18402)
    #dbg_value(i64 8, !4682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18403)
    #dbg_value(i64 80, !4682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18403)
    #dbg_value(ptr poison, !4508, !DIExpression(), !18405)
    #dbg_value(ptr poison, !4515, !DIExpression(), !18407)
    #dbg_value(ptr %.val.i.i.i, !4512, !DIExpression(), !18405)
    #dbg_value(ptr %.val.i.i.i, !4518, !DIExpression(), !18407)
    #dbg_value(ptr %.val.i.i.i, !4521, !DIExpression(), !18409)
    #dbg_value(ptr %.val.i.i.i, !4527, !DIExpression(), !18411)
    #dbg_value(i64 8, !4513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18405)
    #dbg_value(i64 8, !4519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18407)
    #dbg_value(i64 8, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18409)
    #dbg_value(i64 8, !4528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18411)
    #dbg_value(i64 80, !4513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18405)
    #dbg_value(i64 80, !4519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18407)
    #dbg_value(i64 80, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18409)
    #dbg_value(i64 80, !4528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18411)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #26, !dbg !21170, !noalias !20463, !inline_history !4667
  %i.oz = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !21162 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20507), !dbg !21162
    #dbg_value(ptr %i.oz, !4002, !DIExpression(), !18415)
  call void @llvm.experimental.noalias.scope.decl(metadata !20508), !dbg !21171
    #dbg_value(ptr %i.oz, !4007, !DIExpression(), !18419)
  call void @llvm.experimental.noalias.scope.decl(metadata !20509), !dbg !21172
    #dbg_value(ptr %i.oz, !4014, !DIExpression(), !18423)
    #dbg_value(ptr %i.oz, !4017, !DIExpression(), !18425)
    #dbg_value(i64 1, !4027, !DIExpression(), !18427)
    #dbg_value(i8 1, !4033, !DIExpression(), !18427)
    #dbg_value(i64 1, !4035, !DIExpression(), !18429)
    #dbg_value(i8 1, !4040, !DIExpression(), !18429)
  %i.pa = load ptr, ptr %i.oz, align 8, !dbg !21173, !alias.scope !20510, !noalias !20461, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.pa, !4032, !DIExpression(), !18431)
    #dbg_value(ptr %i.pa, !4039, !DIExpression(), !18429)
  %i.pb = atomicrmw add ptr %i.pa, i64 -1 release, align 8, !dbg !21174, !noalias !20511
  %i.pc = icmp eq i64 %i.pb, 1, !dbg !21175
  br i1 %i.pc, label %bb.hb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i, !dbg !21175

bb.hb:                                            ; preds = %bb.ha
    #dbg_value(i8 2, !4049, !DIExpression(), !18433)
  fence acquire, !dbg !21176
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.oz) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i unwind label %bb.hc, !dbg !21177, !noalias !20463

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i: ; preds = %bb.hc, %bb.gz, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.pd, %bb.hc ], [ %.pn.i.i.i, %bb.gz ], [ %.pn.i.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.oj) #24
          to label %.body unwind label %bb.hf, !dbg !21162, !noalias !20463

bb.hc:                                            ; preds = %bb.hb
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i: ; preds = %bb.hb, %bb.ha
    #dbg_value(ptr %i.oj, !4193, !DIExpression(), !18435)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135 unwind label %bb.hd, !dbg !21178, !noalias !20463

bb.hd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i
  %i.pe = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.oj, !4198, !DIExpression(), !18437)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %.body unwind label %bb.he, !dbg !21179, !noalias !20463

bb.he:                                            ; preds = %bb.hd
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !21178, !noalias !20463
  unreachable, !dbg !21178

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i
    #dbg_value(ptr %i.oj, !4198, !DIExpression(), !18439)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i unwind label %bb.ge, !dbg !21180, !noalias !20463

bb.hf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i, %bb.gz
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !21162, !noalias !20463
  unreachable, !dbg !21162

bb.hg:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21181, !noalias !20461
    #dbg_value(ptr %i.kb, !19653, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18441)
    #dbg_value(ptr %i.kb, !19659, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18443)
    #dbg_value(ptr %i.kb, !19661, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18445)
    #dbg_value(ptr %i.kb, !19664, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18447)
    #dbg_value(i8 10, !19674, !DIExpression(), !18449)
    #dbg_value(i8 1, !19681, !DIExpression(), !18451)
    #dbg_value(i64 poison, !19685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18453)
    #dbg_value(i64 poison, !19685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18453)
    #dbg_value(i8 10, !19657, !DIExpression(), !18454)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.kb, i64 144, !dbg !21182
  %i.pi = load i8, ptr %i.ph, align 8, !dbg !21182, !range !5698, !alias.scope !20512, !noalias !20463, !noundef !1995
  %i.pj = trunc nuw i8 %i.pi to i1, !dbg !21182
    #dbg_value(i8 %i.pi, !19678, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !18449)
    #dbg_value(i8 poison, !19678, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !18449)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.kb, i64 145, !dbg !21183
  %i.pl = load i8, ptr %i.pk, align 1, !dbg !21183, !alias.scope !20512, !noalias !20463
  %.sroa.01.0.i.i136 = select i1 %i.pj, i8 %i.pl, i8 10, !dbg !21183
    #dbg_value(i8 %.sroa.01.0.i.i136, !19657, !DIExpression(), !18454)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.kb, i64 147, !dbg !21184
  %i.pn = load i8, ptr %i.pm, align 1, !dbg !21184, !range !4000, !alias.scope !20512, !noalias !20463, !noundef !1995 ; 2 uses
    #dbg_value(i8 %i.pn, !19682, !DIExpression(), !18451)
  %.not.i.i137 = icmp eq i8 %i.pn, 2, !dbg !21185
  %.sroa.02.0.i29.i = select i1 %.not.i.i137, i8 1, i8 %i.pn, !dbg !21186 ; 2 uses
    #dbg_value(i8 %.sroa.02.0.i29.i, !19700, !DIExpression(), !18458)
  %i.po = icmp samesign ult i8 %.sroa.02.0.i29.i, 2, !dbg !21187
  call void @llvm.assume(i1 %i.po), !dbg !21187
    #dbg_value(i8 %.sroa.02.0.i29.i, !19704, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18459)
    #dbg_value(i8 %.sroa.02.0.i29.i, !19707, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18461)
    #dbg_value(i8 0, !19704, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18459)
    #dbg_value(i8 0, !19707, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18461)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.kb, i64 48, !dbg !21188
  %i.pq = load i64, ptr %i.pp, align 8, !dbg !21188, !range !5002, !alias.scope !20512, !noalias !20463, !noundef !1995 ; 2 uses
    #dbg_value(i64 %i.pq, !19689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18453)
    #dbg_value(i64 poison, !19689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18453)
  %.not22.i.i138 = icmp eq i64 %i.pq, 2, !dbg !21189 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kb, i64 56, !dbg !21190
  %i.ps = load i64, ptr %i.pr, align 8, !dbg !21190, !alias.scope !20512, !noalias !20463
  %.sroa.5.0.i.i139 = select i1 %.not22.i.i138, i64 10485760, i64 %i.ps, !dbg !21190
  %.sroa.03.0.i.i140 = select i1 %.not22.i.i138, i64 1, i64 %i.pq, !dbg !21190 ; 2 uses
    #dbg_value(i64 %.sroa.03.0.i.i140, !19711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18462)
    #dbg_value(i64 %.sroa.5.0.i.i139, !19711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18462)
  %i.pt = icmp samesign ult i64 %.sroa.03.0.i.i140, 2, !dbg !21191
  call void @llvm.assume(i1 %i.pt), !dbg !21191
    #dbg_value(i64 %.sroa.03.0.i.i140, !19704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18459)
    #dbg_value(i64 %.sroa.03.0.i.i140, !19707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18461)
    #dbg_value(i64 %.sroa.5.0.i.i139, !19704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18459)
    #dbg_value(i64 %.sroa.5.0.i.i139, !19707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18461)
    #dbg_value(i8 0, !19704, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18459)
    #dbg_value(i8 0, !19707, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18461)
    #dbg_value(i8 poison, !19704, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18459)
    #dbg_value(i8 poison, !19707, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18461)
    #dbg_value(i8 1, !19704, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18459)
    #dbg_value(i8 1, !19707, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18461)
    #dbg_value(i8 %.sroa.01.0.i.i136, !19704, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18459)
    #dbg_value(i8 %.sroa.01.0.i.i136, !19707, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18461)
    #dbg_value(i8 1, !19704, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18459)
    #dbg_value(i8 1, !19707, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18461)
    #dbg_value(i64 %.sroa.03.0.i.i140, !20513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18465)
    #dbg_value(i64 %.sroa.5.0.i.i139, !20513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18465)
    #dbg_value(i8 1, !20513, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18465)
    #dbg_value(i8 %.sroa.01.0.i.i136, !20513, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18465)
    #dbg_value(i8 %.sroa.02.0.i29.i, !20513, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18465)
    #dbg_value(i8 1, !20513, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18465)
    #dbg_value(i8 0, !20513, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18465)
    #dbg_value(i8 2, !20514, !DIExpression(), !18466)
    #dbg_value(i8 2, !20513, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18465)
  store i64 %.sroa.03.0.i.i140, ptr %i.f, align 8, !dbg !21192, !alias.scope !20516, !noalias !20461
  %.sroa.034.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !21192
  store i64 %.sroa.5.0.i.i139, ptr %.sroa.034.sroa.4.0..sroa_idx.i, align 8, !dbg !21192, !alias.scope !20516, !noalias !20461
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !21192
  store i8 1, ptr %.sroa.034.sroa.5.0..sroa_idx.i, align 8, !dbg !21192, !alias.scope !20516, !noalias !20461
  %.sroa.034.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17, !dbg !21192
  store i8 %.sroa.01.0.i.i136, ptr %.sroa.034.sroa.6.0..sroa_idx.i, align 1, !dbg !21192, !alias.scope !20516, !noalias !20461
  %.sroa.034.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 18, !dbg !21192
  %8 = zext nneg i8 %.sroa.02.0.i29.i to i16, !dbg !21192
  %9 = or disjoint i16 %8, 256, !dbg !21192
  store i16 %9, ptr %.sroa.034.sroa.7.0..sroa_idx.i, align 2, !dbg !21192, !alias.scope !20516, !noalias !20461
  %.sroa.034.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20, !dbg !21192
  store i16 512, ptr %.sroa.034.sroa.9.0..sroa_idx.i, align 4, !dbg !21192, !alias.scope !20516, !noalias !20461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21193, !noalias !20461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21194, !noalias !20461
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.d)
          to label %bb.hh unwind label %bb.gr, !dbg !21194, !noalias !20463

bb.hh:                                            ; preds = %bb.hg
  %i.pu = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.hj unwind label %bb.hi, !dbg !21195, !noalias !20463

bb.hi:                                            ; preds = %bb.hj, %bb.hh
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.d) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hv, !dbg !21196, !noalias !20463

bb.hj:                                            ; preds = %bb.hh
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler14build_from_hir(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.e, ptr noundef nonnull align 8 %i.pu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.hk unwind label %bb.hi, !dbg !21197, !noalias !20463

bb.hk:                                            ; preds = %bb.hj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.d)
          to label %bb.hl unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i, !dbg !21196, !noalias !20463

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141: ; preds = %bb.ho, %bb.hn
  %i.pw = load i64, ptr %i.e, align 8, !dbg !21198, !range !19734, !noalias !20461, !noundef !1995
  %i.px = icmp eq i64 %i.pw, -2, !dbg !21198
  br i1 %i.px, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, label %.thread63.i, !dbg !21198

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i: ; preds = %bb.hm, %bb.hk
  %.sroa.03.1.i = phi i8 [ 0, %bb.hm ], [ 1, %bb.hk ], !dbg !21199 ; 3 uses
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pz = load i64, ptr %i.e, align 8, !dbg !21198, !range !19734, !noalias !20461, !noundef !1995
  %i.qa = icmp eq i64 %i.pz, -2, !dbg !21198
  br i1 %i.qa, label %bb.hy, label %bb.hx, !dbg !21198

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21196, !noalias !20461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21200, !noalias !20461
  %i.qb = load i64, ptr %i.e, align 8, !dbg !21201, !range !19734, !noalias !20461, !noundef !1995
  %.not12.i = icmp eq i64 %i.qb, -2, !dbg !21201
  br i1 %.not12.i, label %bb.hp, label %bb.hm, !dbg !21202

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21203, !noalias !20461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false), !dbg !21203, !noalias !20461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21204
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.b)
          to label %bb.hw unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i, !dbg !21205, !noalias !20463

bb.hn:                                            ; preds = %bb.hs
  %i.qc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.c, !4061, !DIExpression(), !18471)
    #dbg_value(ptr %i.c, !4066, !DIExpression(), !18473)
    #dbg_value(ptr %i.c, !4072, !DIExpression(), !18475)
    #dbg_value(ptr %i.c, !5046, !DIExpression(), !18477)
    #dbg_value(i64 1, !4074, !DIExpression(), !18479)
    #dbg_value(i8 1, !4076, !DIExpression(), !18479)
    #dbg_value(i64 1, !4078, !DIExpression(), !18481)
    #dbg_value(i8 1, !4080, !DIExpression(), !18481)
    #dbg_value(ptr %i.qg, !4075, !DIExpression(), !18482)
    #dbg_value(ptr %i.qg, !4079, !DIExpression(), !18481)
  %i.qd = atomicrmw add ptr %i.qg, i64 -1 release, align 8, !dbg !21206, !noalias !20517
  %i.qe = icmp eq i64 %i.qd, 1, !dbg !21207
  br i1 %i.qe, label %bb.ho, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141, !dbg !21207

bb.ho:                                            ; preds = %bb.hn
    #dbg_value(i8 2, !4049, !DIExpression(), !18490)
  fence acquire, !dbg !21208
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 unwind label %bb.hv, !dbg !21209, !noalias !20492

bb.hp:                                            ; preds = %bb.hl
  %i.qf = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !21210
  %i.qg = load ptr, ptr %i.qf, align 8, !dbg !21210, !noalias !20461, !nonnull !1995, !noundef !1995 ; 3 uses
    #dbg_value(ptr %i.qg, !20451, !DIExpression(), !18491)
  store ptr %i.qg, ptr %i.c, align 8, !dbg !21211, !noalias !20461
    #dbg_value(i8 0, !20453, !DIExpression(), !18492)
  %i.qh = getelementptr i8, ptr %i.kb, i64 149, !dbg !21212
  %.val23.i = load i8, ptr %i.qh, align 1, !dbg !21212, !range !4000, !noalias !20463, !noundef !1995
    #dbg_value(ptr poison, !19758, !DIExpression(), !18494)
    #dbg_value(i8 1, !19761, !DIExpression(), !18496)
    #dbg_value(i8 %.val23.i, !19762, !DIExpression(), !18496)
  %.sroa.0.0.i30.not.i = icmp eq i8 %.val23.i, 0, !dbg !21213
  br i1 %.sroa.0.0.i30.not.i, label %bb.hq, label %bb.hs, !dbg !21214

bb.hq:                                            ; preds = %bb.hp
  store i128 2, ptr %i.a, align 16, !dbg !21215, !alias.scope !20518, !noalias !20461
  br label %bb.hr, !dbg !21216

bb.hr:                                            ; preds = %._crit_edge, %bb.hq
  %.sroa.01.i.sroa.13.1984.copyload = phi i8 [ %.sroa.01.i.sroa.13.1984.copyload.pre, %._crit_edge ], [ 0, %bb.hq ], !dbg !21217 ; 2 uses
  %.sroa.01.i.sroa.11.1984.copyload = phi ptr [ %.sroa.01.i.sroa.11.1984.copyload.pre, %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.hq ], !dbg !21217 ; 2 uses
  %.sroa.01.i.sroa.0.0.copyload = load i128, ptr %i.aq, align 16, !dbg !21218, !noalias !20522 ; 2 uses
  %.sroa.01.i.sroa.4.0.copyload = load i128, ptr %.sroa.11.0..sroa_idx167, align 16, !dbg !21218, !noalias !20522 ; 2 uses
  %.sroa.01.i.sroa.5.0.copyload = load i64, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx167.sroa_idx, align 16, !dbg !21218, !noalias !20522 ; 2 uses
  %.sroa.01.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !21218
  %.sroa.01.i.sroa.6.0.copyload = load ptr, ptr %.sroa.01.i.sroa.6.0..sroa_idx, align 8, !dbg !21218, !noalias !20522 ; 2 uses
  %.sroa.01.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !21218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.01.i.sroa.7.0..sroa_idx, i64 120, i1 false), !dbg !21218, !noalias !20523
  %.sroa.01.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 168, !dbg !21218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.01.i.sroa.8.0..sroa_idx, i64 1800, i1 false), !dbg !21218, !noalias !20523
  %.sroa.01.i.sroa.9.0.copyload = load ptr, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx.sroa_idx, align 16, !dbg !21218, !noalias !20522 ; 2 uses
  %.sroa.01.i.sroa.10.0.copyload = load ptr, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx173.sroa_idx, align 8, !dbg !21218, !noalias !20522 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !21219
  %.sroa.01.i.sroa.15.2704..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.i.sroa.15, i64 704, !dbg !21219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.sroa.15.2704..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.qi, i64 32, i1 false), !dbg !21219
  %.sroa.01.i.sroa.14.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9, !dbg !21217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.01.i.sroa.14.1984..sroa_idx, i64 7, i1 false), !dbg !21217, !noalias !20524
  %.sroa.01.i.sroa.15.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %.sroa.01.i.sroa.15, ptr noundef nonnull align 16 dereferenceable(704) %.sroa.01.i.sroa.15.1984..sroa_idx, i64 704, i1 false), !dbg !21217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21220, !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21198, !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21221, !noalias !20461
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.hu unwind label %bb.ht, !dbg !21131, !noalias !20492

bb.hs:                                            ; preds = %bb.hp
  invoke void @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13ReverseHybrid3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx173.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %._crit_edge unwind label %bb.hn, !dbg !21222, !noalias !20492

._crit_edge:                                      ; preds = %bb.hs
  %.sroa.01.i.sroa.11.1984.copyload.pre = load ptr, ptr %i.a, align 16, !dbg !21217, !noalias !20461
  %.sroa.01.i.sroa.13.1984..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.i.sroa.13.1984.copyload.pre = load i8, ptr %.sroa.01.i.sroa.13.1984..sroa_idx.phi.trans.insert, align 8, !dbg !21217, !noalias !20461
  br label %bb.hr, !dbg !21222

bb.ht:                                            ; preds = %bb.hr
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.oj) #24
          to label %.body unwind label %bb.hv, !dbg !21131, !noalias !20492

bb.hu:                                            ; preds = %bb.hr
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.oj)
          to label %bb.ii unwind label %bb.ge, !dbg !21131, !noalias !20492

bb.hv:                                            ; preds = %bb.ic, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134, %bb.ib, %.thread63.i, %bb.hz, %bb.ht, %bb.ho, %bb.hi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !21223, !noalias !20492
  unreachable, !dbg !21223

bb.hw:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21205, !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21220, !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21198, !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21221, !noalias !20461
  br label %bb.gu, !dbg !21159

bb.hx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i
  %i.ql = trunc nuw i8 %.sroa.03.1.i to i1, !dbg !21198
  br i1 %i.ql, label %.thread63.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, !dbg !21198

bb.hy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !21198 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20525), !dbg !21198
    #dbg_value(ptr %i.qm, !4061, !DIExpression(), !18504)
  call void @llvm.experimental.noalias.scope.decl(metadata !20526), !dbg !21224
    #dbg_value(ptr %i.qm, !4066, !DIExpression(), !18508)
  call void @llvm.experimental.noalias.scope.decl(metadata !20527), !dbg !21225
    #dbg_value(ptr %i.qm, !4072, !DIExpression(), !18512)
    #dbg_value(ptr %i.qm, !5046, !DIExpression(), !18514)
    #dbg_value(i64 1, !4074, !DIExpression(), !18516)
    #dbg_value(i8 1, !4076, !DIExpression(), !18516)
    #dbg_value(i64 1, !4078, !DIExpression(), !18518)
    #dbg_value(i8 1, !4080, !DIExpression(), !18518)
  %i.qn = load ptr, ptr %i.qm, align 8, !dbg !21226, !alias.scope !20528, !noalias !20461, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.qn, !4075, !DIExpression(), !18520)
    #dbg_value(ptr %i.qn, !4079, !DIExpression(), !18518)
  %i.qo = atomicrmw add ptr %i.qn, i64 -1 release, align 8, !dbg !21227, !noalias !20529
  %i.qp = icmp eq i64 %i.qo, 1, !dbg !21228
  br i1 %i.qp, label %bb.hz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, !dbg !21228

bb.hz:                                            ; preds = %bb.hy
    #dbg_value(i8 2, !4049, !DIExpression(), !18522)
  fence acquire, !dbg !21229
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qm) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hv, !dbg !21230, !noalias !20463

.thread63.i:                                      ; preds = %bb.hx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141
  %.pn5666.i = phi { ptr, i32 } [ %i.py, %bb.hx ], [ %i.qc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hv, !dbg !21198, !noalias !20492

bb.ia:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !21131 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20530), !dbg !21131
    #dbg_value(ptr %i.qq, !4002, !DIExpression(), !18526)
  call void @llvm.experimental.noalias.scope.decl(metadata !20531), !dbg !21231
    #dbg_value(ptr %i.qq, !4007, !DIExpression(), !18530)
  call void @llvm.experimental.noalias.scope.decl(metadata !20532), !dbg !21232
    #dbg_value(ptr %i.qq, !4014, !DIExpression(), !18534)
    #dbg_value(ptr %i.qq, !4017, !DIExpression(), !18536)
    #dbg_value(i64 1, !4027, !DIExpression(), !18538)
    #dbg_value(i8 1, !4033, !DIExpression(), !18538)
    #dbg_value(i64 1, !4035, !DIExpression(), !18540)
end_hunk_4
