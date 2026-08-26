Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.11?download=true
inline.NumInlined: 230
inline.NumDeleted: 125
begin_hunk_0_@_RINvMs7_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_7Builder5buildRSRShRB1g_ECs9GYDdpCSJ4S_14regex_automata:bb.a
    #dbg_value(i32 %.sroa.17.0, !5492, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5912)
    #dbg_value(i32 %.sroa.29.0, !5492, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5912)
    #dbg_value(ptr %i.m, !2369, !DIExpression(), !6078)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilter7BuilderECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %i.m)
          to label %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit.thread unwind label %bb.bl, !dbg !6080, !noalias !5830

bb.bl:                                            ; preds = %bb.bk
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguous3NFAECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.s) #25
          to label %common.resume.i unwind label %bb.bm, !dbg !6080, !noalias !5830

bb.bm:                                            ; preds = %bb.bl
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !dbg !6080, !noalias !5830
  unreachable, !dbg !6080

common.resume.i:                                  ; preds = %bb.bn, %bb.bl
  %common.resume.op.i = phi { ptr, i32 } [ %i.db, %bb.bl ], [ %.pn.i, %bb.bn ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5585

_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.bk
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguous3NFAECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.s), !dbg !6080, !noalias !5830
    #dbg_value(i64 -1, !5492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5912)
    #dbg_value(i32 %.sroa.17.0, !5492, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5912)
    #dbg_value(i32 %.sroa.29.0, !5492, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5912)
  br label %bb.bp, !dbg !6081

bb.bn:                                            ; preds = %bb.ay, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ca, %bb.ay ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguous8CompilerECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %i.m) #25
          to label %common.resume.i unwind label %bb.bo, !dbg !6082, !noalias !5830

bb.bo:                                            ; preds = %bb.bn
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !dbg !6083, !noalias !5830
  unreachable, !dbg !6083

_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.bg, %bb.bj
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 16, !dbg !6084, !alias.scope !6085, !noalias !6086 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5912)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 520, !dbg !6084
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !6084, !alias.scope !6085, !noalias !6086 ; 2 uses
    #dbg_value(i32 %.sroa.17.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5912)
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 524, !dbg !6084
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 4, !dbg !6084, !alias.scope !6085, !noalias !6086 ; 2 uses
    #dbg_value(i32 %.sroa.29.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5912)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false), !dbg !6084, !alias.scope !6085, !noalias !6086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.37, ptr noundef nonnull align 16 dereferenceable(408) %i.z, i64 408, i1 false), !dbg !6084, !alias.scope !6085, !noalias !6086
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilter7BuilderECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %i.m), !dbg !6082, !noalias !5830
    #dbg_value(i64 %.sroa.0.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5912)
    #dbg_value(i32 %.sroa.17.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5912)
    #dbg_value(i32 %.sroa.29.0.copyload, !5492, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5912)
  %i.de = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !6087
  br i1 %i.de, label %bb.bp, label %bb.bq, !dbg !6081

bb.bp:                                            ; preds = %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit.thread, %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.17.164 = phi i32 [ %.sroa.17.0, %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ %.sroa.17.0.copyload, %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit ]
  %.sroa.29.163 = phi i32 [ %.sroa.29.0, %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ %.sroa.29.0.copyload, %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit ]
    #dbg_value(i32 %.sroa.17.164, !5488, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6088)
    #dbg_value(i32 %.sroa.29.163, !5488, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6088)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33, i64 16, i1 false), !dbg !6089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !5525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37), !dbg !5525
    #dbg_value(i32 %.sroa.17.164, !5474, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6090)
    #dbg_value(i32 %.sroa.17.164, !5482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6091)
    #dbg_value(i32 %.sroa.29.163, !5474, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6090)
    #dbg_value(i32 %.sroa.29.163, !5482, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6091)
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9, i64 16, i1 false), !dbg !5525
    #dbg_value(i32 %.sroa.17.164, !5478, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6093)
    #dbg_value(i32 %.sroa.29.163, !5478, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6093)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6092
  store i32 %.sroa.17.164, ptr %i.df, align 8, !dbg !6092
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !6092
  store i32 %.sroa.29.163, ptr %.sroa.458.0..sroa_idx, align 4, !dbg !6092
  store i64 -1, ptr %0, align 8, !dbg !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !5526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.9), !dbg !5526
  br label %bb.br, !dbg !5527

bb.bq:                                            ; preds = %_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileRSRShRB1j_ECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 %.sroa.0.0.copyload, !5493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6094)
    #dbg_value(i32 %.sroa.17.0.copyload, !5493, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6094)
    #dbg_value(i32 %.sroa.29.0.copyload, !5493, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !6094)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33, i64 16, i1 false), !dbg !6095
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.37, i64 408, i1 false), !dbg !6095
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !5525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37), !dbg !5525
    #dbg_value(i64 %.sroa.0.0.copyload, !5468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6097)
    #dbg_value(i32 %.sroa.17.0.copyload, !5468, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6097)
    #dbg_value(i32 %.sroa.29.0.copyload, !5468, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !6097)
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.9, i64 16, i1 false), !dbg !5507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !5526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.9), !dbg !5526
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !6096
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6096
  store i32 %.sroa.17.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !6096
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !6096
  store i32 %.sroa.29.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 4, !dbg !6096
  br label %bb.br, !dbg !5527

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.b
  ret void, !dbg !6098
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSINtNtCs4wP2HXfJTCR_5alloc3vec3VechERB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6099 {
bb.a:
    #dbg_declare(ptr poison, !6201, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6219)
    #dbg_declare(ptr poison, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6229)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6231)
    #dbg_declare(ptr poison, !6183, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6232)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !6256)
    #dbg_value(ptr poison, !6282, !DIExpression(), !6292)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !6293, !DIExpression(), !6316)
    #dbg_value(ptr poison, !6340, !DIExpression(), !6350)
    #dbg_value(ptr %1, !6104, !DIExpression(), !6351)
    #dbg_value(ptr %2, !6105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6351)
    #dbg_value(i64 %3, !6105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6351)
    #dbg_declare(ptr %i.d, !6226, !DIExpression(), !6352)
    #dbg_declare(ptr %i.c, !6353, !DIExpression(), !6368)
    #dbg_declare(ptr poison, !6187, !DIExpression(), !6370)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6371)
    #dbg_declare(ptr %i.b, !6353, !DIExpression(), !6374)
    #dbg_declare(ptr poison, !6193, !DIExpression(), !6376)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6377)
    #dbg_declare(ptr %i.a, !6353, !DIExpression(), !6380)
    #dbg_declare(ptr poison, !6197, !DIExpression(), !6382)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6383)
    #dbg_declare(ptr poison, !6358, !DIExpression(), !6386)
    #dbg_declare(ptr poison, !6212, !DIExpression(), !6387)
    #dbg_declare(ptr poison, !6362, !DIExpression(), !6388)
    #dbg_declare(ptr poison, !6214, !DIExpression(), !6389)
    #dbg_declare(ptr poison, !6366, !DIExpression(), !6390)
    #dbg_declare(ptr poison, !6216, !DIExpression(), !6391)
    #dbg_value(i8 0, !6150, !DIExpression(), !6392)
    #dbg_value(ptr poison, !6393, !DIExpression(), !6402)
    #dbg_value(ptr poison, !6393, !DIExpression(), !6459)
    #dbg_value(ptr poison, !6465, !DIExpression(), !6477)
    #dbg_value(ptr poison, !6487, !DIExpression(), !6492)
    #dbg_value(ptr poison, !6465, !DIExpression(), !6494)
    #dbg_value(ptr poison, !6487, !DIExpression(), !6496)
    #dbg_value(ptr %2, !6499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6504)
    #dbg_value(ptr %2, !6506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6509)
    #dbg_value(ptr %2, !6511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %3, !6499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6504)
    #dbg_value(i64 %3, !6506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6509)
    #dbg_value(i64 %3, !6511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6521)
    #dbg_value(i64 %3, !6515, !DIExpression(), !6523)
    #dbg_value(i64 %3, !6524, !DIExpression(), !6531)
    #dbg_value(ptr %2, !6517, !DIExpression(), !6533)
    #dbg_value(ptr %2, !6530, !DIExpression(), !6531)
  %.idx = mul nuw nsw i64 %3, 24, !dbg !6534
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !6534
    #dbg_value(ptr %2, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr %i.g, !6106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6535)
    #dbg_value(i64 0, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr undef, !6340, !DIExpression(), !6350)
    #dbg_value(ptr undef, !6293, !DIExpression(), !6316)
    #dbg_value(i64 1, !6536, !DIExpression(), !6543)
    #dbg_value(ptr %2, !6310, !DIExpression(), !6545)
    #dbg_value(ptr %2, !6542, !DIExpression(), !6543)
    #dbg_value(ptr %i.g, !6312, !DIExpression(), !6546)
    #dbg_value(ptr poison, !6547, !DIExpression(), !6554)
    #dbg_value(ptr poison, !6553, !DIExpression(), !6556)
  %i.h = icmp eq i64 %3, 0, !dbg !6557
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !6558

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !6558

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.8.0300 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
  %.sroa.0212.0299 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
    #dbg_value(i64 %.sroa.8.0300, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr %.sroa.0212.0299, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0299, i64 24, !dbg !6559 ; 2 uses
    #dbg_value(ptr %i.z, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr %.sroa.0212.0299, !6341, !DIExpression(), !6560)
    #dbg_value(i64 %.sroa.8.0300, !6347, !DIExpression(), !6561)
  %i.aa = add i64 %.sroa.8.0300, 1, !dbg !6562    ; 2 uses
    #dbg_value(i64 %i.aa, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr %i.z, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6563
    #dbg_value(i64 %.sroa.8.0300, !6127, !DIExpression(), !6564)
    #dbg_value(i64 %.sroa.8.0300, !6457, !DIExpression(), !6565)
    #dbg_value(i64 %.sroa.8.0300, !6432, !DIExpression(), !6566)
    #dbg_value(i64 %.sroa.8.0300, !6427, !DIExpression(), !6567)
    #dbg_value(i64 %.sroa.8.0300, !6568, !DIExpression(), !6574)
  store i64 %.sroa.8.0300, ptr %i.f, align 8, !dbg !6563
    #dbg_value(ptr %.sroa.0212.0299, !6129, !DIExpression(), !6564)
  %exitcond = icmp eq i64 %.sroa.8.0300, 2147483647, !dbg !6576
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !6576

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(i64 poison, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr poison, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
  store i32 -1, ptr %0, align 8, !dbg !6577
  br label %bb.c, !dbg !6578

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !6579

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0300 to i32, !dbg !6580 ; 2 uses
    #dbg_value(i32 %i.ab, !6130, !DIExpression(), !6581)
    #dbg_value(ptr undef, !6129, !DIExpression(DW_OP_deref), !6564)
    #dbg_value(ptr poison, !6582, !DIExpression(), !6589)
  %i.ac = getelementptr i8, ptr %.sroa.0212.0299, i64 8, !dbg !6591
  %.val.i = load ptr, ptr %i.ac, align 8, !dbg !6591, !nonnull !65, !noundef !65 ; 3 uses
  %i.ad = getelementptr i8, ptr %.sroa.0212.0299, i64 16, !dbg !6591
  %.val1.i = load i64, ptr %i.ad, align 8, !dbg !6591, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !6136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6592)
    #dbg_value(ptr %.val.i, !6593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6598)
    #dbg_value(ptr %.val.i, !6600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6610)
    #dbg_value(i64 %.val1.i, !6136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6592)
    #dbg_value(i64 %.val1.i, !6593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6598)
    #dbg_value(i64 %.val1.i, !6600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6610)
    #dbg_value(i64 %.val1.i, !6432, !DIExpression(), !6612)
    #dbg_value(i64 %.val1.i, !6427, !DIExpression(), !6613)
    #dbg_value(i64 %.val1.i, !6568, !DIExpression(), !6614)
    #dbg_value(i64 %.val1.i, !6616, !DIExpression(), !6620)
    #dbg_value(i64 %.val1.i, !6622, !DIExpression(), !6626)
    #dbg_value(i64 %.val1.i, !6604, !DIExpression(), !6628)
    #dbg_value(i64 %.val1.i, !6629, !DIExpression(), !6635)
  %i.ae = icmp ugt i64 %.val1.i, 2147483646, !dbg !6637
  br i1 %i.ae, label %bb.g, label %bb.f, !dbg !6637

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !6132, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6638)
    #dbg_value(i32 1, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6639)
    #dbg_value(i32 undef, !6132, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6638)
    #dbg_value(i32 undef, !6207, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6639)
    #dbg_value(i64 2147483646, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6639)
    #dbg_value(i64 2147483646, !6132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6638)
    #dbg_value(i64 2147483647, !6207, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6639)
    #dbg_value(i64 2147483647, !6132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6638)
    #dbg_value(i32 1, !6208, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6642)
    #dbg_value(i32 undef, !6208, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6642)
    #dbg_value(i64 2147483646, !6208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6642)
    #dbg_value(i64 2147483647, !6208, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6642)
  store i32 1, ptr %0, align 8, !dbg !6643
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6643
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !6643
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6643
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !6643
  br label %bb.au, !dbg !6644

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !6138, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6646)
    #dbg_value(i64 %.val1.i, !6647, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6654)
  %i.af = load i64, ptr %i.j, align 16, !dbg !6656, !noundef !65
    #dbg_value(i64 %i.af, !6619, !DIExpression(), !6620)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !6664)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !6664)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.af), !dbg !6666
  store i64 %..i, ptr %i.j, align 16, !dbg !6667
  %i.ag = load i64, ptr %i.k, align 8, !dbg !6668, !noundef !65
    #dbg_value(i64 %i.ag, !6625, !DIExpression(), !6626)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !6673)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !6673)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.ag), !dbg !6675
  store i64 %..i202, ptr %i.k, align 8, !dbg !6676
    #dbg_value(ptr %i.f, !6144, !DIExpression(), !6677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6678
    #dbg_value(ptr %1, !6679, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !6683)
  %i.ah = load i64, ptr %i.l, align 16, !dbg !6685, !noundef !65 ; 3 uses
  store i64 %i.ah, ptr %i.e, align 8, !dbg !6685
  %i.ai = icmp ult i64 %i.ah, 2305843009213693952, !dbg !6686
  tail call void @llvm.assume(i1 %i.ai), !dbg !6687
    #dbg_value(ptr %i.e, !6149, !DIExpression(), !6677)
  %i.aj = icmp eq i64 %.sroa.8.0300, %i.ah, !dbg !6688
  br i1 %i.aj, label %bb.i, label %bb.h, !dbg !6688, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !6140, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6689)
    #dbg_value(i32 2, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6690)
    #dbg_value(i32 %i.ab, !6140, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6689)
    #dbg_value(i32 %i.ab, !6207, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6690)
    #dbg_value(i64 %.val1.i, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6690)
    #dbg_value(i64 %.val1.i, !6140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6689)
    #dbg_value(i64 undef, !6207, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6690)
    #dbg_value(i64 undef, !6140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6689)
    #dbg_value(i32 2, !6210, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6693)
    #dbg_value(i32 %i.ab, !6210, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6693)
    #dbg_value(i64 %.val1.i, !6210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6693)
    #dbg_value(i64 undef, !6210, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6693)
  store i32 2, ptr %0, align 8, !dbg !6694
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !6694
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !6694
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6694
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !6694
  br label %bb.au, !dbg !6695

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !6127, !DIExpression(DW_OP_deref), !6564)
    #dbg_value(ptr %i.f, !6457, !DIExpression(DW_OP_deref), !6565)
    #dbg_value(ptr %i.f, !6432, !DIExpression(DW_OP_deref), !6566)
    #dbg_value(ptr %i.f, !6427, !DIExpression(DW_OP_deref), !6567)
    #dbg_value(ptr %i.f, !6568, !DIExpression(DW_OP_deref), !6574)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !6697
  unreachable, !dbg !6697

