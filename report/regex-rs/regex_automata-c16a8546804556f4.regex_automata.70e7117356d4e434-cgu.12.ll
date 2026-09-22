Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.12?download=true
inline.NumInlined: 262
inline.NumDeleted: 147
begin_hunk_0_@_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newAAINtNtCsj6eKBz9Db1c_4core6option6OptionReEj1_B1S_B1c_B1P_EBa_:bb.a
  %i.aq = load i64, ptr %i.d, align 8, !dbg !6103, !range !2995, !noundef !1225
  %i.ar = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6104, !noundef !1225 ; 2 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar, !dbg !6105
  br i1 %i.as, label %bb.c, label %bb.d, !dbg !6105

bb.c:                                             ; preds = %.loopexit
    #dbg_value(ptr %i.d, !5935, !DIExpression(), !6058)
    #dbg_value(i64 %i.ar, !5936, !DIExpression(), !6059)
    #dbg_value(i64 %i.ar, !5927, !DIExpression(), !5934)
    #dbg_value(ptr %i.d, !5926, !DIExpression(), !5934)
  %i.at = invoke fastcc { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, i64 noundef %i.ar, i64 noundef 4, i64 noundef 8)
          to label %bb.e unwind label %.thread307.loopexit.split-lp, !dbg !6106 ; 2 uses

bb.d:                                             ; preds = %bb.e, %.loopexit
    #dbg_value(ptr %i.d, !5946, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6060)
    #dbg_value(ptr %i.d, !5948, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6061)
  %i.au = load i64, ptr %i.e, align 8, !dbg !6107, !range !2995, !noundef !1225
  %i.av = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !6108, !noundef !1225 ; 2 uses
  %i.aw = icmp ugt i64 %i.au, %i.av, !dbg !6109
  br i1 %i.aw, label %bb.f, label %bb.g, !dbg !6109

bb.e:                                             ; preds = %bb.c
  %i.ax = extractvalue { i64, i64 } %i.at, 0, !dbg !6110 ; 2 uses
  %.not179 = icmp eq i64 %i.ax, -1, !dbg !6111
  br i1 %.not179, label %bb.d, label %.invoke, !dbg !6112, !prof !2997

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %i.d, !5956, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6062)
    #dbg_value(i64 %i.av, !5957, !DIExpression(), !6063)
    #dbg_value(i64 %i.av, !5927, !DIExpression(), !5955)
    #dbg_value(ptr %i.e, !5926, !DIExpression(), !5955)
  %i.ay = invoke fastcc { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e, i64 noundef %i.av, i64 noundef 8, i64 noundef 48)
          to label %bb.h unwind label %.thread307.loopexit.split-lp, !dbg !6113 ; 2 uses

bb.g:                                             ; preds = %bb.h, %bb.d
    #dbg_value(ptr %i.d, !5967, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6064)
    #dbg_value(ptr %i.d, !5969, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6065)
  %i.az = load i64, ptr %i.f, align 8, !dbg !6114, !range !2995, !noundef !1225
  %i.ba = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !6115, !noundef !1225 ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba, !dbg !6116
  br i1 %i.bb, label %bb.i, label %bb.j, !dbg !6116

bb.h:                                             ; preds = %bb.f
  %i.bc = extractvalue { i64, i64 } %i.ay, 0, !dbg !6117 ; 2 uses
  %.not180 = icmp eq i64 %i.bc, -1, !dbg !6118
  br i1 %.not180, label %bb.g, label %.invoke, !dbg !6119, !prof !2997

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %i.d, !5977, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6066)
    #dbg_value(i64 %i.ba, !5978, !DIExpression(), !6067)
    #dbg_value(i64 %i.ba, !5927, !DIExpression(), !5976)
    #dbg_value(ptr %i.f, !5926, !DIExpression(), !5976)
  %i.bd = invoke fastcc { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f, i64 noundef %i.ba, i64 noundef 8, i64 noundef 24)
          to label %bb.m unwind label %.thread307.loopexit.split-lp, !dbg !6120 ; 2 uses

bb.j:                                             ; preds = %bb.m, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6121 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !6122
  store i64 1, ptr %i.c, align 8, !dbg !6121
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6121
  store i64 1, ptr %i.bf, align 8, !dbg !6121
    #dbg_declare(ptr %i.c, !3000, !DIExpression(), !5757)
  %i.bg = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 96)
          to label %bb.n unwind label %bb.k, !dbg !6123, !noalias !6068 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !3009, !DIExpression(), !5761)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.be)
          to label %bb.r unwind label %bb.l, !dbg !6124

bb.l:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !6125
  unreachable, !dbg !6125

bb.m:                                             ; preds = %bb.i
  %i.bj = extractvalue { i64, i64 } %i.bd, 0, !dbg !6126 ; 2 uses
  %.not181 = icmp eq i64 %i.bj, -1, !dbg !6127
  br i1 %.not181, label %bb.j, label %.invoke, !dbg !6128, !prof !2997

.invoke:                                          ; preds = %bb.m, %bb.h, %bb.e
  %.sink = phi { i64, i64 } [ %i.ay, %bb.h ], [ %i.at, %bb.e ], [ %i.bd, %bb.m ]
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.ax, %bb.e ], [ %i.bj, %bb.m ]
  %i.bl = extractvalue { i64, i64 } %.sink, 1, !dbg !6129
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bl) #27
          to label %.cont unwind label %.thread307.loopexit.split-lp, !dbg !6129

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.j
    #dbg_value(ptr %i.bg, !3006, !DIExpression(), !5762)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bg, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !6130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6131
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6132
  store ptr %i.bg, ptr %i.bm, align 8, !dbg !6132
  store i64 -1, ptr %0, align 8, !dbg !6132
  br label %bb.o, !dbg !6133

bb.o:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6133
  ret void, !dbg !6134

bb.p:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterINtNtBa_6option6OptionReEKj1_EENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit203, %.lr.ph.i._crit_edge
  %.sink407 = phi i64 [ 8, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterINtNtBa_6option6OptionReEKj1_EENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit203 ], [ 16, %.lr.ph.i._crit_edge ]
  %.sink406 = phi i32 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterINtNtBa_6option6OptionReEKj1_EENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit203 ], [ %i.am, %.lr.ph.i._crit_edge ]
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink407, !dbg !6129
  store i32 %.sink406, ptr %.sroa.479.0..sroa_idx, align 8, !dbg !6129
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d), !dbg !6133
  br label %bb.o, !dbg !6133

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5array4iter8IntoIterINtNtBa_6option6OptionReEKj1_EENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit203: ; preds = %bb.a
    #dbg_value(ptr undef, !5898, !DIExpression(), !5635)
    #dbg_value(ptr undef, !5881, !DIExpression(), !5634)
    #dbg_value(ptr undef, !5874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5633)
    #dbg_value(i64 1, !5874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5633)
    #dbg_value(ptr undef, !5848, !DIExpression(), !5632)
    #dbg_value(i64 1, !5775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5986)
    #dbg_value(i64 poison, !5989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5666)
    #dbg_value(i64 1, !5989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5666)
    #dbg_value(ptr undef, !6004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5666)
    #dbg_value(i64 1, !6004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5666)
    #dbg_value(i64 poison, !6005, !DIExpression(), !5667)
    #dbg_value(i64 poison, !6007, !DIExpression(), !5670)
    #dbg_value(i64 poison, !6012, !DIExpression(), !5673)
    #dbg_value(i64 poison, !6020, !DIExpression(), !5677)
    #dbg_value(ptr undef, !6016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5673)
    #dbg_value(ptr undef, !6027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5677)
    #dbg_value(i64 1, !6016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5673)
    #dbg_value(i64 1, !6027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5677)
    #dbg_value(i64 0, !5775, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !5986)
    #dbg_value(i64 0, !5776, !DIExpression(), !6030)
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload, !5777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6030)
    #dbg_value(i64 poison, !5777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6030)
    #dbg_value(i32 0, !5778, !DIExpression(), !6031)
    #dbg_value(i64 1, !5781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6032)
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload, !5781, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6032)
    #dbg_value(i64 poison, !5781, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6032)
    #dbg_value(i64 1, !5781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6032)
    #dbg_value(i64 1, !5781, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6032)
  store i64 -9223372036854775805, ptr %0, align 8, !dbg !6135
    #dbg_value(ptr poison, !6034, !DIExpression(), !5764)
  br label %bb.p, !dbg !6136

bb.q:                                             ; preds = %.thread
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !6137
  unreachable, !dbg !6137

bb.r:                                             ; preds = %bb.k, %.thread
  %.pn189305 = phi { ptr, i32 } [ %.pn189306, %.thread ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %.pn189305, !dbg !6137

.thread:                                          ; preds = %.thread307.loopexit, %.thread307.loopexit.split-lp, %.split374.us
  %.pn189306 = phi { ptr, i32 } [ %i.g, %.split374.us ], [ %lpad.loopexit, %.thread307.loopexit ], [ %lpad.loopexit.split-lp, %.thread307.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #24
          to label %bb.r unwind label %bb.q, !dbg !6133
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1k_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1k_6option6OptionINtNtB2v_4sync3ArceEEEENCNvMs0_NtNtNtBa_3nfa8thompson3nfaNtB3P_5Inner12set_captures0EIB1c_IB20_B2X_ENCNCB3J_00ERB3k_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6162 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !6958, !DIExpression(), !6185)
    #dbg_value(ptr poison, !6975, !DIExpression(), !6186)
    #dbg_value(ptr poison, !6994, !DIExpression(), !6187)
    #dbg_value(ptr poison, !6958, !DIExpression(), !6191)
    #dbg_value(ptr poison, !6975, !DIExpression(), !6192)
    #dbg_value(ptr poison, !6994, !DIExpression(), !6193)
    #dbg_value(ptr poison, !7001, !DIExpression(), !6216)
    #dbg_value(ptr poison, !7020, !DIExpression(), !6217)
    #dbg_value(ptr poison, !7039, !DIExpression(), !6218)
  %i.k = alloca [80 x i8], align 8                ; 18 uses
    #dbg_value(ptr %1, !6928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7045)
    #dbg_value(ptr %2, !6928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7045)
    #dbg_declare(ptr %i.k, !6929, !DIExpression(), !7046)
    #dbg_declare(ptr poison, !7047, !DIExpression(), !7051)
    #dbg_value(i64 8, !7052, !DIExpression(), !7059)
    #dbg_value(i64 4, !7066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7075)
    #dbg_value(i64 8, !7066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7075)
    #dbg_value(i64 48, !7052, !DIExpression(), !7086)
    #dbg_value(i64 8, !7066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7096)
    #dbg_value(i64 48, !7066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7096)
    #dbg_value(i64 24, !7052, !DIExpression(), !7107)
    #dbg_value(i64 8, !7066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7117)
    #dbg_value(i64 24, !7066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !7736
  store i64 0, ptr %i.k, align 8, !dbg !7737
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !7737 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7737
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !7737 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !7737 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !7737 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !7737
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !7737
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !7737 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !7737 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !7737 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !7737
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8, !dbg !7737
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64, !dbg !7737 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72, !dbg !7737 ; 4 uses
    #dbg_value(ptr %1, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(ptr %2, !6930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7121)
    #dbg_value(i64 0, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i64 0, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
    #dbg_value(ptr undef, !7039, !DIExpression(), !6218)
    #dbg_value(ptr undef, !7020, !DIExpression(), !6217)
    #dbg_value(ptr undef, !7001, !DIExpression(), !6216)
    #dbg_value(i64 1, !7122, !DIExpression(), !6240)
    #dbg_value(ptr %1, !7004, !DIExpression(), !6241)
    #dbg_value(ptr %1, !7126, !DIExpression(), !6240)
    #dbg_value(ptr %2, !7005, !DIExpression(), !6242)
    #dbg_value(ptr poison, !7129, !DIExpression(), !6245)
    #dbg_value(ptr poison, !7132, !DIExpression(), !6246)
  %i.o = icmp eq ptr %1, %2, !dbg !7738
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !7737
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge, label %.lr.ph417, !dbg !7739

.lr.ph417:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
    #dbg_value(ptr %1, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i64 0, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
  %i.r = getelementptr i8, ptr %1, i64 8, !dbg !7740
  %.val.i.i645 = load ptr, ptr %i.r, align 8, !dbg !7740, !noalias !7154, !nonnull !1225, !noundef !1225 ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 16, !dbg !7740
  %.val7.i.i646 = load i64, ptr %i.s, align 8, !dbg !7740, !noalias !7154, !noundef !1225 ; 2 uses
  %.idx647 = shl nuw nsw i64 %.val7.i.i646, 4, !dbg !7741
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i645, i64 %.idx647, !dbg !7741
  br label %bb.s, !dbg !7742

.thread279.loopexit:                              ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread279.loopexit.split-lp:                     ; preds = %.invoke, %bb.c, %.noexc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge, %bb.j, %bb.g, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195.loopexit: ; preds = %bb.be, %.preheader
    #dbg_value(ptr %i.ch, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i64 %i.cf, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
    #dbg_value(ptr undef, !7039, !DIExpression(), !6218)
    #dbg_value(ptr undef, !7020, !DIExpression(), !6217)
    #dbg_value(ptr undef, !7001, !DIExpression(), !6216)
    #dbg_value(i64 1, !7122, !DIExpression(), !6240)
    #dbg_value(ptr %i.ch, !7004, !DIExpression(), !6241)
    #dbg_value(ptr %i.ch, !7126, !DIExpression(), !6240)
    #dbg_value(ptr %2, !7005, !DIExpression(), !6242)
    #dbg_value(ptr poison, !7129, !DIExpression(), !6245)
    #dbg_value(ptr poison, !7132, !DIExpression(), !6246)
  %i.u = icmp eq ptr %i.ch, %2, !dbg !7738
  br i1 %i.u, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge.loopexit, label %bb.b, !dbg !7739

bb.b:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195.loopexit
    #dbg_value(ptr %i.ch, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i64 %i.cf, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
    #dbg_value(ptr %i.ch, !6930, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(ptr %i.ch, !7150, !DIExpression(), !6276)
    #dbg_value(ptr undef, !7151, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6276)
    #dbg_value(ptr undef, !7137, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6277)
    #dbg_value(ptr %i.ch, !7152, !DIExpression(), !6278)
    #dbg_value(ptr %i.ch, !7138, !DIExpression(), !6277)
  %i.v = getelementptr i8, ptr %.pn, i64 32, !dbg !7740
  %.val.i.i = load ptr, ptr %i.v, align 8, !dbg !7740, !noalias !7154, !nonnull !1225, !noundef !1225 ; 2 uses
  %i.w = getelementptr i8, ptr %.pn, i64 40, !dbg !7740
  %.val7.i.i = load i64, ptr %i.w, align 8, !dbg !7740, !noalias !7154, !noundef !1225 ; 2 uses
    #dbg_value(ptr poison, !7168, !DIExpression(), !6279)
    #dbg_value(ptr poison, !7167, !DIExpression(), !6279)
    #dbg_value(i64 %.val7.i.i, !7159, !DIExpression(), !6280)
    #dbg_value(i64 %.val7.i.i, !7156, !DIExpression(), !6281)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6282)
    #dbg_value(ptr %.val.i.i, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6283)
    #dbg_value(i64 %.val7.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6282)
    #dbg_value(i64 %.val7.i.i, !7158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6283)
    #dbg_value(ptr %.val.i.i, !7160, !DIExpression(), !6284)
    #dbg_value(ptr %.val.i.i, !7155, !DIExpression(), !6281)
  %.idx = shl nuw nsw i64 %.val7.i.i, 4, !dbg !7741
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx, !dbg !7741
    #dbg_value(ptr %.val.i.i, !7040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6285)
    #dbg_value(ptr %i.x, !7040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6285)
    #dbg_value(i64 %i.cf, !7043, !DIExpression(), !6286)
  %i.y = add nuw nsw i64 %i.cf, 1, !dbg !7743
    #dbg_value(i64 %i.y, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
    #dbg_value(i64 %i.cf, !6931, !DIExpression(), !7194)
    #dbg_value(i64 %i.cf, !7189, !DIExpression(), !7195)
    #dbg_value(i64 %i.cf, !7191, !DIExpression(), !7196)
    #dbg_value(i64 %i.cf, !7170, !DIExpression(), !7197)
    #dbg_value(i64 %i.cf, !7198, !DIExpression(), !7201)
    #dbg_value(ptr %.val.i.i, !6932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7194)
    #dbg_value(ptr poison, !6932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7194)
  %exitcond495 = icmp eq i64 %i.cf, 2147483647, !dbg !7742
  br i1 %exitcond495, label %bb.r, label %bb.s, !dbg !7742

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195.loopexit
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7744, !alias.scope !7202, !noalias !7203
  %.pre496 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7745, !alias.scope !7202, !noalias !7203
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge, !dbg !7746

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge.loopexit, %bb.a
  %i.z = phi ptr [ %.pre496, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge.loopexit ], [ inttoptr (i64 4 to ptr), %bb.a ], !dbg !7745 ; 2 uses
  %i.aa = phi i64 [ %.pre, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge.loopexit ], [ 0, %bb.a ], !dbg !7744 ; 3 uses
    #dbg_value(ptr poison, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7121)
    #dbg_value(i64 poison, !6930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7121)
  call void @llvm.experimental.noalias.scope.decl(metadata !7202), !dbg !7746
    #dbg_value(ptr %i.k, !2812, !DIExpression(), !6300)
    #dbg_value(ptr %i.k, !2864, !DIExpression(), !6301)
    #dbg_declare(ptr %i.i, !2827, !DIExpression(), !6302)
    #dbg_value(i64 2, !2871, !DIExpression(), !6304)
    #dbg_value(i64 2, !2879, !DIExpression(), !6306)
    #dbg_value(ptr poison, !2889, !DIExpression(), !6310)
    #dbg_value(ptr poison, !2889, !DIExpression(), !6314)
    #dbg_value(ptr %i.k, !2917, !DIExpression(), !6315)
    #dbg_value(i64 %i.aa, !2875, !DIExpression(), !6304)
    #dbg_value(i64 %i.aa, !2885, !DIExpression(), !6306)
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976, !dbg !7747
  call void @llvm.assume(i1 %i.ab), !dbg !7748
  %i.ac = shl nuw nsw i64 %i.aa, 1, !dbg !7749    ; 3 uses
    #dbg_value(i64 %i.ac, !2826, !DIExpression(), !6316)
    #dbg_value(i64 %i.ac, !2920, !DIExpression(), !6318)
    #dbg_value(ptr %i.k, !2923, !DIExpression(), !6319)
    #dbg_value(ptr %i.k, !2932, !DIExpression(), !6320)
    #dbg_value(ptr %i.k, !2935, !DIExpression(), !6321)
    #dbg_value(i64 %i.aa, !2950, !DIExpression(), !6324)
    #dbg_value(i64 %i.aa, !2960, !DIExpression(), !6326)
    #dbg_value(ptr %i.z, !2958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6327)
    #dbg_value(ptr %i.z, !2954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(i64 %i.aa, !2958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6327)
    #dbg_value(i64 %i.aa, !2954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6328)
    #dbg_value(ptr %i.z, !2955, !DIExpression(), !6329)
    #dbg_value(ptr %i.z, !2963, !DIExpression(), !6326)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa, !dbg !7750
    #dbg_value(ptr %i.z, !2965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6331)
    #dbg_value(ptr %i.ad, !2965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7751, !noalias !7204
  invoke void @_RNvMs1g_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutTNtB6_10SmallIndexB24_EEE3newBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ad)
          to label %.noexc unwind label %.thread279.loopexit.split-lp, !dbg !7752

.noexc:                                           ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195._crit_edge
  %i.ae = invoke { i32, ptr } @_RNvXs1h_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutTNtB6_10SmallIndexB24_EEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc188 unwind label %.thread279.loopexit.split-lp, !dbg !7753 ; 2 uses

.noexc188:                                        ; preds = %.noexc
  %i.af = extractvalue { i32, ptr } %i.ae, 1, !dbg !7753 ; 4 uses
  %.not98.i = icmp eq ptr %i.af, null, !dbg !7753
  br i1 %.not98.i, label %.loopexit, label %.lr.ph.i.preheader, !dbg !7753

.lr.ph.i.preheader:                               ; preds = %.noexc188
    #dbg_value(i32 poison, !2828, !DIExpression(), !6332)
    #dbg_value(ptr %i.af, !2830, !DIExpression(), !6333)
    #dbg_value(ptr %i.af, !2893, !DIExpression(), !6335)
    #dbg_value(ptr %i.af, !2893, !DIExpression(), !6337)
    #dbg_value(ptr %i.af, !2831, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6338)
    #dbg_value(ptr %i.af, !2893, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6340)
    #dbg_value(ptr %i.af, !2893, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6342)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !7754 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !dbg !7754, !noalias !7204, !noundef !1225
  %i.ai = zext i32 %i.ah to i64, !dbg !7754       ; 2 uses
  %i.aj = load i32, ptr %i.af, align 4, !dbg !7755, !noalias !7204, !noundef !1225
  %i.ak = zext i32 %i.aj to i64, !dbg !7755       ; 2 uses
  %i.al = add nuw nsw i64 %i.ac, %i.ai, !dbg !7756 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.al, 2147483646, !dbg !7757
  br i1 %i.am, label %.lr.ph.i._crit_edge, label %.lr.ph418, !dbg !7757

.lr.ph.i:                                         ; preds = %.noexc190
    #dbg_value(i32 poison, !2828, !DIExpression(), !6332)
    #dbg_value(ptr %i.bd, !2830, !DIExpression(), !6333)
    #dbg_value(ptr %i.bd, !2893, !DIExpression(), !6335)
    #dbg_value(ptr %i.bd, !2893, !DIExpression(), !6337)
    #dbg_value(ptr %i.bd, !2831, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6338)
    #dbg_value(ptr %i.bd, !2893, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6340)
    #dbg_value(ptr %i.bd, !2893, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6342)
  %i.an = getelementptr inbounds nuw i8, ptr %i.bd, i64 4, !dbg !7754 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !dbg !7754, !noalias !7204, !noundef !1225
  %i.ap = zext i32 %i.ao to i64, !dbg !7754       ; 2 uses
  %i.aq = load i32, ptr %i.bd, align 4, !dbg !7755, !noalias !7204, !noundef !1225
  %i.ar = zext i32 %i.aq to i64, !dbg !7755       ; 2 uses
    #dbg_value(!DIArgList(i64 %i.ap, i64 %i.ar), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !6343)
    #dbg_value(i64 %i.ap, !2921, !DIExpression(), !6318)
  %i.as = add nuw nsw i64 %i.ac, %i.ap, !dbg !7756 ; 2 uses
    #dbg_value(i64 %i.as, !2833, !DIExpression(), !6344)
    #dbg_value(i64 %i.as, !2913, !DIExpression(), !6345)
    #dbg_value(i64 %i.as, !2910, !DIExpression(), !6346)
    #dbg_value(i64 %i.as, !2974, !DIExpression(), !6348)
  %i.at = icmp samesign ugt i64 %i.as, 2147483646, !dbg !7757
  br i1 %i.at, label %.lr.ph.i._crit_edge, label %.lr.ph418, !dbg !7757

