Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.01?download=true
inline.NumInlined: 672
inline.NumDeleted: 269
begin_hunk_0_@_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12search_slots:bb.a
bb.l:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22, !dbg !15885
  unreachable, !dbg !15885

bb.m:                                             ; preds = %bb.p, %bb.o, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.v, !dbg !15886

bb.n:                                             ; preds = %bb.j
    #dbg_value(ptr %i.b, !15740, !DIExpression(), !15843)
    #dbg_value(ptr poison, !15716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15810)
    #dbg_value(ptr poison, !15720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15811)
    #dbg_value(ptr poison, !15705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15739)
    #dbg_value(i64 %i.ah, !15716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15810)
    #dbg_value(i64 %i.ah, !15720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15811)
    #dbg_value(i64 %i.ah, !15705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15739)
  %.not47 = icmp ugt i64 %4, %i.ah
  br i1 %.not47, label %bb.p, label %bb.o, !dbg !15887, !prof !3653

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.af, !15716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15810)
    #dbg_value(ptr %i.af, !15720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15811)
    #dbg_value(ptr %i.af, !15705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15739)
    #dbg_value(ptr %i.af, !15649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15654)
    #dbg_value(i64 %4, !15649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15654)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.q unwind label %bb.m, !dbg !15888

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #27
          to label %bb.u unwind label %bb.m, !dbg !15889

bb.q:                                             ; preds = %bb.o
  %i.ao = load i64, ptr %i.a, align 8, !dbg !15890, !range !4476, !noundef !1995 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15891
  %i.aq = load i32, ptr %i.ap, align 8, !dbg !15891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15892
    #dbg_value(ptr %i.b, !4166, !DIExpression(), !15622)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit unwind label %bb.r, !dbg !15893

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15624)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.s, !dbg !15894

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !15893
  unreachable, !dbg !15893

common.resume:                                    ; preds = %bb.m, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !15647

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit: ; preds = %bb.q
  %i.at = trunc nuw i64 %i.ao to i1, !dbg !15891
  %i.au = trunc nuw nsw i64 %i.ao to i32, !dbg !15891
  %.sroa.9.1 = select i1 %i.at, i32 %i.aq, i32 undef, !dbg !15891
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15626)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !15895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15886
  br label %bb.t, !dbg !15896

bb.t:                                             ; preds = %bb.w, %bb.x, %bb.k, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit
  %.sroa.9.2 = phi i32 [ %i.az, %bb.w ], [ undef, %bb.x ], [ %.sroa.9.0, %bb.k ], [ %.sroa.9.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit ], [ %i.w, %bb.e ], [ undef, %bb.f ], !dbg !15769
  %.sroa.0.2 = phi i32 [ 1, %bb.w ], [ 0, %bb.x ], [ %i.am, %bb.k ], [ %i.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit ], [ 1, %bb.e ], [ 0, %bb.f ], !dbg !15769
  %i.av = insertvalue { i32, i32 } poison, i32 %.sroa.0.2, 0, !dbg !15896
  %i.aw = insertvalue { i32, i32 } %i.av, i32 %.sroa.9.2, 1, !dbg !15896
  ret { i32, i32 } %i.aw, !dbg !15896

bb.u:                                             ; preds = %bb.p
  unreachable

bb.v:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !15897
  unreachable, !dbg !15897

bb.w:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !15898
  %i.az = load i32, ptr %i.ay, align 8, !dbg !15898, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15899
    #dbg_value(i64 poison, !15639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15844)
    #dbg_value(i32 %i.az, !15639, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15844)
  br label %bb.t, !dbg !15900