bb.i:                                             ; preds = %bb.f
  %i.ak = trunc nuw nsw i64 %.val1.i to i32, !dbg !6698
    #dbg_value(i32 %i.ak, !6138, !DIExpression(), !6646)
    #dbg_value(i32 %i.ak, !6647, !DIExpression(), !6654)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6699
    #dbg_value(ptr %i.m, !6653, !DIExpression(), !6654)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !6713)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !6721)
    #dbg_value(i32 %i.ak, !6707, !DIExpression(), !6713)
    #dbg_value(i64 4, !6723, !DIExpression(), !6727)
    #dbg_value(i64 %i.ah, !6708, !DIExpression(), !6733)
    #dbg_value(i64 %i.ah, !6734, !DIExpression(), !6740)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !6742)
  %i.al = load i64, ptr %i.m, align 16, !dbg !6743, !range !1927, !alias.scope !6744, !noundef !65
  %i.am = icmp eq i64 %.sroa.8.0300, %i.al, !dbg !6747
  br i1 %i.am, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6747

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !6748
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6749

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %i.n, align 8, !dbg !6750, !alias.scope !6744, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.an, !6739, !DIExpression(), !6740)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.8.0300, !dbg !6771
    #dbg_value(ptr %i.ao, !6710, !DIExpression(), !6772)
    #dbg_value(ptr %i.ao, !6773, !DIExpression(), !6779)
    #dbg_value(i32 %i.ak, !6778, !DIExpression(), !6779)
  store i32 %i.ak, ptr %i.ao, align 4, !dbg !6781
  store i64 %i.aa, ptr %i.l, align 16, !dbg !6782, !alias.scope !6744
  %i.ap = load ptr, ptr %i.o, align 8, !dbg !6783, !nonnull !65, !align !6784, !noundef !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9, !dbg !6783
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !6783, !range !3847, !noundef !65
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !6783
  br i1 %i.as, label %bb.l, label %bb.k, !dbg !6783

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.at = load i32, ptr %i.p, align 8, !dbg !6785, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.at, !6153, !DIExpression(), !6786)
    #dbg_value(i8 0, !6155, !DIExpression(), !6787)
    #dbg_value(ptr %.val.i, !6606, !DIExpression(), !6788)
    #dbg_value(ptr %.val.i, !6634, !DIExpression(), !6635)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !6789
    #dbg_value(ptr %.val.i, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(ptr %i.au, !6157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6790)
    #dbg_value(i64 0, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(i8 poison, !6155, !DIExpression(), !6787)
    #dbg_value(ptr undef, !6282, !DIExpression(), !6292)
    #dbg_value(ptr undef, !6233, !DIExpression(), !6256)
    #dbg_value(i64 1, !6791, !DIExpression(), !6798)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !6800)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !6798)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !6801)
    #dbg_value(ptr poison, !6802, !DIExpression(), !6809)
    #dbg_value(ptr poison, !6808, !DIExpression(), !6811)
  %i.av = icmp samesign eq i64 %.val1.i, 0, !dbg !6812
  br i1 %i.av, label %._crit_edge, label %.lr.ph298, !dbg !6813

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !6814
  br label %bb.k, !dbg !6815

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.at, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.ax, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.aw, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !6153, !DIExpression(), !6786)
    #dbg_value(i64 %.sroa.9.0295, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr %.sroa.0214.0294, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !6816 ; 2 uses
    #dbg_value(ptr %i.aw, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !6817)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !6818)
  %i.ax = add nuw i64 %.sroa.9.0295, 1, !dbg !6819
    #dbg_value(i64 %i.ax, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr %i.aw, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(i64 %.sroa.9.0295, !6174, !DIExpression(), !6820)
  %i.ay = load i8, ptr %.sroa.0214.0294, align 1, !dbg !6821, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ay, !6176, !DIExpression(), !6820)
    #dbg_value(i8 %i.ay, !6822, !DIExpression(), !6828)
    #dbg_value(i8 %i.ay, !6822, !DIExpression(), !6830)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !6832

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.at, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !6646
    #dbg_value(i64 poison, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr poison, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6381
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !6833
  %i.az = load i32, ptr %i.a, align 8, !dbg !6834, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.az, -1, !dbg !6834
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !6835

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !6836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6837
  br label %bb.au, !dbg !6838

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6837
  br label %.backedge, !dbg !6840

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6841
    #dbg_value(i64 %i.aa, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr %i.z, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6340, !DIExpression(), !6350)
    #dbg_value(ptr undef, !6293, !DIExpression(), !6316)
    #dbg_value(i64 1, !6536, !DIExpression(), !6543)
    #dbg_value(ptr %i.z, !6310, !DIExpression(), !6545)
    #dbg_value(ptr %i.z, !6542, !DIExpression(), !6543)
    #dbg_value(ptr %i.g, !6312, !DIExpression(), !6546)
    #dbg_value(ptr poison, !6547, !DIExpression(), !6554)
    #dbg_value(ptr poison, !6553, !DIExpression(), !6556)
  %i.ba = icmp eq ptr %i.z, %i.g, !dbg !6557
  br i1 %i.ba, label %._crit_edge303, label %bb.b, !dbg !6558

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !6842, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6849)
    #dbg_value(ptr %1, !6851, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6860)
    #dbg_value(ptr %1, !6862, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6873)
    #dbg_value(ptr %1, !6875, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6879)
    #dbg_value(ptr %1, !6881, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6888)
    #dbg_value(i32 %.sroa.046.0297, !6848, !DIExpression(), !6890)
    #dbg_value(ptr poison, !6891, !DIExpression(), !6897)
    #dbg_value(ptr poison, !6401, !DIExpression(), !6899)
  %i.bb = zext i32 %.sroa.046.0297 to i64, !dbg !6901 ; 3 uses
    #dbg_value(i64 %i.bb, !6857, !DIExpression(), !6902)
    #dbg_value(i64 %i.bb, !6903, !DIExpression(), !6917)
    #dbg_value(i64 %i.bb, !6919, !DIExpression(), !6926)
  %i.bc = load i64, ptr %i.q, align 16, !dbg !6928, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !6911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
    #dbg_value(ptr poison, !6925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6926)
    #dbg_value(i64 %i.bc, !6911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6917)
    #dbg_value(i64 %i.bc, !6925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6926)
  %i.bd = icmp ugt i64 %i.bc, %i.bb, !dbg !6929
  br i1 %i.bd, label %bb.q, label %bb.r, !dbg !6929

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !6155, !DIExpression(), !6787)
  %i.be = load ptr, ptr %i.o, align 8, !dbg !6930, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !6931, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6939)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !6941
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !6941, !range !6942, !noundef !65
  %i.bh = icmp eq i8 %i.bg, 1, !dbg !6943
  br i1 %i.bh, label %.backedge, label %bb.s, !dbg !6930

bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.r, align 8, !dbg !6944, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bi, !6911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
    #dbg_value(ptr %i.bi, !6925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6926)
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.bb, !dbg !6965
    #dbg_value(ptr %i.bj, !6485, !DIExpression(), !6966)
    #dbg_value(ptr %i.bj, !6473, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6967)
    #dbg_value(ptr %i.bj, !6491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6968)
    #dbg_value(ptr %i.bj, !6969, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6976)
    #dbg_value(ptr poison, !6975, !DIExpression(), !6976)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !6976
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !6976, !noundef !65
  %i.bm = icmp ne i32 %i.bl, 0, !dbg !6976        ; 2 uses
    #dbg_value(i1 %i.bm, !6155, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6787)
  %i.bn = load ptr, ptr %i.o, align 8, !dbg !6930, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !6931, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6939)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !6941
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !6941, !range !6942, !noundef !65
  %i.bq = icmp eq i8 %i.bp, 1, !dbg !6943
  %or.cond = and i1 %i.bm, %i.bq, !dbg !6930
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !6930

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !6929
  unreachable, !dbg !6929

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.be, %bb.p ], [ %i.bn, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bm, %bb.q ], !dbg !6977
    #dbg_value(i8 poison, !6155, !DIExpression(), !6787)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6986, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6987, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(), !7006)
  %.not.i205 = icmp eq i8 %i.ay, 0, !dbg !7008
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !7008

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !7009)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7011)
    #dbg_value(i8 %i.ay, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7012)
    #dbg_value(i8 %i.ay, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7016)
    #dbg_value(i8 %i.ay, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7018)
  %i.bs = add i8 %i.ay, -1, !dbg !7019            ; 2 uses
    #dbg_value(i8 %i.bs, !6990, !DIExpression(), !7011)
    #dbg_value(i8 %i.bs, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7018)
    #dbg_value(i8 %i.bs, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7016)
    #dbg_value(i8 %i.bs, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7012)
  %.lobit.i = lshr i8 %i.bs, 7, !dbg !7020
    #dbg_value(i8 %.lobit.i, !6998, !DIExpression(), !7012)
    #dbg_value(i8 %.lobit.i, !7013, !DIExpression(), !7016)
  %i.bt = zext nneg i8 %.lobit.i to i64, !dbg !7021
  %i.bu = and i8 %i.bs, 127, !dbg !7022
    #dbg_value(i8 %i.bu, !7000, !DIExpression(), !7018)
  %i.bv = zext nneg i8 %i.bu to i128, !dbg !7023
  %i.bw = shl nuw i128 1, %i.bv, !dbg !7023
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.bt, !dbg !7024 ; 2 uses
  %i.by = load i128, ptr %i.bx, align 16, !dbg !7024, !alias.scope !7025, !noundef !65
  %i.bz = or i128 %i.by, %i.bw, !dbg !7024
  store i128 %i.bz, ptr %i.bx, align 16, !dbg !7024, !alias.scope !7025
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, !dbg !7028

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit: ; preds = %bb.s, %bb.t
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !7029)
    #dbg_value(i8 %i.ay, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7030)
    #dbg_value(i8 %i.ay, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7031)
    #dbg_value(i8 %i.ay, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7034)
  %.lobit8.i = lshr i8 %i.ay, 7, !dbg !7035
    #dbg_value(i8 %.lobit8.i, !7002, !DIExpression(), !7030)
    #dbg_value(i8 %.lobit8.i, !7013, !DIExpression(), !7031)
  %i.ca = zext nneg i8 %.lobit8.i to i64, !dbg !7036
  %i.cb = and i8 %i.ay, 127, !dbg !7037
    #dbg_value(i8 %i.cb, !7004, !DIExpression(), !7034)
  %i.cc = zext nneg i8 %i.cb to i128, !dbg !7038
  %i.cd = shl nuw i128 1, %i.cc, !dbg !7038
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ca, !dbg !7039 ; 2 uses
  %i.cf = load i128, ptr %i.ce, align 16, !dbg !7039, !alias.scope !7025, !noundef !65
  %i.cg = or i128 %i.cf, %i.cd, !dbg !7039
  store i128 %i.cg, ptr %i.ce, align 16, !dbg !7039, !alias.scope !7025
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 10, !dbg !7040
  %i.ci = load i8, ptr %i.ch, align 2, !dbg !7040, !range !3847, !noundef !65
  %i.cj = trunc nuw i8 %i.ci to i1, !dbg !7040
  br i1 %i.cj, label %bb.ag, label %bb.u, !dbg !7040

bb.u:                                             ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041), !dbg !7044
    #dbg_value(ptr %i.i, !7045, !DIExpression(), !7058)
    #dbg_value(i32 %.sroa.046.0297, !7052, !DIExpression(), !7058)
    #dbg_value(i8 %i.ay, !7053, !DIExpression(), !7058)
    #dbg_value(i8 %i.ay, !7060, !DIExpression(), !7068)
    #dbg_value(i8 %i.ay, !7070, !DIExpression(), !7073)
    #dbg_value(ptr %i.i, !7075, !DIExpression(), !7079)
    #dbg_value(ptr %i.i, !7081, !DIExpression(), !7085)
    #dbg_value(ptr %i.i, !7087, !DIExpression(), !7090)
    #dbg_value(ptr %i.i, !7092, !DIExpression(), !7095)
    #dbg_value(ptr %i.i, !7097, !DIExpression(), !7100)
    #dbg_value(i32 %.sroa.046.0297, !7078, !DIExpression(), !7102)
    #dbg_value(ptr poison, !7103, !DIExpression(), !7106)
    #dbg_value(ptr poison, !7108, !DIExpression(), !7111)
  %i.ck = zext i32 %.sroa.046.0297 to i64, !dbg !7113 ; 3 uses
    #dbg_value(i64 %i.ck, !7084, !DIExpression(), !7114)
    #dbg_value(i64 %i.ck, !7115, !DIExpression(), !7119)
    #dbg_value(i64 %i.ck, !7121, !DIExpression(), !7125)
  %i.cl = load i64, ptr %i.q, align 16, !dbg !7127, !alias.scope !7041, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7119)
    #dbg_value(ptr poison, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7125)
    #dbg_value(i64 %i.cl, !7118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7119)
    #dbg_value(i64 %i.cl, !7124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7125)
  %i.cm = icmp ugt i64 %i.cl, %i.ck, !dbg !7128
  br i1 %i.cm, label %bb.v, label %bb.w, !dbg !7128

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.r, align 8, !dbg !7129, !alias.scope !7041, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.cn, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7119)
    #dbg_value(ptr %i.cn, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7125)
  %i.co = getelementptr inbounds nuw [20 x i8], ptr %i.cn, i64 %i.ck, !dbg !7136 ; 2 uses
    #dbg_value(ptr %i.co, !7054, !DIExpression(), !7137)
    #dbg_value(ptr %i.co, !7138, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !7142)
    #dbg_value(ptr poison, !7141, !DIExpression(), !7144)
    #dbg_value(ptr %i.co, !7145, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !7149)
    #dbg_value(ptr poison, !7148, !DIExpression(), !7149)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4, !dbg !7149
  %i.cq = load i32, ptr %i.cp, align 4, !dbg !7149, !noalias !7041, !noundef !65 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0, !dbg !7151
  br i1 %i.cr, label %bb.x, label %bb.ad, !dbg !7151

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !dbg !7128, !noalias !7041
  unreachable, !dbg !7128

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7152), !dbg !7155
    #dbg_value(ptr poison, !7156, !DIExpression(), !7189)
    #dbg_value(ptr %i.i, !7196, !DIExpression(), !7203)
    #dbg_value(i32 %.sroa.046.0297, !7197, !DIExpression(), !7203)
    #dbg_value(i8 %i.ay, !7198, !DIExpression(), !7203)
    #dbg_value(ptr poison, !7204, !DIExpression(), !7208)
    #dbg_value(ptr poison, !7220, !DIExpression(), !7223)
    #dbg_value(ptr poison, !7240, !DIExpression(), !7243)
    #dbg_value(ptr %i.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(ptr %i.i, !7216, !DIExpression(), !7246)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 poison, !7215, !DIExpression(), !7246)
  %.sroa.2.0.i292 = load i32, ptr %i.co, align 4, !dbg !7247, !noalias !7152 ; 2 uses
  %i.cs = icmp eq i32 %.sroa.2.0.i292, 0, !dbg !7248
  br i1 %i.cs, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %.lr.ph, !dbg !7254

.lr.ph:                                           ; preds = %bb.x
  %i.ct = load i64, ptr %i.w, align 8, !alias.scope !7152, !noundef !65 ; 2 uses
  %i.cu = load ptr, ptr %i.x, align 16, !nonnull !65
  br label %bb.y, !dbg !7254

bb.y:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.2.0.i293 = phi i32 [ %.sroa.2.0.i292, %.lr.ph ], [ %.sroa.2.0.i, %bb.ab ]
    #dbg_value(ptr %i.i, !7255, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7262)
    #dbg_value(ptr %i.i, !7264, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7271)
    #dbg_value(i32 %.sroa.2.0.i293, !7261, !DIExpression(), !7274)
    #dbg_value(ptr poison, !7220, !DIExpression(), !7275)
    #dbg_value(ptr poison, !7240, !DIExpression(), !7277)
  %i.cv = zext i32 %.sroa.2.0.i293 to i64, !dbg !7280 ; 3 uses
    #dbg_value(i64 %i.cv, !7269, !DIExpression(), !7281)
    #dbg_value(i64 %i.cv, !7282, !DIExpression(), !7298)
    #dbg_value(i64 %i.cv, !7301, !DIExpression(), !7307)
    #dbg_value(ptr poison, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7298)
    #dbg_value(ptr poison, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7307)
    #dbg_value(i64 %i.ct, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7298)
    #dbg_value(i64 %i.ct, !7306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7307)
  %i.cw = icmp ugt i64 %i.ct, %i.cv, !dbg !7310
  br i1 %i.cw, label %bb.z, label %bb.aa, !dbg !7310

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.cu, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7298)
    #dbg_value(ptr %i.cu, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7307)
  %i.cx = getelementptr inbounds nuw [9 x i8], ptr %i.cu, i64 %i.cv, !dbg !7311 ; 3 uses
  %.sroa.04.0.copyload.i = load i8, ptr %i.cx, align 1, !dbg !7312, !noalias !7152 ; 2 uses
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 poison, !7215, !DIExpression(), !7246)
    #dbg_value(i8 %.sroa.04.0.copyload.i, !7200, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7313)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !7313)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !7313)
  %.not.i = icmp ugt i8 %i.ay, %.sroa.04.0.copyload.i, !dbg !7314
  br i1 %.not.i, label %bb.ab, label %bb.ac, !dbg !7314

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !dbg !7310, !noalias !7152
  unreachable, !dbg !7310