.lr.ph418:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.au = phi i64 [ %i.as, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ]
  %i.av = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.preheader ]
  %i.aw = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.preheader ]
  %i.ax = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.af, %.lr.ph.i.preheader ]
    #dbg_value(ptr %i.ax, !2830, !DIExpression(), !6333)
  %i.ay = trunc nuw nsw i64 %i.au to i32, !dbg !7758
  store i32 %i.ay, ptr %i.aw, align 4, !dbg !7759, !noalias !7204
  %i.az = add nuw nsw i64 %i.av, %i.ac, !dbg !7760 ; 3 uses
    #dbg_value(i64 %i.az, !2913, !DIExpression(), !6349)
    #dbg_value(i64 %i.az, !2910, !DIExpression(), !6350)
    #dbg_value(i64 %i.az, !2974, !DIExpression(), !6352)
  %i.ba = icmp samesign ugt i64 %i.az, 2147483646, !dbg !7761
  br i1 %i.ba, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_.exit.i, !dbg !7761
end_hunk_0
begin_hunk_1_@_RINvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_9GroupInfo3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1k_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1k_6option6OptionINtNtB2v_4sync3ArceEEEENCNvMs0_NtNtNtBa_3nfa8thompson3nfaNtB3P_5Inner12set_captures0EIB1c_IB20_B2X_ENCNCB3J_00ERB3k_EBa_:bb.a
    #dbg_value(ptr %.val.i.i649, !7259, !DIExpression(), !6386)
    #dbg_value(ptr poison, !7265, !DIExpression(), !6390)
    #dbg_value(ptr %.val.i.i649, !7267, !DIExpression(), !6390)
    #dbg_value(ptr %.val.i.i649, !7269, !DIExpression(), !6394)
  %i.cl = load ptr, ptr %.val.i.i649, align 8, !dbg !7810, !alias.scope !7272, !noalias !7273, !noundef !1225
  %.not.i.i.i = icmp eq ptr %i.cl, null, !dbg !7810
    #dbg_value(ptr poison, !6995, !DIExpression(), !6402)
    #dbg_value(i64 0, !6998, !DIExpression(), !6403)
    #dbg_value(i64 1, !6936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7237)
  br i1 %.not.i.i.i, label %bb.w, label %bb.v, !dbg !7811

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit: ; preds = %bb.s
    #dbg_value(ptr poison, !6936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7237)
    #dbg_value(i64 0, !6936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7237)
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !7812
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7812
  store i32 %i.ci, ptr %.sroa.484.0..sroa_idx, align 8, !dbg !7812
  br label %bb.q, !dbg !7813

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775805, ptr %0, align 8, !dbg !7814
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7814
  store i32 %i.ci, ptr %.sroa.478.0..sroa_idx, align 8, !dbg !7814
  br label %bb.q, !dbg !7815

bb.w:                                             ; preds = %bb.u
    #dbg_value(ptr %.val.i.i649, !6936, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7237)
  invoke void @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner15add_first_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, i32 noundef %i.ci)
          to label %.preheader unwind label %bb.t, !dbg !7816

.preheader:                                       ; preds = %bb.w
  %i.cm = icmp eq i64 %.val7.i.i650, 1, !dbg !7817
  br i1 %i.cm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_.exit195.loopexit, label %.lr.ph.preheader, !dbg !7818

.lr.ph.preheader:                                 ; preds = %.preheader
  %.sroa.0220.0411 = getelementptr inbounds nuw i8, ptr %.val.i.i649, i64 16, !dbg !7819
  br label %.lr.ph, !dbg !7820

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.be
  %.sroa.0220.0414 = phi ptr [ %.sroa.0220.0, %bb.be ], [ %.sroa.0220.0411, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0220.0.pn413 = phi ptr [ %.sroa.0220.0414, %bb.be ], [ %.val.i.i649, %.lr.ph.preheader ]
  %.sroa.8222.0412 = phi i64 [ %i.co, %bb.be ], [ 1, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(i64 %.sroa.8222.0412, !6937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7280)
    #dbg_value(ptr %.sroa.0220.0414, !6937, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7280)
    #dbg_value(ptr %.sroa.0220.0414, !7245, !DIExpression(), !6406)
    #dbg_value(ptr undef, !7253, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6406)
    #dbg_value(ptr undef, !7256, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6408)
    #dbg_value(ptr %.sroa.0220.0414, !7254, !DIExpression(), !6409)
    #dbg_value(ptr %.sroa.0220.0414, !7259, !DIExpression(), !6408)
    #dbg_value(ptr poison, !7265, !DIExpression(), !6411)
    #dbg_value(ptr %.sroa.0220.0414, !7267, !DIExpression(), !6411)
    #dbg_value(ptr %.sroa.0220.0414, !7269, !DIExpression(), !6413)
  %i.cn = load ptr, ptr %.sroa.0220.0414, align 8, !dbg !7821, !alias.scope !7281, !noalias !7282, !noundef !1225
  %.not.i.i.i192 = icmp eq ptr %i.cn, null, !dbg !7821
    #dbg_value(ptr poison, !6995, !DIExpression(), !6421)
    #dbg_value(i64 %.sroa.8222.0412, !6998, !DIExpression(), !6422)
  %i.co = add nuw nsw i64 %.sroa.8222.0412, 1, !dbg !7822 ; 4 uses
    #dbg_value(i64 %i.co, !6937, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7280)
    #dbg_value(i64 %.sroa.8222.0412, !6938, !DIExpression(), !7283)
    #dbg_value(i64 %.sroa.8222.0412, !7191, !DIExpression(), !7284)
    #dbg_value(i64 %.sroa.8222.0412, !7170, !DIExpression(), !7285)
    #dbg_value(i64 %.sroa.8222.0412, !7198, !DIExpression(), !7288)
    #dbg_value(ptr poison, !6939, !DIExpression(), !7283)
  %exitcond = icmp eq i64 %.sroa.8222.0412, 2147483647, !dbg !7820
  br i1 %exitcond, label %bb.bc, label %bb.x, !dbg !7820

bb.x:                                             ; preds = %.lr.ph
    #dbg_value(ptr poison, !6939, !DIExpression(), !7283)
  %i.cp = trunc nuw nsw i64 %.sroa.8222.0412 to i32, !dbg !7823
    #dbg_value(i32 %i.cp, !6940, !DIExpression(), !7289)
  call void @llvm.experimental.noalias.scope.decl(metadata !7290), !dbg !7824
  call void @llvm.experimental.noalias.scope.decl(metadata !7291), !dbg !7824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7825
    #dbg_value(ptr poison, !7335, !DIExpression(), !6454)
    #dbg_value(ptr poison, !7354, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6468)
    #dbg_value(ptr poison, !7354, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6472)
    #dbg_value(ptr poison, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6473)
    #dbg_value(ptr poison, !7354, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6476)
    #dbg_value(ptr poison, !7388, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6477)
    #dbg_value(i32 %i.ci, !7314, !DIExpression(), !6478)
    #dbg_value(i32 %i.cp, !7315, !DIExpression(), !6478)
    #dbg_value(i32 %i.cp, !7390, !DIExpression(), !6481)
    #dbg_value(ptr poison, !7316, !DIExpression(), !6478)
    #dbg_value(ptr %i.k, !7313, !DIExpression(), !6478)
    #dbg_value(ptr %i.k, !7397, !DIExpression(), !6486)
    #dbg_declare(ptr %i.g, !7321, !DIExpression(), !6487)
    #dbg_value(i8 0, !7327, !DIExpression(), !6488)
    #dbg_value(i8 0, !7332, !DIExpression(), !6489)
    #dbg_value(ptr poison, !7355, !DIExpression(), !6495)
    #dbg_value(i64 1, !7407, !DIExpression(), !6501)
    #dbg_value(i8 0, !7410, !DIExpression(), !6501)
    #dbg_value(i64 1, !7418, !DIExpression(), !6504)
    #dbg_value(i8 0, !7420, !DIExpression(), !6504)
    #dbg_value(ptr poison, !7352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6505)
    #dbg_value(i64 poison, !7352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6505)
    #dbg_value(ptr %i.k, !7306, !DIExpression(), !6506)
    #dbg_value(ptr %i.k, !7299, !DIExpression(), !6507)
    #dbg_value(ptr %i.k, !7294, !DIExpression(), !6508)
    #dbg_value(ptr %i.k, !7292, !DIExpression(), !6509)
    #dbg_value(ptr %i.k, !7422, !DIExpression(), !6512)
    #dbg_value(i32 %i.ci, !7307, !DIExpression(), !6513)
    #dbg_value(i32 %i.ci, !7424, !DIExpression(), !6516)
    #dbg_value(i32 %i.ci, !7430, !DIExpression(), !6519)
    #dbg_value(i32 %i.ci, !7430, !DIExpression(), !6521)
    #dbg_value(i32 %i.ci, !7398, !DIExpression(), !6486)
    #dbg_value(i32 %i.ci, !7435, !DIExpression(), !6524)
    #dbg_value(ptr poison, !7354, !DIExpression(), !6528)
    #dbg_value(i64 %.sroa.8.0415648, !7300, !DIExpression(), !6529)
    #dbg_value(i64 %.sroa.8.0415648, !7442, !DIExpression(), !6533)
    #dbg_value(i64 %.sroa.8.0415648, !7451, !DIExpression(), !6536)
    #dbg_value(i64 %.sroa.8.0415648, !7456, !DIExpression(), !6539)
    #dbg_value(i64 %.sroa.8.0415648, !7463, !DIExpression(), !6542)
    #dbg_value(i64 %.sroa.8.0415648, !7469, !DIExpression(), !6545)
    #dbg_value(i64 %.sroa.8.0415648, !7474, !DIExpression(), !6548)
    #dbg_value(i64 %.sroa.8.0415648, !7481, !DIExpression(), !6553)
    #dbg_value(i64 %.sroa.8.0415648, !7493, !DIExpression(), !6556)
    #dbg_value(i64 %.sroa.8.0415648, !7474, !DIExpression(), !6558)
    #dbg_value(i64 %.sroa.8.0415648, !7481, !DIExpression(), !6560)
    #dbg_value(i64 %.sroa.8.0415648, !7493, !DIExpression(), !6562)
    #dbg_value(i64 %.sroa.8.0415648, !7502, !DIExpression(), !6565)
    #dbg_value(i64 %.sroa.8.0415648, !7508, !DIExpression(), !6568)
    #dbg_value(i64 %.sroa.8.0415648, !7514, !DIExpression(), !6571)
  %i.cq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7825, !alias.scope !7290, !noalias !7520, !noundef !1225 ; 2 uses
    #dbg_value(ptr poison, !7446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6533)
    #dbg_value(ptr poison, !7454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6536)
    #dbg_value(i64 %i.cq, !7446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6533)
    #dbg_value(i64 %i.cq, !7454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6536)
  %i.cr = icmp ugt i64 %i.cq, %.sroa.8.0415648, !dbg !7826
  br i1 %i.cr, label %bb.y, label %.invoke594, !dbg !7826

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7827, !alias.scope !7290, !noalias !7520, !nonnull !1225, !noundef !1225
    #dbg_value(ptr %i.cs, !7446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6533)
    #dbg_value(ptr %i.cs, !7454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6536)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.8.0415648, !dbg !7828 ; 2 uses
    #dbg_value(ptr %i.ct, !7317, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6579)
    #dbg_value(ptr %i.ct, !7354, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !6581)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4, !dbg !7829 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !dbg !7829, !noalias !7521, !noundef !1225 ; 2 uses
    #dbg_value(i32 %i.cv, !7405, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6582)
    #dbg_value(i32 %i.cv, !7403, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6583)
  %i.cw = icmp ugt i32 %i.cv, 2147483644, !dbg !7830
  br i1 %i.cw, label %bb.aa, label %bb.z, !dbg !7830

.invoke594:                                       ; preds = %bb.ba, %bb.ac, %bb.x
  %i.cx = phi i64 [ %i.dl, %bb.ac ], [ %i.cq, %bb.x ], [ %i.gc, %bb.ba ]
  %i.cy = phi ptr [ @4, %bb.ac ], [ @1, %bb.x ], [ @6, %bb.ba ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0415648, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy) #26
          to label %.cont595 unwind label %.loopexit.split-lp, !dbg !7831

.cont595:                                         ; preds = %.invoke594
  unreachable

bb.z:                                             ; preds = %bb.y
    #dbg_value(i32 %i.cv, !7403, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6583)
    #dbg_value(i32 %i.cv, !7405, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6582)
  %i.cz = add nuw nsw i32 %i.cv, 2, !dbg !7832
    #dbg_value(ptr undef, !7354, !DIExpression(), !6468)
  store i32 %i.cz, ptr %i.cu, align 4, !dbg !7833, !noalias !7521
  br i1 %.not.i.i.i192, label %bb.ac, label %bb.ab, !dbg !7834

bb.aa:                                            ; preds = %bb.y
    #dbg_value(ptr undef, !7354, !DIExpression(), !6468)
    #dbg_value(i64 -9223372036854775807, !7318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6584)
    #dbg_value(i64 -9223372036854775807, !7523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6588)
    #dbg_value(i32 %i.cp, !7318, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6584)
    #dbg_value(i32 %i.cp, !7523, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6588)
    #dbg_value(i32 0, !7523, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !6588)
    #dbg_value(i32 0, !7318, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !6584)
    #dbg_value(i32 poison, !7523, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !6588)
    #dbg_value(i32 poison, !7318, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !6584)
    #dbg_value(i64 -9223372036854775807, !7524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6589)
    #dbg_value(i32 %i.cp, !7524, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !6589)
    #dbg_value(i32 0, !7524, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !6589)
    #dbg_value(i32 poison, !7524, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !6589)
  %i.da = inttoptr i64 %.sroa.8222.0412 to ptr, !dbg !7835
  br label %bb.bd, !dbg !7836

bb.ab:                                            ; preds = %bb.z
    #dbg_value(ptr poison, !7320, !DIExpression(), !6590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7837, !noalias !7521
    #dbg_value(ptr undef, !7320, !DIExpression(DW_OP_deref), !6590)
    #dbg_value(ptr poison, !7531, !DIExpression(), !6593)
  %.val.i.i197 = load ptr, ptr %.sroa.0220.0414, align 8, !dbg !7838, !alias.scope !7291, !noalias !7538, !nonnull !1225, !noundef !1225
  %i.db = getelementptr i8, ptr %.sroa.0220.0.pn413, i64 24, !dbg !7838
  %.val1.i.i = load i64, ptr %i.db, align 8, !dbg !7838, !alias.scope !7291, !noalias !7538, !noundef !1225
    #dbg_value(ptr poison, !7539, !DIExpression(), !6596)
    #dbg_value(ptr poison, !7543, !DIExpression(), !6599)
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i197, i64 16, !dbg !7839
    #dbg_value(ptr %i.dc, !7545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6608)
    #dbg_value(i64 %.val1.i.i, !7545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6608)
    #dbg_value(ptr %i.dc, !7567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6611)
    #dbg_value(ptr %i.dc, !7572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6614)
    #dbg_value(i64 %.val1.i.i, !7567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6611)
    #dbg_value(i64 %.val1.i.i, !7572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6614)
  %i.dd = invoke { ptr, i64 } @_RNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %.val1.i.i)
          to label %.noexc199 unwind label %.loopexit320, !dbg !7840 ; 2 uses

.noexc199:                                        ; preds = %bb.ab
  %i.de = extractvalue { ptr, i64 } %i.dd, 0, !dbg !7840 ; 2 uses
  %3 = extractvalue { ptr, i64 } %i.dd, 1, !dbg !7840 ; 3 uses
    #dbg_value(ptr %i.de, !7549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6615)
    #dbg_value(i64 %3, !7549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6615)
    #dbg_value(ptr %i.de, !7575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6618)
    #dbg_value(i64 %3, !7575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6618)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ], !dbg !7841
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !7842 ; 2 uses
    #dbg_value(ptr %i.df, !7590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6626)
    #dbg_value(i64 %3, !7590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6626)
    #dbg_value(ptr %i.df, !7595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6632)
    #dbg_value(ptr %i.df, !7606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6635)
    #dbg_value(i64 %3, !7595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6632)
    #dbg_value(i64 %3, !7606, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6635)
    #dbg_declare(ptr poison, !7599, !DIExpression(), !6636)
  %i.dg = invoke noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offseteECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull %i.df, i64 noundef %3)
          to label %.noexc200 unwind label %.loopexit320, !dbg !7843

.noexc200:                                        ; preds = %.noexc199
    #dbg_value(i64 %i.dg, !7600, !DIExpression(), !6637)
    #dbg_value(i64 %i.dg, !7609, !DIExpression(), !6635)
  %i.dh = sub nsw i64 0, %i.dg, !dbg !7844
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh, !dbg !7845 ; 2 uses
  store ptr %i.di, ptr %i.g, align 8, !dbg !7846, !noalias !7521
  store i64 %3, ptr %i.p, align 8, !dbg !7846, !noalias !7521
    #dbg_value(ptr %i.k, !7428, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6640)
    #dbg_value(ptr %i.k, !7460, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6641)
    #dbg_value(ptr %i.k, !7613, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6644)
    #dbg_value(ptr %i.k, !7615, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6647)
    #dbg_value(ptr %i.k, !7617, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6650)
    #dbg_value(ptr poison, !7354, !DIExpression(), !6653)
  %i.dj = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !7847, !alias.scope !7290, !noalias !7520, !noundef !1225 ; 2 uses
    #dbg_value(ptr poison, !7467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6542)
    #dbg_value(ptr poison, !7472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6545)
    #dbg_value(i64 %i.dj, !7467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6542)
    #dbg_value(i64 %i.dj, !7472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6545)
  %i.dk = icmp ugt i64 %i.dj, %.sroa.8.0415648, !dbg !7848
  br i1 %i.dk, label %bb.ad, label %.invoke.i, !dbg !7848

bb.ac:                                            ; preds = %bb.z
    #dbg_value(ptr %i.k, !7433, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6654)
    #dbg_value(ptr %i.k, !7477, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6655)
    #dbg_value(ptr %i.k, !7620, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6658)
    #dbg_value(ptr %i.k, !7624, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6661)
    #dbg_value(ptr %i.k, !7628, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6664)
    #dbg_value(ptr poison, !7354, !DIExpression(), !6667)
  %i.dl = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !7849, !alias.scope !7290, !noalias !7520, !noundef !1225 ; 3 uses
    #dbg_value(ptr poison, !7487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6560)
    #dbg_value(ptr poison, !7496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6562)
    #dbg_value(i64 %i.dl, !7487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6560)
    #dbg_value(i64 %i.dl, !7496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6562)
  %i.dm = icmp ugt i64 %i.dl, %.sroa.8.0415648, !dbg !7850
  br i1 %i.dm, label %bb.ax, label %.invoke594, !dbg !7850

bb.ad:                                            ; preds = %.noexc200
  %i.dn = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !7851, !alias.scope !7290, !noalias !7520, !nonnull !1225, !noundef !1225
    #dbg_value(ptr %i.dn, !7467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6542)
    #dbg_value(ptr %i.dn, !7472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6545)
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.8.0415648, !dbg !7852 ; 2 uses
    #dbg_value(ptr %i.do, !7634, !DIExpression(), !6676)
    #dbg_value(ptr %i.g, !7640, !DIExpression(), !6679)
    #dbg_value(ptr %i.g, !7642, !DIExpression(), !6682)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !7853
    #dbg_value(ptr %i.dp, !7638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6676)
    #dbg_value(i64 %3, !7638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6676)
  %i.dq = invoke noundef zeroext i1 @_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyeEB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.do, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %3)
          to label %bb.ae unwind label %.loopexit324, !dbg !7854, !noalias !7521

.invoke.i:                                        ; preds = %bb.am, %.noexc200
  %i.dr = phi i64 [ %i.dj, %.noexc200 ], [ %i.el, %bb.am ]
  %i.ds = phi ptr [ @2, %.noexc200 ], [ @3, %bb.am ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0415648, i64 noundef %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds) #27
          to label %.cont.i unwind label %.loopexit.split-lp325, !dbg !7855, !noalias !7521

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dq, label %bb.af, label %bb.aj, !dbg !7856

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.g, !7640, !DIExpression(), !6684)
    #dbg_value(ptr %i.g, !7642, !DIExpression(), !6686)
  %i.dt = load ptr, ptr %i.g, align 8, !dbg !7857, !noalias !7521, !nonnull !1225, !noundef !1225
  %i.du = load i64, ptr %i.p, align 8, !dbg !7857, !noalias !7521, !noundef !1225 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16, !dbg !7858
    #dbg_value(i32 %i.ci, !3178, !DIExpression(), !6690)
    #dbg_value(ptr %i.dv, !3182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6690)
    #dbg_value(ptr %i.dv, !3185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6692)
    #dbg_value(ptr %i.dv, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6694)
    #dbg_value(i64 %i.du, !3182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6690)
    #dbg_value(i64 %i.du, !3185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6692)
    #dbg_value(i64 %i.du, !3191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6694)
    #dbg_declare(ptr poison, !3196, !DIExpression(), !6698)
    #dbg_declare(ptr poison, !3210, !DIExpression(), !6700)
    #dbg_declare(ptr poison, !3217, !DIExpression(), !6702)
    #dbg_declare(ptr poison, !3223, !DIExpression(), !6704)
    #dbg_declare(ptr poison, !3229, !DIExpression(), !6706)
    #dbg_value(i64 0, !3238, !DIExpression(), !6708)
    #dbg_value(ptr %i.dv, !3208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6709)
    #dbg_value(ptr %i.dv, !3205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6710)
    #dbg_value(ptr %i.dv, !3201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6711)
    #dbg_value(ptr %i.dv, !3213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6712)
    #dbg_value(i64 %i.du, !3208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6709)
    #dbg_value(i64 %i.du, !3205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6710)
    #dbg_value(i64 %i.du, !3201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6711)
    #dbg_value(i64 %i.du, !3213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6712)
    #dbg_value(i64 %i.du, !3214, !DIExpression(), !6713)
    #dbg_value(i64 %i.du, !3221, !DIExpression(), !6714)
    #dbg_value(i64 %i.du, !3227, !DIExpression(), !6715)
    #dbg_value(i64 %i.du, !3246, !DIExpression(), !6717)
    #dbg_value(i64 %i.du, !3253, !DIExpression(), !6719)
    #dbg_value(i64 %i.du, !3233, !DIExpression(), !6720)
    #dbg_value(i64 %i.du, !3243, !DIExpression(), !6708)
    #dbg_value(i64 1, !3234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6720)
    #dbg_value(i64 1, !3244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6708)
    #dbg_value(i64 1, !3234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6720)
    #dbg_value(i64 1, !3244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7859, !noalias !7646
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.du, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp325, !dbg !7859, !noalias !7521