bb.x:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15899
  br label %bb.t, !dbg !15884
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16try_search_slots(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15917 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !15988, !DIExpression(), !16009)
    #dbg_value(ptr %2, !15989, !DIExpression(), !16009)
    #dbg_value(ptr %3, !15990, !DIExpression(), !16009)
    #dbg_value(ptr %4, !15991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16009)
    #dbg_value(ptr %4, !16010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16014)
    #dbg_value(ptr %4, !16010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16016)
    #dbg_value(i64 %5, !15991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16009)
    #dbg_value(i64 %5, !16010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16014)
    #dbg_value(i64 %5, !16010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16016)
    #dbg_declare(ptr %i.f, !16017, !DIExpression(), !16028)
    #dbg_declare(ptr %i.e, !16017, !DIExpression(), !16030)
    #dbg_declare(ptr %i.d, !16000, !DIExpression(), !16031)
    #dbg_declare(ptr %i.c, !16017, !DIExpression(), !16033)
    #dbg_declare(ptr %i.b, !16004, !DIExpression(), !16034)
    #dbg_declare(ptr %i.a, !16017, !DIExpression(), !16036)
    #dbg_declare(ptr poison, !16037, !DIExpression(), !16049)
    #dbg_declare(ptr poison, !16050, !DIExpression(), !16060)
    #dbg_value(i64 0, !16061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16069)
    #dbg_value(i64 0, !16079, !DIExpression(), !16083)
    #dbg_declare(ptr poison, !16084, !DIExpression(), !16094)
    #dbg_value(i64 0, !16095, !DIExpression(), !16099)
    #dbg_value(i64 0, !16061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16106)
    #dbg_value(i64 0, !16079, !DIExpression(), !16112)
    #dbg_declare(ptr poison, !16113, !DIExpression(), !16123)
    #dbg_value(ptr %1, !16124, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16127)
    #dbg_value(ptr %1, !16128, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16131)
    #dbg_value(ptr %1, !16132, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16135)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !16255
  %i.h = load ptr, ptr %i.g, align 8, !dbg !16255, !nonnull !1995, !noundef !1995 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 386, !dbg !16130
  %i.j = load i8, ptr %i.i, align 2, !dbg !16130, !range !5698, !noundef !1995
  %i.k = trunc nuw i8 %i.j to i1, !dbg !16130
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !16256

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !16137, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16140)
    #dbg_value(ptr %1, !16128, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16142)
    #dbg_value(ptr %1, !16132, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16145)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 387, !dbg !16141
  %i.m = load i8, ptr %i.l, align 1, !dbg !16141, !range !5698, !noundef !1995
  %i.n = trunc nuw i8 %i.m to i1, !dbg !16141
    #dbg_value(i8 %i.m, !15992, !DIExpression(), !16146)
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !16257

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16027
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) #25, !dbg !16258
  %i.o = load i64, ptr %i.f, align 8, !dbg !16259, !range !5002, !noundef !1995 ; 3 uses
  %i.p = icmp eq i64 %i.o, 2, !dbg !16259
  br i1 %i.p, label %bb.e, label %bb.f, !dbg !16260

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !16128, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16149)
    #dbg_value(ptr %1, !16132, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16154)
    #dbg_value(ptr %i.h, !16155, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !16158)
    #dbg_value(ptr %i.h, !16159, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !16162)
    #dbg_value(ptr %i.h, !16163, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !16166)
    #dbg_value(ptr %i.h, !16167, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !16171)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 312, !dbg !16261
  %i.r = load ptr, ptr %i.q, align 8, !dbg !16261, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.r, !16174, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16177)
    #dbg_value(ptr %i.r, !16178, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16181)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !16262
  %i.t = load i64, ptr %i.s, align 8, !dbg !16262, !noundef !1995 ; 2 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976, !dbg !16263
  tail call void @llvm.assume(i1 %i.u), !dbg !16264
  %i.v = shl nuw nsw i64 %i.t, 1, !dbg !16265     ; 2 uses
    #dbg_value(i64 %i.v, !15996, !DIExpression(), !16182)
    #dbg_value(i64 %i.v, !16096, !DIExpression(), !16099)
    #dbg_value(i64 %5, !16071, !DIExpression(), !16183)
    #dbg_value(i64 %5, !16074, !DIExpression(), !16184)
    #dbg_value(i64 %5, !16076, !DIExpression(), !16185)
    #dbg_value(i64 %5, !16061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16069)
    #dbg_value(i64 %5, !16063, !DIExpression(), !16069)
    #dbg_value(i64 %5, !16080, !DIExpression(), !16083)
    #dbg_value(i64 %5, !16108, !DIExpression(), !16186)
    #dbg_value(i64 %5, !16074, !DIExpression(), !16187)
    #dbg_value(i64 %5, !16076, !DIExpression(), !16188)
    #dbg_value(i64 %5, !16061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16106)
    #dbg_value(i64 %5, !16063, !DIExpression(), !16106)
    #dbg_value(i64 %5, !16080, !DIExpression(), !16112)
  %.not = icmp samesign ult i64 %5, %i.v, !dbg !16266
  br i1 %.not, label %bb.g, label %bb.h, !dbg !16266

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16267
  %i.x = load ptr, ptr %i.w, align 8, !dbg !16267, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16268
    #dbg_value(ptr %i.x, !15994, !DIExpression(), !16189)
    #dbg_value(ptr %i.x, !16190, !DIExpression(), !16198)
    #dbg_value(ptr %i.x, !16191, !DIExpression(), !16199)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16269
  store ptr %i.x, ptr %i.y, align 8, !dbg !16269
  store i32 1, ptr %0, align 8, !dbg !16269
  br label %bb.aa, !dbg !16270

bb.f:                                             ; preds = %bb.c
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16271
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !16271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16268
    #dbg_value(i64 %i.o, !15993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16201)
    #dbg_value(i64 %i.o, !16045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16202)
    #dbg_value(ptr poison, !15993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16201)
    #dbg_value(ptr poison, !16045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16202)
    #dbg_value(i64 %.sroa.555.0.copyload, !15993, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16201)
    #dbg_value(i64 %.sroa.555.0.copyload, !16045, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16202)
    #dbg_value(i64 %.sroa.555.0.copyload, !15993, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16201)
    #dbg_value(i64 %.sroa.555.0.copyload, !16045, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16202)
  %i.z = trunc nuw i64 %i.o to i1, !dbg !16272
  %.sroa.4.16.extract.trunc = trunc i64 %.sroa.555.0.copyload to i32, !dbg !16272
  %.sroa.5.0 = select i1 %i.z, i32 %.sroa.4.16.extract.trunc, i32 undef, !dbg !16272
  %i.aa = trunc nuw nsw i64 %i.o to i32, !dbg !16272
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !16273
  store i32 %i.aa, ptr %i.ab, align 4, !dbg !16273
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16273
  store i32 %.sroa.5.0, ptr %i.ac, align 8, !dbg !16273
  store i32 0, ptr %0, align 8, !dbg !16273
  br label %bb.aa, !dbg !16274

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !16203, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16206)
    #dbg_value(ptr %1, !16128, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16208)
    #dbg_value(ptr %1, !16132, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16211)
    #dbg_value(ptr %i.h, !16212, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16215)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 360, !dbg !16275
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !16275, !noundef !1995 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 2305843009213693952, !dbg !16276
  tail call void @llvm.assume(i1 %i.af), !dbg !16277
  %i.ag = icmp eq i64 %i.ae, 1, !dbg !16278
  br i1 %i.ag, label %bb.i, label %bb.j, !dbg !16278

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16029
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) #25, !dbg !16279
  %i.ah = load i64, ptr %i.e, align 8, !dbg !16280, !range !5002, !noundef !1995 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 2, !dbg !16280
  br i1 %i.ai, label %bb.ad, label %bb.ae, !dbg !16281

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !dbg !16283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16032
  call void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2) #25, !dbg !16284
  %i.aj = load i64, ptr %i.c, align 8, !dbg !16285, !range !5002, !noundef !1995 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 2, !dbg !16285
  br i1 %i.ak, label %bb.k, label %bb.l, !dbg !16286

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16287
  call void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.v), !dbg !16288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16035
    #dbg_value(ptr %i.b, !16216, !DIExpression(), !16219)
    #dbg_value(ptr %i.b, !16220, !DIExpression(), !16223)
    #dbg_value(ptr %i.b, !16224, !DIExpression(), !16227)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16289
  %i.am = load ptr, ptr %i.al, align 8, !dbg !16289, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16290
  %i.ao = load i64, ptr %i.an, align 8, !dbg !16290, !noundef !1995 ; 3 uses
  invoke void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker20try_search_slots_imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 %i.am, i64 noundef %i.ao)
          to label %bb.q unwind label %bb.p, !dbg !16291

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16292
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !16292, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16293
    #dbg_value(ptr %i.aq, !16002, !DIExpression(), !16231)
    #dbg_value(ptr %i.aq, !16190, !DIExpression(), !16234)
    #dbg_value(ptr %i.aq, !16193, !DIExpression(), !16235)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16294
  store ptr %i.aq, ptr %i.ar, align 8, !dbg !16294
  br label %bb.o, !dbg !16295