bb.ab:                                            ; preds = %bb.z
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 5, !dbg !7312
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !7313)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(i32 poison, !7215, !DIExpression(), !7246)
  %.sroa.2.0.i = load i32, ptr %.sroa.55.0..sroa_idx.i, align 1, !dbg !7247, !noalias !7152 ; 2 uses
    #dbg_value(i32 %.sroa.2.0.i, !7215, !DIExpression(), !7246)
    #dbg_value(i32 %.sroa.2.0.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7245)
    #dbg_value(ptr undef, !7156, !DIExpression(), !7189)
    #dbg_value(ptr undef, !7207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7315)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7248)
    #dbg_value(ptr poison, !7252, !DIExpression(), !7248)
  %i.cy = icmp eq i32 %.sroa.2.0.i, 0, !dbg !7248
  br i1 %i.cy, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.y, !dbg !7254

bb.ac:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 1, !dbg !7312
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !7313)
  %i.cz = icmp eq i8 %i.ay, %.sroa.04.0.copyload.i, !dbg !7316
  br i1 %i.cz, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, !dbg !7316

bb.ad:                                            ; preds = %bb.v
    #dbg_value(ptr %i.i, !7067, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !7317)
  %i.da = zext i8 %i.ay to i64, !dbg !7318
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.da, !dbg !7319
  %i.dc = load i8, ptr %i.db, align 1, !dbg !7319, !alias.scope !7041, !noundef !65
    #dbg_value(i8 %i.dc, !7070, !DIExpression(), !7320)
  %i.dd = zext i8 %i.dc to i64, !dbg !7322
    #dbg_value(i64 %i.dd, !7056, !DIExpression(), !7323)
    #dbg_value(ptr %i.i, !7324, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !7331)
    #dbg_value(ptr %i.i, !7333, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !7343)
    #dbg_value(ptr %i.i, !7346, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !7350)
    #dbg_value(ptr %i.i, !7353, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !7359)
    #dbg_value(ptr %i.co, !7103, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !7362)
    #dbg_value(ptr %i.co, !7108, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !7364)
  %i.de = zext i32 %i.cq to i64, !dbg !7367
  %i.df = add nuw nsw i64 %i.dd, %i.de, !dbg !7368 ; 3 uses
    #dbg_value(i64 %i.df, !7329, !DIExpression(), !7369)
    #dbg_value(i64 %i.df, !7370, !DIExpression(), !7381)
    #dbg_value(i64 %i.df, !7383, !DIExpression(), !7389)
  %i.dg = load i64, ptr %i.u, align 16, !dbg !7392, !alias.scope !7041, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7381)
    #dbg_value(ptr poison, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7389)
    #dbg_value(i64 %i.dg, !7375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7381)
    #dbg_value(i64 %i.dg, !7388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7389)
  %i.dh = icmp ult i64 %i.df, %i.dg, !dbg !7393
  br i1 %i.dh, label %bb.ae, label %bb.af, !dbg !7393

bb.ae:                                            ; preds = %bb.ad
  %i.di = load ptr, ptr %i.v, align 8, !dbg !7394, !alias.scope !7041, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.di, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7381)
    #dbg_value(ptr %i.di, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7389)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df, !dbg !7404
  br label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, !dbg !7405

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.df, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !dbg !7393, !noalias !7041
  unreachable, !dbg !7393

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit: ; preds = %bb.ac, %bb.ae
  %.sroa.0.0.i.in = phi ptr [ %i.dj, %bb.ae ], [ %.sroa.4.0..sroa_idx.i, %bb.ac ]
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.i.in, align 1, !dbg !7137, !noalias !65 ; 2 uses
    #dbg_value(i32 %.sroa.0.0.i, !6179, !DIExpression(), !7406)
    #dbg_value(ptr poison, !6473, !DIExpression(), !7407)
    #dbg_value(ptr poison, !6491, !DIExpression(), !7408)
    #dbg_value(ptr poison, !6969, !DIExpression(), !7409)
    #dbg_value(ptr poison, !6975, !DIExpression(), !7409)
  %.not194 = icmp eq i32 %.sroa.0.0.i, 1, !dbg !7409
  br i1 %.not194, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.at, !dbg !6495

bb.ag:                                            ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  %i.dk = add i8 %i.ay, -65, !dbg !7412
  %or.cond2 = icmp ult i8 %i.dk, 26, !dbg !7412
  br i1 %or.cond2, label %.thread, label %bb.ah, !dbg !7412

.thread:                                          ; preds = %bb.ag
    #dbg_value(ptr poison, !7413, !DIExpression(), !7420)
  %i.dl = or disjoint i8 %i.ay, 32, !dbg !7422
    #dbg_value(i8 %i.dl, !6177, !DIExpression(), !7423)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !7424)
    #dbg_value(i8 %i.dl, !6986, !DIExpression(), !7424)
    #dbg_value(i8 %i.dl, !6987, !DIExpression(), !7424)
    #dbg_value(i8 %i.dl, !6990, !DIExpression(), !7426)
  br label %bb.ai, !dbg !7428

bb.ah:                                            ; preds = %bb.ag
  %i.dm = add i8 %i.ay, -97, !dbg !7429
  %or.cond3 = icmp ult i8 %i.dm, 26, !dbg !7429
  %i.dn = and i8 %i.ay, 95
  %spec.select = select i1 %or.cond3, i8 %i.dn, i8 %i.ay, !dbg !7429 ; 2 uses
    #dbg_value(i8 %spec.select, !6177, !DIExpression(), !7423)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !7424)
    #dbg_value(i8 %spec.select, !6986, !DIExpression(), !7424)
    #dbg_value(i8 %spec.select, !6987, !DIExpression(), !7424)
    #dbg_value(i8 %spec.select, !6990, !DIExpression(), !7426)
  %.not.i206 = icmp eq i8 %spec.select, 0, !dbg !7428
  br i1 %.not.i206, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, label %bb.ai, !dbg !7428

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.060.0229 = phi i8 [ %i.dl, %.thread ], [ %spec.select, %bb.ah ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !7430)
    #dbg_value(i8 %.sroa.060.0229, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7432)
    #dbg_value(i8 %.sroa.060.0229, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7433)
    #dbg_value(i8 %.sroa.060.0229, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7434)
    #dbg_value(i8 %.sroa.060.0229, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7436)
  %i.do = add i8 %.sroa.060.0229, -1, !dbg !7437  ; 2 uses
    #dbg_value(i8 %i.do, !6990, !DIExpression(), !7432)
    #dbg_value(i8 %i.do, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7436)
    #dbg_value(i8 %i.do, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7434)
    #dbg_value(i8 %i.do, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7433)
  %.lobit.i207 = lshr i8 %i.do, 7, !dbg !7438
    #dbg_value(i8 %.lobit.i207, !6998, !DIExpression(), !7433)
    #dbg_value(i8 %.lobit.i207, !7013, !DIExpression(), !7434)
  %i.dp = zext nneg i8 %.lobit.i207 to i64, !dbg !7439
  %i.dq = and i8 %i.do, 127, !dbg !7440
    #dbg_value(i8 %i.dq, !7000, !DIExpression(), !7436)
  %i.dr = zext nneg i8 %i.dq to i128, !dbg !7441
  %i.ds = shl nuw i128 1, %i.dr, !dbg !7441
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.dp, !dbg !7442 ; 2 uses
  %i.du = load i128, ptr %i.dt, align 16, !dbg !7442, !alias.scope !7443, !noundef !65
  %i.dv = or i128 %i.ds, %i.du, !dbg !7442
  store i128 %i.dv, ptr %i.dt, align 16, !dbg !7442, !alias.scope !7443
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, !dbg !7446

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209: ; preds = %bb.ah, %bb.ai
  %.sroa.060.0230 = phi i8 [ 0, %bb.ah ], [ %.sroa.060.0229, %bb.ai ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !7447)
    #dbg_value(i8 %.sroa.060.0230, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7448)
    #dbg_value(i8 %.sroa.060.0230, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !7449)
    #dbg_value(i8 %.sroa.060.0230, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !7451)
  %.lobit8.i208 = lshr i8 %.sroa.060.0230, 7, !dbg !7452
    #dbg_value(i8 %.lobit8.i208, !7002, !DIExpression(), !7448)
    #dbg_value(i8 %.lobit8.i208, !7013, !DIExpression(), !7449)
  %i.dw = zext nneg i8 %.lobit8.i208 to i64, !dbg !7453
  %i.dx = and i8 %.sroa.060.0230, 127, !dbg !7454
    #dbg_value(i8 %i.dx, !7004, !DIExpression(), !7451)
  %i.dy = zext nneg i8 %i.dx to i128, !dbg !7455
  %i.dz = shl nuw i128 1, %i.dy, !dbg !7455
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.dw, !dbg !7456 ; 2 uses
  %i.eb = load i128, ptr %i.ea, align 16, !dbg !7456, !alias.scope !7443, !noundef !65
  %i.ec = or i128 %i.dz, %i.eb, !dbg !7456
  store i128 %i.ec, ptr %i.ea, align 16, !dbg !7456, !alias.scope !7443
  br label %bb.u, !dbg !7457

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread: ; preds = %bb.ab, %bb.x, %bb.ac, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6230
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA11alloc_state(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i64 noundef %.sroa.9.0295), !dbg !7458
  %i.ed = load i32, ptr %i.d, align 8, !dbg !7459, !range !2139, !noundef !65 ; 2 uses
  %.not195 = icmp eq i32 %i.ed, -1, !dbg !7459
  %i.ee = load i32, ptr %i.y, align 4, !dbg !7460 ; 5 uses
  br i1 %.not195, label %bb.ak, label %bb.aj, !dbg !7461

bb.aj:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
    #dbg_value(i32 %i.ed, !6222, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7462)
    #dbg_value(i32 %i.ee, !6222, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7462)
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7463
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5126.0..sroa_idx, i64 16, i1 false), !dbg !7463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7465
    #dbg_value(i32 %i.ed, !6183, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7466)
    #dbg_value(i32 %i.ed, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7467)
    #dbg_value(i32 %i.ee, !6183, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7466)
    #dbg_value(i32 %i.ee, !6207, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7467)
    #dbg_value(i32 %i.ed, !6201, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7468)
    #dbg_value(i32 %i.ee, !6201, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7468)
  store i32 %i.ed, ptr %0, align 8, !dbg !7464
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7464
  store i32 %i.ee, ptr %.sroa.4128.0..sroa_idx, align 4, !dbg !7464
  br label %bb.au, !dbg !7469

bb.ak:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7465
    #dbg_value(i32 %i.ee, !6181, !DIExpression(), !7471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6369
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0297, i8 noundef %i.ay, i32 noundef %i.ee), !dbg !7472
  %i.ef = load i32, ptr %i.c, align 8, !dbg !7473, !range !2139, !noundef !65
  %.not196 = icmp eq i32 %i.ef, -1, !dbg !7473
  br i1 %.not196, label %bb.am, label %bb.al, !dbg !7474

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !7475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7476
  br label %bb.au, !dbg !7477

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7476
  %i.eg = load ptr, ptr %i.o, align 8, !dbg !7479, !nonnull !65, !align !6784, !noundef !65
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 10, !dbg !7479
  %i.ei = load i8, ptr %i.eh, align 2, !dbg !7479, !range !3847, !noundef !65
  %i.ej = trunc nuw i8 %i.ei to i1, !dbg !7479
  br i1 %i.ej, label %bb.an, label %bb.at, !dbg !7479

bb.an:                                            ; preds = %bb.am
  %i.ek = add i8 %i.ay, -65, !dbg !7480
  %or.cond4 = icmp ult i8 %i.ek, 26, !dbg !7480
  br i1 %or.cond4, label %bb.ap, label %bb.ao, !dbg !7480

bb.ao:                                            ; preds = %bb.an
  %i.el = add i8 %i.ay, -97, !dbg !7481
  %or.cond5 = icmp ult i8 %i.el, 26, !dbg !7481
  %i.em = and i8 %i.ay, 95
  %spec.select198 = select i1 %or.cond5, i8 %i.em, i8 %i.ay, !dbg !7481
  br label %bb.aq, !dbg !7481

bb.ap:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !7413, !DIExpression(), !7482)
  %i.en = or disjoint i8 %i.ay, 32, !dbg !7485
    #dbg_value(i8 %i.en, !6191, !DIExpression(), !7486)
  br label %bb.aq, !dbg !7487

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.sroa.072.0 = phi i8 [ %i.en, %bb.ap ], [ %spec.select198, %bb.ao ], !dbg !6830
    #dbg_value(i8 %.sroa.072.0, !6191, !DIExpression(), !7486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6375
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0297, i8 noundef %.sroa.072.0, i32 noundef %i.ee), !dbg !7488
  %i.eo = load i32, ptr %i.b, align 8, !dbg !7489, !range !2139, !noundef !65
  %.not197 = icmp eq i32 %i.eo, -1, !dbg !7489
  br i1 %.not197, label %bb.as, label %bb.ar, !dbg !7490

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !7491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7492
  br label %bb.au, !dbg !7477

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7492
  br label %bb.at, !dbg !7493

bb.at:                                            ; preds = %bb.am, %bb.as, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit
  %.sroa.046.1 = phi i32 [ %.sroa.0.0.i, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit ], [ %i.ee, %bb.as ], [ %i.ee, %bb.am ], !dbg !7406 ; 2 uses
    #dbg_value(i64 %i.ax, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr %i.aw, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(i32 %.sroa.046.1, !6153, !DIExpression(), !6786)
    #dbg_value(i8 poison, !6155, !DIExpression(), !6787)
    #dbg_value(ptr undef, !6282, !DIExpression(), !6292)
    #dbg_value(ptr undef, !6233, !DIExpression(), !6256)
    #dbg_value(i64 1, !6791, !DIExpression(), !6798)
    #dbg_value(ptr %i.aw, !6250, !DIExpression(), !6800)
    #dbg_value(ptr %i.aw, !6797, !DIExpression(), !6798)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !6801)
    #dbg_value(ptr poison, !6802, !DIExpression(), !6809)
    #dbg_value(ptr poison, !6808, !DIExpression(), !6811)
  %i.ep = icmp eq ptr %i.aw, %i.au, !dbg !6812
  br i1 %i.ep, label %._crit_edge, label %.lr.ph298, !dbg !6813