.noexc.i:                                         ; preds = %bb.af
  %i.dw = load i64, ptr %i.b, align 8, !dbg !7859, !range !3259, !noalias !7646, !noundef !1225
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !7860
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7861
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !7861, !range !3260, !noalias !7646, !noundef !1225 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7861 ; 2 uses
  br i1 %i.dx, label %bb.ag, label %bb.ah, !dbg !7860, !prof !3261

bb.ag:                                            ; preds = %.noexc.i
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !7862, !noalias !7646
    #dbg_value(i64 %i.dz, !3236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6724)
    #dbg_value(i64 %i.eb, !3236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6724)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #27
          to label %.noexc132.i unwind label %.loopexit.split-lp325, !dbg !7863, !noalias !7521

.noexc132.i:                                      ; preds = %bb.ag
  unreachable, !dbg !7863

bb.ah:                                            ; preds = %.noexc.i
  %i.ec = load ptr, ptr %i.ea, align 8, !dbg !7864, !noalias !7646, !nonnull !1225, !noundef !1225 ; 2 uses
    #dbg_value(i64 %i.dz, !3235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6725)
    #dbg_value(ptr %i.ec, !3235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6725)
    #dbg_value(ptr poison, !3242, !DIExpression(), !6726)
  %i.ed = icmp ule i64 %i.du, %i.dz, !dbg !7865
    #dbg_value(i1 true, !3264, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6728)
  call void @llvm.assume(i1 %i.ed), !dbg !7866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7867, !noalias !7646
    #dbg_value(i64 %i.dz, !3215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6729)
    #dbg_value(ptr %i.ec, !3215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6729)
    #dbg_value(i64 0, !3215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6729)
  %.not.i.i = icmp eq i64 %i.du, 0, !dbg !7868
  br i1 %.not.i.i, label %_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate.exit.i, label %bb.ai, !dbg !7868

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.dv, !3250, !DIExpression(), !6717)
    #dbg_value(ptr %i.dv, !3256, !DIExpression(), !6719)
    #dbg_value(ptr %i.ec, !3251, !DIExpression(), !6717)
    #dbg_value(ptr %i.ec, !3257, !DIExpression(), !6719)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 1 %i.dv, i64 %i.du, i1 false), !dbg !7869, !noalias !7647
    #dbg_value(i64 %i.du, !3215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6729)
  br label %_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate.exit.i, !dbg !7870

bb.aj:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.g, !7640, !DIExpression(), !6731)
    #dbg_value(ptr %i.g, !7642, !DIExpression(), !6733)
  %i.ee = load i64, ptr %i.p, align 8, !dbg !7871, !noalias !7521, !noundef !1225
    #dbg_value(i64 %i.ee, !7322, !DIExpression(), !6735)
    #dbg_value(ptr poison, !7354, !DIExpression(), !6740)
  %i.ef = load ptr, ptr %i.g, align 8, !dbg !7871, !noalias !7521, !nonnull !1225, !noundef !1225
    #dbg_value(!DIArgList(ptr %i.dn, i64 %.sroa.8.0415648), !7394, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6481)
    #dbg_value(ptr %i.g, !7415, !DIExpression(), !6741)
    #dbg_value(ptr %i.g, !7642, !DIExpression(), !6743)
    #dbg_value(ptr %i.ef, !7409, !DIExpression(), !6744)
    #dbg_value(ptr %i.ef, !7419, !DIExpression(), !6504)
  %i.eg = atomicrmw add ptr %i.ef, i64 1 monotonic, align 8, !dbg !7872, !noalias !7521
    #dbg_value(i64 %i.eg, !7416, !DIExpression(), !6745)
  %i.eh = icmp slt i64 %i.eg, 0, !dbg !7873
  br i1 %i.eh, label %bb.al, label %bb.ak, !dbg !7873

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.do, !7394, !DIExpression(), !6481)
  %i.ei = load ptr, ptr %i.g, align 8, !dbg !7874, !noalias !7521, !nonnull !1225, !noundef !1225
  %i.ej = load i64, ptr %i.p, align 8, !dbg !7874, !noalias !7521, !noundef !1225
    #dbg_value(ptr %i.ei, !7395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6481)
    #dbg_value(i64 %i.ej, !7395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6481)
  %i.ek = invoke { i32, i32 } @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull %i.ei, i64 noundef %i.ej, i32 noundef range(i32 0, 2147483647) %i.cp)
          to label %bb.am unwind label %.loopexit324, !dbg !7875, !noalias !7521 ; 0 uses

bb.al:                                            ; preds = %bb.aj
  call void @llvm.trap(), !dbg !7876
  unreachable, !dbg !7876

bb.am:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.k, !7433, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6746)
    #dbg_value(ptr %i.k, !7477, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6747)
    #dbg_value(ptr %i.k, !7620, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6749)
    #dbg_value(ptr %i.k, !7624, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6751)
    #dbg_value(ptr %i.k, !7628, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6753)
    #dbg_value(ptr poison, !7354, !DIExpression(), !6756)
  %i.el = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !7877, !alias.scope !7290, !noalias !7520, !noundef !1225 ; 3 uses
    #dbg_value(ptr poison, !7487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6553)
    #dbg_value(ptr poison, !7496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6556)
    #dbg_value(i64 %i.el, !7487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6553)
    #dbg_value(i64 %i.el, !7496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6556)
  %i.em = icmp ugt i64 %i.el, %.sroa.8.0415648, !dbg !7878
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures18interpolate_string:bb.a
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !10089, !DIExpression(), !10094)
    #dbg_value(ptr %2, !10090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10094)
    #dbg_value(i64 %3, !10090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10094)
    #dbg_value(ptr %4, !10091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10094)
    #dbg_value(i64 %5, !10091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10094)
    #dbg_declare(ptr %i.b, !10092, !DIExpression(), !10095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10101
  store i64 0, ptr %i.b, align 8, !dbg !10102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10102
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10102
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10102
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10102
    #dbg_value(ptr %1, !4252, !DIExpression(), !10080)
    #dbg_value(ptr %2, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10080)
    #dbg_value(i64 %3, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10080)
    #dbg_value(ptr %4, !4257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10080)
    #dbg_value(i64 %5, !4257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10080)
    #dbg_value(ptr %i.b, !4258, !DIExpression(), !10080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10103, !noalias !10100
  store ptr %1, ptr %i.a, align 8, !dbg !10103, !noalias !10100
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10103
  store ptr %2, ptr %i.c, align 8, !dbg !10103, !noalias !10100
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10103
  store i64 %3, ptr %i.d, align 8, !dbg !10103, !noalias !10100
  invoke void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate6stringNCNvMNtB4_8capturesNtB14_8Captures23interpolate_string_into0NCB11_s_0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !10104

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.e unwind label %bb.d, !dbg !10105

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10106, !noalias !10100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !10107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10105
  ret void, !dbg !10108

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !10109
  unreachable, !dbg !10109

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e, !dbg !10109
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures22interpolate_bytes_into(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef align 8 dereferenceable(24) %5) unnamed_addr #0 !dbg !801 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !4244, !DIExpression(), !10110)
    #dbg_value(ptr %1, !4248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10110)
    #dbg_value(i64 %2, !4248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10110)
    #dbg_value(ptr %3, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10110)
    #dbg_value(i64 %4, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10110)
    #dbg_value(ptr %5, !4250, !DIExpression(), !10110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10111
  store ptr %0, ptr %i.a, align 8, !dbg !10111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10111
  store ptr %1, ptr %i.b, align 8, !dbg !10111
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10111
  store i64 %2, ptr %i.c, align 8, !dbg !10111
  call void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB4_8capturesNtB13_8Captures22interpolate_bytes_into0NCB10_s_0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5), !dbg !10112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10113
  ret void, !dbg !10114
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures23interpolate_string_into(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef align 8 dereferenceable(24) %5) unnamed_addr #0 !dbg !802 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !4252, !DIExpression(), !10115)
    #dbg_value(ptr %1, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10115)
    #dbg_value(i64 %2, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10115)
    #dbg_value(ptr %3, !4257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10115)
    #dbg_value(i64 %4, !4257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10115)
    #dbg_value(ptr %5, !4258, !DIExpression(), !10115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10116
  store ptr %0, ptr %i.a, align 8, !dbg !10116
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10116
  store ptr %1, ptr %i.b, align 8, !dbg !10116
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10116
  store i64 %2, ptr %i.c, align 8, !dbg !10116
  call void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate6stringNCNvMNtB4_8capturesNtB14_8Captures23interpolate_string_into0NCB11_s_0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5), !dbg !10117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10118
  ret void, !dbg !10119
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures3all(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10121 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !10161, !DIExpression(), !10164)
    #dbg_value(i64 0, !10165, !DIExpression(), !10169)
    #dbg_value(ptr poison, !10170, !DIExpression(), !10174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10175), !dbg !10183
    #dbg_value(ptr %1, !4264, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10127)
    #dbg_value(ptr %1, !4269, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10129)
    #dbg_value(ptr %1, !4271, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10131)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10184
  %i.d = load i64, ptr %i.c, align 8, !dbg !10184, !alias.scope !10175, !noundef !1225 ; 2 uses
    #dbg_value(ptr poison, !4273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10133)
    #dbg_value(i64 %i.d, !4273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10133)
  %.not.i = icmp eq i64 %i.d, 0, !dbg !10185
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10185
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10185, !alias.scope !10175, !nonnull !1225
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d, !dbg !10185 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8, !dbg !10185
    #dbg_value(ptr poison, !4278, !DIExpression(), !10135)
    #dbg_value(i32 0, !4285, !DIExpression(), !10135)
    #dbg_declare(ptr poison, !4286, !DIExpression(), !10136)
  %.not.i4.i = icmp eq ptr %i.h, null, !dbg !10186
  %.not.i.i = select i1 %.not.i, i1 true, i1 %.not.i4.i, !dbg !10185
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len.exit, label %bb.b, !dbg !10187

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.h, !4287, !DIExpression(), !10137)
  %i.i = getelementptr i8, ptr %i.g, i64 -4, !dbg !10188
  %.val.i.i = load i32, ptr %i.i, align 4, !dbg !10188, !alias.scope !10176, !noalias !10175, !noundef !1225
  %i.j = zext i32 %.val.i.i to i64, !dbg !10189
  br label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len.exit, !dbg !10190

_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len.exit: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ], !dbg !10191
    #dbg_value(ptr poison, !10177, !DIExpression(), !10180)
    #dbg_value(i64 %.sroa.02.0.i.i, !10162, !DIExpression(), !10181)
    #dbg_value(i64 %.sroa.02.0.i.i, !10166, !DIExpression(), !10169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10192
  store ptr %1, ptr %i.b, align 8, !dbg !10192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10168
  invoke void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.02.0.i.i)
          to label %bb.e unwind label %bb.c, !dbg !10193

bb.c:                                             ; preds = %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4290, !DIExpression(), !10142)
    #dbg_value(ptr %i.b, !4296, !DIExpression(), !10144)
    #dbg_value(ptr %i.b, !4302, !DIExpression(), !10146)
    #dbg_value(i64 1, !4304, !DIExpression(), !10148)
    #dbg_value(i8 1, !4306, !DIExpression(), !10148)
    #dbg_value(i64 1, !4308, !DIExpression(), !10150)
    #dbg_value(i8 1, !4310, !DIExpression(), !10150)
    #dbg_value(ptr %1, !4305, !DIExpression(), !10151)
    #dbg_value(ptr %1, !4309, !DIExpression(), !10150)
  %i.l = atomicrmw sub ptr %1, i64 1 release, align 8, !dbg !10194, !noalias !10182
  %i.m = icmp eq i64 %i.l, 1, !dbg !10195
  br i1 %i.m, label %bb.d, label %.noexc, !dbg !10195

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !3282, !DIExpression(), !10159)
  fence acquire, !dbg !10196
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %.noexc unwind label %bb.f, !dbg !10197

bb.e:                                             ; preds = %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10198
  store ptr %1, ptr %i.n, align 8, !dbg !10198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10198
  store i32 0, ptr %i.o, align 8, !dbg !10198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10199
  ret void, !dbg !10200

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !10201
  unreachable, !dbg !10201