bb.l:                                             ; preds = %bb.i
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16296
  %.sroa.561.0.copyload = load i64, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !16296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16293
    #dbg_value(i64 %i.aj, !16001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16237)
    #dbg_value(i64 %i.aj, !16090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16238)
    #dbg_value(ptr poison, !16001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16237)
    #dbg_value(ptr poison, !16090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16238)
    #dbg_value(i64 %.sroa.561.0.copyload, !16001, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16237)
    #dbg_value(i64 %.sroa.561.0.copyload, !16090, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16238)
    #dbg_value(i64 %.sroa.561.0.copyload, !16001, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16237)
    #dbg_value(i64 %.sroa.561.0.copyload, !16090, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16238)
    #dbg_value(ptr %i.d, !16070, !DIExpression(), !16183)
    #dbg_value(ptr %i.d, !16073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16184)
    #dbg_value(ptr %i.d, !16077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16185)
    #dbg_value(ptr %i.d, !16062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16069)
    #dbg_value(i64 2, !16073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16184)
    #dbg_value(i64 2, !16077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16185)
    #dbg_value(i64 2, !16062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16069)
  %i.as = icmp samesign ult i64 %5, 3
  br i1 %i.as, label %bb.m, label %bb.n, !dbg !16297, !prof !6188

bb.m:                                             ; preds = %bb.l
  %.sroa.435.16.extract.trunc = trunc i64 %.sroa.561.0.copyload to i32, !dbg !16032
    #dbg_value(i32 %.sroa.435.16.extract.trunc, !16001, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !16237)
    #dbg_value(i32 %.sroa.435.16.extract.trunc, !16090, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !16238)
    #dbg_value(ptr %i.d, !16011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16014)
    #dbg_value(i64 %5, !16011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16014)
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40), !dbg !16298
  %i.at = trunc nuw i64 %i.aj to i1, !dbg !16299
  %i.au = trunc nuw nsw i64 %i.aj to i32, !dbg !16300
  %.sroa.435.16.extract.trunc. = select i1 %i.at, i32 %.sroa.435.16.extract.trunc, i32 undef, !dbg !16300
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !16301
  store i32 %i.au, ptr %i.av, align 4, !dbg !16301
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16301
  store i32 %.sroa.435.16.extract.trunc., ptr %i.aw, align 8, !dbg !16301
  br label %bb.o, !dbg !16302

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #22, !dbg !16303
  unreachable, !dbg !16303

bb.o:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i32 [ 0, %bb.m ], [ 1, %bb.k ], !dbg !16304
  store i32 %storemerge, ptr %0, align 8, !dbg !16304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16305
  br label %bb.aa, !dbg !16306

bb.p:                                             ; preds = %bb.w, %bb.v, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.ac, !dbg !16307

bb.q:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.a, align 8, !dbg !16308, !range !5002, !noundef !1995 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 2, !dbg !16308
  br i1 %i.az, label %bb.r, label %bb.u, !dbg !16309

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16310
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !16310, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16311
    #dbg_value(ptr %i.bb, !16006, !DIExpression(), !16240)
    #dbg_value(ptr %i.bb, !16190, !DIExpression(), !16243)
    #dbg_value(ptr %i.bb, !16194, !DIExpression(), !16244)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16312
  store ptr %i.bb, ptr %i.bc, align 8, !dbg !16312
  store i32 1, ptr %0, align 8, !dbg !16312
    #dbg_value(ptr %i.b, !4166, !DIExpression(), !15974)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit unwind label %bb.s, !dbg !16313

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15976)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.t, !dbg !16314

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !16313
  unreachable, !dbg !16313

common.resume:                                    ; preds = %bb.p, %bb.y, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bd, %bb.s ], [ %i.ax, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !16009

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit: ; preds = %bb.r
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15978)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !16315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16307
  br label %bb.aa, !dbg !16306