bb.au:                                            ; preds = %bb.aj, %bb.al, %bb.ar, %bb.g, %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6841
  br label %bb.c, !dbg !6578
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralRB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7494 {
bb.a:
    #dbg_declare(ptr poison, !7565, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7580)
    #dbg_declare(ptr poison, !7583, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7590)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7592)
    #dbg_declare(ptr poison, !7547, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7593)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !7594)
    #dbg_value(ptr poison, !6282, !DIExpression(), !7597)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !3659, !DIExpression(), !7598)
    #dbg_value(ptr poison, !7622, !DIExpression(), !7632)
    #dbg_value(ptr %1, !7499, !DIExpression(), !7633)
    #dbg_value(ptr %2, !7500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7633)
    #dbg_value(i64 %3, !7500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7633)
    #dbg_declare(ptr %i.d, !7587, !DIExpression(), !7634)
    #dbg_declare(ptr %i.c, !7635, !DIExpression(), !7650)
    #dbg_declare(ptr poison, !7551, !DIExpression(), !7652)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7653)
    #dbg_declare(ptr %i.b, !7635, !DIExpression(), !7656)
    #dbg_declare(ptr poison, !7557, !DIExpression(), !7658)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7659)
    #dbg_declare(ptr %i.a, !7635, !DIExpression(), !7662)
    #dbg_declare(ptr poison, !7561, !DIExpression(), !7664)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7665)
    #dbg_declare(ptr poison, !7640, !DIExpression(), !7668)
    #dbg_declare(ptr poison, !7574, !DIExpression(), !7669)
    #dbg_declare(ptr poison, !7644, !DIExpression(), !7670)
    #dbg_declare(ptr poison, !7576, !DIExpression(), !7671)
    #dbg_declare(ptr poison, !7648, !DIExpression(), !7672)
    #dbg_declare(ptr poison, !7578, !DIExpression(), !7673)
    #dbg_value(i8 0, !7529, !DIExpression(), !7674)
    #dbg_value(ptr poison, !7675, !DIExpression(), !7679)
    #dbg_value(ptr poison, !7675, !DIExpression(), !7693)
    #dbg_value(ptr poison, !7699, !DIExpression(), !7703)
    #dbg_value(ptr poison, !7709, !DIExpression(), !7713)
    #dbg_value(ptr poison, !7699, !DIExpression(), !7715)
    #dbg_value(ptr poison, !7709, !DIExpression(), !7717)
    #dbg_value(ptr %2, !3775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7720)
    #dbg_value(ptr %2, !3770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7722)
    #dbg_value(ptr %2, !3762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7724)
    #dbg_value(i64 %3, !3775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7720)
    #dbg_value(i64 %3, !3770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7722)
    #dbg_value(i64 %3, !3762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7724)
    #dbg_value(i64 %3, !3763, !DIExpression(), !7726)
    #dbg_value(i64 %3, !3756, !DIExpression(), !7727)
    #dbg_value(ptr %2, !3764, !DIExpression(), !7729)
    #dbg_value(ptr %2, !3755, !DIExpression(), !7727)
  %.idx = shl nuw nsw i64 %3, 5, !dbg !7730
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !7730
    #dbg_value(ptr %2, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(ptr %i.g, !7501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7731)
    #dbg_value(i64 0, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr undef, !7622, !DIExpression(), !7632)
    #dbg_value(ptr undef, !3659, !DIExpression(), !7598)
    #dbg_value(i64 1, !3686, !DIExpression(), !7732)
    #dbg_value(ptr %2, !3678, !DIExpression(), !7734)
    #dbg_value(ptr %2, !3693, !DIExpression(), !7732)
    #dbg_value(ptr %i.g, !3680, !DIExpression(), !7735)
    #dbg_value(ptr poison, !3698, !DIExpression(), !7736)
    #dbg_value(ptr poison, !3705, !DIExpression(), !7738)
  %i.h = icmp eq i64 %3, 0, !dbg !7739
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !7740

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !7740

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.8.0300 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
  %.sroa.0212.0299 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
    #dbg_value(i64 %.sroa.8.0300, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr %.sroa.0212.0299, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0299, i64 32, !dbg !7741 ; 2 uses
    #dbg_value(ptr %i.z, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(ptr %.sroa.0212.0299, !7623, !DIExpression(), !7742)
    #dbg_value(i64 %.sroa.8.0300, !7629, !DIExpression(), !7743)
  %i.aa = add i64 %.sroa.8.0300, 1, !dbg !7744    ; 2 uses
    #dbg_value(i64 %i.aa, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr %i.z, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7745
    #dbg_value(i64 %.sroa.8.0300, !7508, !DIExpression(), !7746)
    #dbg_value(i64 %.sroa.8.0300, !7691, !DIExpression(), !7747)
    #dbg_value(i64 %.sroa.8.0300, !7687, !DIExpression(), !7748)
    #dbg_value(i64 %.sroa.8.0300, !7683, !DIExpression(), !7749)
    #dbg_value(i64 %.sroa.8.0300, !7750, !DIExpression(), !7753)
  store i64 %.sroa.8.0300, ptr %i.f, align 8, !dbg !7745
    #dbg_value(ptr %.sroa.0212.0299, !7510, !DIExpression(), !7746)
  %exitcond = icmp eq i64 %.sroa.8.0300, 2147483647, !dbg !7755
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !7755

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(i64 poison, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr poison, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
  store i32 -1, ptr %0, align 8, !dbg !7756
  br label %bb.c, !dbg !7757

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !7758

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0300 to i32, !dbg !7759 ; 2 uses
    #dbg_value(i32 %i.ab, !7511, !DIExpression(), !7760)
    #dbg_value(ptr undef, !7510, !DIExpression(DW_OP_deref), !7746)
    #dbg_value(ptr poison, !3878, !DIExpression(), !7761)
  %i.ac = getelementptr i8, ptr %.sroa.0212.0299, i64 8, !dbg !7763
  %.val.i = load ptr, ptr %i.ac, align 8, !dbg !7763, !nonnull !65, !noundef !65 ; 3 uses
  %i.ad = getelementptr i8, ptr %.sroa.0212.0299, i64 16, !dbg !7763
  %.val1.i = load i64, ptr %i.ad, align 8, !dbg !7763, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !7517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7764)
    #dbg_value(ptr %.val.i, !7765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7768)
    #dbg_value(ptr %.val.i, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7779)
    #dbg_value(i64 %.val1.i, !7517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7764)
    #dbg_value(i64 %.val1.i, !7765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7768)
    #dbg_value(i64 %.val1.i, !7770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7779)
    #dbg_value(i64 %.val1.i, !7687, !DIExpression(), !7781)
    #dbg_value(i64 %.val1.i, !7683, !DIExpression(), !7782)
    #dbg_value(i64 %.val1.i, !7750, !DIExpression(), !7783)
    #dbg_value(i64 %.val1.i, !7785, !DIExpression(), !7789)
    #dbg_value(i64 %.val1.i, !7791, !DIExpression(), !7795)
    #dbg_value(i64 %.val1.i, !7773, !DIExpression(), !7797)
    #dbg_value(i64 %.val1.i, !7798, !DIExpression(), !7802)
  %i.ae = icmp ugt i64 %.val1.i, 2147483646, !dbg !7804
  br i1 %i.ae, label %bb.g, label %bb.f, !dbg !7804

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !7513, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7805)
    #dbg_value(i32 1, !7569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7806)
    #dbg_value(i32 undef, !7513, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7805)
    #dbg_value(i32 undef, !7569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7806)
    #dbg_value(i64 2147483646, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7806)
    #dbg_value(i64 2147483646, !7513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7805)
    #dbg_value(i64 2147483647, !7569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7806)
    #dbg_value(i64 2147483647, !7513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7805)
    #dbg_value(i32 1, !7570, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7809)
    #dbg_value(i32 undef, !7570, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7809)
    #dbg_value(i64 2147483646, !7570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7809)
    #dbg_value(i64 2147483647, !7570, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7809)
  store i32 1, ptr %0, align 8, !dbg !7810
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7810
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !7810
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7810
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !7810
  br label %bb.au, !dbg !7811

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !7519, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7813)
    #dbg_value(i64 %.val1.i, !7814, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7818)
  %i.af = load i64, ptr %i.j, align 16, !dbg !7820, !noundef !65
    #dbg_value(i64 %i.af, !7788, !DIExpression(), !7789)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !7821)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !7821)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.af), !dbg !7823
  store i64 %..i, ptr %i.j, align 16, !dbg !7824
  %i.ag = load i64, ptr %i.k, align 8, !dbg !7825, !noundef !65
    #dbg_value(i64 %i.ag, !7794, !DIExpression(), !7795)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !7826)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !7826)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.ag), !dbg !7828
  store i64 %..i202, ptr %i.k, align 8, !dbg !7829
    #dbg_value(ptr %i.f, !7525, !DIExpression(), !7830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7831
    #dbg_value(ptr %1, !7832, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !7835)
  %i.ah = load i64, ptr %i.l, align 16, !dbg !7837, !noundef !65 ; 3 uses
  store i64 %i.ah, ptr %i.e, align 8, !dbg !7837
  %i.ai = icmp ult i64 %i.ah, 2305843009213693952, !dbg !7838
  tail call void @llvm.assume(i1 %i.ai), !dbg !7839
    #dbg_value(ptr %i.e, !7528, !DIExpression(), !7830)
  %i.aj = icmp eq i64 %.sroa.8.0300, %i.ah, !dbg !7840
  br i1 %i.aj, label %bb.i, label %bb.h, !dbg !7840, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !7521, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7841)
    #dbg_value(i32 2, !7569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7842)
    #dbg_value(i32 %i.ab, !7521, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7841)
    #dbg_value(i32 %i.ab, !7569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7842)
    #dbg_value(i64 %.val1.i, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7842)
    #dbg_value(i64 %.val1.i, !7521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7841)
    #dbg_value(i64 undef, !7569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7842)
    #dbg_value(i64 undef, !7521, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7841)
    #dbg_value(i32 2, !7572, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7845)
    #dbg_value(i32 %i.ab, !7572, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7845)
    #dbg_value(i64 %.val1.i, !7572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7845)
    #dbg_value(i64 undef, !7572, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7845)
  store i32 2, ptr %0, align 8, !dbg !7846
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7846
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !7846
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7846
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !7846
  br label %bb.au, !dbg !7847

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !7508, !DIExpression(DW_OP_deref), !7746)
    #dbg_value(ptr %i.f, !7691, !DIExpression(DW_OP_deref), !7747)
    #dbg_value(ptr %i.f, !7687, !DIExpression(DW_OP_deref), !7748)
    #dbg_value(ptr %i.f, !7683, !DIExpression(DW_OP_deref), !7749)
    #dbg_value(ptr %i.f, !7750, !DIExpression(DW_OP_deref), !7753)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !7849
  unreachable, !dbg !7849

bb.i:                                             ; preds = %bb.f
  %i.ak = trunc nuw nsw i64 %.val1.i to i32, !dbg !7850
    #dbg_value(i32 %i.ak, !7519, !DIExpression(), !7813)
    #dbg_value(i32 %i.ak, !7814, !DIExpression(), !7818)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7851
    #dbg_value(ptr %i.m, !7817, !DIExpression(), !7818)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !7852)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !7854)
    #dbg_value(i32 %i.ak, !6707, !DIExpression(), !7852)
    #dbg_value(i64 4, !6723, !DIExpression(), !7856)
    #dbg_value(i64 %i.ah, !6708, !DIExpression(), !7859)
    #dbg_value(i64 %i.ah, !6734, !DIExpression(), !7860)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !7862)
  %i.al = load i64, ptr %i.m, align 16, !dbg !7863, !range !1927, !alias.scope !7864, !noundef !65
  %i.am = icmp eq i64 %.sroa.8.0300, %i.al, !dbg !7867
  br i1 %i.am, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7867

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !7868
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7869

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %i.n, align 8, !dbg !7870, !alias.scope !7864, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.an, !6739, !DIExpression(), !7860)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.8.0300, !dbg !7874
    #dbg_value(ptr %i.ao, !6710, !DIExpression(), !7875)
    #dbg_value(ptr %i.ao, !6773, !DIExpression(), !7876)
    #dbg_value(i32 %i.ak, !6778, !DIExpression(), !7876)
  store i32 %i.ak, ptr %i.ao, align 4, !dbg !7878
  store i64 %i.aa, ptr %i.l, align 16, !dbg !7879, !alias.scope !7864
  %i.ap = load ptr, ptr %i.o, align 8, !dbg !7880, !nonnull !65, !align !6784, !noundef !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9, !dbg !7880
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !7880, !range !3847, !noundef !65
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !7880
  br i1 %i.as, label %bb.l, label %bb.k, !dbg !7880

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.at = load i32, ptr %i.p, align 8, !dbg !7881, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.at, !7532, !DIExpression(), !7882)
    #dbg_value(i8 0, !7534, !DIExpression(), !7883)
    #dbg_value(ptr %.val.i, !7775, !DIExpression(), !7884)
    #dbg_value(ptr %.val.i, !7801, !DIExpression(), !7802)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !7885
    #dbg_value(ptr %.val.i, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(ptr %i.au, !7536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7886)
    #dbg_value(i64 0, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(i8 poison, !7534, !DIExpression(), !7883)
    #dbg_value(ptr undef, !6282, !DIExpression(), !7597)
    #dbg_value(ptr undef, !6233, !DIExpression(), !7594)
    #dbg_value(i64 1, !6791, !DIExpression(), !7887)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !7889)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !7887)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !7890)
    #dbg_value(ptr poison, !6802, !DIExpression(), !7891)
    #dbg_value(ptr poison, !6808, !DIExpression(), !7893)
  %i.av = icmp samesign eq i64 %.val1.i, 0, !dbg !7894
  br i1 %i.av, label %._crit_edge, label %.lr.ph298, !dbg !7895

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !7896
  br label %bb.k, !dbg !7897

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.at, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.ax, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.aw, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !7532, !DIExpression(), !7882)
    #dbg_value(i64 %.sroa.9.0295, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr %.sroa.0214.0294, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !7898 ; 2 uses
    #dbg_value(ptr %i.aw, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !7899)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !7900)
  %i.ax = add nuw i64 %.sroa.9.0295, 1, !dbg !7901
    #dbg_value(i64 %i.ax, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr %i.aw, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(i64 %.sroa.9.0295, !7538, !DIExpression(), !7902)
  %i.ay = load i8, ptr %.sroa.0214.0294, align 1, !dbg !7903, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ay, !7540, !DIExpression(), !7902)
    #dbg_value(i8 %i.ay, !7904, !DIExpression(), !7907)
    #dbg_value(i8 %i.ay, !7904, !DIExpression(), !7909)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !7911

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.at, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !7813
    #dbg_value(i64 poison, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr poison, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7663
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !7912
  %i.az = load i32, ptr %i.a, align 8, !dbg !7913, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.az, -1, !dbg !7913
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !7914

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !7915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7916
  br label %bb.au, !dbg !7917

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7916
  br label %.backedge, !dbg !7919

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7920
    #dbg_value(i64 %i.aa, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr %i.z, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(ptr undef, !7622, !DIExpression(), !7632)
    #dbg_value(ptr undef, !3659, !DIExpression(), !7598)
    #dbg_value(i64 1, !3686, !DIExpression(), !7732)
    #dbg_value(ptr %i.z, !3678, !DIExpression(), !7734)
    #dbg_value(ptr %i.z, !3693, !DIExpression(), !7732)
    #dbg_value(ptr %i.g, !3680, !DIExpression(), !7735)
    #dbg_value(ptr poison, !3698, !DIExpression(), !7736)
    #dbg_value(ptr poison, !3705, !DIExpression(), !7738)
  %i.ba = icmp eq ptr %i.z, %i.g, !dbg !7739
  br i1 %i.ba, label %._crit_edge303, label %bb.b, !dbg !7740

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !7921, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7925)
    #dbg_value(ptr %1, !7927, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7931)
    #dbg_value(ptr %1, !7933, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7936)
    #dbg_value(ptr %1, !7938, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7941)
    #dbg_value(ptr %1, !7943, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7946)
    #dbg_value(i32 %.sroa.046.0297, !7924, !DIExpression(), !7948)
    #dbg_value(ptr poison, !7949, !DIExpression(), !7952)
    #dbg_value(ptr poison, !7678, !DIExpression(), !7954)
  %i.bb = zext i32 %.sroa.046.0297 to i64, !dbg !7956 ; 3 uses
    #dbg_value(i64 %i.bb, !7930, !DIExpression(), !7957)
    #dbg_value(i64 %i.bb, !7958, !DIExpression(), !7962)
    #dbg_value(i64 %i.bb, !7964, !DIExpression(), !7968)
  %i.bc = load i64, ptr %i.q, align 16, !dbg !7970, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(ptr poison, !7967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
    #dbg_value(i64 %i.bc, !7961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7962)
    #dbg_value(i64 %i.bc, !7967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7968)
  %i.bd = icmp ugt i64 %i.bc, %i.bb, !dbg !7971
  br i1 %i.bd, label %bb.q, label %bb.r, !dbg !7971

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !7534, !DIExpression(), !7883)
  %i.be = load ptr, ptr %i.o, align 8, !dbg !7972, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !7973, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7976)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !7978
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !7978, !range !6942, !noundef !65
  %i.bh = icmp eq i8 %i.bg, 1, !dbg !7979
  br i1 %i.bh, label %.backedge, label %bb.s, !dbg !7972

bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.r, align 8, !dbg !7980, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bi, !7961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(ptr %i.bi, !7967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.bb, !dbg !7987
    #dbg_value(ptr %i.bj, !7707, !DIExpression(), !7988)
    #dbg_value(ptr %i.bj, !7702, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7989)
    #dbg_value(ptr %i.bj, !7712, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7990)
    #dbg_value(ptr %i.bj, !7991, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7995)
    #dbg_value(ptr poison, !7994, !DIExpression(), !7995)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !7995
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !7995, !noundef !65
  %i.bm = icmp ne i32 %i.bl, 0, !dbg !7995        ; 2 uses
    #dbg_value(i1 %i.bm, !7534, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7883)
  %i.bn = load ptr, ptr %i.o, align 8, !dbg !7972, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !7973, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7976)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !7978
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !7978, !range !6942, !noundef !65
  %i.bq = icmp eq i8 %i.bp, 1, !dbg !7979
  %or.cond = and i1 %i.bm, %i.bq, !dbg !7972
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !7972

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !7971
  unreachable, !dbg !7971

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.be, %bb.p ], [ %i.bn, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bm, %bb.q ], !dbg !7996
    #dbg_value(i8 poison, !7534, !DIExpression(), !7883)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6986, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6987, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(), !7999)
  %.not.i205 = icmp eq i8 %i.ay, 0, !dbg !8001
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !8001

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8002)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8004)
    #dbg_value(i8 %i.ay, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8005)
    #dbg_value(i8 %i.ay, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8006)
    #dbg_value(i8 %i.ay, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8008)
  %i.bs = add i8 %i.ay, -1, !dbg !8009            ; 2 uses
    #dbg_value(i8 %i.bs, !6990, !DIExpression(), !8004)
    #dbg_value(i8 %i.bs, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8008)
    #dbg_value(i8 %i.bs, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8006)
    #dbg_value(i8 %i.bs, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8005)
  %.lobit.i = lshr i8 %i.bs, 7, !dbg !8010
    #dbg_value(i8 %.lobit.i, !6998, !DIExpression(), !8005)
    #dbg_value(i8 %.lobit.i, !7013, !DIExpression(), !8006)
  %i.bt = zext nneg i8 %.lobit.i to i64, !dbg !8011
  %i.bu = and i8 %i.bs, 127, !dbg !8012
    #dbg_value(i8 %i.bu, !7000, !DIExpression(), !8008)
  %i.bv = zext nneg i8 %i.bu to i128, !dbg !8013
  %i.bw = shl nuw i128 1, %i.bv, !dbg !8013
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.bt, !dbg !8014 ; 2 uses
  %i.by = load i128, ptr %i.bx, align 16, !dbg !8014, !alias.scope !8015, !noundef !65
  %i.bz = or i128 %i.by, %i.bw, !dbg !8014
  store i128 %i.bz, ptr %i.bx, align 16, !dbg !8014, !alias.scope !8015
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, !dbg !8018

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit: ; preds = %bb.s, %bb.t
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8019)
    #dbg_value(i8 %i.ay, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8020)
    #dbg_value(i8 %i.ay, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8021)
    #dbg_value(i8 %i.ay, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8023)
  %.lobit8.i = lshr i8 %i.ay, 7, !dbg !8024
    #dbg_value(i8 %.lobit8.i, !7002, !DIExpression(), !8020)
    #dbg_value(i8 %.lobit8.i, !7013, !DIExpression(), !8021)
  %i.ca = zext nneg i8 %.lobit8.i to i64, !dbg !8025
  %i.cb = and i8 %i.ay, 127, !dbg !8026
    #dbg_value(i8 %i.cb, !7004, !DIExpression(), !8023)
  %i.cc = zext nneg i8 %i.cb to i128, !dbg !8027
  %i.cd = shl nuw i128 1, %i.cc, !dbg !8027
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ca, !dbg !8028 ; 2 uses
  %i.cf = load i128, ptr %i.ce, align 16, !dbg !8028, !alias.scope !8015, !noundef !65
  %i.cg = or i128 %i.cf, %i.cd, !dbg !8028
  store i128 %i.cg, ptr %i.ce, align 16, !dbg !8028, !alias.scope !8015
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 10, !dbg !8029
  %i.ci = load i8, ptr %i.ch, align 2, !dbg !8029, !range !3847, !noundef !65
  %i.cj = trunc nuw i8 %i.ci to i1, !dbg !8029
  br i1 %i.cj, label %bb.ag, label %bb.u, !dbg !8029

bb.u:                                             ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8030), !dbg !8033
    #dbg_value(ptr %i.i, !7045, !DIExpression(), !8034)
    #dbg_value(i32 %.sroa.046.0297, !7052, !DIExpression(), !8034)
    #dbg_value(i8 %i.ay, !7053, !DIExpression(), !8034)
    #dbg_value(i8 %i.ay, !7060, !DIExpression(), !8036)
    #dbg_value(i8 %i.ay, !7070, !DIExpression(), !8038)
    #dbg_value(ptr %i.i, !7075, !DIExpression(), !8040)
    #dbg_value(ptr %i.i, !7081, !DIExpression(), !8042)
    #dbg_value(ptr %i.i, !7087, !DIExpression(), !8044)
    #dbg_value(ptr %i.i, !7092, !DIExpression(), !8046)
    #dbg_value(ptr %i.i, !7097, !DIExpression(), !8048)
    #dbg_value(i32 %.sroa.046.0297, !7078, !DIExpression(), !8050)
    #dbg_value(ptr poison, !7103, !DIExpression(), !8051)
    #dbg_value(ptr poison, !7108, !DIExpression(), !8053)
  %i.ck = zext i32 %.sroa.046.0297 to i64, !dbg !8055 ; 3 uses
    #dbg_value(i64 %i.ck, !7084, !DIExpression(), !8056)
    #dbg_value(i64 %i.ck, !7115, !DIExpression(), !8057)
    #dbg_value(i64 %i.ck, !7121, !DIExpression(), !8059)
  %i.cl = load i64, ptr %i.q, align 16, !dbg !8061, !alias.scope !8030, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8057)
    #dbg_value(ptr poison, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8059)
    #dbg_value(i64 %i.cl, !7118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8057)
    #dbg_value(i64 %i.cl, !7124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8059)
  %i.cm = icmp ugt i64 %i.cl, %i.ck, !dbg !8062
  br i1 %i.cm, label %bb.v, label %bb.w, !dbg !8062

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.r, align 8, !dbg !8063, !alias.scope !8030, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.cn, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8057)
    #dbg_value(ptr %i.cn, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8059)
  %i.co = getelementptr inbounds nuw [20 x i8], ptr %i.cn, i64 %i.ck, !dbg !8067 ; 2 uses
    #dbg_value(ptr %i.co, !7054, !DIExpression(), !8068)
    #dbg_value(ptr %i.co, !7138, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8069)
    #dbg_value(ptr poison, !7141, !DIExpression(), !8071)
    #dbg_value(ptr %i.co, !7145, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8072)
    #dbg_value(ptr poison, !7148, !DIExpression(), !8072)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4, !dbg !8072
  %i.cq = load i32, ptr %i.cp, align 4, !dbg !8072, !noalias !8030, !noundef !65 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0, !dbg !8074
  br i1 %i.cr, label %bb.x, label %bb.ad, !dbg !8074

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !dbg !8062, !noalias !8030
  unreachable, !dbg !8062

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8075), !dbg !8078
    #dbg_value(ptr poison, !7156, !DIExpression(), !8079)
    #dbg_value(ptr %i.i, !7196, !DIExpression(), !8082)
    #dbg_value(i32 %.sroa.046.0297, !7197, !DIExpression(), !8082)
    #dbg_value(i8 %i.ay, !7198, !DIExpression(), !8082)
    #dbg_value(ptr poison, !7204, !DIExpression(), !8083)
    #dbg_value(ptr poison, !7220, !DIExpression(), !8086)
    #dbg_value(ptr poison, !7240, !DIExpression(), !8090)
    #dbg_value(ptr %i.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8092)
    #dbg_value(ptr %i.i, !7216, !DIExpression(), !8093)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8092)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8093)
  %.sroa.2.0.i292 = load i32, ptr %i.co, align 4, !dbg !8094, !noalias !8075 ; 2 uses
  %i.cs = icmp eq i32 %.sroa.2.0.i292, 0, !dbg !8095
  br i1 %i.cs, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %.lr.ph, !dbg !8097

.lr.ph:                                           ; preds = %bb.x
  %i.ct = load i64, ptr %i.w, align 8, !alias.scope !8075, !noundef !65 ; 2 uses
  %i.cu = load ptr, ptr %i.x, align 16, !nonnull !65
  br label %bb.y, !dbg !8097

bb.y:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.2.0.i293 = phi i32 [ %.sroa.2.0.i292, %.lr.ph ], [ %.sroa.2.0.i, %bb.ab ]
    #dbg_value(ptr %i.i, !7255, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8098)
    #dbg_value(ptr %i.i, !7264, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8100)
    #dbg_value(i32 %.sroa.2.0.i293, !7261, !DIExpression(), !8102)
    #dbg_value(ptr poison, !7220, !DIExpression(), !8103)
    #dbg_value(ptr poison, !7240, !DIExpression(), !8105)
  %i.cv = zext i32 %.sroa.2.0.i293 to i64, !dbg !8107 ; 3 uses
    #dbg_value(i64 %i.cv, !7269, !DIExpression(), !8108)
    #dbg_value(i64 %i.cv, !7282, !DIExpression(), !8109)
    #dbg_value(i64 %i.cv, !7301, !DIExpression(), !8111)
    #dbg_value(ptr poison, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8109)
    #dbg_value(ptr poison, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8111)
    #dbg_value(i64 %i.ct, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8109)
    #dbg_value(i64 %i.ct, !7306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8111)
  %i.cw = icmp ugt i64 %i.ct, %i.cv, !dbg !8113
  br i1 %i.cw, label %bb.z, label %bb.aa, !dbg !8113

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.cu, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8109)
    #dbg_value(ptr %i.cu, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8111)
  %i.cx = getelementptr inbounds nuw [9 x i8], ptr %i.cu, i64 %i.cv, !dbg !8114 ; 3 uses
  %.sroa.04.0.copyload.i = load i8, ptr %i.cx, align 1, !dbg !8115, !noalias !8075 ; 2 uses
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8092)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8093)
    #dbg_value(i8 %.sroa.04.0.copyload.i, !7200, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !8116)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !8116)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !8116)
  %.not.i = icmp ugt i8 %i.ay, %.sroa.04.0.copyload.i, !dbg !8117
  br i1 %.not.i, label %bb.ab, label %bb.ac, !dbg !8117

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !dbg !8113, !noalias !8075
  unreachable, !dbg !8113

bb.ab:                                            ; preds = %bb.z
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 5, !dbg !8115
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !8116)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8092)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8093)
  %.sroa.2.0.i = load i32, ptr %.sroa.55.0..sroa_idx.i, align 1, !dbg !8094, !noalias !8075 ; 2 uses
    #dbg_value(i32 %.sroa.2.0.i, !7215, !DIExpression(), !8093)
    #dbg_value(i32 %.sroa.2.0.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8092)
    #dbg_value(ptr undef, !7156, !DIExpression(), !8079)
    #dbg_value(ptr undef, !7207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8118)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8095)
    #dbg_value(ptr poison, !7252, !DIExpression(), !8095)
  %i.cy = icmp eq i32 %.sroa.2.0.i, 0, !dbg !8095
  br i1 %i.cy, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.y, !dbg !8097

bb.ac:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 1, !dbg !8115
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !8116)
  %i.cz = icmp eq i8 %i.ay, %.sroa.04.0.copyload.i, !dbg !8119
  br i1 %i.cz, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, !dbg !8119

bb.ad:                                            ; preds = %bb.v
    #dbg_value(ptr %i.i, !7067, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !8120)
  %i.da = zext i8 %i.ay to i64, !dbg !8121
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.da, !dbg !8122
  %i.dc = load i8, ptr %i.db, align 1, !dbg !8122, !alias.scope !8030, !noundef !65
    #dbg_value(i8 %i.dc, !7070, !DIExpression(), !8123)
  %i.dd = zext i8 %i.dc to i64, !dbg !8125
    #dbg_value(i64 %i.dd, !7056, !DIExpression(), !8126)
    #dbg_value(ptr %i.i, !7324, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8127)
    #dbg_value(ptr %i.i, !7333, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8129)
    #dbg_value(ptr %i.i, !7346, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8131)
    #dbg_value(ptr %i.i, !7353, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8133)
    #dbg_value(ptr %i.co, !7103, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8135)
    #dbg_value(ptr %i.co, !7108, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8137)
  %i.de = zext i32 %i.cq to i64, !dbg !8139
  %i.df = add nuw nsw i64 %i.dd, %i.de, !dbg !8140 ; 3 uses
    #dbg_value(i64 %i.df, !7329, !DIExpression(), !8141)
    #dbg_value(i64 %i.df, !7370, !DIExpression(), !8142)
    #dbg_value(i64 %i.df, !7383, !DIExpression(), !8144)
  %i.dg = load i64, ptr %i.u, align 16, !dbg !8146, !alias.scope !8030, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8142)
    #dbg_value(ptr poison, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8144)
    #dbg_value(i64 %i.dg, !7375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8142)
    #dbg_value(i64 %i.dg, !7388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8144)
  %i.dh = icmp ult i64 %i.df, %i.dg, !dbg !8147
  br i1 %i.dh, label %bb.ae, label %bb.af, !dbg !8147

bb.ae:                                            ; preds = %bb.ad
  %i.di = load ptr, ptr %i.v, align 8, !dbg !8148, !alias.scope !8030, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.di, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8142)
    #dbg_value(ptr %i.di, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8144)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df, !dbg !8152
  br label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, !dbg !8153

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.df, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !dbg !8147, !noalias !8030
  unreachable, !dbg !8147

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit: ; preds = %bb.ac, %bb.ae
  %.sroa.0.0.i.in = phi ptr [ %i.dj, %bb.ae ], [ %.sroa.4.0..sroa_idx.i, %bb.ac ]
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.i.in, align 1, !dbg !8068, !noalias !65 ; 2 uses
    #dbg_value(i32 %.sroa.0.0.i, !7543, !DIExpression(), !8154)
    #dbg_value(ptr poison, !7702, !DIExpression(), !8155)
    #dbg_value(ptr poison, !7712, !DIExpression(), !8156)
    #dbg_value(ptr poison, !7991, !DIExpression(), !8157)
    #dbg_value(ptr poison, !7994, !DIExpression(), !8157)
  %.not194 = icmp eq i32 %.sroa.0.0.i, 1, !dbg !8157
  br i1 %.not194, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.at, !dbg !7716

bb.ag:                                            ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  %i.dk = add i8 %i.ay, -65, !dbg !8160
  %or.cond2 = icmp ult i8 %i.dk, 26, !dbg !8160
  br i1 %or.cond2, label %.thread, label %bb.ah, !dbg !8160

.thread:                                          ; preds = %bb.ag
    #dbg_value(ptr poison, !8161, !DIExpression(), !8164)
  %i.dl = or disjoint i8 %i.ay, 32, !dbg !8166
    #dbg_value(i8 %i.dl, !7541, !DIExpression(), !8167)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8168)
    #dbg_value(i8 %i.dl, !6986, !DIExpression(), !8168)
    #dbg_value(i8 %i.dl, !6987, !DIExpression(), !8168)
    #dbg_value(i8 %i.dl, !6990, !DIExpression(), !8170)
  br label %bb.ai, !dbg !8172