.noexc:                                           ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k, !dbg !10201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures4iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10203 {
bb.a:
    #dbg_value(ptr %1, !10272, !DIExpression(), !10275)
    #dbg_value(ptr %1, !10276, !DIExpression(), !10279)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10304
  %i.b = load i32, ptr %i.a, align 8, !dbg !10304, !range !3969, !noundef !1225
    #dbg_value(ptr inttoptr (i64 8 to ptr), !10280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10296)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !10280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10296)
    #dbg_value(i64 0, !10280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10296)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10305
  %.val = load ptr, ptr %i.c, align 8, !dbg !10305 ; 3 uses
    #dbg_value(i32 %i.b, !10292, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10209)
    #dbg_value(i32 poison, !10292, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10209)
    #dbg_value(ptr poison, !10293, !DIExpression(), !10209)
  %i.d = trunc nuw i32 %i.b to i1, !dbg !10306
  br i1 %i.d, label %bb.b, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDE6map_orINtNtNtNtB5_4iter8adapters9enumerate9EnumerateNtNtBM_8captures21GroupInfoPatternNamesENCNvMB2D_NtB2D_8Captures4iter0EBO_.exit, !dbg !10306

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !10304
  %i.f = load i32, ptr %i.e, align 4, !dbg !10304
    #dbg_value(i32 %i.f, !10292, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10209)
    #dbg_value(i32 %i.f, !10294, !DIExpression(), !10210)
    #dbg_value(ptr poison, !10297, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10213)
    #dbg_value(i32 %i.f, !10300, !DIExpression(), !10213)
    #dbg_value(ptr poison, !4322, !DIExpression(), !10215)
    #dbg_value(i32 %i.f, !4327, !DIExpression(), !10215)
    #dbg_declare(ptr poison, !4329, !DIExpression(), !10217)
    #dbg_value(i64 0, !4349, !DIExpression(), !10221)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !4366, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !10223)
    #dbg_value(ptr %.val, !4371, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !10225)
    #dbg_value(ptr %.val, !4374, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !10227)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !10307
  %i.h = load i64, ptr %i.g, align 8, !dbg !10307, !noalias !10302, !noundef !1225
    #dbg_value(ptr poison, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10234)
    #dbg_value(ptr poison, !4384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10236)
    #dbg_value(i64 %i.h, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10234)
    #dbg_value(i64 %i.h, !4384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10236)
    #dbg_value(ptr poison, !4389, !DIExpression(), !10238)
    #dbg_value(ptr poison, !4391, !DIExpression(), !10240)
  %i.i = zext i32 %i.f to i64, !dbg !10308        ; 2 uses
    #dbg_value(i64 %i.i, !4382, !DIExpression(), !10234)
    #dbg_value(i64 %i.i, !4387, !DIExpression(), !10236)
  %i.j = icmp ugt i64 %i.h, %i.i, !dbg !10309
  br i1 %i.j, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDE6map_orINtNtNtNtB5_4iter8adapters9enumerate9EnumerateNtNtBM_8captures21GroupInfoPatternNamesENCNvMB2D_NtB2D_8Captures4iter0EBO_.exit, !dbg !10309

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !10310
  %i.l = load ptr, ptr %i.k, align 8, !dbg !10310, !noalias !10302, !nonnull !1225, !noundef !1225
    #dbg_value(ptr %i.l, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10234)
    #dbg_value(ptr %i.l, !4384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10236)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i, !dbg !10311 ; 2 uses
    #dbg_value(ptr %i.m, !4346, !DIExpression(), !10244)
    #dbg_value(ptr %i.m, !4347, !DIExpression(), !10245)
    #dbg_value(ptr %i.m, !4393, !DIExpression(), !10247)
    #dbg_value(ptr %i.m, !4397, !DIExpression(), !10249)
    #dbg_value(ptr %i.m, !4401, !DIExpression(), !10251)
    #dbg_value(ptr %i.m, !4405, !DIExpression(), !10253)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !10312
  %i.o = load ptr, ptr %i.n, align 8, !dbg !10312, !noalias !10302, !nonnull !1225, !noundef !1225 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !10313
  %i.q = load i64, ptr %i.p, align 8, !dbg !10313, !noalias !10302, !noundef !1225
    #dbg_value(i64 %i.q, !4355, !DIExpression(), !10259)
    #dbg_value(i64 %i.q, !4351, !DIExpression(), !10261)
    #dbg_value(ptr %i.o, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10262)
    #dbg_value(ptr %i.o, !4354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10263)
    #dbg_value(i64 %i.q, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10262)
    #dbg_value(i64 %i.q, !4354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10263)
    #dbg_value(ptr %i.o, !4356, !DIExpression(), !10264)
    #dbg_value(ptr %i.o, !4350, !DIExpression(), !10261)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.q, !dbg !10314
    #dbg_value(ptr %i.o, !4414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10266)
    #dbg_value(ptr %i.r, !4414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10266)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10267)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10268)
    #dbg_value(i64 0, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10267)
    #dbg_value(i64 0, !4354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10268)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4350, !DIExpression(), !10221)
    #dbg_value(ptr %i.o, !4418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10266)
    #dbg_value(ptr %i.r, !4418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10266)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDE6map_orINtNtNtNtB5_4iter8adapters9enumerate9EnumerateNtNtBM_8captures21GroupInfoPatternNamesENCNvMB2D_NtB2D_8Captures4iter0EBO_.exit, !dbg !10315

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDE6map_orINtNtNtNtB5_4iter8adapters9enumerate9EnumerateNtNtBM_8captures21GroupInfoPatternNamesENCNvMB2D_NtB2D_8Captures4iter0EBO_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.r, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10296
  %.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.o, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10296
    #dbg_value(ptr %.sroa.0.0, !10273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10303)
    #dbg_value(ptr %.sroa.5.0, !10273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10303)
    #dbg_value(i64 0, !10273, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10303)
  store ptr %1, ptr %0, align 8, !dbg !10316
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10316
  store ptr %.sroa.0.0, ptr %i.s, align 8, !dbg !10316
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10316
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10316
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10316
  ret void, !dbg !10317
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures7matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10319 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !10347, !DIExpression(), !10350)
    #dbg_value(i64 2, !10351, !DIExpression(), !10357)
    #dbg_value(i64 2, !10358, !DIExpression(), !10362)
    #dbg_value(i64 0, !10363, !DIExpression(), !10367)
    #dbg_value(ptr poison, !10368, !DIExpression(), !10371)
    #dbg_value(ptr %1, !10372, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10375)
    #dbg_value(ptr %1, !10376, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10379)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10382
  %i.d = load i64, ptr %i.c, align 8, !dbg !10382, !noundef !1225 ; 2 uses
    #dbg_value(i64 %i.d, !10352, !DIExpression(), !10357)
    #dbg_value(i64 %i.d, !10359, !DIExpression(), !10362)
  %i.e = icmp ult i64 %i.d, 1152921504606846976, !dbg !10383
  tail call void @llvm.assume(i1 %i.e), !dbg !10384
  %i.f = shl nuw nsw i64 %i.d, 1, !dbg !10385
    #dbg_value(i64 %i.f, !10348, !DIExpression(), !10380)
    #dbg_value(i64 %i.f, !10364, !DIExpression(), !10367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10386
  store ptr %1, ptr %i.b, align 8, !dbg !10386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10366
  invoke void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b, !dbg !10387

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4290, !DIExpression(), !10328)
    #dbg_value(ptr %i.b, !4296, !DIExpression(), !10330)
    #dbg_value(ptr %i.b, !4302, !DIExpression(), !10332)
    #dbg_value(i64 1, !4304, !DIExpression(), !10334)
    #dbg_value(i8 1, !4306, !DIExpression(), !10334)
    #dbg_value(i64 1, !4308, !DIExpression(), !10336)
    #dbg_value(i8 1, !4310, !DIExpression(), !10336)
    #dbg_value(ptr %1, !4305, !DIExpression(), !10337)
    #dbg_value(ptr %1, !4309, !DIExpression(), !10336)
  %i.h = atomicrmw sub ptr %1, i64 1 release, align 8, !dbg !10388, !noalias !10381
  %i.i = icmp eq i64 %i.h, 1, !dbg !10389
  br i1 %i.i, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoEBH_.exit, !dbg !10389

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3282, !DIExpression(), !10345)
  fence acquire, !dbg !10390
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoEBH_.exit unwind label %bb.e, !dbg !10391

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10392
  store ptr %1, ptr %i.j, align 8, !dbg !10392
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10392
  store i32 0, ptr %i.k, align 8, !dbg !10392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10393
  ret void, !dbg !10394

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !10395
  unreachable, !dbg !10395

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g, !dbg !10395
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB2_9Prefilter11from_choice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 32 captures(none) dead_on_return dereferenceable(544) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10405 {
bb.a:
    #dbg_declare(ptr poison, !10671, !DIExpression(DW_OP_LLVM_fragment, 128, 24), !10415)
  %.sroa.579 = alloca [272 x i8], align 16        ; 4 uses
    #dbg_declare(ptr %.sroa.579, !10702, !DIExpression(DW_OP_LLVM_fragment, 128, 2176), !10425)
    #dbg_value(ptr poison, !10731, !DIExpression(), !10428)
  %i.a = alloca [544 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !10736, !DIExpression(DW_OP_LLVM_fragment, 128, 2048), !10438)
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !10726, !DIExpression(DW_OP_LLVM_fragment, 0, 2048), !10767)
    #dbg_declare(ptr poison, !10664, !DIExpression(DW_OP_LLVM_fragment, 0, 2048), !10768)
  %i.c = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %1, !10658, !DIExpression(), !10769)
    #dbg_value(i64 %2, !10659, !DIExpression(), !10770)
    #dbg_declare(ptr %i.c, !10660, !DIExpression(), !10771)
    #dbg_declare(ptr poison, !10663, !DIExpression(), !10772)
    #dbg_declare(ptr poison, !10697, !DIExpression(), !10773)
    #dbg_declare(ptr %1, !10665, !DIExpression(), !10774)
    #dbg_declare(ptr %1, !10775, !DIExpression(), !10791)
    #dbg_declare(ptr poison, !10666, !DIExpression(), !10792)
    #dbg_declare(ptr poison, !10762, !DIExpression(), !10793)
    #dbg_declare(ptr poison, !10667, !DIExpression(), !10794)
    #dbg_declare(ptr poison, !10795, !DIExpression(), !10817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10953
  %i.d = load i64, ptr %1, align 32, !dbg !10954, !range !3556, !noundef !1225 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775804, !dbg !10954
  tail call void @llvm.assume(i1 %i.e), !dbg !10954
  %i.f = xor i64 %i.d, -9223372036854775808, !dbg !10954
  %i.g = icmp slt i64 %i.d, 0, !dbg !10954
  %i.h = select i1 %i.g, i64 %i.f, i64 4, !dbg !10954
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.m
    i64 5, label %bb.q
    i64 6, label %bb.s
  ], !dbg !10955

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !10954

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10956
  %i.j = load i8, ptr %i.i, align 8, !dbg !10956, !noundef !1225
    #dbg_value(i8 %i.j, !10661, !DIExpression(), !10818)
    #dbg_value(i8 %i.j, !10819, !DIExpression(), !10843)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10850)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10850)
    #dbg_value(i8 %i.j, !10844, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !10850)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10460)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10462)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10464)
    #dbg_value(i64 24, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10460)
    #dbg_value(i64 24, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10462)
    #dbg_value(i64 24, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10464)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10462)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10464)
    #dbg_value(i8 0, !4448, !DIExpression(), !10464)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10466)
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!6415 = distinct !{!6415, !6414, !"_RNCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB9_5Inner12set_captures00Bf_: argument 0"}
!6416 = distinct !{!6416, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_"}
!6417 = distinct !{!6417, !6416, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_: argument 1"}
!6418 = distinct !{!6418, !6416, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2V_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB31_: argument 0"}
!6419 = distinct !{!6419, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2u_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2A_"}
!6420 = distinct !{!6420, !6419, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2u_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2A_: argument 0"}
!6421 = distinct !DILocation(line: 0, scope: !6180, inlinedAt: !6182)
!6422 = distinct !DILocation(line: 0, scope: !6177, inlinedAt: !6182)
!6423 = distinct !{!6423, !"_RINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEBa_"}
!6424 = distinct !{!6424, !6423, !"_RINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEBa_: argument 1"}
!6425 = distinct !{!6425, !6423, !"_RINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEBa_: argument 2"}
!6426 = distinct !DISubprogram(name: "as_mut_slice<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBF_EE12as_mut_sliceBL_", scope: !97, file: !2734, line: 1884, type: !2926, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1561, declaration: !2933, retainedNodes: !7293)
!6427 = distinct !DISubprogram(name: "deref_mut<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", linkageName: "_RNvXs9_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBG_EENtNtNtCsj6eKBz9Db1c_4core3ops5deref8DerefMut9deref_mutBM_", scope: !2924, file: !2734, line: 3863, type: !2926, scopeLine: 3863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1561, retainedNodes: !7295)
!6428 = distinct !DISubprogram(name: "index_mut<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), usize, alloc::alloc::Global>", linkageName: "_RNvXse_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBG_EEINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutjE9index_mutBM_", scope: !7296, file: !2734, line: 3945, type: !7298, scopeLine: 3945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7302, retainedNodes: !7301)
!6429 = distinct !DISubprogram(name: "index_mut<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", linkageName: "_RNvXs15_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtB6_10SmallIndexB1t_EEINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtB6_9PatternIDE9index_mutBa_", scope: !7303, file: !2887, line: 581, type: !7305, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1557, retainedNodes: !7308)
!6430 = distinct !DILexicalBlock(scope: !6431, file: !3082, line: 48, column: 21)
!6431 = distinct !DILexicalBlock(scope: !6439, file: !3082, line: 46, column: 13)
!6432 = distinct !DILexicalBlock(scope: !6433, file: !3082, line: 48, column: 21)
!6433 = distinct !DILexicalBlock(scope: !6439, file: !3082, line: 46, column: 13)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !2675, line: 2241, column: 13)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !2675, line: 2237, column: 13)
!6436 = distinct !DILexicalBlock(scope: !6439, file: !2675, line: 2236, column: 40)
!6437 = distinct !DILexicalBlock(scope: !6439, file: !2675, line: 2235, column: 11)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !2675, line: 2235, column: 11)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !2675, line: 2232, column: 9)
!6440 = distinct !DISubprogram(name: "add_explicit_group<&alloc::sync::Arc<str, alloc::alloc::Global>>", linkageName: "_RINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEBa_", scope: !98, file: !2675, line: 2220, type: !7310, scopeLine: 2220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7311, declaration: !7312, retainedNodes: !7333)
!6441 = distinct !DILocation(line: 1605, column: 28, scope: !6150)
!6442 = distinct !DILocation(line: 2232, column: 40, scope: !6440, inlinedAt: !6441)
!6443 = distinct !DILocation(line: 582, column: 26, scope: !6429, inlinedAt: !6442)
!6444 = distinct !DILocation(line: 3946, column: 34, scope: !6428, inlinedAt: !6443)
!6445 = distinct !DILocation(line: 3864, column: 14, scope: !6427, inlinedAt: !6444)
!6446 = distinct !DISubprogram(name: "drop_glue<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata", scope: !1237, file: !2810, line: 847, type: !7337, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1470, retainedNodes: !7338)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !2734, line: 1036, column: 13)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !2734, line: 1029, column: 9)
!6449 = distinct !DISubprogram(name: "push_mut<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs9GYDdpCSJ4S_14regex_automata", scope: !80, file: !2734, line: 1027, type: !7340, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1503, declaration: !7341, retainedNodes: !7346)
!6450 = distinct !DISubprogram(name: "push<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE4pushCs9GYDdpCSJ4S_14regex_automata", scope: !80, file: !2734, line: 995, type: !7348, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1503, declaration: !7349, retainedNodes: !7353)
!6451 = distinct !DILocation(line: 2253, column: 37, scope: !6439, inlinedAt: !6441)
!6452 = distinct !DILocation(line: 996, column: 22, scope: !6450, inlinedAt: !6451)
!6453 = distinct !DILocation(line: 1042, column: 5, scope: !6449, inlinedAt: !6452)
!6454 = distinct !DILocation(line: 0, scope: !6446, inlinedAt: !6453)
!6455 = distinct !DISubprogram(name: "as_usize", linkageName: "_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndex8as_usize", scope: !11, file: !2887, line: 200, type: !2891, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !2892, retainedNodes: !7356)
!6456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&alloc::sync::Arc<str, alloc::alloc::Global>>", scope: !7357, file: !998, size: 128, align: 64, elements: !7362, templateParams: !1225, identifier: "4824143a89e3cc02edbc463de9068d25")
!6457 = distinct !DISubprogram(name: "{closure#0}<&alloc::sync::Arc<str, alloc::alloc::Global>>", linkageName: "_RNCINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB8_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEE0Bc_", scope: !7357, file: !2675, line: 2233, type: !7359, scopeLine: 2233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7311, retainedNodes: !7365)
!6458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !6461, file: !998, size: 256, align: 64, flags: DIFlagPublic, elements: !7373, templateParams: !7374, identifier: "355f199c2109df62f087a5c6bf70dbb")
!6459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !6461, file: !998, size: 256, align: 64, flags: DIFlagPublic, elements: !7376, templateParams: !7374, identifier: "bb49e698770b883becdb39babbf9d1f9")
!6460 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !6461, file: !998, size: 256, align: 64, elements: !7371, templateParams: !1225, identifier: "10a7ab60587c8e016cb6849793a6a7b9", discriminator: !7377)
!6461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<regex_automata::util::primitives::SmallIndex, regex_automata::util::captures::GroupInfoError>", scope: !2548, file: !998, size: 256, align: 64, flags: DIFlagPublic, elements: !7368, templateParams: !1225, identifier: "a4ba48ff2981bdbdfb729793e6dc79c0")
!6462 = distinct !DILexicalBlock(scope: !6463, file: !2641, line: 966, column: 13)
!6463 = distinct !DISubprogram(name: "map_err<regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndexError, regex_automata::util::captures::GroupInfoError, regex_automata::util::captures::{impl#8}::add_explicit_group::{closure_env#0}<&alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtBK_15SmallIndexErrorE7map_errNtNtBM_8captures14GroupInfoErrorNCINvMs6_B2i_NtB2i_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEE0EBO_", scope: !487, file: !2641, line: 961, type: !7367, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7379, declaration: !7380, retainedNodes: !7385)
!6464 = distinct !DILexicalBlock(scope: !6463, file: !2641, line: 967, column: 13)
!6465 = distinct !DILocation(line: 2233, column: 52, scope: !6439, inlinedAt: !6441)
!6466 = distinct !DILocation(line: 967, column: 27, scope: !6464, inlinedAt: !6465)
!6467 = distinct !DILocation(line: 2234, column: 56, scope: !6457, inlinedAt: !6466)
!6468 = distinct !DILocation(line: 0, scope: !6455, inlinedAt: !6467)
!6469 = distinct !DISubprogram(name: "one_more", linkageName: "_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndex8one_more", scope: !11, file: !2887, line: 233, type: !2891, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !7387, retainedNodes: !7389)
!6470 = distinct !DILocation(line: 2261, column: 26, scope: !6439, inlinedAt: !6441)
!6471 = distinct !DILocation(line: 234, column: 14, scope: !7386, inlinedAt: !6470)
!6472 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6471)
!6473 = distinct !DILocation(line: 233, column: 21, scope: !6469, inlinedAt: !6470)
!6474 = distinct !DILocation(line: 2259, column: 26, scope: !6439, inlinedAt: !6441)
!6475 = distinct !DILocation(line: 234, column: 14, scope: !6469, inlinedAt: !6474)
!6476 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6475)
!6477 = distinct !DILocation(line: 233, column: 21, scope: !6469, inlinedAt: !6474)
!6478 = distinct !DILocation(line: 0, scope: !6440, inlinedAt: !6441)
!6479 = distinct !DISubprogram(name: "insert<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB5_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexE6insertB1J_", scope: !90, file: !3085, line: 1332, type: !7392, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1548, declaration: !7393, retainedNodes: !7396)
!6480 = distinct !DILocation(line: 2242, column: 37, scope: !6434, inlinedAt: !6441)
!6481 = distinct !DILocation(line: 0, scope: !6479, inlinedAt: !6480)
!6482 = distinct !DILexicalBlock(scope: !6484, file: !2675, line: 2308, column: 13)
!6483 = distinct !DILexicalBlock(scope: !6484, file: !2675, line: 2306, column: 9)
!6484 = distinct !DISubprogram(name: "group_len", linkageName: "_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner9group_len", scope: !98, file: !2675, line: 2305, type: !3096, scopeLine: 2305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !3097, retainedNodes: !7402)
!6485 = distinct !DILocation(line: 2259, column: 43, scope: !6439, inlinedAt: !6441)
!6486 = distinct !DILocation(line: 0, scope: !6484, inlinedAt: !6485)
!6487 = distinct !DILocation(line: 2237, column: 17, scope: !6435, inlinedAt: !6441)
!6488 = distinct !DILocation(line: 0, scope: !7326, inlinedAt: !6441)
!6489 = distinct !DILocation(line: 0, scope: !7331, inlinedAt: !6441)
!6490 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs9_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndexINtNtCsj6eKBz9Db1c_4core7convert7TryFromjE8try_from", scope: !2895, file: !2887, line: 347, type: !2897, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, retainedNodes: !7404)
!6491 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndex3new", scope: !11, file: !2887, line: 171, type: !2897, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !2912, retainedNodes: !7406)
!6492 = distinct !DILocation(line: 2233, column: 16, scope: !6439, inlinedAt: !6441)
!6493 = distinct !DILocation(line: 172, column: 9, scope: !6491, inlinedAt: !6492)
!6494 = distinct !DILocation(line: 348, column: 36, scope: !6490, inlinedAt: !6493)
!6495 = distinct !DILocation(line: 0, scope: !6455, inlinedAt: !6494)
!6496 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCsj6eKBz9Db1c_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !31, file: !3099, line: 3218, type: !3102, scopeLine: 3218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !7408, retainedNodes: !7411)
!6497 = distinct !DILexicalBlock(scope: !6498, file: !2724, line: 2417, column: 9)
!6498 = distinct !DISubprogram(name: "clone<str, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata", scope: !7412, file: !2724, line: 2405, type: !7414, scopeLine: 2405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, retainedNodes: !7417)
!6499 = distinct !DILocation(line: 2242, column: 44, scope: !6434, inlinedAt: !6441)
!6500 = distinct !DILocation(line: 2417, column: 44, scope: !6498, inlinedAt: !6499)
!6501 = distinct !DILocation(line: 0, scope: !6496, inlinedAt: !6500)
!6502 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCsj6eKBz9Db1c_4core4sync6atomic10atomic_addjjECs9GYDdpCSJ4S_14regex_automata", scope: !1131, file: !3099, line: 4025, type: !3105, scopeLine: 4025, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3106, retainedNodes: !7421)
!6503 = distinct !DILocation(line: 3220, column: 26, scope: !6496, inlinedAt: !6500)
!6504 = distinct !DILocation(line: 0, scope: !6502, inlinedAt: !6503)
!6505 = distinct !DILocation(line: 0, scope: !6450, inlinedAt: !6451)
!6506 = distinct !DILocation(line: 581, column: 26, scope: !6429, inlinedAt: !6442)
!6507 = distinct !DILocation(line: 3945, column: 18, scope: !6428, inlinedAt: !6443)
!6508 = distinct !DILocation(line: 3863, column: 18, scope: !6427, inlinedAt: !6444)
!6509 = distinct !DILocation(line: 1884, column: 31, scope: !6426, inlinedAt: !6445)
!6510 = distinct !DISubprogram(name: "as_mut_ptr<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBF_EE10as_mut_ptrBL_", scope: !97, file: !2734, line: 2050, type: !2937, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1561, declaration: !2938, retainedNodes: !7423)
!6511 = distinct !DILocation(line: 1904, column: 78, scope: !6426, inlinedAt: !6445)
!6512 = distinct !DILocation(line: 2050, column: 29, scope: !6510, inlinedAt: !6511)
!6513 = distinct !DILocation(line: 0, scope: !6429, inlinedAt: !6442)
!6514 = distinct !DISubprogram(name: "index<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvXs14_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB10_4sync3ArceENtB6_10SmallIndexEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexNtB6_9PatternIDE5indexBa_", scope: !7425, file: !2887, line: 573, type: !7427, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1512, retainedNodes: !7429)
!6515 = distinct !DILocation(line: 2238, column: 34, scope: !6435, inlinedAt: !6441)
!6516 = distinct !DILocation(line: 0, scope: !6514, inlinedAt: !6515)
!6517 = distinct !DISubprogram(name: "index_mut<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RNvXs15_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBW_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB10_4sync3ArceEEEEINtNtNtB1B_3ops5index8IndexMutNtB6_9PatternIDE9index_mutBa_", scope: !7303, file: !2887, line: 581, type: !7432, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1462, retainedNodes: !7434)
!6518 = distinct !DILocation(line: 2243, column: 31, scope: !6434, inlinedAt: !6441)
!6519 = distinct !DILocation(line: 0, scope: !6517, inlinedAt: !6518)
!6520 = distinct !DILocation(line: 2253, column: 31, scope: !6439, inlinedAt: !6441)
!6521 = distinct !DILocation(line: 0, scope: !6517, inlinedAt: !6520)
!6522 = distinct !DISubprogram(name: "index<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RNvXs14_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBW_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB10_4sync3ArceEEEEINtNtNtB1B_3ops5index5IndexNtB6_9PatternIDE5indexBa_", scope: !7425, file: !2887, line: 573, type: !7437, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1462, retainedNodes: !7439)
!6523 = distinct !DILocation(line: 2261, column: 56, scope: !6439, inlinedAt: !6441)
!6524 = distinct !DILocation(line: 0, scope: !6522, inlinedAt: !6523)
!6525 = distinct !DISubprogram(name: "as_usize", linkageName: "_RNvMs10_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_9PatternID8as_usize", scope: !12, file: !2887, line: 472, type: !3109, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !3110, retainedNodes: !7441)
!6526 = distinct !DILocation(line: 582, column: 33, scope: !6429, inlinedAt: !6442)
!6527 = distinct !DILocation(line: 473, column: 24, scope: !6525, inlinedAt: !6526)
!6528 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6527)
!6529 = distinct !DILocation(line: 0, scope: !6428, inlinedAt: !6443)
!6530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)]", file: !998, size: 128, align: 64, elements: !7450, templateParams: !1225, identifier: "85d45b89258785b681ffa9e922c32ef3")
!6531 = distinct !DISubprogram(name: "index_mut<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), usize>", linkageName: "_RNvXs_NtNtCsj6eKBz9Db1c_4core5slice5indexSTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBF_EINtNtNtB8_3ops5index8IndexMutjE9index_mutBL_", scope: !7443, file: !2807, line: 31, type: !7445, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3111, retainedNodes: !7447)
!6532 = distinct !DILocation(line: 3946, column: 9, scope: !6428, inlinedAt: !6443)
!6533 = distinct !DILocation(line: 0, scope: !6531, inlinedAt: !6532)
!6534 = distinct !DISubprogram(name: "index_mut<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBZ_EE9index_mutB15_", scope: !2809, file: !2807, line: 243, type: !7453, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1557, retainedNodes: !7455)
!6535 = distinct !DILocation(line: 32, column: 15, scope: !6531, inlinedAt: !6532)
!6536 = distinct !DILocation(line: 0, scope: !6534, inlinedAt: !6535)
!6537 = distinct !DISubprogram(name: "index<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB7_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB1Z_", scope: !7457, file: !2734, line: 3936, type: !7459, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7462, retainedNodes: !7461)
!6538 = distinct !DILocation(line: 574, column: 22, scope: !6514, inlinedAt: !6515)
!6539 = distinct !DILocation(line: 0, scope: !6537, inlinedAt: !6538)
!6540 = distinct !DISubprogram(name: "index<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEINtNtNtB6_3ops5index5IndexjE5indexB2d_", scope: !7464, file: !2807, line: 18, type: !7466, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3119, retainedNodes: !7468)
!6541 = distinct !DILocation(line: 3937, column: 9, scope: !6537, inlinedAt: !6538)
!6542 = distinct !DILocation(line: 0, scope: !6540, inlinedAt: !6541)
!6543 = distinct !DISubprogram(name: "index<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE5indexB2z_", scope: !2809, file: !2807, line: 236, type: !7471, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1512, retainedNodes: !7473)
!6544 = distinct !DILocation(line: 19, column: 15, scope: !6540, inlinedAt: !6541)
!6545 = distinct !DILocation(line: 0, scope: !6543, inlinedAt: !6544)
!6546 = distinct !DISubprogram(name: "index_mut<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXse_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEEINtNtNtBO_3ops5index8IndexMutjE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !7296, file: !2734, line: 3945, type: !7476, scopeLine: 3945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7479, retainedNodes: !7478)
!6547 = distinct !DILocation(line: 582, column: 26, scope: !7480, inlinedAt: !6518)
!6548 = distinct !DILocation(line: 0, scope: !6546, inlinedAt: !6547)
!6549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>]", file: !998, size: 128, align: 64, elements: !7486, templateParams: !1225, identifier: "8d6bc6ffe22dae8146e63e22b86f279a")
!6550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>]", file: !998, size: 128, align: 64, elements: !7491, templateParams: !1225, identifier: "a6aec8ba52994449bc047c0da937f690")
!6551 = distinct !DISubprogram(name: "index_mut<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, usize>", linkageName: "_RNvXs_NtNtCsj6eKBz9Db1c_4core5slice5indexSINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB8_6option6OptionINtNtBJ_4sync3ArceEEEINtNtNtB8_3ops5index8IndexMutjE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !7443, file: !2807, line: 31, type: !7483, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3121, retainedNodes: !7488)
!6552 = distinct !DILocation(line: 3946, column: 9, scope: !7492, inlinedAt: !6547)
!6553 = distinct !DILocation(line: 0, scope: !6551, inlinedAt: !6552)
!6554 = distinct !DISubprogram(name: "index_mut<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB9_6option6OptionINtNtB13_4sync3ArceEEEE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2809, file: !2807, line: 243, type: !7495, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1462, retainedNodes: !7497)
!6555 = distinct !DILocation(line: 32, column: 15, scope: !7498, inlinedAt: !6552)
!6556 = distinct !DILocation(line: 0, scope: !6554, inlinedAt: !6555)
!6557 = distinct !DILocation(line: 582, column: 26, scope: !7499, inlinedAt: !6520)
!6558 = distinct !DILocation(line: 0, scope: !6546, inlinedAt: !6557)
!6559 = distinct !DILocation(line: 3946, column: 9, scope: !7500, inlinedAt: !6557)
!6560 = distinct !DILocation(line: 0, scope: !6551, inlinedAt: !6559)
!6561 = distinct !DILocation(line: 32, column: 15, scope: !7501, inlinedAt: !6559)
!6562 = distinct !DILocation(line: 0, scope: !6554, inlinedAt: !6561)
!6563 = distinct !DISubprogram(name: "index<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEEINtNtNtBO_3ops5index5IndexjE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !7457, file: !2734, line: 3936, type: !7504, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7479, retainedNodes: !7506)
!6564 = distinct !DILocation(line: 574, column: 22, scope: !7507, inlinedAt: !6523)
!6565 = distinct !DILocation(line: 0, scope: !6563, inlinedAt: !6564)
!6566 = distinct !DISubprogram(name: "index<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB6_6option6OptionINtNtBH_4sync3ArceEEEINtNtNtB6_3ops5index5IndexjE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !7464, file: !2807, line: 18, type: !7510, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3121, retainedNodes: !7512)
!6567 = distinct !DILocation(line: 3937, column: 9, scope: !7513, inlinedAt: !6564)
!6568 = distinct !DILocation(line: 0, scope: !6566, inlinedAt: !6567)
!6569 = distinct !DISubprogram(name: "index<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB9_6option6OptionINtNtB13_4sync3ArceEEEE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !2809, file: !2807, line: 236, type: !7516, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1462, retainedNodes: !7518)
!6570 = distinct !DILocation(line: 19, column: 15, scope: !7519, inlinedAt: !6567)
!6571 = distinct !DILocation(line: 0, scope: !6569, inlinedAt: !6570)
!6572 = distinct !{!6572, !6423, !"_RINvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEBa_: argument 0"}
!6573 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexB12_EEB18_", scope: !5, file: !2729, line: 610, type: !2941, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !2942, declaration: !2943)
!6574 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBX_EEB13_", scope: !5, file: !2729, line: 605, type: !2945, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !2942, declaration: !2946)
!6575 = distinct !DISubprogram(name: "ptr<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBN_EE3ptrBT_", scope: !96, file: !2729, line: 295, type: !2948, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1561, declaration: !2949)
!6576 = distinct !DILocation(line: 2053, column: 18, scope: !6510, inlinedAt: !6511)
!6577 = distinct !DILocation(line: 296, column: 20, scope: !6575, inlinedAt: !6576)
!6578 = distinct !DILocation(line: 606, column: 14, scope: !6574, inlinedAt: !6577)
!6579 = distinct !DILocation(line: 2232, column: 13, scope: !6439, inlinedAt: !6441)
!6580 = distinct !DILocation(line: 2233, column: 36, scope: !6439, inlinedAt: !6441)
!6581 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6580)
!6582 = distinct !DILocation(line: 0, scope: !6491, inlinedAt: !6492)
!6583 = distinct !DILocation(line: 0, scope: !6490, inlinedAt: !6493)
!6584 = distinct !DILocation(line: 0, scope: !6438, inlinedAt: !6441)
!6585 = distinct !DILexicalBlock(scope: !6586, file: !2641, line: 2193, column: 13)
!6586 = distinct !DISubprogram(name: "from_residual<(), regex_automata::util::captures::GroupInfoError, regex_automata::util::captures::GroupInfoError>", linkageName: "_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures14GroupInfoErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBR_", scope: !2670, file: !2641, line: 2191, type: !3129, scopeLine: 2191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3130, retainedNodes: !7525)
!6587 = distinct !DILocation(line: 2233, column: 16, scope: !7526, inlinedAt: !6441)
!6588 = distinct !DILocation(line: 0, scope: !6586, inlinedAt: !6587)
!6589 = distinct !DILocation(line: 0, scope: !6585, inlinedAt: !6587)
!6590 = distinct !DILocation(line: 0, scope: !6436, inlinedAt: !6441)
!6591 = distinct !DISubprogram(name: "as_ref<alloc::sync::Arc<str, alloc::alloc::Global>, str>", linkageName: "_RNvXNtCsj6eKBz9Db1c_4core7convertRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEINtB2_5AsRefeE6as_refCs9GYDdpCSJ4S_14regex_automata", scope: !7532, file: !7529, line: 720, type: !7534, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7537, retainedNodes: !7535)
!6592 = distinct !DILocation(line: 2237, column: 46, scope: !6436, inlinedAt: !6441)
!6593 = distinct !DILocation(line: 0, scope: !6591, inlinedAt: !6592)
!6594 = distinct !DISubprogram(name: "as_ref<str, alloc::alloc::Global>", linkageName: "_RNvXs1k_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArceEINtNtCsj6eKBz9Db1c_4core7convert5AsRefeE6as_refCs9GYDdpCSJ4S_14regex_automata", scope: !7540, file: !2724, line: 4255, type: !7541, scopeLine: 4255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, retainedNodes: !7542)
!6595 = distinct !DILocation(line: 721, column: 9, scope: !6591, inlinedAt: !6592)
!6596 = distinct !DILocation(line: 0, scope: !6594, inlinedAt: !6595)
!6597 = distinct !DISubprogram(name: "deref<str, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCs9GYDdpCSJ4S_14regex_automata", scope: !3133, file: !2724, line: 2453, type: !3134, scopeLine: 2453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, retainedNodes: !7544)
!6598 = distinct !DILocation(line: 4256, column: 10, scope: !6594, inlinedAt: !6595)
!6599 = distinct !DILocation(line: 0, scope: !6597, inlinedAt: !6598)
!6600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<[u8]>", scope: !1308, file: !998, size: 128, align: 64, flags: DIFlagPrivate, elements: !7560, templateParams: !1492, identifier: "b90df0467b155a1ef67184735bd3c093")
!6601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<[u8]>>", scope: !1224, file: !998, align: 8, flags: DIFlagPublic, elements: !1225, templateParams: !7556, identifier: "3dfc0b0b0009348834cd75f150f7d170")
!6602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<[u8]>", file: !998, size: 128, align: 64, elements: !7566, templateParams: !1225, identifier: "7af255accff7a8e287de608949a432e1")
!6603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<[u8]>>", scope: !1242, file: !998, size: 128, align: 64, flags: DIFlagPublic, elements: !7562, templateParams: !7556, identifier: "bb0999655fdcd34be7862910a1976047")
!6604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<[u8], alloc::alloc::Global>", scope: !1308, file: !998, size: 128, align: 64, flags: DIFlagPublic, elements: !7554, templateParams: !1499, identifier: "6befd91a6358e72d83993c0f8dea17a0")
!6605 = distinct !DILexicalBlock(scope: !6606, file: !2724, line: 4007, column: 9)
!6606 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs18_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArceEINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from", scope: !7546, file: !2724, line: 4006, type: !7548, scopeLine: 4006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, retainedNodes: !7550)
!6607 = distinct !DILocation(line: 2237, column: 24, scope: !6436, inlinedAt: !6441)
!6608 = distinct !DILocation(line: 0, scope: !6606, inlinedAt: !6607)
!6609 = distinct !DISubprogram(name: "from<u8>", linkageName: "_RNvXs16_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcShEINtNtCsj6eKBz9Db1c_4core7convert4FromRBH_E4fromCs9GYDdpCSJ4S_14regex_automata", scope: !7568, file: !2724, line: 3968, type: !7570, scopeLine: 3968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1227, retainedNodes: !7571)
!6610 = distinct !DILocation(line: 4007, column: 19, scope: !6606, inlinedAt: !6607)
!6611 = distinct !DILocation(line: 0, scope: !6609, inlinedAt: !6610)
!6612 = distinct !DISubprogram(name: "from_slice<u8>", linkageName: "_RNvXst_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShEINtB5_12ArcFromSlicehE10from_sliceCs9GYDdpCSJ4S_14regex_automata", scope: !7573, file: !2724, line: 2381, type: !7570, scopeLine: 2381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1227, retainedNodes: !7574)
!6613 = distinct !DILocation(line: 3969, column: 9, scope: !6609, inlinedAt: !6610)
!6614 = distinct !DILocation(line: 0, scope: !6612, inlinedAt: !6613)
!6615 = distinct !DILocation(line: 0, scope: !6605, inlinedAt: !6607)
!6616 = distinct !DISubprogram(name: "into_raw<[u8]>", linkageName: "_RNvMsm_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE8into_rawCs9GYDdpCSJ4S_14regex_automata", scope: !6604, file: !2724, line: 1692, type: !7577, scopeLine: 1692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1492, declaration: !7578, retainedNodes: !7579)
!6617 = distinct !DILocation(line: 4008, column: 32, scope: !6605, inlinedAt: !6607)
!6618 = distinct !DILocation(line: 0, scope: !6616, inlinedAt: !6617)
!6619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut alloc::sync::ArcInner<[u8]>", file: !998, size: 128, align: 64, elements: !7584, templateParams: !1225, identifier: "18d1110db549756cd50f5e7205fed3db")
!6620 = distinct !DISubprogram(name: "as_ptr<alloc::sync::ArcInner<[u8]>>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerShEE6as_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !6603, file: !2474, line: 411, type: !7581, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7556, declaration: !7585)
!6621 = distinct !DISubprogram(name: "as_ptr<[u8], alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE6as_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !6604, file: !2724, line: 1835, type: !7588, scopeLine: 1835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, declaration: !7589)
!6622 = distinct !DILocation(line: 1694, column: 9, scope: !6616, inlinedAt: !6617)
!6623 = distinct !DILocation(line: 1836, column: 37, scope: !6621, inlinedAt: !6622)
!6624 = distinct !DISubprogram(name: "from_raw<str>", linkageName: "_RNvMsm_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE8from_rawCs9GYDdpCSJ4S_14regex_automata", scope: !73, file: !2724, line: 1669, type: !7592, scopeLine: 1669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1492, declaration: !7593, retainedNodes: !7594)
!6625 = distinct !DILocation(line: 4008, column: 18, scope: !6605, inlinedAt: !6607)
!6626 = distinct !DILocation(line: 0, scope: !6624, inlinedAt: !6625)
!6627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut alloc::sync::ArcInner<str>", file: !998, size: 128, align: 64, elements: !7605, templateParams: !1225, identifier: "5eb3cebc306d490328677e5ceba3f261")
!6628 = distinct !DILexicalBlock(scope: !6629, file: !2724, line: 1921, column: 13)
!6629 = distinct !DILexicalBlock(scope: !6630, file: !2724, line: 1918, column: 13)
!6630 = distinct !DISubprogram(name: "from_raw_in<str, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE11from_raw_inCs9GYDdpCSJ4S_14regex_automata", scope: !73, file: !2724, line: 1916, type: !7597, scopeLine: 1916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, declaration: !7598, retainedNodes: !7602)
!6631 = distinct !DILocation(line: 1670, column: 18, scope: !6624, inlinedAt: !6625)
!6632 = distinct !DILocation(line: 0, scope: !6630, inlinedAt: !6631)
!6633 = distinct !DISubprogram(name: "byte_sub<str>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPe8byte_subCs9GYDdpCSJ4S_14regex_automata", scope: !3140, file: !3138, line: 974, type: !7608, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1492, retainedNodes: !7610)
!6634 = distinct !DILocation(line: 1921, column: 31, scope: !6629, inlinedAt: !6631)
!6635 = distinct !DILocation(line: 0, scope: !6633, inlinedAt: !6634)
!6636 = distinct !DILocation(line: 1916, column: 46, scope: !6630, inlinedAt: !6631)
!6637 = distinct !DILocation(line: 0, scope: !6629, inlinedAt: !6631)
!6638 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr9const_ptrPh3subCs9GYDdpCSJ4S_14regex_automata", scope: !3140, file: !3138, line: 916, type: !7612, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1227)
!6639 = distinct !DILocation(line: 976, column: 36, scope: !6633, inlinedAt: !6634)
!6640 = distinct !DILocation(line: 573, column: 22, scope: !6514, inlinedAt: !6515)
!6641 = distinct !DILocation(line: 3936, column: 14, scope: !6537, inlinedAt: !6538)
!6642 = distinct !DISubprogram(name: "deref<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB7_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefB1Z_", scope: !3141, file: !2734, line: 3854, type: !3143, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1549, retainedNodes: !7614)
!6643 = distinct !DILocation(line: 3937, column: 23, scope: !6537, inlinedAt: !6538)
!6644 = distinct !DILocation(line: 3854, column: 14, scope: !6642, inlinedAt: !6643)
!6645 = distinct !DISubprogram(name: "as_slice<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB6_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE8as_sliceB1Y_", scope: !93, file: !2734, line: 1848, type: !3143, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1549, declaration: !3144, retainedNodes: !7616)
!6646 = distinct !DILocation(line: 3855, column: 14, scope: !6642, inlinedAt: !6643)
!6647 = distinct !DILocation(line: 1848, column: 27, scope: !6645, inlinedAt: !6646)
!6648 = distinct !DISubprogram(name: "as_ptr<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB6_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE6as_ptrB1Y_", scope: !93, file: !2734, line: 1966, type: !3147, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1549, declaration: !3148, retainedNodes: !7618)
!6649 = distinct !DILocation(line: 1865, column: 76, scope: !6645, inlinedAt: !6646)
!6650 = distinct !DILocation(line: 1966, column: 25, scope: !6648, inlinedAt: !6649)
!6651 = distinct !DILocation(line: 574, column: 29, scope: !6514, inlinedAt: !6515)
!6652 = distinct !DILocation(line: 473, column: 24, scope: !7619, inlinedAt: !6651)
!6653 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6652)
!6654 = distinct !DILocation(line: 581, column: 26, scope: !6517, inlinedAt: !6520)
!6655 = distinct !DILocation(line: 3945, column: 18, scope: !6546, inlinedAt: !6557)
!6656 = distinct !DISubprogram(name: "deref_mut<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs9_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtNtBO_3ops5deref8DerefMut9deref_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2924, file: !2734, line: 3863, type: !7622, scopeLine: 3863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1504, retainedNodes: !7623)
!6657 = distinct !DILocation(line: 3946, column: 34, scope: !7500, inlinedAt: !6557)
!6658 = distinct !DILocation(line: 3863, column: 18, scope: !6656, inlinedAt: !6657)
!6659 = distinct !DISubprogram(name: "as_mut_slice<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEEE12as_mut_sliceCs9GYDdpCSJ4S_14regex_automata", scope: !83, file: !2734, line: 1884, type: !7622, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1504, declaration: !7625, retainedNodes: !7626)
!6660 = distinct !DILocation(line: 3864, column: 14, scope: !7627, inlinedAt: !6657)
!6661 = distinct !DILocation(line: 1884, column: 31, scope: !6659, inlinedAt: !6660)
!6662 = distinct !DISubprogram(name: "as_mut_ptr<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEEE10as_mut_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !83, file: !2734, line: 2050, type: !3151, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1504, declaration: !3152, retainedNodes: !7629)
!6663 = distinct !DILocation(line: 1904, column: 78, scope: !7630, inlinedAt: !6660)
!6664 = distinct !DILocation(line: 2050, column: 29, scope: !6662, inlinedAt: !6663)
!6665 = distinct !DILocation(line: 582, column: 33, scope: !7499, inlinedAt: !6520)
!6666 = distinct !DILocation(line: 473, column: 24, scope: !7631, inlinedAt: !6665)
!6667 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6666)
!6668 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB8_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEEB2l_", scope: !5, file: !2729, line: 610, type: !3154, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3157, declaration: !3158)
!6669 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB8_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEEB2g_", scope: !5, file: !2729, line: 605, type: !3161, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3157, declaration: !3162)
!6670 = distinct !DISubprogram(name: "ptr<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB7_4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE3ptrB26_", scope: !92, file: !2729, line: 295, type: !3164, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1549, declaration: !3165)
!6671 = distinct !DILocation(line: 1969, column: 18, scope: !6648, inlinedAt: !6649)
!6672 = distinct !DILocation(line: 296, column: 20, scope: !7633, inlinedAt: !6671)
!6673 = distinct !DILocation(line: 606, column: 14, scope: !7632, inlinedAt: !6672)
!6674 = distinct !DISubprogram(name: "contains_key<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global, str>", linkageName: "_RINvMs2_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexE12contains_keyeEB1K_", scope: !90, file: !3085, line: 1268, type: !7636, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3167, declaration: !7637, retainedNodes: !7639)
!6675 = distinct !DILocation(line: 2238, column: 40, scope: !6435, inlinedAt: !6441)
!6676 = distinct !DILocation(line: 0, scope: !6674, inlinedAt: !6675)
!6677 = distinct !DISubprogram(name: "deref<str, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCs9GYDdpCSJ4S_14regex_automata", scope: !3133, file: !2724, line: 2453, type: !3134, scopeLine: 2453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, retainedNodes: !7641)
!6678 = distinct !DILocation(line: 2238, column: 54, scope: !6435, inlinedAt: !6441)
!6679 = distinct !DILocation(line: 2453, column: 14, scope: !6677, inlinedAt: !6678)
!6680 = distinct !DISubprogram(name: "inner<str, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE5innerCs9GYDdpCSJ4S_14regex_automata", scope: !73, file: !2724, line: 2127, type: !3169, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, declaration: !3173, retainedNodes: !7643)
!6681 = distinct !DILocation(line: 2454, column: 15, scope: !6677, inlinedAt: !6678)
!6682 = distinct !DILocation(line: 2127, column: 14, scope: !6680, inlinedAt: !6681)
!6683 = distinct !DILocation(line: 2239, column: 59, scope: !6435, inlinedAt: !6441)
!6684 = distinct !DILocation(line: 2453, column: 14, scope: !6677, inlinedAt: !6683)
!6685 = distinct !DILocation(line: 2454, column: 15, scope: !7644, inlinedAt: !6683)
!6686 = distinct !DILocation(line: 2127, column: 14, scope: !6680, inlinedAt: !6685)
!6687 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<str>>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnereEE6as_refCs9GYDdpCSJ4S_14regex_automata", scope: !72, file: !2474, line: 450, type: !3176, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1483, declaration: !3177)
!6688 = distinct !DILocation(line: 2133, column: 27, scope: !7645, inlinedAt: !6685)
!6689 = distinct !DILocation(line: 2239, column: 28, scope: !6435, inlinedAt: !6441)
!6690 = distinct !DILocation(line: 0, scope: !542, inlinedAt: !6689)
!6691 = distinct !DILocation(line: 2414, column: 23, scope: !542, inlinedAt: !6689)
!6692 = distinct !DILocation(line: 0, scope: !543, inlinedAt: !6691)
!6693 = distinct !DILocation(line: 3151, column: 11, scope: !543, inlinedAt: !6691)
!6694 = distinct !DILocation(line: 0, scope: !544, inlinedAt: !6693)
!6695 = distinct !DILocation(line: 251, column: 62, scope: !544, inlinedAt: !6693)
!6696 = distinct !DILocation(line: 839, column: 14, scope: !547, inlinedAt: !6695)
!6697 = distinct !DILocation(line: 376, column: 14, scope: !546, inlinedAt: !6696)
!6698 = distinct !DILocation(line: 396, column: 43, scope: !545, inlinedAt: !6697)
!6699 = distinct !DILocation(line: 400, column: 16, scope: !545, inlinedAt: !6697)
!6700 = distinct !DILocation(line: 446, column: 49, scope: !550, inlinedAt: !6699)
!6701 = distinct !DILocation(line: 448, column: 29, scope: !549, inlinedAt: !6699)
!6702 = distinct !DILocation(line: 968, column: 46, scope: !551, inlinedAt: !6701)
!6703 = distinct !DILocation(line: 969, column: 20, scope: !551, inlinedAt: !6701)
!6704 = distinct !DILocation(line: 175, column: 53, scope: !552, inlinedAt: !6703)
!6705 = distinct !DILocation(line: 177, column: 20, scope: !552, inlinedAt: !6703)
!6706 = distinct !DILocation(line: 434, column: 42, scope: !555, inlinedAt: !6705)
!6707 = distinct !DILocation(line: 439, column: 50, scope: !554, inlinedAt: !6705)
!6708 = distinct !DILocation(line: 0, scope: !556, inlinedAt: !6707)
!6709 = distinct !DILocation(line: 0, scope: !547, inlinedAt: !6695)
!6710 = distinct !DILocation(line: 0, scope: !546, inlinedAt: !6696)
!6711 = distinct !DILocation(line: 0, scope: !545, inlinedAt: !6697)
!6712 = distinct !DILocation(line: 0, scope: !550, inlinedAt: !6699)
!6713 = distinct !DILocation(line: 0, scope: !549, inlinedAt: !6699)
!6714 = distinct !DILocation(line: 0, scope: !551, inlinedAt: !6701)
!6715 = distinct !DILocation(line: 0, scope: !552, inlinedAt: !6703)
!6716 = distinct !DILocation(line: 454, column: 36, scope: !548, inlinedAt: !6699)
!6717 = distinct !DILocation(line: 0, scope: !557, inlinedAt: !6716)
!6718 = distinct !DILocation(line: 1235, column: 18, scope: !557, inlinedAt: !6716)
!6719 = distinct !DILocation(line: 0, scope: !558, inlinedAt: !6718)
!6720 = distinct !DILocation(line: 0, scope: !555, inlinedAt: !6705)
!6721 = distinct !{!6721, !"_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate"}
!6722 = distinct !{!6722, !6721, !"_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate: argument 1"}
!6723 = distinct !{!6723, !6721, !"_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate: argument 0"}
!6724 = distinct !DILocation(line: 0, scope: !553, inlinedAt: !6705)
!6725 = distinct !DILocation(line: 0, scope: !554, inlinedAt: !6705)
!6726 = distinct !DILocation(line: 763, column: 28, scope: !556, inlinedAt: !6707)
!6727 = distinct !DILocation(line: 439, column: 21, scope: !554, inlinedAt: !6705)
!6728 = distinct !DILocation(line: 0, scope: !559, inlinedAt: !6727)
!6729 = distinct !DILocation(line: 0, scope: !548, inlinedAt: !6699)
!6730 = distinct !DILocation(line: 2241, column: 23, scope: !6435, inlinedAt: !6441)
!6731 = distinct !DILocation(line: 2453, column: 14, scope: !6677, inlinedAt: !6730)
!6732 = distinct !DILocation(line: 2454, column: 15, scope: !7648, inlinedAt: !6730)
!6733 = distinct !DILocation(line: 2127, column: 14, scope: !6680, inlinedAt: !6732)
!6734 = distinct !DILocation(line: 2133, column: 27, scope: !7649, inlinedAt: !6732)
!6735 = distinct !DILocation(line: 0, scope: !6434, inlinedAt: !6441)
!6736 = distinct !DISubprogram(name: "index_mut<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvXs15_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtB10_4sync3ArceENtB6_10SmallIndexEEINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtB6_9PatternIDE9index_mutBa_", scope: !7303, file: !2887, line: 581, type: !7653, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1512, retainedNodes: !7656)
!6737 = distinct !DILocation(line: 2242, column: 31, scope: !6434, inlinedAt: !6441)
!6738 = distinct !DILocation(line: 582, column: 33, scope: !7651, inlinedAt: !6737)
!6739 = distinct !DILocation(line: 473, column: 24, scope: !7650, inlinedAt: !6738)
!6740 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6739)
!6741 = distinct !DILocation(line: 2405, column: 14, scope: !6498, inlinedAt: !6499)
!6742 = distinct !DILocation(line: 2417, column: 29, scope: !6498, inlinedAt: !6499)
!6743 = distinct !DILocation(line: 2127, column: 14, scope: !6680, inlinedAt: !6742)
!6744 = distinct !DILocation(line: 3218, column: 36, scope: !6496, inlinedAt: !6500)
!6745 = distinct !DILocation(line: 0, scope: !6497, inlinedAt: !6499)
!6746 = distinct !DILocation(line: 581, column: 26, scope: !6517, inlinedAt: !6518)
!6747 = distinct !DILocation(line: 3945, column: 18, scope: !6546, inlinedAt: !6547)
!6748 = distinct !DILocation(line: 3946, column: 34, scope: !7492, inlinedAt: !6547)
!6749 = distinct !DILocation(line: 3863, column: 18, scope: !6656, inlinedAt: !6748)
!6750 = distinct !DILocation(line: 3864, column: 14, scope: !7658, inlinedAt: !6748)
!6751 = distinct !DILocation(line: 1884, column: 31, scope: !6659, inlinedAt: !6750)
!6752 = distinct !DILocation(line: 1904, column: 78, scope: !7659, inlinedAt: !6750)
!6753 = distinct !DILocation(line: 2050, column: 29, scope: !6662, inlinedAt: !6752)
!6754 = distinct !DILocation(line: 582, column: 33, scope: !7480, inlinedAt: !6518)
!6755 = distinct !DILocation(line: 473, column: 24, scope: !7660, inlinedAt: !6754)
!6756 = distinct !DILocation(line: 200, column: 27, scope: !6455, inlinedAt: !6755)
!6757 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB8_4sync3ArceEEEECs9GYDdpCSJ4S_14regex_automata", scope: !5, file: !2729, line: 610, type: !3270, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3271, declaration: !3272)
!6758 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB8_4sync3ArceEEEECs9GYDdpCSJ4S_14regex_automata", scope: !5, file: !2729, line: 605, type: !3274, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3271, declaration: !3275)
!6759 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEE3ptrCs9GYDdpCSJ4S_14regex_automata", scope: !82, file: !2729, line: 295, type: !3277, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1504, declaration: !3278)
!6760 = distinct !DILocation(line: 2053, column: 18, scope: !7663, inlinedAt: !6752)
!6761 = distinct !DILocation(line: 296, column: 20, scope: !7662, inlinedAt: !6760)
!6762 = distinct !DILocation(line: 606, column: 14, scope: !7661, inlinedAt: !6761)
!6763 = distinct !DILocation(line: 2243, column: 37, scope: !6434, inlinedAt: !6441)
!6764 = distinct !DILocation(line: 0, scope: !6450, inlinedAt: !6763)
!6765 = distinct !{!6765, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs9GYDdpCSJ4S_14regex_automata"}
!6766 = distinct !{!6766, !6765, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6767 = distinct !DILocation(line: 996, column: 22, scope: !6450, inlinedAt: !6763)
!6768 = distinct !DILocation(line: 0, scope: !6449, inlinedAt: !6767)
!6769 = distinct !DISubprogram(name: "as_mut_ptr<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEE10as_mut_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !80, file: !2734, line: 2050, type: !7668, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1503, declaration: !7669, retainedNodes: !7670)
!6770 = distinct !DILocation(line: 1036, column: 28, scope: !6448, inlinedAt: !6767)
!6771 = distinct !DILocation(line: 0, scope: !6769, inlinedAt: !6770)
!6772 = distinct !DILocation(line: 1027, column: 32, scope: !6449, inlinedAt: !6767)
!6773 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner8capacityCs9GYDdpCSJ4S_14regex_automata", scope: !5, file: !2729, line: 615, type: !2732, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1247, declaration: !2733, retainedNodes: !7673)
!6774 = distinct !DISubprogram(name: "capacity<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8capacityCs9GYDdpCSJ4S_14regex_automata", scope: !79, file: !2729, line: 308, type: !7675, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1503, declaration: !7676, retainedNodes: !7678)
!6775 = distinct !DILocation(line: 1032, column: 28, scope: !6448, inlinedAt: !6767)
!6776 = distinct !DILocation(line: 309, column: 20, scope: !6774, inlinedAt: !6775)
!6777 = distinct !DILocation(line: 0, scope: !6773, inlinedAt: !6776)
!6778 = distinct !DILocation(line: 0, scope: !6448, inlinedAt: !6767)
!6779 = distinct !DISubprogram(name: "add<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOINtNtB6_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEE3addCs9GYDdpCSJ4S_14regex_automata", scope: !2385, file: !2382, line: 936, type: !3060, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1470, retainedNodes: !7681)
!6780 = distinct !DILocation(line: 1036, column: 41, scope: !6448, inlinedAt: !6767)
!6781 = distinct !DILocation(line: 0, scope: !6779, inlinedAt: !6780)
!6782 = distinct !DILocation(line: 308, column: 34, scope: !6774, inlinedAt: !6775)
!6783 = distinct !DILocation(line: 1042, column: 5, scope: !6449, inlinedAt: !6767)
!6784 = distinct !DILocation(line: 0, scope: !6446, inlinedAt: !6783)
!6785 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Arc<str, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata", scope: !1237, file: !2810, line: 847, type: !7685, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1501, retainedNodes: !7686)
!6786 = distinct !DILocation(line: 847, column: 1, scope: !6446, inlinedAt: !6783)
!6787 = distinct !DILocation(line: 0, scope: !6785, inlinedAt: !6786)
!6788 = distinct !DISubprogram(name: "drop<str, alloc::alloc::Global>", linkageName: "_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata", scope: !3280, file: !2724, line: 2864, type: !7685, scopeLine: 2864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1499, retainedNodes: !7688)
!6789 = distinct !DILocation(line: 847, column: 1, scope: !6785, inlinedAt: !6786)
!6790 = distinct !DILocation(line: 0, scope: !6788, inlinedAt: !6789)
!6791 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCsj6eKBz9Db1c_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !31, file: !3099, line: 3251, type: !3102, scopeLine: 3251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1225, declaration: !3281, retainedNodes: !7692)
!6792 = distinct !DILocation(line: 2868, column: 32, scope: !6788, inlinedAt: !6789)
!6793 = distinct !DILocation(line: 0, scope: !6791, inlinedAt: !6792)
!6794 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCsj6eKBz9Db1c_4core4sync6atomic10atomic_subjjECs9GYDdpCSJ4S_14regex_automata", scope: !1131, file: !3099, line: 4043, type: !3105, scopeLine: 4043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3106, retainedNodes: !7696)
!6795 = distinct !DILocation(line: 3253, column: 26, scope: !6791, inlinedAt: !6792)
!6796 = distinct !DILocation(line: 0, scope: !6794, inlinedAt: !6795)
!6797 = distinct !DILocation(line: 3251, column: 36, scope: !6791, inlinedAt: !6792)
!6798 = distinct !{!6798, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata"}
!6799 = distinct !{!6799, !6798, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6800 = distinct !{!6800, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata"}
!6801 = distinct !{!6801, !6800, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6802 = distinct !{!6802, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!6803 = distinct !{!6803, !6802, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6804 = distinct !DILocation(line: 69, column: 9, scope: !6788, inlinedAt: !6789)
!6805 = distinct !DILocation(line: 0, scope: !560, inlinedAt: !6804)
!6806 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB8_4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata", scope: !5, file: !2729, line: 610, type: !3287, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3288, declaration: !3289)
!6807 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB8_4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata", scope: !5, file: !2729, line: 605, type: !3291, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !3288, declaration: !3292)
!6808 = distinct !DISubprogram(name: "ptr<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE3ptrCs9GYDdpCSJ4S_14regex_automata", scope: !79, file: !2729, line: 295, type: !3294, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1503, declaration: !3295)
!6809 = distinct !DILocation(line: 2053, column: 18, scope: !6769, inlinedAt: !6770)
!6810 = distinct !DILocation(line: 296, column: 20, scope: !6808, inlinedAt: !6809)
!6811 = distinct !DILocation(line: 606, column: 14, scope: !6807, inlinedAt: !6810)
!6812 = distinct !DILocation(line: 0, scope: !6447, inlinedAt: !6767)
!6813 = distinct !DISubprogram(name: "write<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr5writeINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEECs9GYDdpCSJ4S_14regex_automata", scope: !1237, file: !2810, line: 1940, type: !7700, scopeLine: 1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1470, retainedNodes: !7702)
!6814 = distinct !DILocation(line: 1037, column: 13, scope: !6447, inlinedAt: !6767)
!6815 = distinct !DILocation(line: 0, scope: !6813, inlinedAt: !6814)
!6816 = distinct !{!6816, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata"}
!6817 = distinct !{!6817, !6816, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6818 = distinct !DILocation(line: 2252, column: 9, scope: !6436, inlinedAt: !6441)
!6819 = distinct !DILocation(line: 0, scope: !6785, inlinedAt: !6818)
!6820 = distinct !{!6820, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!6821 = distinct !{!6821, !6820, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!6822 = distinct !DILocation(line: 847, column: 1, scope: !6785, inlinedAt: !6818)
!6823 = distinct !DILocation(line: 0, scope: !6788, inlinedAt: !6822)
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
!7372 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6458, file: !998, baseType: !120, size: 256, align: 64, flags: DIFlagPublic)
!7373 = !{!7372}
!7374 = !{!2904, !2685}
!7375 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6459, file: !998, baseType: !11, size: 32, align: 32, offset: 64, flags: DIFlagPublic)
!7376 = !{!7375}
!7377 = !DIDerivedType(tag: DW_TAG_member, scope: !6461, file: !998, baseType: !1057, size: 64, align: 64, flags: DIFlagArtificial)
!7378 = !DITemplateTypeParameter(name: "O", type: !6456)
!7379 = !{!2904, !2905, !2992, !7378}
!7380 = !DISubprogram(name: "map_err<regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndexError, regex_automata::util::captures::GroupInfoError, regex_automata::util::captures::{impl#8}::add_explicit_group::{closure_env#0}<&alloc::sync::Arc<str, alloc::alloc::Global>>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtBK_15SmallIndexErrorE7map_errNtNtBM_8captures14GroupInfoErrorNCINvMs6_B2i_NtB2i_14GroupInfoInner18add_explicit_groupRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEE0EBO_", scope: !487, file: !2641, line: 961, type: !7367, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7379)
!7381 = !DILocalVariable(name: "self", arg: 1, scope: !6463, file: !2641, line: 961, type: !487)
!7382 = !DILocalVariable(name: "op", scope: !6463, file: !2641, line: 961, type: !6456, align: 64)
!7383 = !DILocalVariable(name: "t", scope: !6462, file: !2641, line: 966, type: !11, align: 32)
!7384 = !DILocalVariable(name: "e", scope: !6464, file: !2641, line: 967, type: !15, align: 64)
!7385 = !{!7381, !7382, !7383, !7384}
!7386 = !DILexicalBlockFile(scope: !6469, file: !2887, discriminator: 2)
!7387 = !DISubprogram(name: "one_more", linkageName: "_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndex8one_more", scope: !11, file: !2887, line: 233, type: !2891, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1225)
!7388 = !DILocalVariable(name: "self", arg: 1, scope: !6469, file: !2887, line: 233, type: !2888)
!7389 = !{!7388}
!7390 = !DILocalVariable(name: "v", arg: 3, scope: !6479, file: !3085, line: 1332, type: !11)
!7391 = !{!534, !3086, !73, !11}
!7392 = !DISubroutineType(types: !7391)
!7393 = !DISubprogram(name: "insert<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB5_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexE6insertB1J_", scope: !90, file: !3085, line: 1332, type: !7392, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1548)
!7394 = !DILocalVariable(name: "self", arg: 1, scope: !6479, file: !3085, line: 1332, type: !3086)
!7395 = !DILocalVariable(name: "k", arg: 2, scope: !6479, file: !3085, line: 1332, type: !73)
!7396 = !{!7394, !7395, !7390}
!7397 = !DILocalVariable(name: "self", arg: 1, scope: !6484, file: !2675, line: 2305, type: !2811)
!7398 = !DILocalVariable(name: "pid", scope: !6484, file: !2675, line: 2305, type: !12, align: 32)
!7399 = !DILocalVariable(name: "start", scope: !6483, file: !2675, line: 2306, type: !2888, align: 64)
!7400 = !DILocalVariable(name: "end", scope: !6483, file: !2675, line: 2306, type: !2888, align: 64)
!7401 = !DILocalVariable(name: "range", scope: !6482, file: !2675, line: 2308, type: !3098, align: 64)
!7402 = !{!7397, !7398, !7399, !7400, !7401}
!7403 = !DILocalVariable(name: "index", arg: 1, scope: !6490, file: !2887, line: 347, type: !1206)
!7404 = !{!7403}
!7405 = !DILocalVariable(name: "index", arg: 1, scope: !6491, file: !2887, line: 171, type: !1206)
!7406 = !{!7405}
!7407 = !DILocalVariable(name: "val", scope: !6496, file: !3099, line: 3218, type: !1206, align: 64)
!7408 = !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCsj6eKBz9Db1c_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !31, file: !3099, line: 3218, type: !3102, scopeLine: 3218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1225)
!7409 = !DILocalVariable(name: "self", arg: 1, scope: !6496, file: !3099, line: 3218, type: !3100)
!7410 = !DILocalVariable(name: "order", scope: !6496, file: !3099, line: 3218, type: !1138, align: 8)
!7411 = !{!7409, !7407, !7410}
!7412 = !DINamespace(name: "{impl#32}", scope: !1308)
!7413 = !{!73, !3021}
!7414 = !DISubroutineType(types: !7413)
!7415 = !DILocalVariable(name: "self", arg: 1, scope: !6498, file: !2724, line: 2405, type: !3021)
!7416 = !DILocalVariable(name: "old_size", scope: !6497, file: !2724, line: 2417, type: !1206, align: 64)
!7417 = !{!7415, !7416}
!7418 = !DILocalVariable(name: "val", scope: !6502, file: !3099, line: 4025, type: !1206, align: 64)
!7419 = !DILocalVariable(name: "dst", arg: 1, scope: !6502, file: !3099, line: 4025, type: !3103)
!7420 = !DILocalVariable(name: "order", scope: !6502, file: !3099, line: 4025, type: !1138, align: 8)
!7421 = !{!7419, !7418, !7420}
!7422 = !DILocalVariable(name: "self", arg: 1, scope: !6510, file: !2734, line: 2050, type: !2735)
!7423 = !{!7422}
!7424 = !DILocalVariable(name: "index", scope: !6514, file: !2887, line: 573, type: !12, align: 32)
!7425 = !DINamespace(name: "{impl#68}", scope: !1254)
!7426 = !{!3107, !2777, !12, !2387}
!7427 = !DISubroutineType(types: !7426)
!7428 = !DILocalVariable(name: "self", arg: 1, scope: !6514, file: !2887, line: 573, type: !2777)
!7429 = !{!7428, !7424}
!7430 = !DILocalVariable(name: "index", scope: !6517, file: !2887, line: 581, type: !12, align: 32)
!7431 = !{!3083, !2789, !12, !2387}
!7432 = !DISubroutineType(types: !7431)
!7433 = !DILocalVariable(name: "self", arg: 1, scope: !6517, file: !2887, line: 581, type: !2789)
!7434 = !{!7433, !7430}
!7435 = !DILocalVariable(name: "index", scope: !6522, file: !2887, line: 573, type: !12, align: 32)
!7436 = !{!3016, !2793, !12, !2387}
!7437 = !DISubroutineType(types: !7436)
!7438 = !DILocalVariable(name: "self", arg: 1, scope: !6522, file: !2887, line: 573, type: !2793)
!7439 = !{!7438, !7435}
!7440 = !DILocalVariable(name: "self", arg: 1, scope: !6525, file: !2887, line: 472, type: !1579)
!7441 = !{!7440}
!7442 = !DILocalVariable(name: "index", arg: 2, scope: !6531, file: !2807, line: 31, type: !1206)
!7443 = !DINamespace(name: "{impl#1}", scope: !2808)
!7444 = !{!2856, !492, !1206, !2387}
!7445 = !DISubroutineType(types: !7444)
!7446 = !DILocalVariable(name: "self", arg: 1, scope: !6531, file: !2807, line: 31, type: !6530)
!7447 = !{!7446, !7442}
!7448 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6530, file: !998, baseType: !2927, size: 64, align: 64)
!7449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6530, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7450 = !{!7448, !7449}
!7451 = !DILocalVariable(name: "self", arg: 1, scope: !6534, file: !2807, line: 243, type: !1206)
!7452 = !{!2856, !1206, !492, !2387}
!7453 = !DISubroutineType(types: !7452)
!7454 = !DILocalVariable(name: "slice", arg: 2, scope: !6534, file: !2807, line: 243, type: !6530)
!7455 = !{!7451, !7454}
!7456 = !DILocalVariable(name: "index", arg: 2, scope: !6537, file: !2734, line: 3936, type: !1206)
!7457 = !DINamespace(name: "{impl#15}", scope: !1216)
!7458 = !{!3107, !2777, !1206, !2387}
!7459 = !DISubroutineType(types: !7458)
!7460 = !DILocalVariable(name: "self", arg: 1, scope: !6537, file: !2734, line: 3936, type: !2777)
!7461 = !{!7460, !7456}
!7462 = !{!1511, !2806, !1246}
!7463 = !DILocalVariable(name: "index", arg: 2, scope: !6540, file: !2807, line: 18, type: !1206)
!7464 = !DINamespace(name: "{impl#0}", scope: !2808)
!7465 = !{!3107, !535, !1206, !2387}
!7466 = !DISubroutineType(types: !7465)
!7467 = !DILocalVariable(name: "self", arg: 1, scope: !6540, file: !2807, line: 18, type: !536)
!7468 = !{!7467, !7463}
!7469 = !DILocalVariable(name: "self", arg: 1, scope: !6543, file: !2807, line: 236, type: !1206)
!7470 = !{!3107, !1206, !535, !2387}
!7471 = !DISubroutineType(types: !7470)
!7472 = !DILocalVariable(name: "slice", arg: 2, scope: !6543, file: !2807, line: 236, type: !536)
!7473 = !{!7469, !7472}
!7474 = !DILocalVariable(name: "index", arg: 2, scope: !6546, file: !2734, line: 3945, type: !1206)
!7475 = !{!3083, !2789, !1206, !2387}
!7476 = !DISubroutineType(types: !7475)
!7477 = !DILocalVariable(name: "self", arg: 1, scope: !6546, file: !2734, line: 3945, type: !2789)
!7478 = !{!7477, !7474}
!7479 = !{!1461, !2806, !1246}
!7480 = !DILexicalBlockFile(scope: !6517, file: !2887, discriminator: 4)
!7481 = !DILocalVariable(name: "index", arg: 2, scope: !6551, file: !2807, line: 31, type: !1206)
!7482 = !{!3083, !6549, !1206, !2387}
!7483 = !DISubroutineType(types: !7482)
!7484 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6549, file: !998, baseType: !3120, size: 64, align: 64)
!7485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6549, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7486 = !{!7484, !7485}
!7487 = !DILocalVariable(name: "self", arg: 1, scope: !6551, file: !2807, line: 31, type: !6550)
!7488 = !{!7487, !7481}
!7489 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6550, file: !998, baseType: !3120, size: 64, align: 64)
!7490 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6550, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7491 = !{!7489, !7490}
!7492 = !DILexicalBlockFile(scope: !6546, file: !2734, discriminator: 4)
!7493 = !DILocalVariable(name: "self", arg: 1, scope: !6554, file: !2807, line: 243, type: !1206)
!7494 = !{!3083, !1206, !6549, !2387}
!7495 = !DISubroutineType(types: !7494)
!7496 = !DILocalVariable(name: "slice", arg: 2, scope: !6554, file: !2807, line: 243, type: !6550)
!7497 = !{!7493, !7496}
!7498 = !DILexicalBlockFile(scope: !6551, file: !2807, discriminator: 4)
!7499 = !DILexicalBlockFile(scope: !6517, file: !2887, discriminator: 6)
!7500 = !DILexicalBlockFile(scope: !6546, file: !2734, discriminator: 6)
!7501 = !DILexicalBlockFile(scope: !6551, file: !2807, discriminator: 6)
!7502 = !DILocalVariable(name: "index", arg: 2, scope: !6563, file: !2734, line: 3936, type: !1206)
!7503 = !{!3016, !2793, !1206, !2387}
!7504 = !DISubroutineType(types: !7503)
!7505 = !DILocalVariable(name: "self", arg: 1, scope: !6563, file: !2734, line: 3936, type: !2793)
!7506 = !{!7505, !7502}
!7507 = !DILexicalBlockFile(scope: !6522, file: !2887, discriminator: 2)
!7508 = !DILocalVariable(name: "index", arg: 2, scope: !6566, file: !2807, line: 18, type: !1206)
!7509 = !{!3016, !537, !1206, !2387}
!7510 = !DISubroutineType(types: !7509)
!7511 = !DILocalVariable(name: "self", arg: 1, scope: !6566, file: !2807, line: 18, type: !538)
!7512 = !{!7511, !7508}
!7513 = !DILexicalBlockFile(scope: !6563, file: !2734, discriminator: 2)
!7514 = !DILocalVariable(name: "self", arg: 1, scope: !6569, file: !2807, line: 236, type: !1206)
!7515 = !{!3016, !1206, !537, !2387}
!7516 = !DISubroutineType(types: !7515)
!7517 = !DILocalVariable(name: "slice", arg: 2, scope: !6569, file: !2807, line: 236, type: !538)
!7518 = !{!7514, !7517}
!7519 = !DILexicalBlockFile(scope: !6566, file: !2807, discriminator: 2)
!7520 = !{!6572, !6425}
!7521 = !{!6572, !6424, !6425}
!7523 = !DILocalVariable(name: "residual", arg: 1, scope: !6586, file: !2641, line: 2191, type: !450)
!7524 = !DILocalVariable(name: "e", scope: !6585, file: !2641, line: 2193, type: !120, align: 64)
!7525 = !{!7523, !7524}
!7526 = !DILexicalBlockFile(scope: !6438, file: !2675, discriminator: 4)
!7529 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "908088029c1bdabb40b220f98264ef19")
!7530 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&alloc::sync::Arc<str, alloc::alloc::Global>", baseType: !3021, size: 64, align: 64, dwarfAddressSpace: 0)
!7531 = !DILocalVariable(name: "self", arg: 1, scope: !6591, file: !7529, line: 720, type: !7530)
!7532 = !DINamespace(name: "{impl#0}", scope: !2442)
!7533 = !{!265, !7530}
!7534 = !DISubroutineType(cc: DW_CC_nocall, types: !7533)
!7535 = !{!7531}
!7536 = !DITemplateTypeParameter(name: "U", type: !1488)
!7537 = !{!1500, !7536}
!7538 = !{!6572, !6424}
!7539 = !DILocalVariable(name: "self", arg: 1, scope: !6594, file: !2724, line: 4255, type: !3021)
!7540 = !DINamespace(name: "{impl#84}", scope: !1308)
!7541 = !DISubroutineType(cc: DW_CC_nocall, types: !3132)
!7542 = !{!7539}
!7543 = !DILocalVariable(name: "self", arg: 1, scope: !6597, file: !2724, line: 2453, type: !3021)
!7544 = !{!7543}
!7545 = !DILocalVariable(name: "v", arg: 1, scope: !6606, file: !2724, line: 4006, type: !265)
!7546 = !DINamespace(name: "{impl#72}", scope: !1308)
!7547 = !{!73, !265}
!7548 = !DISubroutineType(types: !7547)
!7549 = !DILocalVariable(name: "arc", scope: !6605, file: !2724, line: 4007, type: !6604, align: 64)
!7550 = !{!7545, !7549}
!7551 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6604, file: !998, baseType: !6603, size: 128, align: 64, flags: DIFlagPrivate)
!7552 = !DIDerivedType(tag: DW_TAG_member, name: "phantom", scope: !6604, file: !998, baseType: !6601, align: 8, offset: 128, flags: DIFlagPrivate)
!7553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6604, file: !998, baseType: !1, align: 8, offset: 128, flags: DIFlagPrivate)
!7554 = !{!7551, !7552, !7553}
!7555 = !DITemplateTypeParameter(name: "T", type: !6600)
!7556 = !{!7555}
!7557 = !DIDerivedType(tag: DW_TAG_member, name: "strong", scope: !6600, file: !998, baseType: !31, size: 64, align: 64, flags: DIFlagPrivate)
!7558 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !6600, file: !998, baseType: !31, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6600, file: !998, baseType: !1488, align: 8, offset: 128, flags: DIFlagPrivate)
!7560 = !{!7557, !7558, !7559}
!7561 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6603, file: !998, baseType: !6602, size: 128, align: 64, flags: DIFlagPrivate)
!7562 = !{!7561}
!7563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6600, size: 64, align: 64, dwarfAddressSpace: 0)
!7564 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6602, file: !998, baseType: !7563, size: 64, align: 64)
!7565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6602, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7566 = !{!7564, !7565}
!7567 = !DILocalVariable(name: "v", arg: 1, scope: !6609, file: !2724, line: 3968, type: !202)
!7568 = !DINamespace(name: "{impl#70}", scope: !1308)
!7569 = !{!6604, !202}
!7570 = !DISubroutineType(types: !7569)
!7571 = !{!7567}
!7572 = !DILocalVariable(name: "v", arg: 1, scope: !6612, file: !2724, line: 2381, type: !202)
!7573 = !DINamespace(name: "{impl#31}", scope: !1308)
!7574 = !{!7572}
!7575 = !DILocalVariable(name: "this", scope: !6616, file: !2724, line: 1692, type: !6604, align: 64)
!7576 = !{!539, !6604}
!7577 = !DISubroutineType(types: !7576)
!7578 = !DISubprogram(name: "into_raw<[u8]>", linkageName: "_RNvMsm_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE8into_rawCs9GYDdpCSJ4S_14regex_automata", scope: !6604, file: !2724, line: 1692, type: !7577, scopeLine: 1692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1492)
!7579 = !{!7575}
!7580 = !{!6619, !6603}
!7581 = !DISubroutineType(types: !7580)
!7582 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6619, file: !998, baseType: !7563, size: 64, align: 64)
!7583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6619, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7584 = !{!7582, !7583}
!7585 = !DISubprogram(name: "as_ptr<alloc::sync::ArcInner<[u8]>>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerShEE6as_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !6603, file: !2474, line: 411, type: !7581, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7556)
!7586 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::sync::Arc<[u8], alloc::alloc::Global>", baseType: !6604, size: 64, align: 64, dwarfAddressSpace: 0)
!7587 = !{!539, !7586}
!7588 = !DISubroutineType(types: !7587)
!7589 = !DISubprogram(name: "as_ptr<[u8], alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE6as_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !6604, file: !2724, line: 1835, type: !7588, scopeLine: 1835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1499)
!7590 = !DILocalVariable(name: "ptr", arg: 1, scope: !6624, file: !2724, line: 1669, type: !369)
!7591 = !{!73, !369}
!7592 = !DISubroutineType(types: !7591)
!7593 = !DISubprogram(name: "from_raw<str>", linkageName: "_RNvMsm_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE8from_rawCs9GYDdpCSJ4S_14regex_automata", scope: !73, file: !2724, line: 1669, type: !7592, scopeLine: 1669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1492)
!7594 = !{!7590}
!7595 = !DILocalVariable(name: "ptr", arg: 1, scope: !6630, file: !2724, line: 1916, type: !369)
!7596 = !{!73, !369, !1}
!7597 = !DISubroutineType(types: !7596)
!7598 = !DISubprogram(name: "from_raw_in<str, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE11from_raw_inCs9GYDdpCSJ4S_14regex_automata", scope: !73, file: !2724, line: 1916, type: !7597, scopeLine: 1916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1499)
!7599 = !DILocalVariable(name: "alloc", arg: 2, scope: !6630, file: !2724, line: 1916, type: !1)
!7600 = !DILocalVariable(name: "offset", scope: !6629, file: !2724, line: 1918, type: !1206, align: 64)
!7601 = !DILocalVariable(name: "arc_ptr", scope: !6628, file: !2724, line: 1921, type: !6627, align: 64)
!7602 = !{!7595, !7599, !7600, !7601}
!7603 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !6627, file: !998, baseType: !1495, size: 64, align: 64)
!7604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6627, file: !998, baseType: !1206, size: 64, align: 64, offset: 64)
!7605 = !{!7603, !7604}
!7606 = !DILocalVariable(name: "self", arg: 1, scope: !6633, file: !3138, line: 974, type: !369)
!7607 = !{!369, !369, !1206, !2387}
!7608 = !DISubroutineType(types: !7607)
!7609 = !DILocalVariable(name: "count", arg: 2, scope: !6633, file: !3138, line: 974, type: !1206)
!7610 = !{!7606, !7609}
!7611 = !{!1243, !1243, !1206, !2387}
!7612 = !DISubroutineType(types: !7611)
!7613 = !DILocalVariable(name: "self", arg: 1, scope: !6642, file: !2734, line: 3854, type: !2777)
!7614 = !{!7613}
!7615 = !DILocalVariable(name: "self", arg: 1, scope: !6645, file: !2734, line: 1848, type: !2777)
!7616 = !{!7615}
!7617 = !DILocalVariable(name: "self", arg: 1, scope: !6648, file: !2734, line: 1966, type: !2777)
!7618 = !{!7617}
!7619 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 2)
!7620 = !DILocalVariable(name: "self", arg: 1, scope: !6656, file: !2734, line: 3863, type: !2789)
!7621 = !{!6549, !2789}
!7622 = !DISubroutineType(types: !7621)
!7623 = !{!7620}
!7624 = !DILocalVariable(name: "self", arg: 1, scope: !6659, file: !2734, line: 1884, type: !2789)
!7625 = !DISubprogram(name: "as_mut_slice<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEEE12as_mut_sliceCs9GYDdpCSJ4S_14regex_automata", scope: !83, file: !2734, line: 1884, type: !7622, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1504)
!7626 = !{!7624}
!7627 = !DILexicalBlockFile(scope: !6656, file: !2734, discriminator: 6)
!7628 = !DILocalVariable(name: "self", arg: 1, scope: !6662, file: !2734, line: 2050, type: !2789)
!7629 = !{!7628}
!7630 = !DILexicalBlockFile(scope: !6659, file: !2734, discriminator: 6)
!7631 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 8)
!7632 = !DILexicalBlockFile(scope: !6669, file: !2729, discriminator: 2)
!7633 = !DILexicalBlockFile(scope: !6670, file: !2729, discriminator: 2)
!7634 = !DILocalVariable(name: "self", arg: 1, scope: !6674, file: !3085, line: 1268, type: !3107)
!7635 = !{!1702, !3107, !265}
!7636 = !DISubroutineType(types: !7635)
!7637 = !DISubprogram(name: "contains_key<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global, str>", linkageName: "_RINvMs2_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB6_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexE12contains_keyeEB1K_", scope: !90, file: !3085, line: 1268, type: !7636, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3167)
!7638 = !DILocalVariable(name: "k", arg: 2, scope: !6674, file: !3085, line: 1268, type: !265)
!7639 = !{!7634, !7638}
!7640 = !DILocalVariable(name: "self", arg: 1, scope: !6677, file: !2724, line: 2453, type: !3021)
!7641 = !{!7640}
!7642 = !DILocalVariable(name: "self", arg: 1, scope: !6680, file: !2724, line: 2127, type: !3021)
!7643 = !{!7642}
!7644 = !DILexicalBlockFile(scope: !6677, file: !2724, discriminator: 2)
!7645 = !DILexicalBlockFile(scope: !6680, file: !2724, discriminator: 2)
!7646 = !{!6723, !6722, !6572, !6424, !6425}
!7647 = !{!6723, !6572, !6424, !6425}
!7648 = !DILexicalBlockFile(scope: !6677, file: !2724, discriminator: 4)
!7649 = !DILexicalBlockFile(scope: !6680, file: !2724, discriminator: 4)
!7650 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 4)
!7651 = !DILexicalBlockFile(scope: !6736, file: !2887, discriminator: 2)
!7652 = !{!3086, !2773, !12, !2387}
!7653 = !DISubroutineType(types: !7652)
!7654 = !DILocalVariable(name: "self", arg: 1, scope: !6736, file: !2887, line: 581, type: !2773)
!7655 = !DILocalVariable(name: "index", scope: !6736, file: !2887, line: 581, type: !12, align: 32)
!7656 = !{!7654, !7655}
!7658 = !DILexicalBlockFile(scope: !6656, file: !2734, discriminator: 4)
!7659 = !DILexicalBlockFile(scope: !6659, file: !2734, discriminator: 4)
!7660 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 6)
!7661 = !DILexicalBlockFile(scope: !6758, file: !2729, discriminator: 6)
!7662 = !DILexicalBlockFile(scope: !6759, file: !2729, discriminator: 6)
!7663 = !DILexicalBlockFile(scope: !6662, file: !2734, discriminator: 4)
!7664 = !{!6766}
!7665 = !{!6766, !6572, !6424, !6425}
!7666 = !DILocalVariable(name: "self", arg: 1, scope: !6769, file: !2734, line: 2050, type: !3083)
!7667 = !{!3058, !3083}
!7668 = !DISubroutineType(types: !7667)
!7669 = !DISubprogram(name: "as_mut_ptr<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEE10as_mut_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !80, file: !2734, line: 2050, type: !7668, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1503)
!7670 = !{!7666}
!7671 = !DILocalVariable(name: "elem_size", scope: !6773, file: !2729, line: 615, type: !1206, align: 64)
!7672 = !DILocalVariable(name: "self", arg: 1, scope: !6773, file: !2729, line: 615, type: !2730)
!7673 = !{!7672, !7671}
!7674 = !{!1206, !3279}
!7675 = !DISubroutineType(types: !7674)
!7676 = !DISubprogram(name: "capacity<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8capacityCs9GYDdpCSJ4S_14regex_automata", scope: !79, file: !2729, line: 308, type: !7675, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1503)
!7677 = !DILocalVariable(name: "self", arg: 1, scope: !6774, file: !2729, line: 308, type: !3279)
!7678 = !{!7677}
!7679 = !DILocalVariable(name: "count", arg: 2, scope: !6779, file: !2382, line: 936, type: !1206)
!7680 = !DILocalVariable(name: "self", arg: 1, scope: !6779, file: !2382, line: 936, type: !3058)
!7681 = !{!7680, !7679}
!7682 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::sync::Arc<str, alloc::alloc::Global>", baseType: !73, size: 64, align: 64, dwarfAddressSpace: 0)
!7683 = !DILocalVariable(arg: 1, scope: !6785, file: !2810, line: 847, type: !7682)
!7684 = !{null, !7682}
!7685 = !DISubroutineType(types: !7684)
!7686 = !{!7683}
!7687 = !DILocalVariable(name: "self", arg: 1, scope: !6788, file: !2724, line: 2864, type: !7682)
!7688 = !{!7687}
!7689 = !DILocalVariable(name: "val", scope: !6791, file: !3099, line: 3251, type: !1206, align: 64)
!7690 = !DILocalVariable(name: "self", arg: 1, scope: !6791, file: !3099, line: 3251, type: !3100)
!7691 = !DILocalVariable(name: "order", scope: !6791, file: !3099, line: 3251, type: !1138, align: 8)
!7692 = !{!7690, !7689, !7691}
!7693 = !DILocalVariable(name: "val", scope: !6794, file: !3099, line: 4043, type: !1206, align: 64)
!7694 = !DILocalVariable(name: "dst", arg: 1, scope: !6794, file: !3099, line: 4043, type: !3103)
!7695 = !DILocalVariable(name: "order", scope: !6794, file: !3099, line: 4043, type: !1138, align: 8)
!7696 = !{!7694, !7693, !7695}
!7697 = !{!6803, !6801, !6799, !6766, !6572, !6424, !6425}
!7698 = !DILocalVariable(name: "dst", arg: 1, scope: !6813, file: !2810, line: 1940, type: !3058)
!7699 = !{null, !3058, !77, !2387}
!7700 = !DISubroutineType(types: !7699)
!7701 = !DILocalVariable(name: "src", arg: 2, scope: !6813, file: !2810, line: 1940, type: !77)
!7702 = !{!7698, !7701}
!7703 = !{!6817}
!7704 = !{!6821}
!7705 = !DILocalVariable(name: "self", arg: 1, scope: !6824, file: !2724, line: 2127, type: !7682)
!7706 = !{!7705}
!7707 = !{!6821, !6817}
!7708 = !{!6821, !6817, !6572, !6424, !6425}
!7709 = !{!6837}
!7710 = !{!6841}
!7711 = !{!6841, !6837}
!7712 = !{!6841, !6837, !6572, !6424, !6425}
!7713 = !DILexicalBlockFile(scope: !6758, file: !2729, discriminator: 8)
!7714 = !DILexicalBlockFile(scope: !6759, file: !2729, discriminator: 8)
!7715 = !DILexicalBlockFile(scope: !6662, file: !2734, discriminator: 6)
!7716 = !{!6865}
!7717 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 10)
!7718 = !DILexicalBlockFile(scope: !6525, file: !2887, discriminator: 12)
!7719 = !DILocalVariable(name: "self", arg: 1, scope: !6892, file: !2734, line: 3100, type: !3016)
!7720 = !{!1206, !3016}
!7721 = !DISubroutineType(types: !7720)
!7722 = !DISubprogram(name: "len<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB6_4sync3ArceEEE3lenCs9GYDdpCSJ4S_14regex_automata", scope: !80, file: !2734, line: 3100, type: !7721, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1503)
!7723 = !{!7719}
!7724 = !DILocation(line: 0, scope: !6149)
!7725 = !DILexicalBlockFile(scope: !6149, file: !2675, discriminator: 4)
!7726 = !DILocation(line: 1602, column: 29, scope: !7725)
!7727 = !DILocation(line: 0, scope: !6362, inlinedAt: !7726)
!7728 = !DILocation(line: 0, scope: !6360, inlinedAt: !7726)
!7729 = !DILocation(line: 0, scope: !6147)
!7730 = !DILexicalBlockFile(scope: !6147, file: !2675, discriminator: 2)
!7731 = !DILocation(line: 1605, column: 17, scope: !7730)
!7732 = !DILocation(line: 0, scope: !6362, inlinedAt: !7731)
!7735 = !DILocation(line: 0, scope: !6359, inlinedAt: !7731)
!7736 = !DILocation(line: 1575, column: 13, scope: !6162)
!7737 = !DILocation(line: 1575, column: 30, scope: !6162)
!7738 = !DILocation(line: 1663, column: 9, scope: !6243, inlinedAt: !6244)
!7739 = !DILocation(line: 180, column: 28, scope: !6195, inlinedAt: !6215)
!7740 = !DILocation(line: 310, column: 21, scope: !6248, inlinedAt: !6252)
!7741 = !DILocation(line: 970, column: 18, scope: !6258, inlinedAt: !6268)
!7742 = !DILocation(line: 348, column: 12, scope: !6269, inlinedAt: !7174)
!7743 = !DILocation(line: 82, column: 9, scope: !6208, inlinedAt: !6213)
!7744 = !DILocation(line: 3101, column: 19, scope: !490, inlinedAt: !6293)
!7745 = !DILocation(line: 611, column: 9, scope: !496, inlinedAt: !6299)
!7746 = !DILocation(line: 1608, column: 20, scope: !6161)
!7747 = !DILocation(line: 3106, column: 37, scope: !490, inlinedAt: !6293)
!7748 = !DILocation(line: 3106, column: 18, scope: !490, inlinedAt: !6293)
!7749 = !DILocation(line: 3212, column: 26, scope: !482, inlinedAt: !6305)
!7750 = !DILocation(line: 970, column: 18, scope: !504, inlinedAt: !6325)
!7751 = !DILocation(line: 2276, column: 13, scope: !476, inlinedAt: !6291)
!7752 = !DILocation(line: 764, column: 9, scope: !505, inlinedAt: !6330)
!7753 = !DILocation(line: 2276, column: 13, scope: !475, inlinedAt: !6291)
!7754 = !DILocation(line: 202, column: 9, scope: !483, inlinedAt: !6339)
!7755 = !DILocation(line: 202, column: 9, scope: !483, inlinedAt: !6334)
!7756 = !DILocation(line: 938, column: 37, scope: !491, inlinedAt: !6317)
!7757 = !DILocation(line: 348, column: 12, scope: !488, inlinedAt: !6308)
!7758 = !DILocation(line: 188, column: 20, scope: !506, inlinedAt: !6347)
!7759 = !DILocation(line: 2287, column: 13, scope: !465, inlinedAt: !6291)
!7760 = !DILocation(line: 2291, column: 38, scope: !465, inlinedAt: !6291)
!7761 = !DILocation(line: 348, column: 12, scope: !488, inlinedAt: !6312)
!7762 = !DILocation(line: 1232, column: 17, scope: !509, inlinedAt: !6353)
!7763 = !DILocation(line: 1232, column: 23, scope: !507, inlinedAt: !6353)
!7764 = !DILocation(line: 188, column: 20, scope: !506, inlinedAt: !6351)
!7765 = !DILocation(line: 2291, column: 13, scope: !465, inlinedAt: !6291)
!7766 = !DILocation(line: 2278, column: 34, scope: !467, inlinedAt: !6291)
!7767 = !DILocation(line: 2278, column: 33, scope: !467, inlinedAt: !6291)
!7768 = !DILocation(line: 2278, column: 29, scope: !467, inlinedAt: !6291)
!7769 = !DILocation(line: 2292, column: 9, scope: !476, inlinedAt: !6291)
!7770 = !DILocation(line: 2193, column: 23, scope: !6358, inlinedAt: !7214)
!7771 = !DILocation(line: 0, scope: !7217)
!7772 = !DILocation(line: 616, column: 49, scope: !6221, inlinedAt: !7058)
!7773 = !DILocation(line: 1598, column: 30, scope: !6222, inlinedAt: !7055)
!7774 = !DILocation(line: 1598, column: 12, scope: !6222, inlinedAt: !7055)
!7775 = !DILocation(line: 743, column: 41, scope: !6227, inlinedAt: !7074)
!7776 = !DILocation(line: 616, column: 49, scope: !6221, inlinedAt: !7085)
!7777 = !DILocation(line: 1598, column: 30, scope: !6230, inlinedAt: !7082)
!7778 = !DILocation(line: 1598, column: 12, scope: !6230, inlinedAt: !7082)
!7779 = !DILocation(line: 743, column: 36, scope: !6227, inlinedAt: !7074)
!7780 = !DILocation(line: 743, column: 27, scope: !6227, inlinedAt: !7074)
!7781 = !DILocation(line: 743, column: 16, scope: !6227, inlinedAt: !7074)
!7782 = !DILocation(line: 743, column: 41, scope: !6226, inlinedAt: !7095)
!7783 = !DILocation(line: 616, column: 49, scope: !6221, inlinedAt: !7106)
!7784 = !DILocation(line: 1598, column: 30, scope: !6234, inlinedAt: !7103)
!7785 = !DILocation(line: 1598, column: 12, scope: !6234, inlinedAt: !7103)
!7786 = !DILocation(line: 743, column: 36, scope: !6226, inlinedAt: !7095)
!7787 = !DILocation(line: 743, column: 27, scope: !6226, inlinedAt: !7095)
!7788 = !DILocation(line: 743, column: 16, scope: !6226, inlinedAt: !7095)
!7789 = !DILocation(line: 743, column: 41, scope: !6225, inlinedAt: !7116)
!7790 = !DILocation(line: 440, column: 34, scope: !6220, inlinedAt: !7050)
!7791 = !DILocation(line: 1612, column: 31, scope: !6161)
!7792 = !DILocation(line: 290, column: 19, scope: !511, inlinedAt: !6363)
!7793 = !DILocation(line: 847, column: 1, scope: !512, inlinedAt: !6367)
!7794 = !DILocation(line: 288, column: 5, scope: !511, inlinedAt: !6363)
!7795 = !DILocation(line: 743, column: 36, scope: !6225, inlinedAt: !7116)
!7796 = !DILocation(line: 743, column: 27, scope: !6225, inlinedAt: !7116)
!7797 = !DILocation(line: 743, column: 16, scope: !6225, inlinedAt: !7116)
!7798 = !DILocation(line: 0, scope: !6161)
!7799 = !DILocation(line: 293, column: 56, scope: !510, inlinedAt: !6363)
!7800 = !DILocation(line: 444, column: 10, scope: !6220, inlinedAt: !7050)
!7801 = !DILocation(line: 1612, column: 9, scope: !6161)
!7802 = !DILocation(line: 1613, column: 5, scope: !6162)
!7803 = !DILocation(line: 1613, column: 6, scope: !6162)
!7804 = !DILocation(line: 2193, column: 23, scope: !6361, inlinedAt: !7233)
!7805 = !DILocation(line: 1607, column: 9, scope: !6160)
!7806 = !DILocation(line: 627, column: 28, scope: !6238, inlinedAt: !6239)
!7807 = !DILocation(line: 188, column: 20, scope: !6287, inlinedAt: !7200)
!7808 = !DILocation(line: 1663, column: 9, scope: !6375, inlinedAt: !6376)
!7809 = !DILocation(line: 180, column: 28, scope: !6164, inlinedAt: !6190)
!7810 = !DILocation(line: 743, column: 15, scope: !6392, inlinedAt: !6393)
!7811 = !DILocation(line: 1588, column: 13, scope: !6154)
!7812 = !DILocation(line: 1589, column: 32, scope: !6154)
!7813 = !DILocation(line: 1589, column: 25, scope: !6154)
!7814 = !DILocation(line: 1591, column: 28, scope: !6154)
!7815 = !DILocation(line: 1591, column: 21, scope: !6154)
!7816 = !DILocation(line: 1595, column: 24, scope: !6154)
!7817 = !DILocation(line: 1663, column: 9, scope: !6375, inlinedAt: !6404)
!7818 = !DILocation(line: 180, column: 28, scope: !6164, inlinedAt: !6184)
!7819 = !DILocation(line: 627, column: 28, scope: !6370, inlinedAt: !7276)
!7820 = !DILocation(line: 348, column: 12, scope: !6269, inlinedAt: !7279)
!7821 = !DILocation(line: 743, column: 15, scope: !6392, inlinedAt: !6412)
!7822 = !DILocation(line: 82, column: 9, scope: !6177, inlinedAt: !6182)
!7823 = !DILocation(line: 188, column: 20, scope: !6287, inlinedAt: !7287)
!7824 = !DILocation(line: 1605, column: 28, scope: !6150)
!7825 = !DILocation(line: 1904, column: 92, scope: !6426, inlinedAt: !6445)
!7826 = !DILocation(line: 245, column: 14, scope: !6534, inlinedAt: !6535)
!7827 = !DILocation(line: 611, column: 9, scope: !6573, inlinedAt: !6578)
!7828 = !DILocation(line: 245, column: 9, scope: !6534, inlinedAt: !6535)
!7829 = !DILocation(line: 202, column: 9, scope: !6455, inlinedAt: !6580)
!7830 = !DILocation(line: 348, column: 12, scope: !6490, inlinedAt: !6493)
!7831 = !DILocation(line: 0, scope: !6440, inlinedAt: !6441)
!7832 = !DILocation(line: 2233, column: 32, scope: !6439, inlinedAt: !6441)
!7833 = !DILocation(line: 2233, column: 9, scope: !6439, inlinedAt: !6441)
!7834 = !DILocation(line: 2236, column: 16, scope: !6436, inlinedAt: !6441)
!7835 = !DILocation(line: 2193, column: 23, scope: !6585, inlinedAt: !6587)
!7836 = !DILocation(line: 2263, column: 5, scope: !6440, inlinedAt: !6441)
!7837 = !DILocation(line: 2237, column: 17, scope: !6436, inlinedAt: !6441)
!7838 = !DILocation(line: 721, column: 9, scope: !6591, inlinedAt: !6592)
!7839 = !DILocation(line: 2454, column: 9, scope: !6597, inlinedAt: !6598)
!7840 = !DILocation(line: 2384, column: 18, scope: !6612, inlinedAt: !6613)
!7841 = !DILocation(line: 417, column: 18, scope: !6620, inlinedAt: !6623)
!7842 = !DILocation(line: 1841, column: 18, scope: !6621, inlinedAt: !6622)
!7843 = !DILocation(line: 1918, column: 26, scope: !6630, inlinedAt: !6631)
!7844 = !DILocation(line: 955, column: 47, scope: !6638, inlinedAt: !6639)
!7845 = !DILocation(line: 955, column: 22, scope: !6638, inlinedAt: !6639)
!7846 = !DILocation(line: 1670, column: 18, scope: !6624, inlinedAt: !6625)
!7847 = !DILocation(line: 1865, column: 86, scope: !6645, inlinedAt: !6646)
!7848 = !DILocation(line: 238, column: 10, scope: !6543, inlinedAt: !6544)
!7849 = !DILocation(line: 1904, column: 92, scope: !6659, inlinedAt: !6660)
!7850 = !DILocation(line: 245, column: 14, scope: !6554, inlinedAt: !6561)
!7851 = !DILocation(line: 611, column: 9, scope: !6668, inlinedAt: !6673)
!7852 = !DILocation(line: 238, column: 9, scope: !6543, inlinedAt: !6544)
!7853 = !DILocation(line: 2454, column: 9, scope: !6677, inlinedAt: !6678)
!7854 = !DILocation(line: 1273, column: 19, scope: !6674, inlinedAt: !6675)
!7855 = !DILocation(line: 0, scope: !6435, inlinedAt: !6441)
!7856 = !DILocation(line: 2238, column: 16, scope: !6435, inlinedAt: !6441)
!7857 = !DILocation(line: 454, column: 20, scope: !6687, inlinedAt: !6688)
!7858 = !DILocation(line: 2454, column: 9, scope: !6677, inlinedAt: !6683)
!7859 = !DILocation(line: 435, column: 15, scope: !555, inlinedAt: !6705)
!7860 = !DILocation(line: 435, column: 9, scope: !555, inlinedAt: !6705)
!7861 = !DILocation(line: 0, scope: !555, inlinedAt: !6705)
!7862 = !DILocation(line: 443, column: 17, scope: !555, inlinedAt: !6705)
!7863 = !DILocation(line: 443, column: 25, scope: !553, inlinedAt: !6705)
!7864 = !DILocation(line: 436, column: 16, scope: !555, inlinedAt: !6705)
!7865 = !DILocation(line: 764, column: 9, scope: !556, inlinedAt: !6707)
!7866 = !DILocation(line: 210, column: 9, scope: !559, inlinedAt: !6727)
!7867 = !DILocation(line: 444, column: 9, scope: !555, inlinedAt: !6705)
!7868 = !DILocation(line: 452, column: 20, scope: !548, inlinedAt: !6699)
!7869 = !DILocation(line: 573, column: 14, scope: !558, inlinedAt: !6718)
!7870 = !DILocation(line: 452, column: 17, scope: !548, inlinedAt: !6699)
!7871 = !DILocation(line: 454, column: 20, scope: !6687, inlinedAt: !6734)
!7872 = !DILocation(line: 4029, column: 24, scope: !6502, inlinedAt: !6503)
!7873 = !DILocation(line: 2434, column: 12, scope: !6497, inlinedAt: !6499)
!7874 = !DILocation(line: 2438, column: 38, scope: !6497, inlinedAt: !6499)
!7875 = !DILocation(line: 1333, column: 19, scope: !6479, inlinedAt: !6480)
!7876 = !DILocation(line: 2435, column: 13, scope: !6497, inlinedAt: !6499)
!7877 = !DILocation(line: 1904, column: 92, scope: !6659, inlinedAt: !6750)
!7878 = !DILocation(line: 245, column: 14, scope: !6554, inlinedAt: !6555)
!7879 = !DILocation(line: 611, column: 9, scope: !6757, inlinedAt: !6762)
!7880 = !DILocation(line: 245, column: 9, scope: !6554, inlinedAt: !6555)
!7881 = !DILocation(line: 2243, column: 47, scope: !6434, inlinedAt: !6441)
!7882 = !DILocation(line: 996, column: 22, scope: !6450, inlinedAt: !6763)
!7883 = !DILocation(line: 1029, column: 19, scope: !6449, inlinedAt: !6767)
!7884 = !DILocation(line: 616, column: 49, scope: !6773, inlinedAt: !6776)
!7885 = !DILocation(line: 1032, column: 12, scope: !6448, inlinedAt: !6767)
!7886 = !DILocation(line: 1033, column: 22, scope: !6448, inlinedAt: !6767)
!7887 = !DILocation(line: 4049, column: 24, scope: !6794, inlinedAt: !6795)
!7888 = !DILocation(line: 2868, column: 12, scope: !6788, inlinedAt: !6789)
!7889 = !DILocation(line: 4493, column: 24, scope: !560, inlinedAt: !6804)
!7890 = !DILocation(line: 2911, column: 18, scope: !6788, inlinedAt: !6789)
!7891 = !DILocation(line: 1027, column: 5, scope: !6449, inlinedAt: !6767)
!7892 = !DILocation(line: 611, column: 9, scope: !6806, inlinedAt: !6811)
!7893 = !DILocation(line: 970, column: 18, scope: !6779, inlinedAt: !6780)
!7894 = !DILocation(line: 1963, column: 41, scope: !6813, inlinedAt: !6814)
!7895 = !DILocation(line: 1038, column: 13, scope: !6447, inlinedAt: !6767)
!7896 = !DILocation(line: 1042, column: 6, scope: !6449, inlinedAt: !6767)
!7897 = !DILocation(line: 2246, column: 17, scope: !6434, inlinedAt: !6441)
!7898 = !DILocation(line: 2245, column: 13, scope: !6434, inlinedAt: !6441)
!7899 = !DILocation(line: 2251, column: 13, scope: !6434, inlinedAt: !6441)
!7900 = !DILocation(line: 2252, column: 9, scope: !6436, inlinedAt: !6441)
!7901 = !DILocation(line: 2236, column: 9, scope: !6439, inlinedAt: !6441)
!7902 = !DILocation(line: 847, column: 1, scope: !6785, inlinedAt: !6818)
!7903 = !DILocation(line: 454, column: 20, scope: !6831, inlinedAt: !6832)
!7904 = !DILocation(line: 4049, column: 24, scope: !6794, inlinedAt: !6829)
!7905 = !DILocation(line: 2868, column: 12, scope: !6788, inlinedAt: !6822)
!7906 = !DILocation(line: 4493, column: 24, scope: !560, inlinedAt: !6834)
!7907 = !DILocation(line: 2911, column: 18, scope: !6788, inlinedAt: !6822)
!7908 = !DILocation(line: 847, column: 1, scope: !6785, inlinedAt: !6838)
!7909 = !DILocation(line: 454, column: 20, scope: !6831, inlinedAt: !6850)
!7910 = !DILocation(line: 4049, column: 24, scope: !6794, inlinedAt: !6848)
!7911 = !DILocation(line: 2868, column: 12, scope: !6788, inlinedAt: !6842)
!7912 = !DILocation(line: 4493, column: 24, scope: !560, inlinedAt: !6852)
!7913 = !DILocation(line: 2911, column: 18, scope: !6788, inlinedAt: !6842)
!7914 = !DILocation(line: 2220, column: 5, scope: !6440, inlinedAt: !6441)
!7915 = !DILocation(line: 611, column: 9, scope: !6757, inlinedAt: !6856)
!7916 = !DILocation(line: 245, column: 9, scope: !6554, inlinedAt: !6561)
!7917 = !DILocation(line: 1029, column: 19, scope: !6449, inlinedAt: !6452)
!7918 = !DILocation(line: 616, column: 49, scope: !6773, inlinedAt: !6862)
!7919 = !DILocation(line: 1032, column: 12, scope: !6448, inlinedAt: !6452)
!7920 = !DILocation(line: 1033, column: 22, scope: !6448, inlinedAt: !6452)
!7921 = !DILocation(line: 611, column: 9, scope: !6806, inlinedAt: !6872)
!7922 = !DILocation(line: 970, column: 18, scope: !6779, inlinedAt: !6867)
!7923 = !DILocation(line: 1963, column: 41, scope: !6813, inlinedAt: !6874)
!7924 = !DILocation(line: 1038, column: 13, scope: !6447, inlinedAt: !6452)
!7925 = !DILocation(line: 2254, column: 13, scope: !6439, inlinedAt: !6441)
!7926 = !DILocation(line: 234, column: 9, scope: !6469, inlinedAt: !6474)
!7927 = !DILocation(line: 2259, column: 38, scope: !6439, inlinedAt: !6441)
!7928 = !DILocation(line: 202, column: 9, scope: !6455, inlinedAt: !6884)
!7929 = !DILocation(line: 202, column: 9, scope: !6455, inlinedAt: !6881)
!7930 = !DILocation(line: 2314, column: 14, scope: !6483, inlinedAt: !6485)
!7931 = !DILocation(line: 2314, column: 13, scope: !6483, inlinedAt: !6485)
!7932 = !DILocation(line: 2314, column: 9, scope: !6483, inlinedAt: !6485)
!7933 = !DILocation(line: 0, scope: !6484, inlinedAt: !6485)
!7934 = !DILocation(line: 2259, column: 9, scope: !7323, inlinedAt: !6441)
!7935 = !DILocation(line: 0, scope: !6439, inlinedAt: !6441)
!7936 = !DILocation(line: 2259, column: 9, scope: !6439, inlinedAt: !6441)
!7937 = !DILocation(line: 2261, column: 20, scope: !6439, inlinedAt: !6441)
!7938 = !DILocation(line: 234, column: 9, scope: !6469, inlinedAt: !6470)
!7939 = !DILocation(line: 2261, column: 38, scope: !6439, inlinedAt: !6441)
!7940 = !DILocation(line: 238, column: 10, scope: !6569, inlinedAt: !6570)
!7941 = !DILocation(line: 238, column: 9, scope: !6569, inlinedAt: !6570)
!7942 = !DILocation(line: 3101, column: 19, scope: !6892, inlinedAt: !6893)
!7943 = !DILocation(line: 3106, column: 37, scope: !6892, inlinedAt: !6893)
!7944 = !DILocation(line: 3106, column: 18, scope: !6892, inlinedAt: !6893)
!7945 = !DILocation(line: 2261, column: 9, scope: !7328, inlinedAt: !6441)
!7946 = !DILocation(line: 2193, column: 23, scope: !6360, inlinedAt: !7726)
!7947 = !DILocation(line: 1606, column: 13, scope: !6152)
!7948 = !DILocation(line: 2263, column: 6, scope: !6440, inlinedAt: !6441)
!7949 = !DILocation(line: 2193, column: 23, scope: !6359, inlinedAt: !7731)
!7950 = !DILocation(line: 2261, column: 9, scope: !6439, inlinedAt: !6441)
!7951 = !DILocation(line: 1569, column: 5, scope: !6162)
!7952 = distinct !DILocation(line: 847, column: 1, scope: !561)
!7953 = distinct !DILocation(line: 0, scope: !562, inlinedAt: !7952)
!7954 = distinct !DILocation(line: 847, column: 1, scope: !561)
!7955 = distinct !DILocation(line: 0, scope: !562, inlinedAt: !7954)
!7956 = !DILocation(line: 0, scope: !561)
!7957 = !DILocation(line: 847, column: 1, scope: !561)
!7958 = !DILocation(line: 847, column: 1, scope: !562, inlinedAt: !7952)
!7959 = !DILocation(line: 847, column: 1, scope: !562, inlinedAt: !7954)
!7960 = distinct !DILocation(line: 847, column: 1, scope: !563)
!7961 = distinct !DILocation(line: 0, scope: !564, inlinedAt: !7960)
!7962 = distinct !DILocation(line: 847, column: 1, scope: !563)
!7963 = distinct !DILocation(line: 0, scope: !564, inlinedAt: !7962)
!7964 = !DILocation(line: 0, scope: !563)
!7965 = !DILocation(line: 847, column: 1, scope: !563)
!7966 = !DILocation(line: 847, column: 1, scope: !564, inlinedAt: !7960)
!7967 = !DILocation(line: 847, column: 1, scope: !564, inlinedAt: !7962)
!7968 = distinct !DILocation(line: 847, column: 1, scope: !565)
!7969 = distinct !DILocation(line: 0, scope: !566, inlinedAt: !7968)
!7970 = distinct !DILocation(line: 847, column: 1, scope: !565)
!7971 = distinct !DILocation(line: 0, scope: !566, inlinedAt: !7970)
!7972 = !DILocation(line: 0, scope: !565)
!7973 = !DILocation(line: 847, column: 1, scope: !565)
!7974 = !DILocation(line: 847, column: 1, scope: !566, inlinedAt: !7968)
!7975 = !DILocation(line: 847, column: 1, scope: !566, inlinedAt: !7970)
!7976 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionINtNtBG_4sync3ArceEEEECs9GYDdpCSJ4S_14regex_automata", scope: !1237, file: !2810, line: 847, type: !7983, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !1462, retainedNodes: !7985)
!7977 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArceEEEECs9GYDdpCSJ4S_14regex_automata", scope: !1237, file: !2810, line: 847, type: !7990, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !331, templateParams: !7993, retainedNodes: !7991)
!7978 = distinct !DILocation(line: 847, column: 1, scope: !7976)
!7979 = distinct !DILocation(line: 0, scope: !7977, inlinedAt: !7978)
!7980 = distinct !DILocation(line: 847, column: 1, scope: !7976)
!7981 = distinct !DILocation(line: 0, scope: !7977, inlinedAt: !7980)
!7982 = !{null, !3083}
!7983 = !DISubroutineType(types: !7982)
!7984 = !DILocalVariable(arg: 1, scope: !7976, file: !2810, line: 847, type: !3083)
!7985 = !{!7984}
!7986 = !DILocation(line: 0, scope: !7976)
!7987 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::raw_vec::RawVec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!7988 = !DILocalVariable(arg: 1, scope: !7977, file: !2810, line: 847, type: !7987)
!7989 = !{null, !7987}
!7990 = !DISubroutineType(types: !7989)
!7991 = !{!7988}
!7992 = !DITemplateTypeParameter(name: "T", type: !79)
!7993 = !{!7992}
!7994 = !DILocation(line: 847, column: 1, scope: !7976)
!7995 = !DILocation(line: 847, column: 1, scope: !7977, inlinedAt: !7978)
!7996 = !DILocation(line: 847, column: 1, scope: !7977, inlinedAt: !7980)
!7997 = distinct !DILocation(line: 847, column: 1, scope: !567)
!7998 = distinct !DILocation(line: 0, scope: !568, inlinedAt: !7997)
!7999 = distinct !DILocation(line: 847, column: 1, scope: !567)
!8000 = distinct !DILocation(line: 0, scope: !568, inlinedAt: !7999)
!8001 = !DILocation(line: 0, scope: !567)
!8002 = !DILocation(line: 847, column: 1, scope: !567)
!8003 = !DILocation(line: 847, column: 1, scope: !568, inlinedAt: !7997)
!8004 = !DILocation(line: 847, column: 1, scope: !568, inlinedAt: !7999)
!8005 = distinct !DILocation(line: 847, column: 1, scope: !569)
!8006 = distinct !DILocation(line: 0, scope: !570, inlinedAt: !8005)
!8007 = distinct !DILocation(line: 847, column: 1, scope: !569)
!8008 = distinct !DILocation(line: 0, scope: !570, inlinedAt: !8007)
!8009 = !DILocation(line: 0, scope: !569)
!8010 = !DILocation(line: 847, column: 1, scope: !569)
!8011 = !DILocation(line: 847, column: 1, scope: !570, inlinedAt: !8005)
!8012 = !DILocation(line: 847, column: 1, scope: !570, inlinedAt: !8007)
!8013 = distinct !DILocation(line: 847, column: 1, scope: !571)
!8014 = distinct !DILocation(line: 0, scope: !572, inlinedAt: !8013)
!8015 = distinct !DILocation(line: 847, column: 1, scope: !571)
!8016 = distinct !DILocation(line: 0, scope: !572, inlinedAt: !8015)
!8017 = !DILocation(line: 0, scope: !571)
!8018 = !DILocation(line: 847, column: 1, scope: !571)
!8019 = !DILocation(line: 847, column: 1, scope: !572, inlinedAt: !8013)
!8020 = !DILocation(line: 847, column: 1, scope: !572, inlinedAt: !8015)
!8021 = distinct !DILocation(line: 847, column: 1, scope: !573)
!8022 = distinct !DILocation(line: 0, scope: !574, inlinedAt: !8021)
!8023 = distinct !DILocation(line: 847, column: 1, scope: !573)
!8024 = distinct !DILocation(line: 0, scope: !574, inlinedAt: !8023)
!8025 = !DILocation(line: 0, scope: !573)
!8026 = !DILocation(line: 847, column: 1, scope: !573)
!8027 = !DILocation(line: 847, column: 1, scope: !574, inlinedAt: !8021)
!8028 = !DILocation(line: 847, column: 1, scope: !574, inlinedAt: !8023)
!8029 = distinct !DILocation(line: 847, column: 1, scope: !575)
!8030 = distinct !DILocation(line: 0, scope: !576, inlinedAt: !8029)
!8031 = distinct !DILocation(line: 847, column: 1, scope: !575)
!8032 = distinct !DILocation(line: 0, scope: !576, inlinedAt: !8031)
!8033 = !DILocation(line: 0, scope: !575)
!8034 = !DILocation(line: 847, column: 1, scope: !575)
!8035 = !DILocation(line: 847, column: 1, scope: !576, inlinedAt: !8029)
!8036 = !DILocation(line: 847, column: 1, scope: !576, inlinedAt: !8031)
!8037 = distinct !DILocation(line: 847, column: 1, scope: !577)
!8038 = distinct !DILocation(line: 0, scope: !578, inlinedAt: !8037)
!8039 = distinct !DILocation(line: 847, column: 1, scope: !577)
!8040 = distinct !DILocation(line: 0, scope: !578, inlinedAt: !8039)
!8041 = !DILocation(line: 0, scope: !577)
!8042 = !DILocation(line: 847, column: 1, scope: !577)
end_hunk_4