bb.u:                                             ; preds = %bb.q
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16316
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !16316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16311
    #dbg_value(i64 %i.ay, !16005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16245)
    #dbg_value(i64 %i.ay, !16119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16246)
    #dbg_value(ptr poison, !16005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16245)
    #dbg_value(ptr poison, !16119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16246)
  %.sroa.449.16.extract.trunc = trunc i64 %.sroa.564.0.copyload to i32, !dbg !16035
    #dbg_value(i32 %.sroa.449.16.extract.trunc, !16005, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !16245)
    #dbg_value(i32 %.sroa.449.16.extract.trunc, !16119, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !16246)
    #dbg_value(i64 %.sroa.564.0.copyload, !16005, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16245)
    #dbg_value(i64 %.sroa.564.0.copyload, !16119, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16246)
    #dbg_value(ptr %i.b, !16107, !DIExpression(), !16247)
    #dbg_value(ptr poison, !16073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16187)
    #dbg_value(ptr poison, !16077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16188)
    #dbg_value(ptr poison, !16062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16106)
    #dbg_value(i64 %i.ao, !16073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16187)
    #dbg_value(i64 %i.ao, !16077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16188)
    #dbg_value(i64 %i.ao, !16062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16106)
  %.not112 = icmp ugt i64 %5, %i.ao
  br i1 %.not112, label %bb.w, label %bb.v, !dbg !16317, !prof !3653

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.am, !16073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16187)
    #dbg_value(ptr %i.am, !16077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16188)
    #dbg_value(ptr %i.am, !16062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16106)
    #dbg_value(ptr %i.am, !16011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16016)
    #dbg_value(i64 %5, !16011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16016)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.am, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42)
          to label %bb.x unwind label %bb.p, !dbg !16318

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #27
          to label %bb.ab unwind label %bb.p, !dbg !16319

bb.x:                                             ; preds = %bb.v
  %i.bf = trunc nuw i64 %i.ay to i1, !dbg !16320
  %i.bg = trunc nuw nsw i64 %i.ay to i32, !dbg !16321
  %.sroa.449.16.extract.trunc. = select i1 %i.bf, i32 %.sroa.449.16.extract.trunc, i32 undef, !dbg !16321
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !16322
  store i32 %i.bg, ptr %i.bh, align 4, !dbg !16322
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16322
  store i32 %.sroa.449.16.extract.trunc., ptr %i.bi, align 8, !dbg !16322
  store i32 0, ptr %0, align 8, !dbg !16322
    #dbg_value(ptr %i.b, !4166, !DIExpression(), !15980)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115 unwind label %bb.y, !dbg !16323

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15982)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.z, !dbg !16324

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !16323
  unreachable, !dbg !16323

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115: ; preds = %bb.x
    #dbg_value(ptr %i.b, !4171, !DIExpression(), !15984)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !16325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16307
  br label %bb.aa, !dbg !16326

bb.aa:                                            ; preds = %bb.ad, %bb.ae, %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115
  ret void, !dbg !16326

bb.ab:                                            ; preds = %bb.w
  unreachable

bb.ac:                                            ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !16327
  unreachable, !dbg !16327

bb.ad:                                            ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16328
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !16328, !nonnull !1995, !align !5920, !noundef !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16329
    #dbg_value(ptr %i.bn, !15998, !DIExpression(), !16248)
    #dbg_value(ptr %i.bn, !16190, !DIExpression(), !16251)
    #dbg_value(ptr %i.bn, !16192, !DIExpression(), !16252)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16330
  store ptr %i.bn, ptr %i.bo, align 8, !dbg !16330
  store i32 1, ptr %0, align 8, !dbg !16330
  br label %bb.aa, !dbg !16306