bb.ah:                                            ; preds = %bb.ag
  %i.dm = add i8 %i.ay, -97, !dbg !8173
  %or.cond3 = icmp ult i8 %i.dm, 26, !dbg !8173
  %i.dn = and i8 %i.ay, 95
  %spec.select = select i1 %or.cond3, i8 %i.dn, i8 %i.ay, !dbg !8173 ; 2 uses
    #dbg_value(i8 %spec.select, !7541, !DIExpression(), !8167)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8168)
    #dbg_value(i8 %spec.select, !6986, !DIExpression(), !8168)
    #dbg_value(i8 %spec.select, !6987, !DIExpression(), !8168)
    #dbg_value(i8 %spec.select, !6990, !DIExpression(), !8170)
  %.not.i206 = icmp eq i8 %spec.select, 0, !dbg !8172
  br i1 %.not.i206, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, label %bb.ai, !dbg !8172

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.060.0229 = phi i8 [ %i.dl, %.thread ], [ %spec.select, %bb.ah ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8174)
    #dbg_value(i8 %.sroa.060.0229, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8176)
    #dbg_value(i8 %.sroa.060.0229, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8177)
    #dbg_value(i8 %.sroa.060.0229, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8178)
    #dbg_value(i8 %.sroa.060.0229, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8180)
  %i.do = add i8 %.sroa.060.0229, -1, !dbg !8181  ; 2 uses
    #dbg_value(i8 %i.do, !6990, !DIExpression(), !8176)
    #dbg_value(i8 %i.do, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8180)
    #dbg_value(i8 %i.do, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8178)
    #dbg_value(i8 %i.do, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8177)
  %.lobit.i207 = lshr i8 %i.do, 7, !dbg !8182
    #dbg_value(i8 %.lobit.i207, !6998, !DIExpression(), !8177)
    #dbg_value(i8 %.lobit.i207, !7013, !DIExpression(), !8178)
  %i.dp = zext nneg i8 %.lobit.i207 to i64, !dbg !8183
  %i.dq = and i8 %i.do, 127, !dbg !8184
    #dbg_value(i8 %i.dq, !7000, !DIExpression(), !8180)
  %i.dr = zext nneg i8 %i.dq to i128, !dbg !8185
  %i.ds = shl nuw i128 1, %i.dr, !dbg !8185
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.dp, !dbg !8186 ; 2 uses
  %i.du = load i128, ptr %i.dt, align 16, !dbg !8186, !alias.scope !8187, !noundef !65
  %i.dv = or i128 %i.ds, %i.du, !dbg !8186
  store i128 %i.dv, ptr %i.dt, align 16, !dbg !8186, !alias.scope !8187
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, !dbg !8190

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209: ; preds = %bb.ah, %bb.ai
  %.sroa.060.0230 = phi i8 [ 0, %bb.ah ], [ %.sroa.060.0229, %bb.ai ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8191)
    #dbg_value(i8 %.sroa.060.0230, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8192)
    #dbg_value(i8 %.sroa.060.0230, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8193)
    #dbg_value(i8 %.sroa.060.0230, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8195)
  %.lobit8.i208 = lshr i8 %.sroa.060.0230, 7, !dbg !8196
    #dbg_value(i8 %.lobit8.i208, !7002, !DIExpression(), !8192)
    #dbg_value(i8 %.lobit8.i208, !7013, !DIExpression(), !8193)
  %i.dw = zext nneg i8 %.lobit8.i208 to i64, !dbg !8197
  %i.dx = and i8 %.sroa.060.0230, 127, !dbg !8198
    #dbg_value(i8 %i.dx, !7004, !DIExpression(), !8195)
  %i.dy = zext nneg i8 %i.dx to i128, !dbg !8199
  %i.dz = shl nuw i128 1, %i.dy, !dbg !8199
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.dw, !dbg !8200 ; 2 uses
  %i.eb = load i128, ptr %i.ea, align 16, !dbg !8200, !alias.scope !8187, !noundef !65
  %i.ec = or i128 %i.dz, %i.eb, !dbg !8200
  store i128 %i.ec, ptr %i.ea, align 16, !dbg !8200, !alias.scope !8187
  br label %bb.u, !dbg !8201

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread: ; preds = %bb.ab, %bb.x, %bb.ac, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7591
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA11alloc_state(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i64 noundef %.sroa.9.0295), !dbg !8202
  %i.ed = load i32, ptr %i.d, align 8, !dbg !8203, !range !2139, !noundef !65 ; 2 uses
  %.not195 = icmp eq i32 %i.ed, -1, !dbg !8203
  %i.ee = load i32, ptr %i.y, align 4, !dbg !8204 ; 5 uses
  br i1 %.not195, label %bb.ak, label %bb.aj, !dbg !8205

bb.aj:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
    #dbg_value(i32 %i.ed, !7583, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8206)
    #dbg_value(i32 %i.ee, !7583, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8206)
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8207
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5126.0..sroa_idx, i64 16, i1 false), !dbg !8207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8209
    #dbg_value(i32 %i.ed, !7547, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8210)
    #dbg_value(i32 %i.ed, !7569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8211)
    #dbg_value(i32 %i.ee, !7547, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8210)
    #dbg_value(i32 %i.ee, !7569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8211)
    #dbg_value(i32 %i.ed, !7565, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8212)
    #dbg_value(i32 %i.ee, !7565, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8212)
  store i32 %i.ed, ptr %0, align 8, !dbg !8208
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !8208
  store i32 %i.ee, ptr %.sroa.4128.0..sroa_idx, align 4, !dbg !8208
  br label %bb.au, !dbg !8213

bb.ak:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8209
    #dbg_value(i32 %i.ee, !7545, !DIExpression(), !8215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7651
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0297, i8 noundef %i.ay, i32 noundef %i.ee), !dbg !8216
  %i.ef = load i32, ptr %i.c, align 8, !dbg !8217, !range !2139, !noundef !65
  %.not196 = icmp eq i32 %i.ef, -1, !dbg !8217
  br i1 %.not196, label %bb.am, label %bb.al, !dbg !8218

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !8219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8220
  br label %bb.au, !dbg !8221

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8220
  %i.eg = load ptr, ptr %i.o, align 8, !dbg !8223, !nonnull !65, !align !6784, !noundef !65
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 10, !dbg !8223
  %i.ei = load i8, ptr %i.eh, align 2, !dbg !8223, !range !3847, !noundef !65
  %i.ej = trunc nuw i8 %i.ei to i1, !dbg !8223
  br i1 %i.ej, label %bb.an, label %bb.at, !dbg !8223

bb.an:                                            ; preds = %bb.am
  %i.ek = add i8 %i.ay, -65, !dbg !8224
  %or.cond4 = icmp ult i8 %i.ek, 26, !dbg !8224
  br i1 %or.cond4, label %bb.ap, label %bb.ao, !dbg !8224

bb.ao:                                            ; preds = %bb.an
  %i.el = add i8 %i.ay, -97, !dbg !8225
  %or.cond5 = icmp ult i8 %i.el, 26, !dbg !8225
  %i.em = and i8 %i.ay, 95
  %spec.select198 = select i1 %or.cond5, i8 %i.em, i8 %i.ay, !dbg !8225
  br label %bb.aq, !dbg !8225

bb.ap:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !8161, !DIExpression(), !8226)
  %i.en = or disjoint i8 %i.ay, 32, !dbg !8229
    #dbg_value(i8 %i.en, !7555, !DIExpression(), !8230)
  br label %bb.aq, !dbg !8231

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.sroa.072.0 = phi i8 [ %i.en, %bb.ap ], [ %spec.select198, %bb.ao ], !dbg !7909
    #dbg_value(i8 %.sroa.072.0, !7555, !DIExpression(), !8230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7657
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0297, i8 noundef %.sroa.072.0, i32 noundef %i.ee), !dbg !8232
  %i.eo = load i32, ptr %i.b, align 8, !dbg !8233, !range !2139, !noundef !65
  %.not197 = icmp eq i32 %i.eo, -1, !dbg !8233
  br i1 %.not197, label %bb.as, label %bb.ar, !dbg !8234

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !8235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8236
  br label %bb.au, !dbg !8221

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8236
  br label %bb.at, !dbg !8237

bb.at:                                            ; preds = %bb.am, %bb.as, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit
  %.sroa.046.1 = phi i32 [ %.sroa.0.0.i, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit ], [ %i.ee, %bb.as ], [ %i.ee, %bb.am ], !dbg !8154 ; 2 uses
    #dbg_value(i64 %i.ax, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr %i.aw, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(i32 %.sroa.046.1, !7532, !DIExpression(), !7882)
    #dbg_value(i8 poison, !7534, !DIExpression(), !7883)
    #dbg_value(ptr undef, !6282, !DIExpression(), !7597)
    #dbg_value(ptr undef, !6233, !DIExpression(), !7594)
    #dbg_value(i64 1, !6791, !DIExpression(), !7887)
    #dbg_value(ptr %i.aw, !6250, !DIExpression(), !7889)
    #dbg_value(ptr %i.aw, !6797, !DIExpression(), !7887)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !7890)
    #dbg_value(ptr poison, !6802, !DIExpression(), !7891)
    #dbg_value(ptr poison, !6808, !DIExpression(), !7893)
  %i.ep = icmp eq ptr %i.aw, %i.au, !dbg !7894
  br i1 %i.ep, label %._crit_edge, label %.lr.ph298, !dbg !7895

bb.au:                                            ; preds = %bb.aj, %bb.al, %bb.ar, %bb.g, %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7920
  br label %bb.c, !dbg !7757
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSRShRB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8238 {
bb.a:
    #dbg_declare(ptr poison, !8309, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8324)
    #dbg_declare(ptr poison, !8327, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8334)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8336)
    #dbg_declare(ptr poison, !8291, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8337)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !8338)
    #dbg_value(ptr poison, !6282, !DIExpression(), !8341)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !4134, !DIExpression(), !8342)
    #dbg_value(ptr poison, !8366, !DIExpression(), !8376)
    #dbg_value(ptr %1, !8243, !DIExpression(), !8377)
    #dbg_value(ptr %2, !8244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8377)
    #dbg_value(i64 %3, !8244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8377)
    #dbg_declare(ptr %i.d, !8331, !DIExpression(), !8378)
    #dbg_declare(ptr %i.c, !8379, !DIExpression(), !8394)
    #dbg_declare(ptr poison, !8295, !DIExpression(), !8396)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8397)
    #dbg_declare(ptr %i.b, !8379, !DIExpression(), !8400)
    #dbg_declare(ptr poison, !8301, !DIExpression(), !8402)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8403)
    #dbg_declare(ptr %i.a, !8379, !DIExpression(), !8406)
    #dbg_declare(ptr poison, !8305, !DIExpression(), !8408)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8409)
    #dbg_declare(ptr poison, !8384, !DIExpression(), !8412)
    #dbg_declare(ptr poison, !8318, !DIExpression(), !8413)
    #dbg_declare(ptr poison, !8388, !DIExpression(), !8414)
    #dbg_declare(ptr poison, !8320, !DIExpression(), !8415)
    #dbg_declare(ptr poison, !8392, !DIExpression(), !8416)
    #dbg_declare(ptr poison, !8322, !DIExpression(), !8417)
    #dbg_value(i8 0, !8273, !DIExpression(), !8418)
    #dbg_value(ptr poison, !8419, !DIExpression(), !8423)
    #dbg_value(ptr poison, !8419, !DIExpression(), !8437)
    #dbg_value(ptr poison, !8443, !DIExpression(), !8447)
    #dbg_value(ptr poison, !8453, !DIExpression(), !8457)
    #dbg_value(ptr poison, !8443, !DIExpression(), !8459)
    #dbg_value(ptr poison, !8453, !DIExpression(), !8461)
    #dbg_value(ptr %2, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8464)
    #dbg_value(ptr %2, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8466)
    #dbg_value(ptr %2, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8468)
    #dbg_value(i64 %3, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8464)
    #dbg_value(i64 %3, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8466)
    #dbg_value(i64 %3, !4229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8468)
    #dbg_value(i64 %3, !4230, !DIExpression(), !8470)
    #dbg_value(i64 %3, !4223, !DIExpression(), !8471)
    #dbg_value(ptr %2, !4231, !DIExpression(), !8473)
    #dbg_value(ptr %2, !4222, !DIExpression(), !8471)
  %.idx = shl nuw nsw i64 %3, 4, !dbg !8474
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !8474
    #dbg_value(ptr %2, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(ptr %i.g, !8245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8475)
    #dbg_value(i64 0, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr undef, !8366, !DIExpression(), !8376)
    #dbg_value(ptr undef, !4134, !DIExpression(), !8342)
    #dbg_value(i64 1, !4159, !DIExpression(), !8476)
    #dbg_value(ptr %2, !4151, !DIExpression(), !8478)
    #dbg_value(ptr %2, !4165, !DIExpression(), !8476)
    #dbg_value(ptr %i.g, !4153, !DIExpression(), !8479)
    #dbg_value(ptr poison, !4170, !DIExpression(), !8480)
    #dbg_value(ptr poison, !4176, !DIExpression(), !8482)
  %i.h = icmp eq i64 %3, 0, !dbg !8483
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !8484

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !8484

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.8.0300 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
  %.sroa.0212.0299 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
    #dbg_value(i64 %.sroa.8.0300, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr %.sroa.0212.0299, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0299, i64 16, !dbg !8485 ; 2 uses
    #dbg_value(ptr %i.z, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(ptr %.sroa.0212.0299, !8367, !DIExpression(), !8486)
    #dbg_value(i64 %.sroa.8.0300, !8373, !DIExpression(), !8487)
  %i.aa = add i64 %.sroa.8.0300, 1, !dbg !8488    ; 2 uses
    #dbg_value(i64 %i.aa, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr %i.z, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8489
    #dbg_value(i64 %.sroa.8.0300, !8252, !DIExpression(), !8490)
    #dbg_value(i64 %.sroa.8.0300, !8435, !DIExpression(), !8491)
    #dbg_value(i64 %.sroa.8.0300, !8431, !DIExpression(), !8492)
    #dbg_value(i64 %.sroa.8.0300, !8427, !DIExpression(), !8493)
    #dbg_value(i64 %.sroa.8.0300, !8494, !DIExpression(), !8497)
  store i64 %.sroa.8.0300, ptr %i.f, align 8, !dbg !8489
    #dbg_value(ptr %.sroa.0212.0299, !8254, !DIExpression(), !8490)
  %exitcond = icmp eq i64 %.sroa.8.0300, 2147483647, !dbg !8499
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !8499

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(i64 poison, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr poison, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
  store i32 -1, ptr %0, align 8, !dbg !8500
  br label %bb.c, !dbg !8501

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !8502

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0300 to i32, !dbg !8503 ; 2 uses
    #dbg_value(i32 %i.ab, !8255, !DIExpression(), !8504)
    #dbg_value(ptr undef, !8254, !DIExpression(DW_OP_deref), !8490)
    #dbg_value(ptr poison, !4330, !DIExpression(), !8505)
  %.val.i = load ptr, ptr %.sroa.0212.0299, align 8, !dbg !8507, !nonnull !65, !noundef !65 ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0212.0299, i64 8, !dbg !8507
  %.val1.i = load i64, ptr %i.ac, align 8, !dbg !8507, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !8261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8508)
    #dbg_value(ptr %.val.i, !8509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8512)
    #dbg_value(ptr %.val.i, !8514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8523)
    #dbg_value(i64 %.val1.i, !8261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8508)
    #dbg_value(i64 %.val1.i, !8509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8512)
    #dbg_value(i64 %.val1.i, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8523)
    #dbg_value(i64 %.val1.i, !8431, !DIExpression(), !8525)
    #dbg_value(i64 %.val1.i, !8427, !DIExpression(), !8526)
    #dbg_value(i64 %.val1.i, !8494, !DIExpression(), !8527)
    #dbg_value(i64 %.val1.i, !8529, !DIExpression(), !8533)
    #dbg_value(i64 %.val1.i, !8535, !DIExpression(), !8539)
    #dbg_value(i64 %.val1.i, !8517, !DIExpression(), !8541)
    #dbg_value(i64 %.val1.i, !8542, !DIExpression(), !8546)
  %i.ad = icmp ugt i64 %.val1.i, 2147483646, !dbg !8548
  br i1 %i.ad, label %bb.g, label %bb.f, !dbg !8548

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !8257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8549)
    #dbg_value(i32 1, !8313, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8550)
    #dbg_value(i32 undef, !8257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8549)
    #dbg_value(i32 undef, !8313, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8550)
    #dbg_value(i64 2147483646, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8550)
    #dbg_value(i64 2147483646, !8257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8549)
    #dbg_value(i64 2147483647, !8313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8550)
    #dbg_value(i64 2147483647, !8257, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8549)
    #dbg_value(i32 1, !8314, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8553)
    #dbg_value(i32 undef, !8314, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8553)
    #dbg_value(i64 2147483646, !8314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8553)
    #dbg_value(i64 2147483647, !8314, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8553)
  store i32 1, ptr %0, align 8, !dbg !8554
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8554
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !8554
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8554
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !8554
  br label %bb.au, !dbg !8555

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !8263, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8557)
    #dbg_value(i64 %.val1.i, !8558, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8562)
  %i.ae = load i64, ptr %i.j, align 16, !dbg !8564, !noundef !65
    #dbg_value(i64 %i.ae, !8532, !DIExpression(), !8533)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !8565)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !8565)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.ae), !dbg !8567
  store i64 %..i, ptr %i.j, align 16, !dbg !8568
  %i.af = load i64, ptr %i.k, align 8, !dbg !8569, !noundef !65
    #dbg_value(i64 %i.af, !8538, !DIExpression(), !8539)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !8570)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !8570)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.af), !dbg !8572
  store i64 %..i202, ptr %i.k, align 8, !dbg !8573
    #dbg_value(ptr %i.f, !8269, !DIExpression(), !8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8575
    #dbg_value(ptr %1, !8576, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !8579)
  %i.ag = load i64, ptr %i.l, align 16, !dbg !8581, !noundef !65 ; 3 uses
  store i64 %i.ag, ptr %i.e, align 8, !dbg !8581
  %i.ah = icmp ult i64 %i.ag, 2305843009213693952, !dbg !8582
  tail call void @llvm.assume(i1 %i.ah), !dbg !8583
    #dbg_value(ptr %i.e, !8272, !DIExpression(), !8574)
  %i.ai = icmp eq i64 %.sroa.8.0300, %i.ag, !dbg !8584
  br i1 %i.ai, label %bb.i, label %bb.h, !dbg !8584, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !8265, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8585)
    #dbg_value(i32 2, !8313, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8586)
    #dbg_value(i32 %i.ab, !8265, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8585)
    #dbg_value(i32 %i.ab, !8313, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8586)
    #dbg_value(i64 %.val1.i, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8586)
    #dbg_value(i64 %.val1.i, !8265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8585)
    #dbg_value(i64 undef, !8313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8586)
    #dbg_value(i64 undef, !8265, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8585)
    #dbg_value(i32 2, !8316, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8589)
    #dbg_value(i32 %i.ab, !8316, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8589)
    #dbg_value(i64 %.val1.i, !8316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8589)
    #dbg_value(i64 undef, !8316, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8589)
  store i32 2, ptr %0, align 8, !dbg !8590
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !8590
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !8590
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8590
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !8590
  br label %bb.au, !dbg !8591

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !8252, !DIExpression(DW_OP_deref), !8490)
    #dbg_value(ptr %i.f, !8435, !DIExpression(DW_OP_deref), !8491)
    #dbg_value(ptr %i.f, !8431, !DIExpression(DW_OP_deref), !8492)
    #dbg_value(ptr %i.f, !8427, !DIExpression(DW_OP_deref), !8493)
    #dbg_value(ptr %i.f, !8494, !DIExpression(DW_OP_deref), !8497)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !8593
  unreachable, !dbg !8593