bb.ae:                                            ; preds = %bb.h
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16331
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8, !dbg !16331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16329
    #dbg_value(i64 %i.ah, !15997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16253)
    #dbg_value(i64 %i.ah, !16056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16254)
    #dbg_value(ptr poison, !15997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16253)
    #dbg_value(ptr poison, !16056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16254)
    #dbg_value(i64 %.sroa.558.0.copyload, !15997, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16253)
    #dbg_value(i64 %.sroa.558.0.copyload, !16056, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !16254)
    #dbg_value(i64 %.sroa.558.0.copyload, !15997, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16253)
    #dbg_value(i64 %.sroa.558.0.copyload, !16056, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !16254)
  %i.bp = trunc nuw i64 %i.ah to i1, !dbg !16332
  %.sroa.421.16.extract.trunc = trunc i64 %.sroa.558.0.copyload to i32, !dbg !16332
  %.sroa.524.0 = select i1 %i.bp, i32 %.sroa.421.16.extract.trunc, i32 undef, !dbg !16332
  %i.bq = trunc nuw nsw i64 %i.ah to i32, !dbg !16332
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !16333
  store i32 %i.bq, ptr %i.br, align 4, !dbg !16333
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16333
  store i32 %.sroa.524.0, ptr %i.bs, align 8, !dbg !16333
  store i32 0, ptr %0, align 8, !dbg !16333
  br label %bb.aa, !dbg !16334
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !dbg !16337 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 17 uses
    #dbg_value(ptr %0, !16451, !DIExpression(), !16458)
    #dbg_value(ptr %1, !16452, !DIExpression(), !16458)
    #dbg_value(ptr %2, !16453, !DIExpression(), !16458)
    #dbg_value(ptr %3, !16454, !DIExpression(), !16458)
    #dbg_declare(ptr poison, !16459, !DIExpression(), !16481)
    #dbg_value(ptr %0, !16455, !DIExpression(), !16482)
    #dbg_value(ptr %1, !16483, !DIExpression(), !16487)
  %i.b = load i64, ptr %1, align 8, !dbg !16644, !range !5002, !noundef !1995
  %.not = icmp eq i64 %i.b, 2, !dbg !16644
  br i1 %.not, label %bb.o, label %bb.b, !dbg !16645, !prof !5556

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !16488, !DIExpression(), !16492)
    #dbg_value(ptr %1, !16456, !DIExpression(), !16493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16494), !dbg !16646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16495), !dbg !16646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16496), !dbg !16646
    #dbg_value(ptr %0, !16497, !DIExpression(), !16365)
    #dbg_value(ptr %1, !16501, !DIExpression(), !16365)
    #dbg_value(ptr %2, !16502, !DIExpression(), !16365)
    #dbg_value(ptr %3, !16503, !DIExpression(), !16365)
    #dbg_value(ptr %3, !16522, !DIExpression(), !16368)
    #dbg_declare(ptr %i.a, !16504, !DIExpression(), !16369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16647, !noalias !16528
  store i64 0, ptr %i.a, align 8, !dbg !16648, !noalias !16528
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !16648
  store i32 0, ptr %i.c, align 8, !dbg !16648, !noalias !16528
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !16648
  store i64 0, ptr %i.d, align 8, !dbg !16648, !noalias !16528
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16648
  store i64 0, ptr %i.e, align 8, !dbg !16648, !noalias !16528
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !16648
  store i8 0, ptr %i.f, align 8, !dbg !16648, !noalias !16528
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !alias.scope !16532, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 386 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 387 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !16496 ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !alias.scope !16496, !nonnull !1995 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !5698, !alias.scope !16495
  %.fr26.i = freeze i8 %i.p
  %i.q = trunc i8 %.fr26.i to i1
  %.promoted.i = load i64, ptr %i.n, align 8, !alias.scope !16496 ; 2 uses
  br i1 %i.q, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16533), !dbg !16649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16534), !dbg !16649
    #dbg_value(ptr %0, !16535, !DIExpression(), !16381)
    #dbg_value(ptr %1, !16540, !DIExpression(), !16381)
    #dbg_value(ptr %2, !16541, !DIExpression(), !16381)
    #dbg_value(ptr %i.a, !16542, !DIExpression(), !16381)
    #dbg_value(ptr %i.a, !16547, !DIExpression(), !16384)
    #dbg_value(ptr %0, !16553, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16387)
  %i.r = load i8, ptr %i.i, align 2, !dbg !16650, !range !5698, !noalias !16555, !noundef !1995
  %i.s = trunc nuw i8 %i.r to i1, !dbg !16650
  br i1 %i.s, label %bb.c, label %bb.d, !dbg !16651

bb.c:                                             ; preds = %.split.us.i
    #dbg_value(ptr %0, !16556, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16392)
  %i.t = load i8, ptr %i.j, align 1, !dbg !16652, !range !5698, !noalias !16555, !noundef !1995
    #dbg_value(i8 %i.t, !16543, !DIExpression(), !16393)
  %i.u = trunc nuw i8 %i.t to i1, !dbg !16653
  br label %bb.d, !dbg !16651

bb.d:                                             ; preds = %bb.c, %.split.us.i
  %.sroa.01.0.not.i.us.i = phi i1 [ %i.u, %bb.c ], [ false, %.split.us.i ], !dbg !16654
    #dbg_value(i8 poison, !16543, !DIExpression(), !16393)
  %i.v = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !16655, !noalias !16496 ; 2 uses
    #dbg_value(ptr %i.v, !16558, !DIExpression(), !16402)
  %.not.i.us.i = icmp eq ptr %i.v, null, !dbg !16656
  br i1 %.not.i.us.i, label %bb.e, label %.loopexit, !dbg !16657

bb.e:                                             ; preds = %bb.d
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.a, align 8, !dbg !16658, !alias.scope !16534, !noalias !16528 ; 2 uses
  %i.w = trunc nuw i64 %.sroa.05.0.copyload.i.us.i to i1, !dbg !16659
  %brmerge.not.i.us.i = select i1 %i.w, i1 %.sroa.01.0.not.i.us.i, i1 false, !dbg !16659, !prof !6230
  br i1 %brmerge.not.i.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !16659, !prof !6231

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i: ; preds = %bb.e
  %i.x = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !16660, !noalias !16496 ; 2 uses
    #dbg_value(ptr %i.x, !16575, !DIExpression(), !16407)
  %.not.us.i = icmp eq ptr %i.x, null, !dbg !16661
  br i1 %.not.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, label %.loopexit, !dbg !16662

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i
  %.sroa.03.0.copyload.us.pre.i = load i64, ptr %i.a, align 8, !dbg !16663, !noalias !16528
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !16662

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, %bb.e
  %.sroa.03.0.copyload.us.i = phi i64 [ %.sroa.03.0.copyload.us.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i ], [ %.sroa.05.0.copyload.i.us.i, %bb.e ], !dbg !16663
    #dbg_value(ptr %i.a, !16579, !DIExpression(), !16410)
  %i.y = trunc nuw i64 %.sroa.03.0.copyload.us.i to i1, !dbg !16664
  br i1 %i.y, label %bb.f, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16664

bb.f:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i
  %.sroa.7.0.copyload.us.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !16663, !noalias !16528
    #dbg_value(i64 poison, !16507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16411)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16507, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16411)
  call void @llvm.experimental.noalias.scope.decl(metadata !16581), !dbg !16665
    #dbg_value(ptr %3, !16582, !DIExpression(), !16421)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16600, !DIExpression(), !16421)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16424)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16427)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !16606, !DIExpression(), !16432)
  %i.z = zext i32 %.sroa.7.0.copyload.us.i to i64, !dbg !16666 ; 2 uses
  %.not.i16.us.i = icmp ugt i64 %i.l, %i.z, !dbg !16667
  br i1 %.not.i16.us.i, label %bb.g, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16667

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.m, !16613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16432)
    #dbg_value(i64 %i.l, !16613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16432)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16434)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16436)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z, !dbg !16668 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !16669, !range !5698, !noalias !16619, !noundef !1995
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !16669
  br i1 %i.ac, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %bb.h, !dbg !16669

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.promoted.i, 1, !dbg !16670
  store i64 %i.ad, ptr %i.n, align 8, !dbg !16670, !alias.scope !16620
    #dbg_value(ptr poison, !16602, !DIExpression(), !16442)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16444)
  store i8 1, ptr %i.aa, align 1, !dbg !16671, !noalias !16619
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16672

.split.i:                                         ; preds = %bb.b, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i
  %i.ae = phi i64 [ %i.as, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16533), !dbg !16649
  call void @llvm.experimental.noalias.scope.decl(metadata !16534), !dbg !16649
    #dbg_value(ptr %0, !16535, !DIExpression(), !16381)
    #dbg_value(ptr %1, !16540, !DIExpression(), !16381)
    #dbg_value(ptr %2, !16541, !DIExpression(), !16381)
    #dbg_value(ptr %i.a, !16542, !DIExpression(), !16381)
    #dbg_value(ptr %i.a, !16547, !DIExpression(), !16384)
    #dbg_value(ptr %0, !16553, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16387)
  %i.af = load i8, ptr %i.i, align 2, !dbg !16650, !range !5698, !noalias !16631, !noundef !1995
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !16650
  br i1 %i.ag, label %bb.i, label %bb.j, !dbg !16651

bb.i:                                             ; preds = %.split.i
    #dbg_value(ptr %0, !16556, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !16392)
  %i.ah = load i8, ptr %i.j, align 1, !dbg !16652, !range !5698, !noalias !16631, !noundef !1995
    #dbg_value(i8 %i.ah, !16543, !DIExpression(), !16393)
  %i.ai = trunc nuw i8 %i.ah to i1, !dbg !16653
  br label %bb.j, !dbg !16651

bb.j:                                             ; preds = %bb.i, %.split.i
  %.sroa.01.0.not.i.i = phi i1 [ %i.ai, %bb.i ], [ false, %.split.i ], !dbg !16654
    #dbg_value(i8 poison, !16543, !DIExpression(), !16393)
  %i.aj = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !16655, !noalias !16496 ; 2 uses
    #dbg_value(ptr %i.aj, !16558, !DIExpression(), !16402)
  %.not.i.i = icmp eq ptr %i.aj, null, !dbg !16656
  br i1 %.not.i.i, label %bb.k, label %.loopexit, !dbg !16657

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !16658, !alias.scope !16534, !noalias !16528 ; 2 uses
  %i.ak = trunc nuw i64 %.sroa.05.0.copyload.i.i to i1, !dbg !16659
  %brmerge.not.i.i = select i1 %i.ak, i1 %.sroa.01.0.not.i.i, i1 false, !dbg !16659, !prof !6230
  br i1 %brmerge.not.i.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !16659, !prof !6231

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i: ; preds = %bb.k
  %i.al = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !16660, !noalias !16496 ; 2 uses
    #dbg_value(ptr %i.al, !16575, !DIExpression(), !16407)
  %.not.i = icmp eq ptr %i.al, null, !dbg !16661
  br i1 %.not.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, label %.loopexit, !dbg !16662

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i
  %.sroa.03.0.copyload.pre.i = load i64, ptr %i.a, align 8, !dbg !16663, !noalias !16528
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !16662

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, %bb.k
  %.sroa.03.0.copyload.i = phi i64 [ %.sroa.03.0.copyload.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i ], [ %.sroa.05.0.copyload.i.i, %bb.k ], !dbg !16663
    #dbg_value(ptr %i.a, !16579, !DIExpression(), !16410)
  %i.am = trunc nuw i64 %.sroa.03.0.copyload.i to i1, !dbg !16664
  br i1 %i.am, label %bb.l, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !16664

bb.l:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !16663, !noalias !16528
    #dbg_value(i64 poison, !16507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16411)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16507, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16411)
  call void @llvm.experimental.noalias.scope.decl(metadata !16581), !dbg !16665
    #dbg_value(ptr %3, !16582, !DIExpression(), !16421)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16600, !DIExpression(), !16421)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16424)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16427)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !16606, !DIExpression(), !16432)
  %i.an = zext i32 %.sroa.7.0.copyload.i to i64, !dbg !16666 ; 2 uses
  %.not.i16.i = icmp ugt i64 %i.l, %i.an, !dbg !16667
  br i1 %.not.i16.i, label %bb.m, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, !dbg !16667

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.m, !16613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16432)
    #dbg_value(i64 %i.l, !16613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16432)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16434)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16436)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.an, !dbg !16668 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !16669, !range !5698, !noalias !16619, !noundef !1995
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !16669
  br i1 %i.aq, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, label %bb.n, !dbg !16669

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %i.ae, 1, !dbg !16670           ; 2 uses
  store i64 %i.ar, ptr %i.n, align 8, !dbg !16670, !alias.scope !16620
    #dbg_value(ptr poison, !16602, !DIExpression(), !16442)
    #dbg_value(ptr poison, !16604, !DIExpression(), !16444)
  store i8 1, ptr %i.ao, align 1, !dbg !16671, !noalias !16619
  br label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, !dbg !16672