bb.i:                                             ; preds = %bb.f
  %i.aj = trunc nuw nsw i64 %.val1.i to i32, !dbg !8594
    #dbg_value(i32 %i.aj, !8263, !DIExpression(), !8557)
    #dbg_value(i32 %i.aj, !8558, !DIExpression(), !8562)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8595
    #dbg_value(ptr %i.m, !8561, !DIExpression(), !8562)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !8596)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !8598)
    #dbg_value(i32 %i.aj, !6707, !DIExpression(), !8596)
    #dbg_value(i64 4, !6723, !DIExpression(), !8600)
    #dbg_value(i64 %i.ag, !6708, !DIExpression(), !8603)
    #dbg_value(i64 %i.ag, !6734, !DIExpression(), !8604)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !8606)
  %i.ak = load i64, ptr %i.m, align 16, !dbg !8607, !range !1927, !alias.scope !8608, !noundef !65
  %i.al = icmp eq i64 %.sroa.8.0300, %i.ak, !dbg !8611
  br i1 %i.al, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8611

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !8612
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8613

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.am = load ptr, ptr %i.n, align 8, !dbg !8614, !alias.scope !8608, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.am, !6739, !DIExpression(), !8604)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.8.0300, !dbg !8618
    #dbg_value(ptr %i.an, !6710, !DIExpression(), !8619)
    #dbg_value(ptr %i.an, !6773, !DIExpression(), !8620)
    #dbg_value(i32 %i.aj, !6778, !DIExpression(), !8620)
  store i32 %i.aj, ptr %i.an, align 4, !dbg !8622
  store i64 %i.aa, ptr %i.l, align 16, !dbg !8623, !alias.scope !8608
  %i.ao = load ptr, ptr %i.o, align 8, !dbg !8624, !nonnull !65, !align !6784, !noundef !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !8624
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !8624, !range !3847, !noundef !65
  %i.ar = trunc nuw i8 %i.aq to i1, !dbg !8624
  br i1 %i.ar, label %bb.l, label %bb.k, !dbg !8624

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.as = load i32, ptr %i.p, align 8, !dbg !8625, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.as, !8276, !DIExpression(), !8626)
    #dbg_value(i8 0, !8278, !DIExpression(), !8627)
    #dbg_value(ptr %.val.i, !8519, !DIExpression(), !8628)
    #dbg_value(ptr %.val.i, !8545, !DIExpression(), !8546)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !8629
    #dbg_value(ptr %.val.i, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(ptr %i.at, !8280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8630)
    #dbg_value(i64 0, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(i8 poison, !8278, !DIExpression(), !8627)
    #dbg_value(ptr undef, !6282, !DIExpression(), !8341)
    #dbg_value(ptr undef, !6233, !DIExpression(), !8338)
    #dbg_value(i64 1, !6791, !DIExpression(), !8631)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !8633)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !8631)
    #dbg_value(ptr %i.at, !6252, !DIExpression(), !8634)
    #dbg_value(ptr poison, !6802, !DIExpression(), !8635)
    #dbg_value(ptr poison, !6808, !DIExpression(), !8637)
  %i.au = icmp samesign eq i64 %.val1.i, 0, !dbg !8638
  br i1 %i.au, label %._crit_edge, label %.lr.ph298, !dbg !8639

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !8640
  br label %bb.k, !dbg !8641

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.as, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.aw, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.av, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !8276, !DIExpression(), !8626)
    #dbg_value(i64 %.sroa.9.0295, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr %.sroa.0214.0294, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !8642 ; 2 uses
    #dbg_value(ptr %i.av, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !8643)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !8644)
  %i.aw = add nuw i64 %.sroa.9.0295, 1, !dbg !8645
    #dbg_value(i64 %i.aw, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr %i.av, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(i64 %.sroa.9.0295, !8282, !DIExpression(), !8646)
  %i.ax = load i8, ptr %.sroa.0214.0294, align 1, !dbg !8647, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ax, !8284, !DIExpression(), !8646)
    #dbg_value(i8 %i.ax, !8648, !DIExpression(), !8651)
    #dbg_value(i8 %i.ax, !8648, !DIExpression(), !8653)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !8655

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.as, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !8557
    #dbg_value(i64 poison, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr poison, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8407
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !8656
  %i.ay = load i32, ptr %i.a, align 8, !dbg !8657, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.ay, -1, !dbg !8657
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !8658

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !8659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8660
  br label %bb.au, !dbg !8661

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8660
  br label %.backedge, !dbg !8663

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8664
    #dbg_value(i64 %i.aa, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr %i.z, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(ptr undef, !8366, !DIExpression(), !8376)
    #dbg_value(ptr undef, !4134, !DIExpression(), !8342)
    #dbg_value(i64 1, !4159, !DIExpression(), !8476)
    #dbg_value(ptr %i.z, !4151, !DIExpression(), !8478)
    #dbg_value(ptr %i.z, !4165, !DIExpression(), !8476)
    #dbg_value(ptr %i.g, !4153, !DIExpression(), !8479)
    #dbg_value(ptr poison, !4170, !DIExpression(), !8480)
    #dbg_value(ptr poison, !4176, !DIExpression(), !8482)
  %i.az = icmp eq ptr %i.z, %i.g, !dbg !8483
  br i1 %i.az, label %._crit_edge303, label %bb.b, !dbg !8484

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !8665, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8669)
    #dbg_value(ptr %1, !8671, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8675)
    #dbg_value(ptr %1, !8677, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8680)
    #dbg_value(ptr %1, !8682, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8685)
    #dbg_value(ptr %1, !8687, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8690)
    #dbg_value(i32 %.sroa.046.0297, !8668, !DIExpression(), !8692)
    #dbg_value(ptr poison, !8693, !DIExpression(), !8696)
    #dbg_value(ptr poison, !8422, !DIExpression(), !8698)
  %i.ba = zext i32 %.sroa.046.0297 to i64, !dbg !8700 ; 3 uses
    #dbg_value(i64 %i.ba, !8674, !DIExpression(), !8701)
    #dbg_value(i64 %i.ba, !8702, !DIExpression(), !8706)
    #dbg_value(i64 %i.ba, !8708, !DIExpression(), !8712)
  %i.bb = load i64, ptr %i.q, align 16, !dbg !8714, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !8705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8706)
    #dbg_value(ptr poison, !8711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8712)
    #dbg_value(i64 %i.bb, !8705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8706)
    #dbg_value(i64 %i.bb, !8711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8712)
  %i.bc = icmp ugt i64 %i.bb, %i.ba, !dbg !8715
  br i1 %i.bc, label %bb.q, label %bb.r, !dbg !8715

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !8278, !DIExpression(), !8627)
  %i.bd = load ptr, ptr %i.o, align 8, !dbg !8716, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !8717, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8720)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !8722
  %i.bf = load i8, ptr %i.be, align 8, !dbg !8722, !range !6942, !noundef !65
  %i.bg = icmp eq i8 %i.bf, 1, !dbg !8723
  br i1 %i.bg, label %.backedge, label %bb.s, !dbg !8716

bb.q:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.r, align 8, !dbg !8724, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bh, !8705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8706)
    #dbg_value(ptr %i.bh, !8711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8712)
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.bh, i64 %i.ba, !dbg !8731
    #dbg_value(ptr %i.bi, !8451, !DIExpression(), !8732)
    #dbg_value(ptr %i.bi, !8446, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8733)
    #dbg_value(ptr %i.bi, !8456, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8734)
    #dbg_value(ptr %i.bi, !8735, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8739)
    #dbg_value(ptr poison, !8738, !DIExpression(), !8739)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !8739
  %i.bk = load i32, ptr %i.bj, align 4, !dbg !8739, !noundef !65
  %i.bl = icmp ne i32 %i.bk, 0, !dbg !8739        ; 2 uses
    #dbg_value(i1 %i.bl, !8278, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8627)
  %i.bm = load ptr, ptr %i.o, align 8, !dbg !8716, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !8717, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8720)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !8722
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !8722, !range !6942, !noundef !65
  %i.bp = icmp eq i8 %i.bo, 1, !dbg !8723
  %or.cond = and i1 %i.bl, %i.bp, !dbg !8716
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !8716

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !8715
  unreachable, !dbg !8715

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bq = phi ptr [ %i.bd, %bb.p ], [ %i.bm, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bl, %bb.q ], !dbg !8740
    #dbg_value(i8 poison, !8278, !DIExpression(), !8627)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6986, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6987, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6990, !DIExpression(), !8743)
  %.not.i205 = icmp eq i8 %i.ax, 0, !dbg !8745
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !8745

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8746)
    #dbg_value(i8 %i.ax, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8748)
    #dbg_value(i8 %i.ax, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8749)
    #dbg_value(i8 %i.ax, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8750)
    #dbg_value(i8 %i.ax, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8752)
  %i.br = add i8 %i.ax, -1, !dbg !8753            ; 2 uses
    #dbg_value(i8 %i.br, !6990, !DIExpression(), !8748)
    #dbg_value(i8 %i.br, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8752)
    #dbg_value(i8 %i.br, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8750)
    #dbg_value(i8 %i.br, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8749)
  %.lobit.i = lshr i8 %i.br, 7, !dbg !8754
    #dbg_value(i8 %.lobit.i, !6998, !DIExpression(), !8749)
    #dbg_value(i8 %.lobit.i, !7013, !DIExpression(), !8750)
  %i.bs = zext nneg i8 %.lobit.i to i64, !dbg !8755
  %i.bt = and i8 %i.br, 127, !dbg !8756
    #dbg_value(i8 %i.bt, !7000, !DIExpression(), !8752)
  %i.bu = zext nneg i8 %i.bt to i128, !dbg !8757
  %i.bv = shl nuw i128 1, %i.bu, !dbg !8757
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.bs, !dbg !8758 ; 2 uses
  %i.bx = load i128, ptr %i.bw, align 16, !dbg !8758, !alias.scope !8759, !noundef !65
  %i.by = or i128 %i.bx, %i.bv, !dbg !8758
  store i128 %i.by, ptr %i.bw, align 16, !dbg !8758, !alias.scope !8759
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, !dbg !8762

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit: ; preds = %bb.s, %bb.t
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8763)
    #dbg_value(i8 %i.ax, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8764)
    #dbg_value(i8 %i.ax, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8765)
    #dbg_value(i8 %i.ax, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8767)
  %.lobit8.i = lshr i8 %i.ax, 7, !dbg !8768
    #dbg_value(i8 %.lobit8.i, !7002, !DIExpression(), !8764)
    #dbg_value(i8 %.lobit8.i, !7013, !DIExpression(), !8765)
  %i.bz = zext nneg i8 %.lobit8.i to i64, !dbg !8769
  %i.ca = and i8 %i.ax, 127, !dbg !8770
    #dbg_value(i8 %i.ca, !7004, !DIExpression(), !8767)
  %i.cb = zext nneg i8 %i.ca to i128, !dbg !8771
  %i.cc = shl nuw i128 1, %i.cb, !dbg !8771
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.bz, !dbg !8772 ; 2 uses
  %i.ce = load i128, ptr %i.cd, align 16, !dbg !8772, !alias.scope !8759, !noundef !65
  %i.cf = or i128 %i.ce, %i.cc, !dbg !8772
  store i128 %i.cf, ptr %i.cd, align 16, !dbg !8772, !alias.scope !8759
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 10, !dbg !8773
  %i.ch = load i8, ptr %i.cg, align 2, !dbg !8773, !range !3847, !noundef !65
  %i.ci = trunc nuw i8 %i.ch to i1, !dbg !8773
  br i1 %i.ci, label %bb.ag, label %bb.u, !dbg !8773

bb.u:                                             ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8774), !dbg !8777
    #dbg_value(ptr %i.i, !7045, !DIExpression(), !8778)
    #dbg_value(i32 %.sroa.046.0297, !7052, !DIExpression(), !8778)
    #dbg_value(i8 %i.ax, !7053, !DIExpression(), !8778)
    #dbg_value(i8 %i.ax, !7060, !DIExpression(), !8780)
    #dbg_value(i8 %i.ax, !7070, !DIExpression(), !8782)
    #dbg_value(ptr %i.i, !7075, !DIExpression(), !8784)
    #dbg_value(ptr %i.i, !7081, !DIExpression(), !8786)
    #dbg_value(ptr %i.i, !7087, !DIExpression(), !8788)
    #dbg_value(ptr %i.i, !7092, !DIExpression(), !8790)
    #dbg_value(ptr %i.i, !7097, !DIExpression(), !8792)
    #dbg_value(i32 %.sroa.046.0297, !7078, !DIExpression(), !8794)
    #dbg_value(ptr poison, !7103, !DIExpression(), !8795)
    #dbg_value(ptr poison, !7108, !DIExpression(), !8797)
  %i.cj = zext i32 %.sroa.046.0297 to i64, !dbg !8799 ; 3 uses
    #dbg_value(i64 %i.cj, !7084, !DIExpression(), !8800)
    #dbg_value(i64 %i.cj, !7115, !DIExpression(), !8801)
    #dbg_value(i64 %i.cj, !7121, !DIExpression(), !8803)
  %i.ck = load i64, ptr %i.q, align 16, !dbg !8805, !alias.scope !8774, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8801)
    #dbg_value(ptr poison, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8803)
    #dbg_value(i64 %i.ck, !7118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8801)
    #dbg_value(i64 %i.ck, !7124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8803)
  %i.cl = icmp ugt i64 %i.ck, %i.cj, !dbg !8806
  br i1 %i.cl, label %bb.v, label %bb.w, !dbg !8806

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.r, align 8, !dbg !8807, !alias.scope !8774, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.cm, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8801)
    #dbg_value(ptr %i.cm, !7124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8803)
  %i.cn = getelementptr inbounds nuw [20 x i8], ptr %i.cm, i64 %i.cj, !dbg !8811 ; 2 uses
    #dbg_value(ptr %i.cn, !7054, !DIExpression(), !8812)
    #dbg_value(ptr %i.cn, !7138, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8813)
    #dbg_value(ptr poison, !7141, !DIExpression(), !8815)
    #dbg_value(ptr %i.cn, !7145, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8816)
    #dbg_value(ptr poison, !7148, !DIExpression(), !8816)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4, !dbg !8816
  %i.cp = load i32, ptr %i.co, align 4, !dbg !8816, !noalias !8774, !noundef !65 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0, !dbg !8818
  br i1 %i.cq, label %bb.x, label %bb.ad, !dbg !8818

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !dbg !8806, !noalias !8774
  unreachable, !dbg !8806

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8819), !dbg !8822
    #dbg_value(ptr poison, !7156, !DIExpression(), !8823)
    #dbg_value(ptr %i.i, !7196, !DIExpression(), !8826)
    #dbg_value(i32 %.sroa.046.0297, !7197, !DIExpression(), !8826)
    #dbg_value(i8 %i.ax, !7198, !DIExpression(), !8826)
    #dbg_value(ptr poison, !7204, !DIExpression(), !8827)
    #dbg_value(ptr poison, !7220, !DIExpression(), !8830)
    #dbg_value(ptr poison, !7240, !DIExpression(), !8834)
    #dbg_value(ptr %i.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8836)
    #dbg_value(ptr %i.i, !7216, !DIExpression(), !8837)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8836)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8837)
  %.sroa.2.0.i292 = load i32, ptr %i.cn, align 4, !dbg !8838, !noalias !8819 ; 2 uses
  %i.cr = icmp eq i32 %.sroa.2.0.i292, 0, !dbg !8839
  br i1 %i.cr, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %.lr.ph, !dbg !8841

.lr.ph:                                           ; preds = %bb.x
  %i.cs = load i64, ptr %i.w, align 8, !alias.scope !8819, !noundef !65 ; 2 uses
  %i.ct = load ptr, ptr %i.x, align 16, !nonnull !65
  br label %bb.y, !dbg !8841

bb.y:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.2.0.i293 = phi i32 [ %.sroa.2.0.i292, %.lr.ph ], [ %.sroa.2.0.i, %bb.ab ]
    #dbg_value(ptr %i.i, !7255, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8842)
    #dbg_value(ptr %i.i, !7264, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8844)
    #dbg_value(i32 %.sroa.2.0.i293, !7261, !DIExpression(), !8846)
    #dbg_value(ptr poison, !7220, !DIExpression(), !8847)
    #dbg_value(ptr poison, !7240, !DIExpression(), !8849)
  %i.cu = zext i32 %.sroa.2.0.i293 to i64, !dbg !8851 ; 3 uses
    #dbg_value(i64 %i.cu, !7269, !DIExpression(), !8852)
    #dbg_value(i64 %i.cu, !7282, !DIExpression(), !8853)
    #dbg_value(i64 %i.cu, !7301, !DIExpression(), !8855)
    #dbg_value(ptr poison, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8853)
    #dbg_value(ptr poison, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8855)
    #dbg_value(i64 %i.cs, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8853)
    #dbg_value(i64 %i.cs, !7306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8855)
  %i.cv = icmp ugt i64 %i.cs, %i.cu, !dbg !8857
  br i1 %i.cv, label %bb.z, label %bb.aa, !dbg !8857

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.ct, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8853)
    #dbg_value(ptr %i.ct, !7306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8855)
  %i.cw = getelementptr inbounds nuw [9 x i8], ptr %i.ct, i64 %i.cu, !dbg !8858 ; 3 uses
  %.sroa.04.0.copyload.i = load i8, ptr %i.cw, align 1, !dbg !8859, !noalias !8819 ; 2 uses
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8836)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8837)
    #dbg_value(i8 %.sroa.04.0.copyload.i, !7200, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !8860)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !8860)
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !8860)
  %.not.i = icmp ugt i8 %i.ax, %.sroa.04.0.copyload.i, !dbg !8861
  br i1 %.not.i, label %bb.ab, label %bb.ac, !dbg !8861

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !dbg !8857, !noalias !8819
  unreachable, !dbg !8857

bb.ab:                                            ; preds = %bb.z
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 5, !dbg !8859
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !8860)
    #dbg_value(i32 poison, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8836)
    #dbg_value(i32 poison, !7215, !DIExpression(), !8837)
  %.sroa.2.0.i = load i32, ptr %.sroa.55.0..sroa_idx.i, align 1, !dbg !8838, !noalias !8819 ; 2 uses
    #dbg_value(i32 %.sroa.2.0.i, !7215, !DIExpression(), !8837)
    #dbg_value(i32 %.sroa.2.0.i, !7199, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8836)
    #dbg_value(ptr undef, !7156, !DIExpression(), !8823)
    #dbg_value(ptr undef, !7207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8862)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8839)
    #dbg_value(ptr poison, !7252, !DIExpression(), !8839)
  %i.cx = icmp eq i32 %.sroa.2.0.i, 0, !dbg !8839
  br i1 %i.cx, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.y, !dbg !8841

bb.ac:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 1, !dbg !8859
    #dbg_value(i32 poison, !7200, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !8860)
  %i.cy = icmp eq i8 %i.ax, %.sroa.04.0.copyload.i, !dbg !8863
  br i1 %i.cy, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, !dbg !8863

bb.ad:                                            ; preds = %bb.v
    #dbg_value(ptr %i.i, !7067, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !8864)
  %i.cz = zext i8 %i.ax to i64, !dbg !8865
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cz, !dbg !8866
  %i.db = load i8, ptr %i.da, align 1, !dbg !8866, !alias.scope !8774, !noundef !65
    #dbg_value(i8 %i.db, !7070, !DIExpression(), !8867)
  %i.dc = zext i8 %i.db to i64, !dbg !8869
    #dbg_value(i64 %i.dc, !7056, !DIExpression(), !8870)
    #dbg_value(ptr %i.i, !7324, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8871)
    #dbg_value(ptr %i.i, !7333, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8873)
    #dbg_value(ptr %i.i, !7346, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8875)
    #dbg_value(ptr %i.i, !7353, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8877)
    #dbg_value(ptr %i.cn, !7103, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8879)
    #dbg_value(ptr %i.cn, !7108, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !8881)
  %i.dd = zext i32 %i.cp to i64, !dbg !8883
  %i.de = add nuw nsw i64 %i.dc, %i.dd, !dbg !8884 ; 3 uses
    #dbg_value(i64 %i.de, !7329, !DIExpression(), !8885)
    #dbg_value(i64 %i.de, !7370, !DIExpression(), !8886)
    #dbg_value(i64 %i.de, !7383, !DIExpression(), !8888)
  %i.df = load i64, ptr %i.u, align 16, !dbg !8890, !alias.scope !8774, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8886)
    #dbg_value(ptr poison, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8888)
    #dbg_value(i64 %i.df, !7375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8886)
    #dbg_value(i64 %i.df, !7388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8888)
  %i.dg = icmp ult i64 %i.de, %i.df, !dbg !8891
  br i1 %i.dg, label %bb.ae, label %bb.af, !dbg !8891

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %i.v, align 8, !dbg !8892, !alias.scope !8774, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.dh, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8886)
    #dbg_value(ptr %i.dh, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8888)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.de, !dbg !8896
  br label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit, !dbg !8897

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !dbg !8891, !noalias !8774
  unreachable, !dbg !8891

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit: ; preds = %bb.ac, %bb.ae
  %.sroa.0.0.i.in = phi ptr [ %i.di, %bb.ae ], [ %.sroa.4.0..sroa_idx.i, %bb.ac ]
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.i.in, align 1, !dbg !8812, !noalias !65 ; 2 uses
    #dbg_value(i32 %.sroa.0.0.i, !8287, !DIExpression(), !8898)
    #dbg_value(ptr poison, !8446, !DIExpression(), !8899)
    #dbg_value(ptr poison, !8456, !DIExpression(), !8900)
    #dbg_value(ptr poison, !8735, !DIExpression(), !8901)
    #dbg_value(ptr poison, !8738, !DIExpression(), !8901)
  %.not194 = icmp eq i32 %.sroa.0.0.i, 1, !dbg !8901
  br i1 %.not194, label %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread, label %bb.at, !dbg !8460

bb.ag:                                            ; preds = %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit
  %i.dj = add i8 %i.ax, -65, !dbg !8904
  %or.cond2 = icmp ult i8 %i.dj, 26, !dbg !8904
  br i1 %or.cond2, label %.thread, label %bb.ah, !dbg !8904

.thread:                                          ; preds = %bb.ag
    #dbg_value(ptr poison, !8905, !DIExpression(), !8908)
  %i.dk = or disjoint i8 %i.ax, 32, !dbg !8910
    #dbg_value(i8 %i.dk, !8285, !DIExpression(), !8911)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8912)
    #dbg_value(i8 %i.dk, !6986, !DIExpression(), !8912)
    #dbg_value(i8 %i.dk, !6987, !DIExpression(), !8912)
    #dbg_value(i8 %i.dk, !6990, !DIExpression(), !8914)
  br label %bb.ai, !dbg !8916

bb.ah:                                            ; preds = %bb.ag
  %i.dl = add i8 %i.ax, -97, !dbg !8917
  %or.cond3 = icmp ult i8 %i.dl, 26, !dbg !8917
  %i.dm = and i8 %i.ax, 95
  %spec.select = select i1 %or.cond3, i8 %i.dm, i8 %i.ax, !dbg !8917 ; 2 uses
    #dbg_value(i8 %spec.select, !8285, !DIExpression(), !8911)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8912)
    #dbg_value(i8 %spec.select, !6986, !DIExpression(), !8912)
    #dbg_value(i8 %spec.select, !6987, !DIExpression(), !8912)
    #dbg_value(i8 %spec.select, !6990, !DIExpression(), !8914)
  %.not.i206 = icmp eq i8 %spec.select, 0, !dbg !8916
  br i1 %.not.i206, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, label %bb.ai, !dbg !8916

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.060.0229 = phi i8 [ %i.dk, %.thread ], [ %spec.select, %bb.ah ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8918)
    #dbg_value(i8 %.sroa.060.0229, !6990, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8920)
    #dbg_value(i8 %.sroa.060.0229, !6998, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8921)
    #dbg_value(i8 %.sroa.060.0229, !7013, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8922)
    #dbg_value(i8 %.sroa.060.0229, !7000, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8924)
  %i.dn = add i8 %.sroa.060.0229, -1, !dbg !8925  ; 2 uses
    #dbg_value(i8 %i.dn, !6990, !DIExpression(), !8920)
    #dbg_value(i8 %i.dn, !7000, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8924)
    #dbg_value(i8 %i.dn, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8922)
    #dbg_value(i8 %i.dn, !6998, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8921)
  %.lobit.i207 = lshr i8 %i.dn, 7, !dbg !8926
    #dbg_value(i8 %.lobit.i207, !6998, !DIExpression(), !8921)
    #dbg_value(i8 %.lobit.i207, !7013, !DIExpression(), !8922)
  %i.do = zext nneg i8 %.lobit.i207 to i64, !dbg !8927
  %i.dp = and i8 %i.dn, 127, !dbg !8928
    #dbg_value(i8 %i.dp, !7000, !DIExpression(), !8924)
  %i.dq = zext nneg i8 %i.dp to i128, !dbg !8929
  %i.dr = shl nuw i128 1, %i.dq, !dbg !8929
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.do, !dbg !8930 ; 2 uses
  %i.dt = load i128, ptr %i.ds, align 16, !dbg !8930, !alias.scope !8931, !noundef !65
  %i.du = or i128 %i.dr, %i.dt, !dbg !8930
  store i128 %i.du, ptr %i.ds, align 16, !dbg !8930, !alias.scope !8931
  br label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209, !dbg !8934

_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit209: ; preds = %bb.ah, %bb.ai
  %.sroa.060.0230 = phi i8 [ 0, %bb.ah ], [ %.sroa.060.0229, %bb.ai ] ; 2 uses
    #dbg_value(ptr %i.s, !6997, !DIExpression(), !8935)
    #dbg_value(i8 %.sroa.060.0230, !7002, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8936)
    #dbg_value(i8 %.sroa.060.0230, !7013, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !8937)
    #dbg_value(i8 %.sroa.060.0230, !7004, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !8939)
  %.lobit8.i208 = lshr i8 %.sroa.060.0230, 7, !dbg !8940
    #dbg_value(i8 %.lobit8.i208, !7002, !DIExpression(), !8936)
    #dbg_value(i8 %.lobit8.i208, !7013, !DIExpression(), !8937)
  %i.dv = zext nneg i8 %.lobit8.i208 to i64, !dbg !8941
  %i.dw = and i8 %.sroa.060.0230, 127, !dbg !8942
    #dbg_value(i8 %i.dw, !7004, !DIExpression(), !8939)
  %i.dx = zext nneg i8 %i.dw to i128, !dbg !8943
  %i.dy = shl nuw i128 1, %i.dx, !dbg !8943
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.dv, !dbg !8944 ; 2 uses
  %i.ea = load i128, ptr %i.dz, align 16, !dbg !8944, !alias.scope !8931, !noundef !65
  %i.eb = or i128 %i.dy, %i.ea, !dbg !8944
  store i128 %i.eb, ptr %i.dz, align 16, !dbg !8944, !alias.scope !8931
  br label %bb.u, !dbg !8945

_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread: ; preds = %bb.ab, %bb.x, %bb.ac, %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8335
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA11alloc_state(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i64 noundef %.sroa.9.0295), !dbg !8946
  %i.ec = load i32, ptr %i.d, align 8, !dbg !8947, !range !2139, !noundef !65 ; 2 uses
  %.not195 = icmp eq i32 %i.ec, -1, !dbg !8947
  %i.ed = load i32, ptr %i.y, align 4, !dbg !8948 ; 5 uses
  br i1 %.not195, label %bb.ak, label %bb.aj, !dbg !8949

bb.aj:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
    #dbg_value(i32 %i.ec, !8327, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8950)
    #dbg_value(i32 %i.ed, !8327, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8950)
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8951
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5126.0..sroa_idx, i64 16, i1 false), !dbg !8951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8953
    #dbg_value(i32 %i.ec, !8291, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8954)
    #dbg_value(i32 %i.ec, !8313, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8955)
    #dbg_value(i32 %i.ed, !8291, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8954)
    #dbg_value(i32 %i.ed, !8313, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8955)
    #dbg_value(i32 %i.ec, !8309, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8956)
    #dbg_value(i32 %i.ed, !8309, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8956)
  store i32 %i.ec, ptr %0, align 8, !dbg !8952
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !8952
  store i32 %i.ed, ptr %.sroa.4128.0..sroa_idx, align 4, !dbg !8952
  br label %bb.au, !dbg !8957

bb.ak:                                            ; preds = %_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8953
    #dbg_value(i32 %i.ed, !8289, !DIExpression(), !8959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8395
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA14add_transition(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0297, i8 noundef %i.ax, i32 noundef %i.ed), !dbg !8960
  %i.ee = load i32, ptr %i.c, align 8, !dbg !8961, !range !2139, !noundef !65
  %.not196 = icmp eq i32 %i.ee, -1, !dbg !8961
  br i1 %.not196, label %bb.am, label %bb.al, !dbg !8962

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !8963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8964
  br label %bb.au, !dbg !8965

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8964
  %i.ef = load ptr, ptr %i.o, align 8, !dbg !8967, !nonnull !65, !align !6784, !noundef !65
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 10, !dbg !8967
  %i.eh = load i8, ptr %i.eg, align 2, !dbg !8967, !range !3847, !noundef !65
  %i.ei = trunc nuw i8 %i.eh to i1, !dbg !8967
  br i1 %i.ei, label %bb.an, label %bb.at, !dbg !8967

bb.an:                                            ; preds = %bb.am
  %i.ej = add i8 %i.ax, -65, !dbg !8968
  %or.cond4 = icmp ult i8 %i.ej, 26, !dbg !8968
  br i1 %or.cond4, label %bb.ap, label %bb.ao, !dbg !8968

bb.ao:                                            ; preds = %bb.an
  %i.ek = add i8 %i.ax, -97, !dbg !8969
  %or.cond5 = icmp ult i8 %i.ek, 26, !dbg !8969
  %i.el = and i8 %i.ax, 95
  %spec.select198 = select i1 %or.cond5, i8 %i.el, i8 %i.ax, !dbg !8969
  br label %bb.aq, !dbg !8969

bb.ap:                                            ; preds = %bb.an
end_hunk_0