_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ar, %bb.n ] ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.l, !dbg !16673
  br i1 %i.at, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %.split.i, !dbg !16674

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16675, !noalias !16528
    #dbg_value(ptr null, !16476, !DIExpression(), !16632)
  br label %bb.p, !dbg !16676

bb.o:                                             ; preds = %bb.a
    #dbg_value(ptr null, !16488, !DIExpression(), !16492)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !dbg !16677
  unreachable, !dbg !16677

.loopexit:                                        ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, %bb.j, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.x, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i ], [ %i.v, %bb.d ], [ %i.al, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i ], [ %i.aj, %bb.j ], !dbg !16678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16675, !noalias !16528
    #dbg_value(ptr %.sroa.0.0.i, !16476, !DIExpression(), !16632)
    #dbg_value(ptr %.sroa.0.0.i, !16478, !DIExpression(), !16633)
    #dbg_value(ptr %.sroa.0.0.i, !16634, !DIExpression(), !16639)
    #dbg_value(ptr %.sroa.0.0.i, !16640, !DIExpression(), !16643)
  %i.au = call noundef i64 @_RNvXsc_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %.sroa.0.0.i), !dbg !16679 ; 0 uses
  br label %bb.p, !dbg !16680

bb.p:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, %.loopexit
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread ], !dbg !16632
  ret i64 %.sroa.0.0, !dbg !16681
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16711 {
bb.a:
  %.sroa.01.i.sroa.15 = alloca [736 x i8], align 16 ; 3 uses
  %i.a = alloca [720 x i8], align 16              ; 9 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [448 x i8], align 8               ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [104 x i8], align 8               ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 20 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
    #dbg_value(ptr poison, !18707, !DIExpression(), !16725)
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.050.i.sroa.7 = alloca [1800 x i8], align 8 ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [1440 x i8], align 16             ; 11 uses
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !16756)
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [448 x i8], align 8               ; 8 uses
  %i.q = alloca [128 x i8], align 8               ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  %i.s = alloca [376 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 64, 448), !16758)
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 512, 576), !16758)
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.624.i.sroa.7 = alloca [48 x i8], align 8 ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !16760)
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 448, 640), !16760)
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.615.i.sroa.7 = alloca [40 x i8], align 8 ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !18733, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !16762)
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [448 x i8], align 8              ; 8 uses
  %i.ab = alloca [128 x i8], align 8              ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 13 uses
    #dbg_value(ptr poison, !18789, !DIExpression(), !16768)
    #dbg_value(ptr poison, !18801, !DIExpression(), !16769)
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
    #dbg_declare(ptr poison, !18803, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18811)
    #dbg_declare(ptr poison, !18812, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18831)
    #dbg_declare(ptr poison, !18828, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18833)
    #dbg_declare(ptr poison, !18828, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18833)
    #dbg_declare(ptr poison, !18835, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18857)
    #dbg_declare(ptr poison, !18835, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18857)
    #dbg_declare(ptr poison, !18835, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18857)
    #dbg_declare(ptr poison, !18695, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18860)
    #dbg_declare(ptr poison, !18861, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18883)
    #dbg_declare(ptr poison, !18861, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18883)
    #dbg_declare(ptr poison, !18861, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18883)
    #dbg_declare(ptr poison, !18861, !DIExpression(DW_OP_LLVM_fragment, 16000, 5888), !18883)
    #dbg_declare(ptr poison, !18695, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18860)
    #dbg_declare(ptr poison, !18695, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18860)
    #dbg_declare(ptr poison, !18695, !DIExpression(DW_OP_LLVM_fragment, 16000, 5888), !18860)
  %i.aq = alloca [1984 x i8], align 16            ; 19 uses
  %.sroa.14.sroa.14.sroa.15 = alloca [120 x i8], align 16 ; 14 uses
  %.sroa.14.sroa.15 = alloca [1800 x i8], align 8 ; 14 uses
  %.sroa.14.sroa.19 = alloca [7 x i8], align 1    ; 14 uses
    #dbg_declare(ptr poison, !18693, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18887)
    #dbg_declare(ptr poison, !18888, !DIExpression(DW_OP_LLVM_fragment, 384, 960), !18904)
    #dbg_declare(ptr poison, !18888, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18904)
    #dbg_declare(ptr poison, !18888, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18904)
    #dbg_declare(ptr poison, !18888, !DIExpression(DW_OP_LLVM_fragment, 16000, 128), !18904)
    #dbg_declare(ptr poison, !18693, !DIExpression(DW_OP_LLVM_fragment, 1344, 14400), !18887)
    #dbg_declare(ptr poison, !18693, !DIExpression(DW_OP_LLVM_fragment, 15944, 56), !18887)
    #dbg_declare(ptr poison, !18693, !DIExpression(DW_OP_LLVM_fragment, 16000, 128), !18887)
  %i.ar = alloca [1984 x i8], align 16            ; 18 uses
  %.sroa.15.sroa.16.sroa.17 = alloca [120 x i8], align 16 ; 15 uses
  %.sroa.15.sroa.17 = alloca [1800 x i8], align 8 ; 15 uses
  %.sroa.15.sroa.21 = alloca [7 x i8], align 1    ; 15 uses
  %.sroa.26223 = alloca [16 x i8], align 16       ; 5 uses
    #dbg_declare(ptr poison, !18691, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18906)
    #dbg_declare(ptr poison, !18907, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18929)
    #dbg_declare(ptr poison, !18907, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18929)
    #dbg_declare(ptr poison, !18907, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18929)
    #dbg_declare(ptr poison, !18691, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18906)
    #dbg_declare(ptr poison, !18691, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18906)
  %.sroa.11.sroa.12 = alloca [120 x i8], align 16 ; 27 uses
    #dbg_declare(ptr %.sroa.11.sroa.12, !18930, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !16808)
  %.sroa.12.sroa.0 = alloca [1800 x i8], align 8  ; 27 uses
  %.sroa.12.sroa.14 = alloca [7 x i8], align 1    ; 26 uses
    #dbg_declare(ptr %.sroa.12.sroa.0, !18930, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !16808)
    #dbg_declare(ptr %.sroa.12.sroa.14, !18930, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !16808)
    #dbg_value(ptr poison, !18945, !DIExpression(), !16813)
    #dbg_value(ptr poison, !18953, !DIExpression(), !16814)
  %.sroa.5181.sroa.6.sroa.7 = alloca [120 x i8], align 16 ; 6 uses
  %.sroa.5181.sroa.7 = alloca [1800 x i8], align 8 ; 6 uses
  %.sroa.5181.sroa.11 = alloca [7 x i8], align 1  ; 6 uses
    #dbg_declare(ptr poison, !18689, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18955)
    #dbg_declare(ptr poison, !18689, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18955)
    #dbg_declare(ptr poison, !18806, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18956)
    #dbg_declare(ptr poison, !18688, !DIExpression(DW_OP_LLVM_fragment, 128, 960), !18957)
  %i.as = alloca [32 x i8], align 8               ; 22 uses
  %.sroa.20 = alloca [120 x i8], align 16         ; 12 uses
  %.sroa.24 = alloca [1800 x i8], align 8         ; 5 uses
    #dbg_declare(ptr %.sroa.20, !18827, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18958)
    #dbg_declare(ptr %.sroa.24, !18827, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18958)
  %.sroa.615.sroa.8 = alloca [120 x i8], align 16 ; 7 uses
    #dbg_declare(ptr %.sroa.11.sroa.12, !18687, !DIExpression(DW_OP_LLVM_fragment, 256, 960), !18959)
    #dbg_declare(ptr %.sroa.12.sroa.0, !18687, !DIExpression(DW_OP_LLVM_fragment, 1216, 14400), !18959)
    #dbg_declare(ptr %.sroa.12.sroa.14, !18687, !DIExpression(DW_OP_LLVM_fragment, 15816, 56), !18959)
  %i.at = alloca [24 x i8], align 8               ; 14 uses
    #dbg_value(ptr poison, !18960, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !18988)
  %i.au = alloca [32 x i8], align 8               ; 20 uses
    #dbg_value(ptr %1, !18679, !DIExpression(), !18989)
    #dbg_value(ptr %2, !18680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18989)
    #dbg_value(i64 %3, !18680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18989)
    #dbg_declare(ptr %i.au, !18681, !DIExpression(), !18990)
    #dbg_declare(ptr %i.at, !18684, !DIExpression(), !18991)
    #dbg_declare(ptr poison, !18996, !DIExpression(), !19018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !20600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19032), !dbg !20601
    #dbg_value(ptr %1, !19033, !DIExpression(), !16835)
    #dbg_value(ptr %1, !19038, !DIExpression(), !16838)
    #dbg_value(i32 1, !19045, !DIExpression(), !16841)
    #dbg_value(ptr %1, !19051, !DIExpression(), !16844)
    #dbg_value(ptr %1, !19056, !DIExpression(), !16847)
  %i.av = load ptr, ptr %1, align 8, !dbg !20602, !alias.scope !19032, !nonnull !1995, !noundef !1995 ; 15 uses
    #dbg_value(ptr %i.av, !19059, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !16852)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184, !dbg !20603
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !20603, !noalias !19032, !nonnull !1995, !noundef !1995
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 60, !dbg !20603
  %i.az = load i32, ptr %i.ay, align 4, !dbg !20603, !noalias !19032, !noundef !1995
    #dbg_value(i32 %i.az, !19049, !DIExpression(), !16841)
  %i.ba = trunc i32 %i.az to i1, !dbg !20604
  br i1 %i.ba, label %bb.c, label %bb.b, !dbg !20605

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.av, !19065, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16855)
    #dbg_value(ptr %i.av, !19072, !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value), !16863)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 136, !dbg !20606
  %i.bc = load i8, ptr %i.bb, align 8, !dbg !20606, !range !5098, !alias.scope !19087, !noundef !1995
  %.not.i = icmp eq i8 %i.bc, -1, !dbg !20606
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 112, !dbg !20607
  %.sroa.01.0.i = select i1 %.not.i, ptr @68, ptr %i.bd, !dbg !20607 ; 4 uses
    #dbg_value(ptr %.sroa.01.0.i, !19088, !DIExpression(), !16869)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 24, !dbg !20608
  %i.bf = load i8, ptr %i.be, align 8, !dbg !20608, !range !4000, !noundef !1995 ; 2 uses
  %.not8.i = icmp eq i8 %i.bf, 2, !dbg !20608
  br i1 %.not8.i, label %bb.f, label %bb.d, !dbg !20609

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !20610
  store i8 2, ptr %i.bg, align 8, !dbg !20610
  br label %bb.at, !dbg !20611

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !18682, !DIExpression(), !19091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19092), !dbg !20612
    #dbg_value(ptr poison, !19093, !DIExpression(), !16874)
    #dbg_value(i64 1, !19098, !DIExpression(), !16880)
    #dbg_value(i8 0, !19100, !DIExpression(), !16880)
    #dbg_value(i64 1, !19107, !DIExpression(), !16883)
end_hunk_0
