Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.13?download=true
inline.NumInlined: 338
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1w_:bb.a
    #dbg_value(ptr poison, !2585, !DIExpression(), !6354)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !6692, !noalias !6639
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !6693

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2589, !DIExpression(), !6357)
    #dbg_value(i64 %i.ah, !2673, !DIExpression(), !6381)
    #dbg_value(i64 %i.ah, !2595, !DIExpression(), !6379)
    #dbg_value(ptr %i.am, !2596, !DIExpression(), !6395)
    #dbg_value(ptr %i.am, !2674, !DIExpression(), !6381)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6396)
    #dbg_value(i64 poison, !2726, !DIExpression(), !6398)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !6694 ; 9 uses
    #dbg_value(ptr %i.ar, !2602, !DIExpression(), !6396)
    #dbg_value(ptr %i.ar, !2443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6399)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2443, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6399)
    #dbg_value(i64 poison, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6399)
    #dbg_value(i64 0, !2443, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6399)
    #dbg_value(i64 %i.ai, !2484, !DIExpression(), !6307)
    #dbg_value(i64 %i.ai, !2492, !DIExpression(), !6309)
    #dbg_value(ptr %i.ar, !2474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6400)
    #dbg_value(ptr %i.ar, !2469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6305)
    #dbg_value(i64 %i.ai, !2474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6400)
    #dbg_value(i64 %i.ai, !2469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6305)
    #dbg_value(ptr %i.ar, !2483, !DIExpression(), !6307)
    #dbg_value(ptr %i.ar, !2491, !DIExpression(), !6309)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !6695, !noalias !6639
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !6696
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !6697 ; 6 uses
    #dbg_value(i64 %i.at, !2726, !DIExpression(), !6398)
    #dbg_value(i64 %i.at, !2443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6399)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !6696
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !6696
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !6696 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2726, !DIExpression(), !6398)
    #dbg_value(i64 %.sroa.07.0.i.i, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6399)
    #dbg_value(ptr %i.d, !2283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_value(i64 24, !2283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6401)
    #dbg_value(i64 16, !2283, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6401)
    #dbg_value(ptr %i.ar, !2283, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6401)
    #dbg_value(i64 %i.at, !2283, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6401)
    #dbg_value(i64 %.sroa.07.0.i.i, !2283, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6401)
    #dbg_value(i64 0, !2283, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6401)
  store ptr %i.d, ptr %i.a, align 8, !dbg !6698, !noalias !6637
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6698 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6698 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !6698 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6698 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !6698 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6698 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6698, !noalias !6637
    #dbg_value(ptr poison, !2397, !DIExpression(), !6402)
    #dbg_value(ptr poison, !2734, !DIExpression(), !6404)
    #dbg_value(<2 x i64> poison, !2742, !DIExpression(), !6407)
    #dbg_value(ptr poison, !2749, !DIExpression(), !6408)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6410)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6411)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6412)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !6699, !alias.scope !6640, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
    #dbg_value(i64 0, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6641)
    #dbg_value(i64 %i.aw, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6641)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !6641)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6267)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !6700
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !6700

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !6701, !alias.scope !6640, !nonnull !1539, !noundef !1539 ; 2 uses
    #dbg_value(ptr %i.ay, !2397, !DIExpression(), !6402)
    #dbg_value(ptr %i.ay, !2734, !DIExpression(), !6404)
    #dbg_value(ptr %i.ay, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !6702
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6412)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !6641)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !6703
    #dbg_value(<16 x i1> %i.az, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !6704
    #dbg_value(i16 %i.ba, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
  br label %.preheader, !dbg !6700

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !6705
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !6705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6706, !noalias !6637
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6707

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !6706, !noalias !6642
  resume { ptr, i32 } %i.bb, !dbg !6708

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6641)
    #dbg_value(ptr %.sroa.0.038, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
    #dbg_value(i64 %.sroa.5.037, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6641)
    #dbg_value(i16 %.sroa.13.035, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6414)
    #dbg_value(i16 %.sroa.13.035, !2759, !DIExpression(), !6416)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !6709
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !6710

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
    #dbg_value(i64 %.sroa.5.131, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6641)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2762, !DIExpression(), !6418)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !6711 ; 3 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
    #dbg_value(ptr %i.bc, !2765, !DIExpression(), !6420)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !6712
    #dbg_value(<2 x i64> poison, !2772, !DIExpression(), !6423)
    #dbg_value(ptr poison, !2774, !DIExpression(), !6424)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6426)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6427)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6428)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !6713
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !6714 ; 2 uses
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !6715    ; 2 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6641)
    #dbg_value(i64 %i.bf, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6641)
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6414)
    #dbg_value(i16 %i.be, !2759, !DIExpression(), !6416)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !6709
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !6710

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !6716, !alias.scope !6640
  br label %._crit_edge39, !dbg !6716

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !6716 ; 2 uses
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6429)
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6429)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !6717
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6717, !noalias !6637
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6718, !noalias !6637
    #dbg_value(ptr %i.a, !2419, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6430)
    #dbg_value(ptr %0, !2777, !DIExpression(), !6432)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2780, !DIExpression(), !6432)
    #dbg_value(ptr %0, !2782, !DIExpression(), !6434)
    #dbg_value(ptr %0, !2788, !DIExpression(), !6436)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2785, !DIExpression(), !6434)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2792, !DIExpression(), !6436)
    #dbg_value(i64 1, !2786, !DIExpression(), !6434)
    #dbg_value(i64 1, !2793, !DIExpression(), !6436)
    #dbg_value(ptr %0, !2794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(i64 1, !2794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 32, !2795, !DIExpression(), !6438)
    #dbg_value(i64 32, !2796, !DIExpression(), !6439)
    #dbg_value(ptr %0, !2807, !DIExpression(), !6441)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2810, !DIExpression(), !6441)
    #dbg_value(i64 32, !2811, !DIExpression(), !6441)
    #dbg_value(i64 32, !2812, !DIExpression(), !6442)
    #dbg_value(i64 0, !2814, !DIExpression(), !6443)
    #dbg_value(i64 4, !2813, !DIExpression(), !6444)
    #dbg_value(i64 4, !2815, !DIExpression(), !6445)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !6719, !noalias !6642

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !6720, !noalias !6642
  unreachable, !dbg !6720

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !6643), !dbg !6706
    #dbg_value(ptr %i.a, !2820, !DIExpression(), !6449)
  call void @llvm.experimental.noalias.scope.decl(metadata !6644), !dbg !6721, !noalias !6642
    #dbg_value(ptr %i.a, !2826, !DIExpression(), !6453)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6722, !alias.scope !6645, !noalias !6642 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6722, !alias.scope !6645, !noalias !6642 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6722, !alias.scope !6645, !noalias !6642, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !6455)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !6455)
    #dbg_value(ptr poison, !2833, !DIExpression(), !6455)
    #dbg_value(ptr poison, !2837, !DIExpression(), !6457)
    #dbg_value(ptr poison, !2842, !DIExpression(), !6459)
    #dbg_value(ptr poison, !2851, !DIExpression(), !6461)
    #dbg_value(ptr poison, !2863, !DIExpression(), !6463)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !6723
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6724

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !6642
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6722, !alias.scope !6645, !noalias !6642
    #dbg_value(ptr poison, !2846, !DIExpression(), !6459)
    #dbg_value(i64 %.val.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6459)
    #dbg_value(i64 %.val.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6461)
    #dbg_value(i64 %.val1.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6459)
    #dbg_value(i64 %.val1.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6461)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !6725
    #dbg_value(i64 %.val.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6465)
    #dbg_value(i64 %.val1.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6465)
    #dbg_value(i64 %i.bk, !2646, !DIExpression(), !6465)
    #dbg_value(i64 %i.bk, !2658, !DIExpression(), !6467)
    #dbg_value(i64 %i.bk, !2663, !DIExpression(), !6469)
    #dbg_value(i64 %.val.i.i, !2647, !DIExpression(), !6470)
    #dbg_value(i64 %.val.i.i, !2659, !DIExpression(), !6467)
    #dbg_value(i64 %.val.i.i, !2664, !DIExpression(), !6469)
    #dbg_value(i64 %.val1.i.i, !2648, !DIExpression(), !6470)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !6726 ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6472)
    #dbg_value(i64 %i.bl, !2668, !DIExpression(), !6474)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !6727
    #dbg_value(i64 %i.bm, !2669, !DIExpression(), !6474)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !6728        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !6728
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6476)
  call void @llvm.assume(i1 %i.bo), !dbg !6729, !noalias !6642
  %i.bp = sub i64 0, %.val1.i.i, !dbg !6730
  %i.bq = and i64 %i.bn, %i.bp, !dbg !6731        ; 3 uses
    #dbg_value(i64 %i.bq, !2649, !DIExpression(), !6477)
    #dbg_value(i64 %i.bq, !2668, !DIExpression(), !6479)
  %i.br = add i64 %.val3.i.i, 17, !dbg !6732
    #dbg_value(i64 %i.br, !2669, !DIExpression(), !6479)
  %i.bs = add i64 %i.br, %i.bq, !dbg !6733        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !6733
    #dbg_value(i1 %i.bt, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6481)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !6734, !noalias !6642
  call void @llvm.assume(i1 %i.bv), !dbg !6734, !noalias !6642
    #dbg_value(i64 %.val1.i.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6483)
    #dbg_value(i64 %.val1.i.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6484)
    #dbg_value(i64 %i.bs, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6483)
    #dbg_value(i64 %i.bs, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6484)
    #dbg_value(i64 %i.bq, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6483)
    #dbg_value(i64 %i.bq, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6484)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !6735
  call void @llvm.assume(i1 %i.bw), !dbg !6736, !noalias !6642
    #dbg_value(i64 %.val1.i.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6485)
    #dbg_value(i64 %.val1.i.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6486)
    #dbg_value(i64 %i.bs, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6485)
    #dbg_value(i64 %i.bs, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6486)
    #dbg_value(i64 %i.bq, !2860, !DIExpression(), !6486)
    #dbg_value(i64 %i.bq, !2875, !DIExpression(), !6488)
    #dbg_value(ptr %.val2.i.i, !2876, !DIExpression(), !6488)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6485)
    #dbg_value(ptr poison, !2879, !DIExpression(), !6490)
    #dbg_value(ptr poison, !2885, !DIExpression(), !6492)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6490)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6492)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6494)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6496)
    #dbg_value(i64 %.val1.i.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6490)
    #dbg_value(i64 %.val1.i.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6492)
    #dbg_value(i64 %.val1.i.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6494)
    #dbg_value(i64 %.val1.i.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6496)
    #dbg_value(i64 %i.bs, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6490)
    #dbg_value(i64 %i.bs, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6492)
    #dbg_value(i64 %i.bs, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6494)
    #dbg_value(i64 %i.bs, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6496)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !6737
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !6737

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !6738
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6496)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6494)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6492)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6490)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6485)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !6739
    #dbg_value(ptr %i.bz, !2848, !DIExpression(), !6485)
    #dbg_value(ptr %i.bz, !2882, !DIExpression(), !6490)
    #dbg_value(ptr %i.bz, !2888, !DIExpression(), !6492)
    #dbg_value(ptr %i.bz, !2891, !DIExpression(), !6494)
    #dbg_value(ptr %i.bz, !2897, !DIExpression(), !6496)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !6740, !noalias !6646
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6741

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6706, !noalias !6637
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6707

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !6742 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !6742 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !6742
    #dbg_value(i16 %.sroa.13.1.lcssa, !2760, !DIExpression(), !6497)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2900, !DIExpression(), !6499)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2903, !DIExpression(), !6501)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2905, !DIExpression(), !6503)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !6743
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6744
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !6745
    #dbg_value(i64 %i.cc, !2755, !DIExpression(), !6504)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2908, !DIExpression(), !6506)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !6746
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6641)
    #dbg_value(i64 %i.cc, !2339, !DIExpression(), !6507)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !6747 ; 2 uses
    #dbg_value(i64 1, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6429)
    #dbg_value(i64 %i.ce, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6429)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !6748    ; 2 uses
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6641)
    #dbg_value(i64 %i.ce, !2284, !DIExpression(), !6508)
    #dbg_value(i64 %i.ce, !2407, !DIExpression(), !6293)
  call void @llvm.experimental.noalias.scope.decl(metadata !6647), !dbg !6749
    #dbg_value(ptr poison, !2911, !DIExpression(DW_OP_deref, DW_OP_deref), !6512)
    #dbg_value(ptr %0, !2915, !DIExpression(), !6512)
    #dbg_value(ptr %0, !2918, !DIExpression(), !6514)
    #dbg_value(ptr %0, !2929, !DIExpression(), !6516)
    #dbg_value(i64 %i.ce, !2916, !DIExpression(), !6512)
    #dbg_value(i64 %i.ce, !2922, !DIExpression(), !6514)
    #dbg_value(i64 %i.ce, !2934, !DIExpression(), !6518)
    #dbg_value(i64 %i.ce, !2938, !DIExpression(), !6520)
    #dbg_value(i64 1, !2940, !DIExpression(), !6524)
  %i.cg = load ptr, ptr %0, align 8, !dbg !6750, !alias.scope !6647, !noalias !6642, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.cg, !2935, !DIExpression(), !6518)
    #dbg_value(ptr %i.cg, !2939, !DIExpression(), !6520)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !6751
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !6752
    #dbg_value(ptr poison, !2944, !DIExpression(), !6525)
    #dbg_value(ptr poison, !2942, !DIExpression(), !6526)
    #dbg_value(ptr %i.ci, !2939, !DIExpression(), !6524)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !6753
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !6754, !noalias !6648, !nonnull !1539, !align !2946, !noundef !1539
    #dbg_value(ptr poison, !2947, !DIExpression(DW_OP_deref), !6529)
    #dbg_value(ptr %i.cj, !2950, !DIExpression(), !6529)
    #dbg_value(ptr %.val.i, !2954, !DIExpression(), !6531)
    #dbg_value(ptr %i.cj, !2957, !DIExpression(), !6531)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.m, !dbg !6755 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !2285, !DIExpression(), !6532)
    #dbg_value(i64 %i.ck, !2960, !DIExpression(), !6534)
    #dbg_value(i64 %i.ck, !2971, !DIExpression(), !6536)
    #dbg_value(ptr %i.a, !2967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6537)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6539)
    #dbg_value(ptr %i.a, !2975, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6540)
    #dbg_value(ptr %i.a, !2978, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6542)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6544)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6546)
    #dbg_value(ptr poison, !2983, !DIExpression(), !6549)
    #dbg_value(ptr poison, !2990, !DIExpression(), !6550)
    #dbg_value(ptr poison, !2996, !DIExpression(), !6552)
    #dbg_value(i64 %i.ck, !2991, !DIExpression(), !6550)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6553)
    #dbg_value(i64 0, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6553)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !6756 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !6757
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !6758, !noalias !6649
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6759
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !6759 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !6760
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6761, !prof !3016

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !6756
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.de, %.lr.ph.i ], !dbg !6759
    #dbg_value(i16 %.lcssa.i, !3013, !DIExpression(), !6564)
    #dbg_value(i16 %.lcssa.i, !3014, !DIExpression(), !6565)
    #dbg_value(i16 %.lcssa.i, !3017, !DIExpression(), !6567)
    #dbg_value(i16 %.lcssa.i, !3020, !DIExpression(), !6569)
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6762
  %i.cp = zext nneg i16 %i.co to i64, !dbg !6763
    #dbg_value(i64 %i.cp, !3011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6570)
    #dbg_value(i64 1, !3011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6570)
  %i.cq = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cp, !dbg !6764
  %i.cr = and i64 %i.cq, %i.at, !dbg !6764        ; 2 uses
    #dbg_value(i64 1, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6571)
    #dbg_value(i64 %i.cr, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6571)
    #dbg_value(i64 %i.cr, !3022, !DIExpression(), !6573)
    #dbg_value(ptr poison, !3027, !DIExpression(), !6573)
    #dbg_value(ptr poison, !3029, !DIExpression(), !6575)
    #dbg_value(ptr poison, !3035, !DIExpression(), !6577)
    #dbg_value(ptr poison, !3035, !DIExpression(), !6579)
    #dbg_value(i64 0, !3036, !DIExpression(), !6579)
    #dbg_value(i64 %i.cr, !3033, !DIExpression(), !6575)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr, !dbg !6765
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !6766, !noundef !1539
  %i.cu = icmp sgt i8 %i.ct, -1, !dbg !6767
    #dbg_value(i1 %i.cu, !3041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6583)
  br i1 %i.cu, label %bb.p, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6768, !prof !2205

bb.p:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.ar, !3043, !DIExpression(), !6585)
  %.val142.i.i = load <16 x i8>, ptr %i.ar, align 16, !dbg !6769
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !6587)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6589)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6590)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6591)
  %i.cv = icmp slt <16 x i8> %.val142.i.i, zeroinitializer, !dbg !6770
  %i.cw = bitcast <16 x i1> %i.cv to i16, !dbg !6770 ; 2 uses
    #dbg_value(i16 %i.cw, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !6593)
  %.not.i13.i = icmp ne i16 %i.cw, 0, !dbg !6771
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true), !dbg !6772
  %i.cy = zext nneg i16 %i.cx to i64, !dbg !6772
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6595)
    #dbg_value(i64 %i.cy, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6595)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !6773
    #dbg_value(i64 %i.cy, !3022, !DIExpression(), !6573)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6774

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6571)
    #dbg_value(i64 poison, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6571)
    #dbg_value(ptr undef, !2983, !DIExpression(), !6549)
    #dbg_value(i64 %i.at, !2984, !DIExpression(), !6596)
  %i.da = add i64 %i.cz, 16, !dbg !6775           ; 2 uses
    #dbg_value(i64 %i.da, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6553)
  %i.db = add i64 %i.da, %.sroa.0.010.i, !dbg !6776
    #dbg_value(!DIArgList(i64 %i.db, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6553)
  %.sroa.0.0.i12 = and i64 %i.db, %i.at, !dbg !6756 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12, !2992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6553)
    #dbg_value(i64 %.sroa.0.0.i12, !2997, !DIExpression(), !6552)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12, !dbg !6757
    #dbg_value(ptr %i.dc, !2999, !DIExpression(), !6597)
    #dbg_value(ptr %i.dc, !2070, !DIExpression(), !6598)
    #dbg_value(<2 x i64> zeroinitializer, !2074, !DIExpression(), !6599)
    #dbg_value(ptr %i.dc, !2077, !DIExpression(), !6600)
    #dbg_value(ptr undef, !2080, !DIExpression(), !6600)
    #dbg_value(i64 16, !2081, !DIExpression(), !6600)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !6758, !noalias !6649
    #dbg_value(<2 x i64> poison, !2074, !DIExpression(), !6599)
    #dbg_value(<2 x i64> poison, !2993, !DIExpression(), !6601)
    #dbg_value(ptr poison, !3008, !DIExpression(), !6602)
    #dbg_value(ptr poison, !3009, !DIExpression(), !6602)
    #dbg_value(ptr poison, !3010, !DIExpression(), !6602)
    #dbg_value(<2 x i64> poison, !3001, !DIExpression(), !6603)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6604)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6605)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6606)
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6759
  %i.de = bitcast <16 x i1> %i.dd to i16, !dbg !6759 ; 2 uses
    #dbg_value(i16 %i.de, !3013, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !6564)
  %.not.i.i = icmp eq i16 %i.de, 0, !dbg !6760
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6761, !prof !3062

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3022, !DIExpression(), !6573)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBY_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EBY_:bb.a
    #dbg_value(ptr poison, !2585, !DIExpression(), !6891)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !7229, !noalias !7176
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !7230

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2589, !DIExpression(), !6894)
    #dbg_value(i64 %i.ah, !2673, !DIExpression(), !6918)
    #dbg_value(i64 %i.ah, !2595, !DIExpression(), !6916)
    #dbg_value(ptr %i.am, !2596, !DIExpression(), !6932)
    #dbg_value(ptr %i.am, !2674, !DIExpression(), !6918)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6933)
    #dbg_value(i64 poison, !2726, !DIExpression(), !6935)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !7231 ; 9 uses
    #dbg_value(ptr %i.ar, !2602, !DIExpression(), !6933)
    #dbg_value(ptr %i.ar, !2443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6936)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2443, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6936)
    #dbg_value(i64 poison, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6936)
    #dbg_value(i64 0, !2443, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6936)
    #dbg_value(i64 %i.ai, !2484, !DIExpression(), !6844)
    #dbg_value(i64 %i.ai, !2492, !DIExpression(), !6846)
    #dbg_value(ptr %i.ar, !2474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6937)
    #dbg_value(ptr %i.ar, !2469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6842)
    #dbg_value(i64 %i.ai, !2474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6937)
    #dbg_value(i64 %i.ai, !2469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6842)
    #dbg_value(ptr %i.ar, !2483, !DIExpression(), !6844)
    #dbg_value(ptr %i.ar, !2491, !DIExpression(), !6846)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !7232, !noalias !7176
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !7233
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !7234 ; 6 uses
    #dbg_value(i64 %i.at, !2726, !DIExpression(), !6935)
    #dbg_value(i64 %i.at, !2443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6936)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !7233
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !7233
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !7233 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2726, !DIExpression(), !6935)
    #dbg_value(i64 %.sroa.07.0.i.i, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6936)
    #dbg_value(ptr %i.d, !2283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6938)
    #dbg_value(i64 24, !2283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6938)
    #dbg_value(i64 16, !2283, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6938)
    #dbg_value(ptr %i.ar, !2283, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6938)
    #dbg_value(i64 %i.at, !2283, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6938)
    #dbg_value(i64 %.sroa.07.0.i.i, !2283, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6938)
    #dbg_value(i64 0, !2283, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6938)
  store ptr %i.d, ptr %i.a, align 8, !dbg !7235, !noalias !7174
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7235 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7235 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7235 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !7235 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !7235 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !7235 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7235, !noalias !7174
    #dbg_value(ptr poison, !2397, !DIExpression(), !6939)
    #dbg_value(ptr poison, !2734, !DIExpression(), !6941)
    #dbg_value(<2 x i64> poison, !2742, !DIExpression(), !6944)
    #dbg_value(ptr poison, !2749, !DIExpression(), !6945)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6947)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6948)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6949)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !7236, !alias.scope !7177, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(i64 0, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7178)
    #dbg_value(i64 %i.aw, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7178)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !7178)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6804)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !7237
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !7237

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !7238, !alias.scope !7177, !nonnull !1539, !noundef !1539 ; 2 uses
    #dbg_value(ptr %i.ay, !2397, !DIExpression(), !6939)
    #dbg_value(ptr %i.ay, !2734, !DIExpression(), !6941)
    #dbg_value(ptr %i.ay, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !7239
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6949)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !7178)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !7240
    #dbg_value(<16 x i1> %i.az, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !7241
    #dbg_value(i16 %i.ba, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
  br label %.preheader, !dbg !7237

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !7242
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !7242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7243, !noalias !7174
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7244

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !7243, !noalias !7179
  resume { ptr, i32 } %i.bb, !dbg !7245

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7178)
    #dbg_value(ptr %.sroa.0.038, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(i64 %.sroa.5.037, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7178)
    #dbg_value(i16 %.sroa.13.035, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6951)
    #dbg_value(i16 %.sroa.13.035, !2759, !DIExpression(), !6953)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !7246
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !7247

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(i64 %.sroa.5.131, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7178)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2762, !DIExpression(), !6955)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !7248 ; 3 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(ptr %i.bc, !2765, !DIExpression(), !6957)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !7249
    #dbg_value(<2 x i64> poison, !2772, !DIExpression(), !6960)
    #dbg_value(ptr poison, !2774, !DIExpression(), !6961)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6963)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6964)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6965)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !7250
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !7251 ; 2 uses
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !7252    ; 2 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(i64 %i.bf, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7178)
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6951)
    #dbg_value(i16 %i.be, !2759, !DIExpression(), !6953)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !7246
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !7247

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !7253, !alias.scope !7177
  br label %._crit_edge39, !dbg !7253

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7253 ; 2 uses
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6966)
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6966)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !7254
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7254, !noalias !7174
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7255, !noalias !7174
    #dbg_value(ptr %i.a, !2419, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6967)
    #dbg_value(ptr %0, !2777, !DIExpression(), !6969)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2780, !DIExpression(), !6969)
    #dbg_value(ptr %0, !2782, !DIExpression(), !6971)
    #dbg_value(ptr %0, !2788, !DIExpression(), !6973)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2785, !DIExpression(), !6971)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2792, !DIExpression(), !6973)
    #dbg_value(i64 1, !2786, !DIExpression(), !6971)
    #dbg_value(i64 1, !2793, !DIExpression(), !6973)
    #dbg_value(ptr %0, !2794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6974)
    #dbg_value(i64 1, !2794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6974)
    #dbg_value(i64 32, !2795, !DIExpression(), !6975)
    #dbg_value(i64 32, !2796, !DIExpression(), !6976)
    #dbg_value(ptr %0, !2807, !DIExpression(), !6978)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2810, !DIExpression(), !6978)
    #dbg_value(i64 32, !2811, !DIExpression(), !6978)
    #dbg_value(i64 32, !2812, !DIExpression(), !6979)
    #dbg_value(i64 0, !2814, !DIExpression(), !6980)
    #dbg_value(i64 4, !2813, !DIExpression(), !6981)
    #dbg_value(i64 4, !2815, !DIExpression(), !6982)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !7256, !noalias !7179

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !7257, !noalias !7179
  unreachable, !dbg !7257

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !7180), !dbg !7243
    #dbg_value(ptr %i.a, !2820, !DIExpression(), !6986)
  call void @llvm.experimental.noalias.scope.decl(metadata !7181), !dbg !7258, !noalias !7179
    #dbg_value(ptr %i.a, !2826, !DIExpression(), !6990)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7259, !alias.scope !7182, !noalias !7179 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7259, !alias.scope !7182, !noalias !7179 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7259, !alias.scope !7182, !noalias !7179, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !6992)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !6992)
    #dbg_value(ptr poison, !2833, !DIExpression(), !6992)
    #dbg_value(ptr poison, !2837, !DIExpression(), !6994)
    #dbg_value(ptr poison, !2842, !DIExpression(), !6996)
    #dbg_value(ptr poison, !2851, !DIExpression(), !6998)
    #dbg_value(ptr poison, !2863, !DIExpression(), !7000)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !7260
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7261

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !7179
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7259, !alias.scope !7182, !noalias !7179
    #dbg_value(ptr poison, !2846, !DIExpression(), !6996)
    #dbg_value(i64 %.val.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6996)
    #dbg_value(i64 %.val.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6998)
    #dbg_value(i64 %.val1.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6996)
    #dbg_value(i64 %.val1.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6998)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !7262
    #dbg_value(i64 %.val.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7002)
    #dbg_value(i64 %.val1.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7002)
    #dbg_value(i64 %i.bk, !2646, !DIExpression(), !7002)
    #dbg_value(i64 %i.bk, !2658, !DIExpression(), !7004)
    #dbg_value(i64 %i.bk, !2663, !DIExpression(), !7006)
    #dbg_value(i64 %.val.i.i, !2647, !DIExpression(), !7007)
    #dbg_value(i64 %.val.i.i, !2659, !DIExpression(), !7004)
    #dbg_value(i64 %.val.i.i, !2664, !DIExpression(), !7006)
    #dbg_value(i64 %.val1.i.i, !2648, !DIExpression(), !7007)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !7263 ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7009)
    #dbg_value(i64 %i.bl, !2668, !DIExpression(), !7011)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !7264
    #dbg_value(i64 %i.bm, !2669, !DIExpression(), !7011)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !7265        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !7265
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7013)
  call void @llvm.assume(i1 %i.bo), !dbg !7266, !noalias !7179
  %i.bp = sub i64 0, %.val1.i.i, !dbg !7267
  %i.bq = and i64 %i.bn, %i.bp, !dbg !7268        ; 3 uses
    #dbg_value(i64 %i.bq, !2649, !DIExpression(), !7014)
    #dbg_value(i64 %i.bq, !2668, !DIExpression(), !7016)
  %i.br = add i64 %.val3.i.i, 17, !dbg !7269
    #dbg_value(i64 %i.br, !2669, !DIExpression(), !7016)
  %i.bs = add i64 %i.br, %i.bq, !dbg !7270        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !7270
    #dbg_value(i1 %i.bt, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7018)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !7271, !noalias !7179
  call void @llvm.assume(i1 %i.bv), !dbg !7271, !noalias !7179
    #dbg_value(i64 %.val1.i.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7020)
    #dbg_value(i64 %.val1.i.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7021)
    #dbg_value(i64 %i.bs, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7020)
    #dbg_value(i64 %i.bs, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7021)
    #dbg_value(i64 %i.bq, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7020)
    #dbg_value(i64 %i.bq, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7021)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !7272
  call void @llvm.assume(i1 %i.bw), !dbg !7273, !noalias !7179
    #dbg_value(i64 %.val1.i.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7022)
    #dbg_value(i64 %.val1.i.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7023)
    #dbg_value(i64 %i.bs, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7022)
    #dbg_value(i64 %i.bs, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7023)
    #dbg_value(i64 %i.bq, !2860, !DIExpression(), !7023)
    #dbg_value(i64 %i.bq, !2875, !DIExpression(), !7025)
    #dbg_value(ptr %.val2.i.i, !2876, !DIExpression(), !7025)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7022)
    #dbg_value(ptr poison, !2879, !DIExpression(), !7027)
    #dbg_value(ptr poison, !2885, !DIExpression(), !7029)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7027)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7029)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7031)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7033)
    #dbg_value(i64 %.val1.i.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7027)
    #dbg_value(i64 %.val1.i.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7029)
    #dbg_value(i64 %.val1.i.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7031)
    #dbg_value(i64 %.val1.i.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7033)
    #dbg_value(i64 %i.bs, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7027)
    #dbg_value(i64 %i.bs, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7029)
    #dbg_value(i64 %i.bs, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7031)
    #dbg_value(i64 %i.bs, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7033)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !7274
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !7274

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !7275
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7033)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7031)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7029)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7027)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7022)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !7276
    #dbg_value(ptr %i.bz, !2848, !DIExpression(), !7022)
    #dbg_value(ptr %i.bz, !2882, !DIExpression(), !7027)
    #dbg_value(ptr %i.bz, !2888, !DIExpression(), !7029)
    #dbg_value(ptr %i.bz, !2891, !DIExpression(), !7031)
    #dbg_value(ptr %i.bz, !2897, !DIExpression(), !7033)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !7277, !noalias !7183
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7278

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7243, !noalias !7174
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7244

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !7279 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !7279 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !7279
    #dbg_value(i16 %.sroa.13.1.lcssa, !2760, !DIExpression(), !7034)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2900, !DIExpression(), !7036)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2903, !DIExpression(), !7038)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2905, !DIExpression(), !7040)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !7280
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7281
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !7282
    #dbg_value(i64 %i.cc, !2755, !DIExpression(), !7041)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2908, !DIExpression(), !7043)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !7283
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
    #dbg_value(i64 %i.cc, !2339, !DIExpression(), !7044)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !7284 ; 2 uses
    #dbg_value(i64 1, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6966)
    #dbg_value(i64 %i.ce, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6966)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !7285    ; 2 uses
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7178)
    #dbg_value(i64 %i.ce, !2284, !DIExpression(), !7045)
    #dbg_value(i64 %i.ce, !2407, !DIExpression(), !6830)
  call void @llvm.experimental.noalias.scope.decl(metadata !7184), !dbg !7286
    #dbg_value(ptr poison, !3073, !DIExpression(DW_OP_deref, DW_OP_deref), !7049)
    #dbg_value(ptr %0, !3077, !DIExpression(), !7049)
    #dbg_value(ptr %0, !3080, !DIExpression(), !7051)
    #dbg_value(ptr %0, !3096, !DIExpression(), !7053)
    #dbg_value(i64 %i.ce, !3078, !DIExpression(), !7049)
    #dbg_value(i64 %i.ce, !3089, !DIExpression(), !7051)
    #dbg_value(i64 %i.ce, !3101, !DIExpression(), !7055)
    #dbg_value(i64 %i.ce, !3109, !DIExpression(), !7057)
    #dbg_value(i64 1, !3113, !DIExpression(), !7061)
  %i.cg = load ptr, ptr %0, align 8, !dbg !7287, !alias.scope !7184, !noalias !7179, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.cg, !3105, !DIExpression(), !7055)
    #dbg_value(ptr %i.cg, !3112, !DIExpression(), !7057)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !7288
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !7289
    #dbg_value(ptr poison, !3125, !DIExpression(), !7062)
    #dbg_value(ptr poison, !3119, !DIExpression(), !7063)
    #dbg_value(ptr %i.ci, !3112, !DIExpression(), !7061)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !7290
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !7291, !noalias !7185, !nonnull !1539, !align !2946, !noundef !1539
    #dbg_value(ptr poison, !3127, !DIExpression(DW_OP_deref), !7066)
    #dbg_value(ptr %i.cj, !3130, !DIExpression(), !7066)
    #dbg_value(ptr %.val.i, !3135, !DIExpression(), !7068)
    #dbg_value(ptr %i.cj, !3138, !DIExpression(), !7068)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit unwind label %bb.m, !dbg !7292 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !2285, !DIExpression(), !7069)
    #dbg_value(i64 %i.ck, !2960, !DIExpression(), !7071)
    #dbg_value(i64 %i.ck, !2971, !DIExpression(), !7073)
    #dbg_value(ptr %i.a, !2967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7074)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7076)
    #dbg_value(ptr %i.a, !2975, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7077)
    #dbg_value(ptr %i.a, !2978, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7079)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7081)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7083)
    #dbg_value(ptr poison, !2983, !DIExpression(), !7086)
    #dbg_value(ptr poison, !2990, !DIExpression(), !7087)
    #dbg_value(ptr poison, !2996, !DIExpression(), !7089)
    #dbg_value(i64 %i.ck, !2991, !DIExpression(), !7087)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7090)
    #dbg_value(i64 0, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7090)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !7293 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !7294
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !7295, !noalias !7186
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7296
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !7296 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !7297
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7298, !prof !3016

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !7293
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %i.de, %.lr.ph.i ], !dbg !7296
    #dbg_value(i16 %.lcssa.i, !3013, !DIExpression(), !7101)
    #dbg_value(i16 %.lcssa.i, !3014, !DIExpression(), !7102)
    #dbg_value(i16 %.lcssa.i, !3017, !DIExpression(), !7104)
    #dbg_value(i16 %.lcssa.i, !3020, !DIExpression(), !7106)
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7299
  %i.cp = zext nneg i16 %i.co to i64, !dbg !7300
    #dbg_value(i64 %i.cp, !3011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7107)
    #dbg_value(i64 1, !3011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7107)
  %i.cq = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cp, !dbg !7301
  %i.cr = and i64 %i.cq, %i.at, !dbg !7301        ; 2 uses
    #dbg_value(i64 1, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7108)
    #dbg_value(i64 %i.cr, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7108)
    #dbg_value(i64 %i.cr, !3022, !DIExpression(), !7110)
    #dbg_value(ptr poison, !3027, !DIExpression(), !7110)
    #dbg_value(ptr poison, !3029, !DIExpression(), !7112)
    #dbg_value(ptr poison, !3035, !DIExpression(), !7114)
    #dbg_value(ptr poison, !3035, !DIExpression(), !7116)
    #dbg_value(i64 0, !3036, !DIExpression(), !7116)
    #dbg_value(i64 %i.cr, !3033, !DIExpression(), !7112)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr, !dbg !7302
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !7303, !noundef !1539
  %i.cu = icmp sgt i8 %i.ct, -1, !dbg !7304
    #dbg_value(i1 %i.cu, !3041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7120)
  br i1 %i.cu, label %bb.p, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7305, !prof !2205

bb.p:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.ar, !3043, !DIExpression(), !7122)
  %.val142.i.i = load <16 x i8>, ptr %i.ar, align 16, !dbg !7306
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !7124)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !7126)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !7127)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !7128)
  %i.cv = icmp slt <16 x i8> %.val142.i.i, zeroinitializer, !dbg !7307
  %i.cw = bitcast <16 x i1> %i.cv to i16, !dbg !7307 ; 2 uses
    #dbg_value(i16 %i.cw, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !7130)
  %.not.i13.i = icmp ne i16 %i.cw, 0, !dbg !7308
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true), !dbg !7309
  %i.cy = zext nneg i16 %i.cx to i64, !dbg !7309
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7132)
    #dbg_value(i64 %i.cy, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7132)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !7310
    #dbg_value(i64 %i.cy, !3022, !DIExpression(), !7110)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7311

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ]
    #dbg_value(i64 0, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7108)
    #dbg_value(i64 poison, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7108)
    #dbg_value(ptr undef, !2983, !DIExpression(), !7086)
    #dbg_value(i64 %i.at, !2984, !DIExpression(), !7133)
  %i.da = add i64 %i.cz, 16, !dbg !7312           ; 2 uses
    #dbg_value(i64 %i.da, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7090)
  %i.db = add i64 %i.da, %.sroa.0.010.i, !dbg !7313
    #dbg_value(!DIArgList(i64 %i.db, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7090)
  %.sroa.0.0.i12 = and i64 %i.db, %i.at, !dbg !7293 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12, !2992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7090)
    #dbg_value(i64 %.sroa.0.0.i12, !2997, !DIExpression(), !7089)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12, !dbg !7294
    #dbg_value(ptr %i.dc, !2999, !DIExpression(), !7134)
    #dbg_value(ptr %i.dc, !2070, !DIExpression(), !7135)
    #dbg_value(<2 x i64> zeroinitializer, !2074, !DIExpression(), !7136)
    #dbg_value(ptr %i.dc, !2077, !DIExpression(), !7137)
    #dbg_value(ptr undef, !2080, !DIExpression(), !7137)
    #dbg_value(i64 16, !2081, !DIExpression(), !7137)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !7295, !noalias !7186
    #dbg_value(<2 x i64> poison, !2074, !DIExpression(), !7136)
    #dbg_value(<2 x i64> poison, !2993, !DIExpression(), !7138)
    #dbg_value(ptr poison, !3008, !DIExpression(), !7139)
    #dbg_value(ptr poison, !3009, !DIExpression(), !7139)
    #dbg_value(ptr poison, !3010, !DIExpression(), !7139)
    #dbg_value(<2 x i64> poison, !3001, !DIExpression(), !7140)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !7141)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !7142)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !7143)
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7296
  %i.de = bitcast <16 x i1> %i.dd to i16, !dbg !7296 ; 2 uses
    #dbg_value(i16 %i.de, !3013, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !7101)
  %.not.i.i = icmp eq i16 %i.de, 0, !dbg !7297
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7298, !prof !3062

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3022, !DIExpression(), !7110)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2286, !DIExpression(), !7144)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2968, !DIExpression(), !7145)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2401, !DIExpression(), !7146)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2976, !DIExpression(), !7073)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2407, !DIExpression(), !7148)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12.i, !dbg !7314
    #dbg_value(i8 poison, !2969, !DIExpression(), !7150)
  %i.dg = lshr i64 %i.ck, 57, !dbg !7315
  %i.dh = trunc nuw nsw i64 %i.dg to i8, !dbg !7316 ; 2 uses
  %i.di = add nsw i64 %.sroa.0.0.i12.i, -16, !dbg !7317
  %i.dj = and i64 %i.di, %i.at, !dbg !7318
  store i8 %i.dh, ptr %i.df, align 1, !dbg !7319, !noalias !7179
  %i.dk = getelementptr i8, ptr %i.ar, i64 %i.dj, !dbg !7320
  %i.dl = getelementptr i8, ptr %i.dk, i64 16, !dbg !7320
  store i8 %i.dh, ptr %i.dl, align 1, !dbg !7321, !noalias !7179
    #dbg_value(i64 24, !2408, !DIExpression(), !6830)
    #dbg_value(i64 24, !2408, !DIExpression(), !7148)
    #dbg_value(i64 24, !3065, !DIExpression(), !7155)
  %i.dm = load ptr, ptr %0, align 8, !dbg !7322, !alias.scope !7177, !nonnull !1539, !noundef !1539
  %.neg.i.i = mul i64 %i.ce, -24, !dbg !7323
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.neg.i.i, !dbg !7324
  %i.do = getelementptr i8, ptr %i.dn, i64 -24, !dbg !7324
    #dbg_value(ptr %i.do, !3066, !DIExpression(), !7155)
    #dbg_value(ptr %i.a, !2403, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7157)
    #dbg_value(ptr %i.a, !2410, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7159)
  %.neg96.i.i = mul i64 %.sroa.0.0.i12.i, -24, !dbg !7325
  %i.dp = getelementptr i8, ptr %i.ar, i64 %.neg96.i.i, !dbg !7326
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24, !dbg !7326
    #dbg_value(ptr %i.dq, !3067, !DIExpression(), !7155)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 1 dereferenceable(24) %i.do, i64 24, i1 false), !dbg !7327, !noalias !7179
    #dbg_value(ptr %.sroa.0.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7178)
    #dbg_value(i64 %.sroa.5.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7178)
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7178)
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7178)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6804)
  %i.dr = icmp eq i64 %i.cf, 0, !dbg !7237
  br i1 %i.dr, label %._crit_edge39.loopexit, label %.preheader, !dbg !7237

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B21_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceB13_) #26, !dbg !7328
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7329

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.026, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7330
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.027, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7330
  %i.ds = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !7331
  %i.dt = insertvalue { i64, i64 } %i.ds, i64 %.sroa.4.0.i, 1, !dbg !7331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7332
  ret { i64, i64 } %i.dt, !dbg !7333
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !384 {
bb.a:
    #dbg_value(ptr %0, !2820, !DIExpression(), !7381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7382), !dbg !7383
    #dbg_value(ptr %0, !2826, !DIExpression(), !7337)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7385
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7385, !alias.scope !7382 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !7385, !alias.scope !7382 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7385
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !7385, !alias.scope !7382, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !7339)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !7339)
    #dbg_value(ptr poison, !2833, !DIExpression(), !7339)
    #dbg_value(ptr poison, !2837, !DIExpression(), !7341)
    #dbg_value(ptr poison, !2842, !DIExpression(), !7343)
    #dbg_value(ptr poison, !2851, !DIExpression(), !7345)
    #dbg_value(ptr poison, !2863, !DIExpression(), !7347)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !7386
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !7387

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7385
  %.val.i = load i64, ptr %i.e, align 8, !dbg !7385, !alias.scope !7382
    #dbg_value(ptr poison, !2846, !DIExpression(), !7343)
    #dbg_value(i64 %.val.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7343)
    #dbg_value(i64 %.val.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7345)
    #dbg_value(i64 %.val1.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7343)
    #dbg_value(i64 %.val1.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7345)
  %i.f = add i64 %.val3.i, 1, !dbg !7388
    #dbg_value(i64 %.val.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7349)
    #dbg_value(i64 %.val1.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7349)
    #dbg_value(i64 %i.f, !2646, !DIExpression(), !7349)
    #dbg_value(i64 %i.f, !2658, !DIExpression(), !7351)
    #dbg_value(i64 %i.f, !2663, !DIExpression(), !7353)
    #dbg_value(i64 %.val.i, !2647, !DIExpression(), !7354)
    #dbg_value(i64 %.val.i, !2659, !DIExpression(), !7351)
    #dbg_value(i64 %.val.i, !2664, !DIExpression(), !7353)
    #dbg_value(i64 %.val1.i, !2648, !DIExpression(), !7354)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !7389    ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7356)
    #dbg_value(i64 %i.g, !2668, !DIExpression(), !7358)
  %i.h = add i64 %.val1.i, -1, !dbg !7390
    #dbg_value(i64 %i.h, !2669, !DIExpression(), !7358)
  %i.i = add i64 %i.h, %i.g, !dbg !7391           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !7391
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7360)
  tail call void @llvm.assume(i1 %i.j), !dbg !7392
  %i.k = sub i64 0, %.val1.i, !dbg !7393
  %i.l = and i64 %i.i, %i.k, !dbg !7394           ; 3 uses
    #dbg_value(i64 %i.l, !2649, !DIExpression(), !7361)
    #dbg_value(i64 %i.l, !2668, !DIExpression(), !7363)
  %i.m = add i64 %.val3.i, 17, !dbg !7395
    #dbg_value(i64 %i.m, !2669, !DIExpression(), !7363)
  %i.n = add i64 %i.m, %i.l, !dbg !7396           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !7396
    #dbg_value(i1 %i.o, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7365)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !7397
  tail call void @llvm.assume(i1 %i.q), !dbg !7397
    #dbg_value(i64 %.val1.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7367)
    #dbg_value(i64 %.val1.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7368)
    #dbg_value(i64 %i.n, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7367)
    #dbg_value(i64 %i.n, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7368)
    #dbg_value(i64 %i.l, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7367)
    #dbg_value(i64 %i.l, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7368)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !7398
  tail call void @llvm.assume(i1 %i.r), !dbg !7399
    #dbg_value(i64 %.val1.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7369)
    #dbg_value(i64 %.val1.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7370)
    #dbg_value(i64 %i.n, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7369)
    #dbg_value(i64 %i.n, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7370)
    #dbg_value(i64 %i.l, !2860, !DIExpression(), !7370)
    #dbg_value(i64 %i.l, !2875, !DIExpression(), !7372)
    #dbg_value(ptr %.val2.i, !2876, !DIExpression(), !7372)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7369)
    #dbg_value(ptr poison, !2879, !DIExpression(), !7374)
    #dbg_value(ptr poison, !2885, !DIExpression(), !7376)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7374)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7376)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7378)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7380)
    #dbg_value(i64 %.val1.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7374)
    #dbg_value(i64 %.val1.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7376)
    #dbg_value(i64 %.val1.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7378)
    #dbg_value(i64 %.val1.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7380)
    #dbg_value(i64 %i.n, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7374)
    #dbg_value(i64 %i.n, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7376)
    #dbg_value(i64 %i.n, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7378)
    #dbg_value(i64 %i.n, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7380)
  %i.s = icmp eq i64 %i.n, 0, !dbg !7400
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %bb.b, !dbg !7400

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !7401
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7380)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7378)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7376)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7374)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7369)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !7402
    #dbg_value(ptr %i.u, !2848, !DIExpression(), !7369)
    #dbg_value(ptr %i.u, !2882, !DIExpression(), !7374)
    #dbg_value(ptr %i.u, !2888, !DIExpression(), !7376)
    #dbg_value(ptr %i.u, !2891, !DIExpression(), !7378)
    #dbg_value(ptr %i.u, !2897, !DIExpression(), !7380)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !dbg !7403, !noalias !7382
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7404

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !7383
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 !dbg !7405 {
bb.a:
    #dbg_value(ptr %0, !7474, !DIExpression(), !7478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7479), !dbg !7531
    #dbg_value(ptr %0, !7480, !DIExpression(), !7410)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7532
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !7532, !alias.scope !7479
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7532
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7532, !alias.scope !7479
  %.val2.i = load ptr, ptr %0, align 8, !dbg !7532, !alias.scope !7479, !nonnull !1539, !align !2946, !noundef !1539 ; 10 uses
    #dbg_value(ptr poison, !7482, !DIExpression(), !7423)
    #dbg_value(ptr poison, !7485, !DIExpression(), !7424)
    #dbg_value(ptr poison, !7488, !DIExpression(), !7425)
    #dbg_value(ptr poison, !7496, !DIExpression(DW_OP_deref), !7426)
    #dbg_value(ptr poison, !7497, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7426)
    #dbg_value(ptr poison, !7495, !DIExpression(), !7426)
    #dbg_value(i64 1, !7503, !DIExpression(), !7429)
    #dbg_value(i64 1, !7506, !DIExpression(), !7432)
    #dbg_value(ptr poison, !7509, !DIExpression(), !7435)
    #dbg_value(i8 -1, !7512, !DIExpression(), !7438)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !7516, !DIExpression(), !7441)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !7533 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !7533, !noalias !7479, !noundef !1539 ; 3 uses
    #dbg_value(i64 0, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7442)
    #dbg_value(i64 %i.d, !7498, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7442)
    #dbg_value(ptr undef, !7488, !DIExpression(), !7425)
    #dbg_value(ptr undef, !7485, !DIExpression(), !7424)
    #dbg_value(ptr undef, !7482, !DIExpression(), !7423)
    #dbg_value(ptr undef, !7483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7443)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !7534
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i, !dbg !7535

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !dbg !7536, !noalias !7479
  br label %.lr.ph.split.us.i.i, !dbg !7537

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %i.f = phi ptr [ %i.s, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ], !dbg !7536 ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7486, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7504, !DIExpression(), !7429)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7507, !DIExpression(), !7432)
  %i.g = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !7538
    #dbg_value(i64 %i.g, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7442)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7499, !DIExpression(), !7447)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7520, !DIExpression(), !7448)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7514, !DIExpression(), !7438)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7522, !DIExpression(), !7451)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7448)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.03.us.i.i, !dbg !7539 ; 2 uses
    #dbg_value(ptr %i.h, !7510, !DIExpression(), !7435)
  %i.i = load i8, ptr %i.h, align 1, !dbg !7540, !noalias !7479, !noundef !1539
  %i.j = icmp eq i8 %i.i, -128, !dbg !7540
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !7537

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !7513, !DIExpression(), !7438)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7455)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7457)
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !7541
  %i.l = load i64, ptr %i.c, align 8, !dbg !7542, !noalias !7479, !noundef !1539
  %i.m = and i64 %i.l, %i.k, !dbg !7543
  store i8 -1, ptr %i.h, align 1, !dbg !7544, !noalias !7479
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7479, !nonnull !1539, !noundef !1539
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !7546
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !7546
  store i8 -1, ptr %i.p, align 1, !dbg !7547, !noalias !7479
  %i.q = load i64, ptr %i.e, align 8, !dbg !7548, !noalias !7479, !noundef !1539
  %i.r = add i64 %i.q, -1, !dbg !7548
  store i64 %i.r, ptr %i.e, align 8, !dbg !7548, !noalias !7479
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !dbg !7536, !noalias !7479
  br label %bb.c, !dbg !7549

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %i.s = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %.lr.ph.split.us.i.i ]
    #dbg_value(i64 %i.g, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7442)
    #dbg_value(ptr undef, !7488, !DIExpression(), !7425)
    #dbg_value(ptr undef, !7485, !DIExpression(), !7424)
    #dbg_value(ptr undef, !7482, !DIExpression(), !7423)
    #dbg_value(ptr undef, !7483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7443)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !7534
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.us.i.i, !dbg !7535

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.t, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !7486, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.i.i, !7504, !DIExpression(), !7429)
    #dbg_value(i64 %.sroa.0.03.i.i, !7507, !DIExpression(), !7432)
  %i.t = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !7538
    #dbg_value(i64 %i.t, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7442)
    #dbg_value(i64 %.sroa.0.03.i.i, !7499, !DIExpression(), !7447)
    #dbg_value(i64 %.sroa.0.03.i.i, !7520, !DIExpression(), !7448)
    #dbg_value(i64 %.sroa.0.03.i.i, !7514, !DIExpression(), !7438)
    #dbg_value(i64 %.sroa.0.03.i.i, !7522, !DIExpression(), !7451)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7448)
  %i.u = load ptr, ptr %.val2.i, align 8, !dbg !7536, !noalias !7479, !nonnull !1539, !noundef !1539
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.03.i.i, !dbg !7539 ; 2 uses
    #dbg_value(ptr %i.v, !7510, !DIExpression(), !7435)
  %i.w = load i8, ptr %i.v, align 1, !dbg !7540, !noalias !7479, !noundef !1539
  %i.x = icmp eq i8 %i.w, -128, !dbg !7540
  br i1 %i.x, label %bb.e, label %bb.d, !dbg !7537

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.t, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7442)
    #dbg_value(ptr undef, !7488, !DIExpression(), !7425)
    #dbg_value(ptr undef, !7485, !DIExpression(), !7424)
    #dbg_value(ptr undef, !7482, !DIExpression(), !7423)
    #dbg_value(ptr undef, !7483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7443)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !7534
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.i.i, !dbg !7535

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !7538
    #dbg_value(ptr %.val2.i, !7513, !DIExpression(), !7438)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7455)
    #dbg_value(ptr %.val2.i, !7519, !DIExpression(), !7457)
  %i.y = add i64 %.sroa.0.03.i.i, -16, !dbg !7541
  %i.z = load i64, ptr %i.c, align 8, !dbg !7542, !noalias !7479, !noundef !1539
  %i.aa = and i64 %i.z, %i.y, !dbg !7543
  store i8 -1, ptr %i.v, align 1, !dbg !7544, !noalias !7479
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7479, !nonnull !1539, !noundef !1539
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa, !dbg !7546
  %i.ad = getelementptr i8, ptr %i.ac, i64 16, !dbg !7546
  store i8 -1, ptr %i.ad, align 1, !dbg !7547, !noalias !7479
    #dbg_value(ptr %.val.i, !7500, !DIExpression(), !7461)
    #dbg_value(ptr %.val2.i, !7523, !DIExpression(), !7451)
    #dbg_value(ptr %.val2.i, !7527, !DIExpression(), !7464)
    #dbg_value(i64 %.val1.i, !7524, !DIExpression(), !7451)
  %i.ae = load ptr, ptr %.val2.i, align 8, !dbg !7550, !noalias !7479, !nonnull !1539, !noundef !1539
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !7551
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.neg22.i.i, !dbg !7552
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.af), !dbg !7553, !noalias !7479, !inline_history !7467
  %i.ag = load i64, ptr %i.e, align 8, !dbg !7548, !noalias !7479, !noundef !1539
  %i.ah = add i64 %i.ag, -1, !dbg !7548
  store i64 %i.ah, ptr %i.e, align 8, !dbg !7548, !noalias !7479
  br label %bb.d, !dbg !7549

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ai = load i64, ptr %i.c, align 8, !dbg !7554, !noalias !7479, !noundef !1539 ; 3 uses
    #dbg_value(i64 %i.ai, !7529, !DIExpression(), !7470)
  %i.aj = icmp ult i64 %i.ai, 8, !dbg !7555
  %i.ak = add i64 %i.ai, 1, !dbg !7555
  %i.al = lshr i64 %i.ak, 3, !dbg !7555
  %i.am = mul nuw i64 %i.al, 7, !dbg !7555
  %.sroa.04.0.i.i = select i1 %i.aj, i64 %i.ai, i64 %i.am, !dbg !7555
    #dbg_value(i64 %.sroa.04.0.i.i, !7529, !DIExpression(), !7470)
  %i.an = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !7556
  %i.ao = load i64, ptr %i.an, align 8, !dbg !7556, !noalias !7479, !noundef !1539
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !7557
  %i.aq = sub i64 %.sroa.04.0.i.i, %i.ao, !dbg !7557
  store i64 %i.aq, ptr %i.ap, align 8, !dbg !7557, !noalias !7479
  ret void, !dbg !7531
}

end_hunk_1
begin_hunk_2_@_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBV_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertBV_:bb.a
    #dbg_value(i64 0, !3036, !DIExpression(), !10593)
    #dbg_value(i64 %.sroa.4.121.i.i, !3033, !DIExpression(), !10589)
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !10950
  %i.ao = load i8, ptr %i.an, align 1, !dbg !10951, !noundef !1539
  %i.ap = icmp sgt i8 %i.ao, -1, !dbg !10952
    #dbg_value(i1 %i.ap, !3041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10597)
  br i1 %i.ap, label %bb.i, label %bb.l, !dbg !10953, !prof !2205

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %.val.i, !3043, !DIExpression(), !10599)
  %.val142.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !10954
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !10601)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !10603)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !10604)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10605)
  %i.aq = icmp slt <16 x i8> %.val142.i.i.i, zeroinitializer, !dbg !10955
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !10955 ; 2 uses
    #dbg_value(i16 %i.ar, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10607)
  %.not.i46.i.i = icmp ne i16 %i.ar, 0, !dbg !10956
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !10957
  %i.at = zext nneg i16 %i.as to i64, !dbg !10957
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10609)
    #dbg_value(i64 %i.at, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10609)
  call void @llvm.assume(i1 %.not.i46.i.i), !dbg !10958
    #dbg_value(i64 %i.at, !3022, !DIExpression(), !10587)
  br label %bb.l, !dbg !10959

bb.j:                                             ; preds = %.noexc24
  %i.au = load ptr, ptr %0, align 8, !dbg !10960, !alias.scope !10786, !nonnull !1539
  %i.av = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.w, !dbg !10960
    #dbg_value(ptr %i.av, !10730, !DIExpression(), !10831)
    #dbg_value(ptr %i.av, !10833, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !10839)
    #dbg_value(i32 %3, !10836, !DIExpression(), !10840)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8, !dbg !10961 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !10961, !noundef !1539 ; 2 uses
  store i32 %3, ptr %i.aw, align 8, !dbg !10962
  call void @llvm.experimental.noalias.scope.decl(metadata !10841), !dbg !10963
    #dbg_value(ptr %i.a, !4372, !DIExpression(), !10614)
  call void @llvm.experimental.noalias.scope.decl(metadata !10842), !dbg !10964
    #dbg_value(ptr %i.a, !4379, !DIExpression(), !10618)
  call void @llvm.experimental.noalias.scope.decl(metadata !10843), !dbg !10965
    #dbg_value(ptr %i.a, !4385, !DIExpression(), !10622)
    #dbg_value(ptr %i.a, !4387, !DIExpression(), !10624)
    #dbg_value(i64 1, !4396, !DIExpression(), !10626)
    #dbg_value(i8 1, !4398, !DIExpression(), !10626)
    #dbg_value(i64 1, !4400, !DIExpression(), !10628)
    #dbg_value(i8 1, !4402, !DIExpression(), !10628)
  %i.ay = load ptr, ptr %i.a, align 8, !dbg !10966, !alias.scope !10844, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.ay, !4397, !DIExpression(), !10630)
    #dbg_value(ptr %i.ay, !4401, !DIExpression(), !10628)
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !dbg !10967, !noalias !10844
  %i.ba = icmp eq i64 %i.az, 1, !dbg !10968
  br i1 %i.ba, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10968

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !4350, !DIExpression(), !10632)
  fence acquire, !dbg !10969
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27, !dbg !10970
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10970

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit: ; preds = %bb.k, %bb.j, %bb.l
  %.sroa.3.0 = phi i32 [ undef, %bb.l ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ]
  %.sroa.0.0 = phi i32 [ 0, %bb.l ], [ 1, %bb.j ], [ 1, %bb.k ], !dbg !10752
  %i.bb = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !10971
  %i.bc = insertvalue { i32, i32 } %i.bb, i32 %.sroa.3.0, 1, !dbg !10971
  ret { i32, i32 } %i.bc, !dbg !10971

bb.l:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.at, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10731, !DIExpression(), !10845)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10746, !DIExpression(), !10750)
    #dbg_value(ptr %0, !10745, !DIExpression(), !10750)
  %i.bd = load ptr, ptr %i.a, align 8, !dbg !10972, !nonnull !1539, !noundef !1539
  %i.be = load i64, ptr %i.b, align 8, !dbg !10972, !noundef !1539
    #dbg_value(ptr %i.bd, !10747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10750)
    #dbg_value(ptr %i.bd, !10846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10856)
    #dbg_value(ptr %i.bd, !10857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10863)
    #dbg_value(ptr %i.bd, !10864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10869)
    #dbg_value(i64 %i.be, !10747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10750)
    #dbg_value(i64 %i.be, !10846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10856)
    #dbg_value(i64 %i.be, !10857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10863)
    #dbg_value(i64 %i.be, !10864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10869)
    #dbg_value(i32 %3, !10747, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10750)
    #dbg_value(i32 %3, !10846, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10856)
    #dbg_value(i32 %3, !10857, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10863)
    #dbg_value(i32 %3, !10864, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10869)
  call void @llvm.experimental.noalias.scope.decl(metadata !10870), !dbg !10973
    #dbg_value(ptr %0, !10850, !DIExpression(), !10643)
    #dbg_value(ptr %0, !10871, !DIExpression(), !10648)
    #dbg_value(i8 %i.k, !10851, !DIExpression(), !10643)
    #dbg_value(i8 %i.k, !10879, !DIExpression(), !10651)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10852, !DIExpression(), !10643)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10884, !DIExpression(), !10654)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10881, !DIExpression(), !10651)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10872, !DIExpression(), !10648)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10887, !DIExpression(), !10658)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10891, !DIExpression(), !10661)
    #dbg_value(i64 1, !10893, !DIExpression(), !10665)
    #dbg_value(ptr %0, !10885, !DIExpression(), !10666)
  %i.bf = load ptr, ptr %0, align 8, !dbg !10974, !alias.scope !10870, !nonnull !1539, !noundef !1539 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.3.0.i.ph.i, !dbg !10975 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !10976, !noalias !10897, !noundef !1539
    #dbg_value(i8 %i.bh, !10853, !DIExpression(), !10670)
    #dbg_value(i8 %i.bh, !10882, !DIExpression(), !10651)
    #dbg_value(ptr %0, !10880, !DIExpression(), !10671)
    #dbg_value(ptr %0, !10898, !DIExpression(), !10674)
    #dbg_value(ptr %0, !10885, !DIExpression(), !10676)
    #dbg_value(ptr %0, !10885, !DIExpression(), !10678)
  %i.bi = and i8 %i.bh, 1, !dbg !10977
  %i.bj = zext nneg i8 %i.bi to i64, !dbg !10977
  %i.bk = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !10978
  %i.bl = load i64, ptr %i.i, align 8, !dbg !10979, !alias.scope !10870, !noundef !1539
  %i.bm = and i64 %i.bl, %i.bk, !dbg !10980
  store i8 %i.k, ptr %i.bg, align 1, !dbg !10981, !noalias !10897
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm, !dbg !10982
  %i.bo = getelementptr i8, ptr %i.bn, i64 16, !dbg !10982
  store i8 %i.k, ptr %i.bo, align 1, !dbg !10983, !noalias !10897
  %i.bp = load <2 x i64>, ptr %i.e, align 8, !dbg !10984, !alias.scope !10870
  %i.bq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bj, i64 0, !dbg !10984
  %i.br = sub <2 x i64> %i.bp, %i.bq, !dbg !10984
  store <2 x i64> %i.br, ptr %i.e, align 8, !dbg !10984, !alias.scope !10870
    #dbg_value(ptr %i.bf, !10888, !DIExpression(), !10658)
    #dbg_value(ptr %i.bf, !10892, !DIExpression(), !10661)
  %i.bs = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !10985
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bs, !dbg !10986 ; 3 uses
    #dbg_value(ptr %i.bt, !10854, !DIExpression(), !10684)
    #dbg_value(ptr poison, !10861, !DIExpression(), !10685)
    #dbg_value(ptr poison, !10895, !DIExpression(), !10686)
    #dbg_value(ptr %i.bt, !10892, !DIExpression(), !10665)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24, !dbg !10987
    #dbg_value(ptr %i.bu, !10867, !DIExpression(), !10687)
    #dbg_value(ptr %i.bu, !10901, !DIExpression(), !10690)
  store ptr %i.bd, ptr %i.bu, align 8, !dbg !10988, !noalias !10870
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bt, i64 -16, !dbg !10988
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10988, !noalias !10870
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bt, i64 -8, !dbg !10988
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10988, !noalias !10870
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10963

.noexc25:                                         ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp39, !dbg !10989

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.c
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10903), !dbg !10963
    #dbg_value(ptr %i.a, !4372, !DIExpression(), !10694)
  call void @llvm.experimental.noalias.scope.decl(metadata !10904), !dbg !10990
    #dbg_value(ptr %i.a, !4379, !DIExpression(), !10698)
  call void @llvm.experimental.noalias.scope.decl(metadata !10905), !dbg !10991
    #dbg_value(ptr %i.a, !4385, !DIExpression(), !10702)
    #dbg_value(ptr %i.a, !4387, !DIExpression(), !10704)
    #dbg_value(i64 1, !4396, !DIExpression(), !10706)
    #dbg_value(i8 1, !4398, !DIExpression(), !10706)
    #dbg_value(i64 1, !4400, !DIExpression(), !10708)
    #dbg_value(i8 1, !4402, !DIExpression(), !10708)
  %i.bv = load ptr, ptr %i.a, align 8, !dbg !10992, !alias.scope !10906, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.bv, !4397, !DIExpression(), !10710)
    #dbg_value(ptr %i.bv, !4401, !DIExpression(), !10708)
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 release, align 8, !dbg !10993, !noalias !10906
  %i.bx = icmp eq i64 %i.bw, 1, !dbg !10994
  br i1 %i.bx, label %bb.m, label %.noexc25, !dbg !10994

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
    #dbg_value(i8 2, !4350, !DIExpression(), !10712)
  fence acquire, !dbg !10995
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %.noexc25 unwind label %bb.n, !dbg !10996

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !10989
  unreachable, !dbg !10989
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 !dbg !11003 {
bb.a:
    #dbg_value(ptr %0, !11058, !DIExpression(), !11069)
    #dbg_value(ptr %0, !11070, !DIExpression(), !11075)
    #dbg_value(i64 %1, !11059, !DIExpression(), !11069)
    #dbg_value(i64 %1, !11076, !DIExpression(), !11080)
    #dbg_value(i64 %1, !11072, !DIExpression(), !11075)
    #dbg_value(i64 %2, !11060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11069)
    #dbg_value(i64 %3, !11060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11069)
  %.val = load i64, ptr %0, align 8, !dbg !11163  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11163 ; 3 uses
  %.val35 = load ptr, ptr %i.a, align 8, !dbg !11163 ; 3 uses
    #dbg_value(ptr poison, !4408, !DIExpression(), !11007)
    #dbg_value(i64 %2, !4422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11007)
    #dbg_value(i64 %3, !4422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11007)
    #dbg_value(i64 %3, !4426, !DIExpression(), !11009)
  %i.b = icmp eq i64 %3, 0, !dbg !11164
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !11164
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !11164

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.val, !4427, !DIExpression(), !11009)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35) ]
  %4 = mul nuw i64 %.val, %3, !dbg !11165         ; 3 uses
    #dbg_value(ptr %.val35, !11061, !DIExpression(), !11081)
    #dbg_value(i64 %2, !11062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11081)
    #dbg_value(i64 %4, !11062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11081)
  %i.d = icmp eq i64 %1, 0, !dbg !11166
  br i1 %i.d, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit, !dbg !11166

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
    #dbg_value(ptr poison, !2879, !DIExpression(), !11011)
    #dbg_value(ptr poison, !2885, !DIExpression(), !11013)
    #dbg_value(ptr %.val35, !2882, !DIExpression(), !11011)
    #dbg_value(ptr %.val35, !2888, !DIExpression(), !11013)
    #dbg_value(ptr %.val35, !2891, !DIExpression(), !11015)
    #dbg_value(ptr %.val35, !2897, !DIExpression(), !11017)
    #dbg_value(i64 %2, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11011)
    #dbg_value(i64 %2, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11013)
    #dbg_value(i64 %2, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11015)
    #dbg_value(i64 %2, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11017)
    #dbg_value(i64 %4, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11011)
    #dbg_value(i64 %4, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11013)
    #dbg_value(i64 %4, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11015)
    #dbg_value(i64 %4, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11017)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !11167
    #dbg_value(i64 %2, !11083, !DIExpression(), !11089)
    #dbg_value(i64 %2, !11090, !DIExpression(), !11096)
  %i.e = inttoptr i64 %2 to ptr, !dbg !11168
  store ptr %i.e, ptr %i.a, align 8, !dbg !11169
  br label %bb.c, !dbg !11170

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
    #dbg_value(i64 %3, !11077, !DIExpression(), !11080)
  %i.f = mul nuw i64 %3, %1, !dbg !11171          ; 3 uses
    #dbg_value(i64 %i.f, !11064, !DIExpression(), !11097)
    #dbg_value(i64 %2, !11065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11098)
    #dbg_value(i64 %i.f, !11065, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11098)
    #dbg_value(ptr poison, !11099, !DIExpression(), !11022)
    #dbg_value(ptr poison, !11104, !DIExpression(), !11025)
    #dbg_value(ptr %.val35, !11100, !DIExpression(), !11022)
    #dbg_value(ptr %.val35, !11107, !DIExpression(), !11025)
    #dbg_value(i64 %2, !11101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11022)
    #dbg_value(i64 %2, !11108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11025)
    #dbg_value(i64 %4, !11101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11022)
    #dbg_value(i64 %4, !11108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11025)
    #dbg_value(i64 %2, !11102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11022)
    #dbg_value(i64 %2, !11109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11025)
    #dbg_value(i64 %i.f, !11102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11022)
    #dbg_value(i64 %i.f, !11109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11025)
    #dbg_value(ptr poison, !11111, !DIExpression(), !11037)
    #dbg_value(ptr %.val35, !11113, !DIExpression(), !11037)
    #dbg_value(ptr %.val35, !11128, !DIExpression(), !11040)
    #dbg_value(i64 %2, !11114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11037)
    #dbg_value(i64 %2, !11129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11040)
    #dbg_value(i64 %4, !11114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11037)
    #dbg_value(i64 %4, !11129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11040)
    #dbg_value(i64 %2, !11115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11037)
    #dbg_value(i64 %i.f, !11115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11037)
    #dbg_value(i1 false, !11116, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11037)
    #dbg_value(i64 %i.f, !11117, !DIExpression(), !11041)
    #dbg_value(i64 %i.f, !11130, !DIExpression(), !11040)
    #dbg_value(ptr poison, !11118, !DIExpression(), !11042)
  %i.g = icmp ule i64 %i.f, %4, !dbg !11172
    #dbg_value(i1 true, !11132, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11045)
  tail call void @llvm.assume(i1 %i.g), !dbg !11173
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.val35, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #23, !dbg !11174 ; 2 uses
    #dbg_value(ptr %i.h, !11134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11159)
    #dbg_value(i64 poison, !11134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11159)
    #dbg_value(ptr poison, !11154, !DIExpression(), !11160)
  %i.i = icmp eq ptr %i.h, null, !dbg !11175
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !11176

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !11081
  br label %bb.e, !dbg !11177

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit
    #dbg_value(ptr %i.h, !11063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11161)
    #dbg_value(ptr %i.h, !11071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11075)
    #dbg_value(i64 poison, !11063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11161)
    #dbg_value(i64 poison, !11071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11075)
  store ptr %i.h, ptr %i.a, align 8, !dbg !11178
  %i.j = icmp sgt i64 %1, -1, !dbg !11179
  tail call void @llvm.assume(i1 %i.j), !dbg !11179
  br label %bb.c, !dbg !11170

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !11069
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ], !dbg !11069
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !11177
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1, !dbg !11177
  ret { i64, i64 } %i.l, !dbg !11177
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11180 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !11205, !DIExpression(), !11207)
    #dbg_value(i64 8, !11208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11213)
    #dbg_value(i64 24, !11208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11213)
    #dbg_value(ptr %0, !11209, !DIExpression(), !11213)
  %i.b = load i64, ptr %0, align 8, !dbg !11216, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11214), !dbg !11217
    #dbg_value(ptr %0, !3755, !DIExpression(), !11186)
    #dbg_value(ptr %0, !3801, !DIExpression(), !11188)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !11186)
    #dbg_value(i64 1, !3771, !DIExpression(), !11186)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11186)
    #dbg_value(i64 24, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11186)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !11190)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11191)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11193)
  %i.c = shl nuw i64 %i.b, 1, !dbg !11218
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !11193)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11195)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11195)
    #dbg_value(i64 poison, !3776, !DIExpression(), !11196)
    #dbg_value(i64 poison, !3838, !DIExpression(), !11198)
    #dbg_value(i64 4, !3839, !DIExpression(), !11198)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11200)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11200)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !11219 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !11201)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !11188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11220, !noalias !11214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11221 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !11221, !alias.scope !11214
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !dbg !11221, !noalias !11214
  %i.f = load i64, ptr %i.a, align 8, !dbg !11222, !range !3518, !noalias !11214, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11223
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11224 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !11223

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !11225, !range !3841, !noalias !11214, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11225
  %i.k = load i64, ptr %i.j, align 8, !dbg !11225, !noalias !11214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11226, !noalias !11214
    #dbg_value(i64 %i.i, !11210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11215)
    #dbg_value(i64 %i.k, !11210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11215)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !11227
  unreachable, !dbg !11227

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !11228, !noalias !11214, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11226, !noalias !11214
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11202)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11188)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11202)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11188)
  store ptr %i.l, ptr %i.e, align 8, !dbg !11229, !alias.scope !11214
  %i.m = icmp sgt i64 %i.d, -1, !dbg !11230
  tail call void @llvm.assume(i1 %i.m), !dbg !11230
  store i64 %i.d, ptr %0, align 8, !dbg !11231, !alias.scope !11214
  ret void, !dbg !11232
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11233 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !11258, !DIExpression(), !11260)
    #dbg_value(i64 8, !11261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11266)
    #dbg_value(i64 16, !11261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11266)
    #dbg_value(ptr %0, !11262, !DIExpression(), !11266)
  %i.b = load i64, ptr %0, align 8, !dbg !11269, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11267), !dbg !11270
    #dbg_value(ptr %0, !3755, !DIExpression(), !11239)
    #dbg_value(ptr %0, !3801, !DIExpression(), !11241)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !11239)
    #dbg_value(i64 1, !3771, !DIExpression(), !11239)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11239)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11239)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !11243)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11244)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11246)
  %i.c = shl nuw i64 %i.b, 1, !dbg !11271
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !11246)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11248)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11248)
    #dbg_value(i64 poison, !3776, !DIExpression(), !11249)
    #dbg_value(i64 poison, !3838, !DIExpression(), !11251)
    #dbg_value(i64 4, !3839, !DIExpression(), !11251)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11253)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11253)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !11272 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !11254)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !11241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11273, !noalias !11267
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11274 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !11274, !alias.scope !11267
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !11274, !noalias !11267
  %i.f = load i64, ptr %i.a, align 8, !dbg !11275, !range !3518, !noalias !11267, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11276
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11277 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !11276

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !11278, !range !3841, !noalias !11267, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11278
  %i.k = load i64, ptr %i.j, align 8, !dbg !11278, !noalias !11267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11279, !noalias !11267
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDBN_EE8grow_oneBT_:bb.a
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12546, !alias.scope !12539
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !dbg !12546, !noalias !12539
  %i.f = load i64, ptr %i.a, align 8, !dbg !12547, !range !3518, !noalias !12539, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12548
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12549 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12548

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12550, !range !3841, !noalias !12539, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12550
  %i.k = load i64, ptr %i.j, align 8, !dbg !12550, !noalias !12539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12551, !noalias !12539
    #dbg_value(i64 %i.i, !12535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(i64 %i.k, !12535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12540)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12552
  unreachable, !dbg !12552

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12553, !noalias !12539, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12551, !noalias !12539
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12527)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12513)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12527)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12513)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12554, !alias.scope !12539
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12555
  tail call void @llvm.assume(i1 %i.m), !dbg !12555
  store i64 %i.d, ptr %0, align 8, !dbg !12556, !alias.scope !12539
  ret void, !dbg !12557
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtNtNtBT_3dfa7onepass8EpsilonsEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12558 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12583, !DIExpression(), !12585)
    #dbg_value(i64 8, !12586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12591)
    #dbg_value(i64 16, !12586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12591)
    #dbg_value(ptr %0, !12587, !DIExpression(), !12591)
  %i.b = load i64, ptr %0, align 8, !dbg !12594, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12592), !dbg !12595
    #dbg_value(ptr %0, !3755, !DIExpression(), !12564)
    #dbg_value(ptr %0, !3801, !DIExpression(), !12566)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !12564)
    #dbg_value(i64 1, !3771, !DIExpression(), !12564)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12564)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12564)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !12568)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12569)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12571)
  %i.c = shl nuw i64 %i.b, 1, !dbg !12596
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !12571)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12573)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12573)
    #dbg_value(i64 poison, !3776, !DIExpression(), !12574)
    #dbg_value(i64 poison, !3838, !DIExpression(), !12576)
    #dbg_value(i64 4, !3839, !DIExpression(), !12576)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12578)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12578)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !12597 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !12579)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !12566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12598, !noalias !12592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12599 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12599, !alias.scope !12592
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !12599, !noalias !12592
  %i.f = load i64, ptr %i.a, align 8, !dbg !12600, !range !3518, !noalias !12592, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12601
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12602 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12601

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12603, !range !3841, !noalias !12592, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12603
  %i.k = load i64, ptr %i.j, align 8, !dbg !12603, !noalias !12592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12604, !noalias !12592
    #dbg_value(i64 %i.i, !12588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12593)
    #dbg_value(i64 %i.k, !12588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12593)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12605
  unreachable, !dbg !12605

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12606, !noalias !12592, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12604, !noalias !12592
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12566)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12580)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12566)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12607, !alias.scope !12592
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12608
  tail call void @llvm.assume(i1 %i.m), !dbg !12608
  store i64 %i.d, ptr %0, align 8, !dbg !12609, !alias.scope !12592
  ret void, !dbg !12610
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12611 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12636, !DIExpression(), !12638)
    #dbg_value(i64 8, !12639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12644)
    #dbg_value(i64 16, !12639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12644)
    #dbg_value(ptr %0, !12640, !DIExpression(), !12644)
  %i.b = load i64, ptr %0, align 8, !dbg !12647, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12645), !dbg !12648
    #dbg_value(ptr %0, !3755, !DIExpression(), !12617)
    #dbg_value(ptr %0, !3801, !DIExpression(), !12619)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !12617)
    #dbg_value(i64 1, !3771, !DIExpression(), !12617)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12617)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12617)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !12621)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12622)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12624)
  %i.c = shl nuw i64 %i.b, 1, !dbg !12649
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !12624)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12626)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12626)
    #dbg_value(i64 poison, !3776, !DIExpression(), !12627)
    #dbg_value(i64 poison, !3838, !DIExpression(), !12629)
    #dbg_value(i64 4, !3839, !DIExpression(), !12629)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12631)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12631)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !12650 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !12632)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !12619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12651, !noalias !12645
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12652 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12652, !alias.scope !12645
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !12652, !noalias !12645
  %i.f = load i64, ptr %i.a, align 8, !dbg !12653, !range !3518, !noalias !12645, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12654
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12655 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12654

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12656, !range !3841, !noalias !12645, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12656
  %i.k = load i64, ptr %i.j, align 8, !dbg !12656, !noalias !12645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12657, !noalias !12645
    #dbg_value(i64 %i.i, !12641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12646)
    #dbg_value(i64 %i.k, !12641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12646)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12658
  unreachable, !dbg !12658

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12659, !noalias !12645, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12657, !noalias !12645
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12633)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12633)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12619)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12660, !alias.scope !12645
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12661
  tail call void @llvm.assume(i1 %i.m), !dbg !12661
  store i64 %i.d, ptr %0, align 8, !dbg !12662, !alias.scope !12645
  ret void, !dbg !12663
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 !dbg !12669 {
bb.a:
    #dbg_value(ptr poison, !12739, !DIExpression(), !12749)
    #dbg_value(i64 %1, !12740, !DIExpression(), !12749)
    #dbg_value(i64 %1, !12750, !DIExpression(), !12754)
    #dbg_value(i64 %1, !12755, !DIExpression(), !12760)
    #dbg_value(i64 %1, !12761, !DIExpression(), !12767)
    #dbg_value(i64 %1, !12768, !DIExpression(), !12772)
    #dbg_value(i64 %2, !12741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12749)
    #dbg_value(i64 %3, !12741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12749)
    #dbg_declare(ptr poison, !12773, !DIExpression(), !12789)
    #dbg_value(i64 %3, !12751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12754)
    #dbg_value(i64 %3, !12762, !DIExpression(), !12767)
    #dbg_value(i64 %3, !12769, !DIExpression(), !12772)
    #dbg_value(i64 %2, !12751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12754)
    #dbg_value(ptr poison, !12756, !DIExpression(), !12790)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !12857 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !12857 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !12857
    #dbg_value(i1 %i.c, !12764, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12791)
    #dbg_value(i1 %i.c, !12792, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12795)
    #dbg_value(i64 %i.b, !12757, !DIExpression(), !12796)
    #dbg_value(i64 %i.b, !12763, !DIExpression(), !12791)
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !12858, !prof !2672
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !12858, !prof !2672

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %2, !12742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12797)
    #dbg_value(i64 %i.b, !12742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12797)
    #dbg_value(ptr poison, !4408, !DIExpression(), !12682)
    #dbg_value(i64 %2, !4422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12682)
    #dbg_value(i64 %3, !4422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12682)
    #dbg_value(i64 %3, !4426, !DIExpression(), !12684)
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit, !dbg !12859

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
    #dbg_value(i64 %.0.val, !4427, !DIExpression(), !12684)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val, !dbg !12860       ; 2 uses
    #dbg_value(ptr %.8.val, !12746, !DIExpression(), !12798)
    #dbg_value(i64 %2, !12747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12798)
    #dbg_value(i64 %4, !12747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12798)
    #dbg_value(ptr poison, !12799, !DIExpression(), !12687)
    #dbg_value(ptr poison, !12804, !DIExpression(), !12690)
    #dbg_value(ptr %.8.val, !12800, !DIExpression(), !12687)
    #dbg_value(ptr %.8.val, !12806, !DIExpression(), !12690)
    #dbg_value(i64 %2, !12801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12687)
    #dbg_value(i64 %2, !12807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12690)
    #dbg_value(i64 %4, !12801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12687)
    #dbg_value(i64 %4, !12807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12690)
    #dbg_value(i64 %2, !12802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12687)
    #dbg_value(i64 %2, !12808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12690)
    #dbg_value(i64 %i.b, !12802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12687)
    #dbg_value(i64 %i.b, !12808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12690)
    #dbg_value(i8 0, !12809, !DIExpression(), !12690)
    #dbg_value(ptr poison, !12811, !DIExpression(), !12703)
    #dbg_value(ptr %.8.val, !12813, !DIExpression(), !12703)
    #dbg_value(ptr %.8.val, !12829, !DIExpression(), !12706)
    #dbg_value(i64 %2, !12814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12703)
    #dbg_value(i64 %2, !12830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12706)
    #dbg_value(i64 %4, !12814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12703)
    #dbg_value(i64 %4, !12830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12706)
    #dbg_value(i64 %2, !12815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12703)
    #dbg_value(i64 %i.b, !12815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12703)
    #dbg_value(i1 false, !12816, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12703)
    #dbg_value(i64 %4, !12817, !DIExpression(), !12707)
    #dbg_value(ptr poison, !12818, !DIExpression(), !12708)
    #dbg_value(i64 %i.b, !12819, !DIExpression(), !12709)
    #dbg_value(i64 %i.b, !12831, !DIExpression(), !12706)
  %i.f = icmp uge i64 %i.b, %4, !dbg !12861
    #dbg_value(i1 true, !12833, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12712)
  tail call void @llvm.assume(i1 %i.f), !dbg !12862
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23, !dbg !12863
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12835)
    #dbg_value(ptr poison, !12784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12836)
    #dbg_value(i64 poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12835)
    #dbg_value(i64 poison, !12784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12836)
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !12864

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !2677, !DIExpression(), !12714)
    #dbg_value(ptr poison, !2694, !DIExpression(), !12716)
    #dbg_value(i64 %2, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12714)
    #dbg_value(i64 %2, !2698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12716)
    #dbg_value(i64 %i.b, !2692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12714)
    #dbg_value(i64 %i.b, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12716)
    #dbg_value(i8 0, !2699, !DIExpression(), !12716)
    #dbg_value(i64 %2, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12718)
    #dbg_value(i64 %2, !2721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12720)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12718)
    #dbg_value(i64 %i.b, !2721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12720)
    #dbg_value(i1 false, !2705, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12718)
    #dbg_value(i64 0, !12837, !DIExpression(), !12723)
    #dbg_value(i64 0, !12844, !DIExpression(), !12726)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12727)
    #dbg_value(i64 %i.b, !12842, !DIExpression(), !12729)
    #dbg_value(i64 %i.b, !12847, !DIExpression(), !12731)
  %i.h = icmp eq i64 %i.b, 0, !dbg !12865
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !12865

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !12841, !DIExpression(), !12723)
    #dbg_value(i64 %2, !12846, !DIExpression(), !12726)
    #dbg_value(i64 %2, !12850, !DIExpression(), !12734)
  %i.i = inttoptr i64 %2 to ptr, !dbg !12866
    #dbg_value(ptr %i.i, !12784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12836)
    #dbg_value(ptr %i.i, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12835)
    #dbg_value(i64 poison, !12784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12836)
    #dbg_value(i64 poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12835)
    #dbg_value(ptr poison, !12785, !DIExpression(), !12855)
  br label %bb.f, !dbg !12867

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !12868
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !12869
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !12870

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !12784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12836)
    #dbg_value(ptr %.pn8, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12835)
    #dbg_value(i64 poison, !12784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12836)
    #dbg_value(i64 poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12835)
    #dbg_value(ptr poison, !12785, !DIExpression(), !12855)
  %i.k = icmp eq ptr %.pn8, null, !dbg !12871
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !12867

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12872
  store i64 %2, ptr %i.l, align 8, !dbg !12872
  br label %bb.g, !dbg !12873

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12835)
    #dbg_value(i64 %i.b, !12784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12836)
    #dbg_value(ptr %.pn810, !12786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(i64 %i.b, !12786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12856)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12874
  store ptr %.pn810, ptr %i.m, align 8, !dbg !12874
  br label %bb.g, !dbg !12875

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !12749
  store i64 %.sink11, ptr %i.n, align 8, !dbg !12749
  store i64 %.sink, ptr %0, align 8, !dbg !12749
  ret void, !dbg !12876
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12886 {
bb.a:
    #dbg_value(i64 %1, !12932, !DIExpression(), !12942)
    #dbg_value(i64 %1, !12943, !DIExpression(), !12947)
    #dbg_value(i64 %1, !12948, !DIExpression(), !12953)
    #dbg_value(i64 %1, !12954, !DIExpression(), !12960)
    #dbg_value(i64 %1, !12961, !DIExpression(), !12965)
    #dbg_value(i64 %1, !12966, !DIExpression(), !12969)
    #dbg_value(i1 %2, !12933, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12942)
    #dbg_declare(ptr poison, !12934, !DIExpression(), !12970)
    #dbg_value(i64 %3, !12935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12942)
    #dbg_value(i64 %4, !12935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12942)
    #dbg_declare(ptr poison, !12971, !DIExpression(), !12978)
    #dbg_value(i64 %4, !12944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12947)
    #dbg_value(i64 %4, !12955, !DIExpression(), !12960)
    #dbg_value(i64 %4, !12962, !DIExpression(), !12965)
    #dbg_value(i64 %3, !12944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12947)
    #dbg_value(i64 %3, !12975, !DIExpression(), !12979)
    #dbg_value(ptr poison, !12949, !DIExpression(), !12980)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !13005 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !13005 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !13005
    #dbg_value(i1 %i.c, !12957, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12981)
    #dbg_value(i1 %i.c, !12982, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12985)
    #dbg_value(i64 %i.b, !12950, !DIExpression(), !12986)
    #dbg_value(i64 %i.b, !12956, !DIExpression(), !12981)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !13006, !prof !2672
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !13006, !prof !2672

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !12936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12987)
    #dbg_value(i64 %i.b, !12936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12987)
  %i.e = icmp eq i64 %i.b, 0, !dbg !13007
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !13007

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13008
  store i64 0, ptr %i.f, align 8, !dbg !13008
  br label %bb.f, !dbg !13009

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !13010
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13011
  store i64 0, ptr %i.h, align 8, !dbg !13011
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13011
  store ptr %i.g, ptr %i.i, align 8, !dbg !13011
  br label %bb.f, !dbg !13012

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12902)
    #dbg_value(i64 %3, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12906)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12902)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12906)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12907)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12908)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !12987
    #dbg_value(ptr poison, !12938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13000)
    #dbg_value(ptr poison, !12938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13000)
    #dbg_value(i64 poison, !12938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13000)
    #dbg_value(i64 poison, !12938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13000)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !13013

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !12942
  ret void, !dbg !13014

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !12997, !DIExpression(), !12909)
    #dbg_value(ptr poison, !12993, !DIExpression(), !12910)
    #dbg_value(i64 %3, !12998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12909)
    #dbg_value(i64 %3, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12910)
    #dbg_value(i64 %i.b, !12998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12909)
    #dbg_value(i64 %i.b, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12910)
    #dbg_value(i8 1, !12995, !DIExpression(), !12910)
    #dbg_value(i64 %3, !13001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12913)
    #dbg_value(i64 %i.b, !13001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12913)
    #dbg_value(i1 true, !2705, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12902)
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !13015
  br label %bb.h, !dbg !13016

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !2677, !DIExpression(), !12914)
    #dbg_value(ptr poison, !2694, !DIExpression(), !12915)
end_hunk_3
begin_hunk_4_@_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEE5clearBX_:bb.a
    #dbg_value(ptr %i.h, !5274, !DIExpression(), !13080)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !13313 ; 2 uses
    #dbg_value(ptr undef, !5276, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13082)
  %.cast.i.i = bitcast <16 x i1> %i.j to i16, !dbg !13314 ; 2 uses
    #dbg_value(i16 %.cast.i.i, !5281, !DIExpression(), !13096)
  %.not.i.i = icmp eq i16 %.cast.i.i, 0, !dbg !13307
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i, !dbg !13308

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1.i = phi ptr [ %.sroa.6.027.i, %bb.c ], [ %i.l, %.lr.ph.i.i ], !dbg !13315
  %.sroa.017.1.i = phi ptr [ %.sroa.017.028.i, %bb.c ], [ %i.k, %.lr.ph.i.i ], !dbg !13315 ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.818.026.i, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ], !dbg !13314 ; 3 uses
    #dbg_value(ptr %.sroa.017.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13075)
    #dbg_value(ptr %.sroa.6.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13075)
    #dbg_value(i16 %.lcssa.i.i, !5282, !DIExpression(), !13097)
    #dbg_value(i16 %.lcssa.i.i, !5295, !DIExpression(), !13099)
    #dbg_value(i16 %.lcssa.i.i, !5298, !DIExpression(), !13101)
    #dbg_value(i16 %.lcssa.i.i, !5300, !DIExpression(), !13103)
  %i.m = add i16 %.lcssa.i.i, -1, !dbg !13316
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !13317
  %i.o = zext nneg i16 %i.n to i64, !dbg !13318
    #dbg_value(i64 %i.o, !5277, !DIExpression(), !13104)
    #dbg_value(i16 %.lcssa.i.i, !5303, !DIExpression(), !13106)
  %i.p = and i16 %i.m, %.lcssa.i.i, !dbg !13319
    #dbg_value(i16 %i.p, !5206, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13075)
    #dbg_value(i64 %i.o, !5189, !DIExpression(), !13107)
    #dbg_value(i64 %i.o, !5166, !DIExpression(), !13108)
    #dbg_value(i64 %i.o, !5270, !DIExpression(), !13110)
    #dbg_value(ptr undef, !5162, !DIExpression(), !13039)
    #dbg_value(ptr %.sroa.017.1.i, !5269, !DIExpression(), !13110)
  %i.q = sub nsw i64 0, %i.o, !dbg !13320
  %i.r = getelementptr inbounds [24 x i8], ptr %.sroa.017.1.i, i64 %i.q, !dbg !13321
    #dbg_value(ptr %i.r, !5199, !DIExpression(), !13111)
  %i.s = add i64 %.sroa.1019.025.i, -1, !dbg !13322 ; 2 uses
    #dbg_value(i64 %i.s, !5206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13075)
    #dbg_value(ptr %i.r, !5207, !DIExpression(), !13112)
    #dbg_value(ptr poison, !5229, !DIExpression(), !13113)
    #dbg_value(ptr poison, !5224, !DIExpression(), !13114)
    #dbg_value(ptr %i.r, !5218, !DIExpression(), !13053)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -24, !dbg !13323 ; 2 uses
    #dbg_value(ptr %i.t, !5305, !DIExpression(), !13116)
    #dbg_value(ptr %i.t, !5309, !DIExpression(), !13118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13241), !dbg !13324
    #dbg_value(ptr %i.t, !5312, !DIExpression(), !13122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13242), !dbg !13325
    #dbg_value(ptr %i.t, !4372, !DIExpression(), !13126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13243), !dbg !13326
    #dbg_value(ptr %i.t, !4379, !DIExpression(), !13130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13244), !dbg !13327
    #dbg_value(ptr %i.t, !4385, !DIExpression(), !13134)
    #dbg_value(ptr %i.t, !4387, !DIExpression(), !13136)
    #dbg_value(i64 1, !4396, !DIExpression(), !13138)
    #dbg_value(i8 1, !4398, !DIExpression(), !13138)
    #dbg_value(i64 1, !4400, !DIExpression(), !13140)
    #dbg_value(i8 1, !4402, !DIExpression(), !13140)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !13328, !alias.scope !13245, !noalias !13238, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.u, !4397, !DIExpression(), !13142)
    #dbg_value(ptr %i.u, !4401, !DIExpression(), !13140)
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !dbg !13329, !noalias !13246
  %i.w = icmp eq i64 %i.v, 1, !dbg !13330
  br i1 %i.w, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i, !dbg !13330

bb.d:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i
    #dbg_value(i8 2, !4350, !DIExpression(), !13144)
  fence acquire, !dbg !13331
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i unwind label %bb.e, !dbg !13332

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i: ; preds = %bb.d, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i
    #dbg_value(ptr %.sroa.017.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13075)
    #dbg_value(ptr %.sroa.6.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13075)
    #dbg_value(i16 %i.p, !5206, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13075)
    #dbg_value(i64 %i.s, !5206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13075)
    #dbg_value(ptr undef, !5198, !DIExpression(), !13041)
  %i.x = icmp eq i64 %i.s, 0, !dbg !13306
  br i1 %i.x, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit, label %bb.c, !dbg !13306

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !13248, !DIExpression(), !13147)
    #dbg_value(ptr poison, !13254, !DIExpression(), !13150)
    #dbg_value(ptr poison, !13257, !DIExpression(), !13153)
    #dbg_value(ptr poison, !13261, !DIExpression(), !13153)
    #dbg_value(i8 -1, !13263, !DIExpression(), !13163)
    #dbg_value(i8 -1, !13277, !DIExpression(), !13166)
    #dbg_value(i8 -1, !13281, !DIExpression(), !13169)
    #dbg_value(ptr %0, !13275, !DIExpression(), !13170)
    #dbg_value(ptr %0, !13272, !DIExpression(), !13171)
    #dbg_value(ptr %0, !13285, !DIExpression(), !13174)
    #dbg_value(ptr %0, !13287, !DIExpression(), !13177)
    #dbg_value(ptr %0, !13292, !DIExpression(), !13180)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13333
  %i.aa = load i64, ptr %i.z, align 8, !dbg !13333, !noundef !1539 ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !13333
  br i1 %i.ab, label %bb.i, label %bb.f, !dbg !13334

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !dbg !13335, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.ac, !13278, !DIExpression(), !13166)
    #dbg_value(ptr %i.ac, !13282, !DIExpression(), !13169)
  %i.ad = add i64 %i.aa, 17, !dbg !13336
    #dbg_value(i64 %i.ad, !13279, !DIExpression(), !13166)
    #dbg_value(i64 %i.ad, !13283, !DIExpression(), !13169)
    #dbg_value(ptr %i.ac, !13269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13181)
    #dbg_value(ptr %i.ac, !13264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13163)
    #dbg_value(i64 %i.ad, !13269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13181)
    #dbg_value(i64 %i.ad, !13264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13163)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 -1, i64 %i.ad, i1 false), !dbg !13337
    #dbg_value(i64 %i.aa, !13295, !DIExpression(), !13184)
  %i.ae = icmp ult i64 %i.aa, 8, !dbg !13338
  %i.af = add i64 %i.aa, 1, !dbg !13338
  %i.ag = lshr i64 %i.af, 3, !dbg !13338
  %i.ah = mul nuw i64 %i.ag, 7, !dbg !13338
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.ah, !dbg !13338
  br label %bb.i, !dbg !13338

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i
    #dbg_value(ptr poison, !13248, !DIExpression(), !13186)
    #dbg_value(ptr poison, !13254, !DIExpression(), !13188)
    #dbg_value(ptr poison, !13257, !DIExpression(), !13190)
    #dbg_value(ptr poison, !13261, !DIExpression(), !13190)
    #dbg_value(i8 -1, !13263, !DIExpression(), !13195)
    #dbg_value(i8 -1, !13277, !DIExpression(), !13197)
    #dbg_value(i8 -1, !13281, !DIExpression(), !13199)
    #dbg_value(ptr %0, !13275, !DIExpression(), !13200)
    #dbg_value(ptr %0, !13272, !DIExpression(), !13201)
    #dbg_value(ptr %0, !13285, !DIExpression(), !13203)
    #dbg_value(ptr %0, !13287, !DIExpression(), !13205)
    #dbg_value(ptr %0, !13292, !DIExpression(), !13207)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13339
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !13339, !noundef !1539 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !13339
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, label %bb.g, !dbg !13340

bb.g:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit
  %i.al = load ptr, ptr %0, align 8, !dbg !13341, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.al, !13278, !DIExpression(), !13197)
    #dbg_value(ptr %i.al, !13282, !DIExpression(), !13199)
  %i.am = add i64 %i.aj, 17, !dbg !13342
    #dbg_value(i64 %i.am, !13279, !DIExpression(), !13197)
    #dbg_value(i64 %i.am, !13283, !DIExpression(), !13199)
    #dbg_value(ptr %i.al, !13269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13208)
    #dbg_value(ptr %i.al, !13264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13195)
    #dbg_value(i64 %i.am, !13269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13208)
    #dbg_value(i64 %i.am, !13264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13195)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 -1, i64 %i.am, i1 false), !dbg !13343
    #dbg_value(i64 %i.aj, !13295, !DIExpression(), !13210)
  %i.an = icmp ult i64 %i.aj, 8, !dbg !13344
  %i.ao = add i64 %i.aj, 1, !dbg !13344
  %i.ap = lshr i64 %i.ao, 3, !dbg !13344
  %i.aq = mul nuw i64 %i.ap, 7, !dbg !13344
  %spec.select.i.i.i5 = select i1 %i.an, i64 %i.aj, i64 %i.aq, !dbg !13344
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, !dbg !13344

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit, %bb.g
  %i.ar = phi i64 [ %spec.select.i.i.i5, %bb.g ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit ], !dbg !13344
  store i64 0, ptr %i.a, align 8, !dbg !13345
    #dbg_value(i64 %i.ar, !13295, !DIExpression(), !13210)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13346
  store i64 %i.ar, ptr %i.as, align 8, !dbg !13346
  br label %bb.h, !dbg !13347

bb.h:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6
  ret void, !dbg !13347

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.at = phi i64 [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.e ], !dbg !13338
  store i64 0, ptr %i.a, align 8, !dbg !13348
    #dbg_value(i64 %i.at, !13295, !DIExpression(), !13184)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13349
  store i64 %i.at, ptr %i.au, align 8, !dbg !13349
  resume { ptr, i32 } %i.y, !dbg !13350
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, ptr noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !13361 {
bb.a:
    #dbg_value(ptr poison, !13598, !DIExpression(), !13605)
    #dbg_value(ptr poison, !13608, !DIExpression(), !13611)
    #dbg_value(ptr poison, !13606, !DIExpression(), !13612)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !13580, !DIExpression(), !13613)
    #dbg_value(ptr %0, !13614, !DIExpression(), !13620)
    #dbg_value(ptr %1, !13581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13613)
    #dbg_value(ptr poison, !13581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13613)
    #dbg_value(i64 24, !13582, !DIExpression(), !13613)
    #dbg_value(i64 24, !13621, !DIExpression(), !13626)
    #dbg_value(i64 24, !13621, !DIExpression(), !13628)
    #dbg_value(i64 24, !13629, !DIExpression(), !13634)
    #dbg_value(i64 24, !13635, !DIExpression(), !13642)
    #dbg_value(i64 24, !13643, !DIExpression(), !13658)
    #dbg_value(ptr %2, !13583, !DIExpression(), !13613)
    #dbg_declare(ptr %i.a, !13584, !DIExpression(), !13659)
    #dbg_value(i64 1, !13660, !DIExpression(), !13664)
    #dbg_value(i64 1, !13665, !DIExpression(), !13669)
    #dbg_value(ptr poison, !13670, !DIExpression(), !13678)
    #dbg_value(ptr poison, !13679, !DIExpression(), !13684)
    #dbg_value(ptr poison, !13679, !DIExpression(), !13686)
    #dbg_value(i8 -1, !13687, !DIExpression(), !13692)
  %.val52 = load ptr, ptr %0, align 8, !dbg !13941, !nonnull !1539, !noundef !1539 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13941 ; 4 uses
  %.val53 = load i64, ptr %i.b, align 8, !dbg !13941, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !13694, !DIExpression(), !13395)
    #dbg_value(ptr poison, !13706, !DIExpression(), !13396)
    #dbg_value(ptr poison, !13712, !DIExpression(), !13397)
    #dbg_value(ptr poison, !13717, !DIExpression(), !13398)
    #dbg_value(ptr poison, !13723, !DIExpression(), !13401)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13404)
    #dbg_value(ptr poison, !13723, !DIExpression(), !13406)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13408)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13410)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13412)
    #dbg_value(ptr poison, !13723, !DIExpression(), !13414)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13416)
    #dbg_value(ptr poison, !13723, !DIExpression(), !13418)
    #dbg_value(ptr poison, !13725, !DIExpression(), !13420)
    #dbg_value(i64 16, !13730, !DIExpression(), !13423)
    #dbg_value(i64 0, !13727, !DIExpression(), !13410)
    #dbg_value(i64 16, !13727, !DIExpression(), !13412)
    #dbg_value(i64 0, !13727, !DIExpression(), !13416)
    #dbg_value(i64 16, !13740, !DIExpression(), !13426)
    #dbg_value(i64 16, !13747, !DIExpression(), !13429)
  %i.c = add i64 %.val53, 1, !dbg !13942          ; 6 uses
    #dbg_value(i64 0, !13736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13423)
    #dbg_value(i64 %i.c, !13736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13423)
    #dbg_value(i64 0, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(i64 %i.c, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 16, !13757, !DIExpression(), !13433)
    #dbg_value(i64 0, !13760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13438)
    #dbg_value(i64 16, !13764, !DIExpression(), !13438)
    #dbg_value(i64 16, !13768, !DIExpression(), !13443)
    #dbg_value(i64 %i.c, !13769, !DIExpression(), !13443)
    #dbg_value(i64 %i.c, !13765, !DIExpression(), !13444)
    #dbg_value(i64 %i.c, !13770, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !13445)
    #dbg_value(i64 %i.c, !13771, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !13446)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(i64 0, !13718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13718, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 15, !13718, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13447)
    #dbg_value(i8 1, !13718, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !13447)
    #dbg_value(ptr undef, !13712, !DIExpression(), !13397)
    #dbg_value(ptr undef, !13706, !DIExpression(), !13396)
    #dbg_value(i64 15, !13707, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13448)
    #dbg_value(i64 15, !13777, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13451)
    #dbg_value(ptr undef, !13694, !DIExpression(), !13395)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13452)
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !13943
  br i1 %.not6.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !13943

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
    #dbg_value(ptr %.val52, !13743, !DIExpression(), !13454)
    #dbg_value(ptr poison, !13744, !DIExpression(), !13454)
    #dbg_value(ptr poison, !13751, !DIExpression(), !13456)
    #dbg_value(i64 %i.c, !13745, !DIExpression(), !13454)
    #dbg_value(i64 %i.c, !13752, !DIExpression(), !13456)
    #dbg_value(ptr %.val52, !13750, !DIExpression(), !13456)
  %i.d = getelementptr inbounds nuw i8, ptr %.val52, i64 16, !dbg !13944
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val52, i64 %i.c, i1 false), !dbg !13945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13946
    #dbg_value(ptr %2, !13617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13620)
    #dbg_value(i64 24, !13617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13620)
    #dbg_value(i64 0, !13585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13781)
    #dbg_value(i64 %i.c, !13585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13781)
    #dbg_value(ptr undef, !13606, !DIExpression(), !13612)
    #dbg_value(ptr undef, !13608, !DIExpression(), !13611)
    #dbg_value(ptr undef, !13598, !DIExpression(), !13605)
    #dbg_value(ptr undef, !13599, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13782)
  br label %._crit_edge, !dbg !13604

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !13947
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13718, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13452)
    #dbg_value(i64 %i.e, !13770, !DIExpression(), !13445)
  %i.f = and i64 %i.c, 15, !dbg !13948
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13452)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13718, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(i64 %i.f, !13771, !DIExpression(), !13446)
  %.not13.i.i.i = icmp ne i64 %i.f, 0, !dbg !13949
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13718, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13452)
  %i.g = zext i1 %.not13.i.i.i to i64, !dbg !13949
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13452)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13718, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13438)
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !13949 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13708, !DIExpression(), !13452)
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !13943
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !13943
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !13943

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !13943
  br label %bb.b, !dbg !13943

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13943
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader, !dbg !13943

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !13943
  tail call void @llvm.assume(i1 %lcmp.mod11), !dbg !13943
    #dbg_value(i64 16, !13707, !DIExpression(), !13448)
    #dbg_value(i64 16, !13777, !DIExpression(), !13451)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13709, !DIExpression(), !13461)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13778, !DIExpression(), !13451)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13718, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13719, !DIExpression(), !13462)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13726, !DIExpression(), !13404)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13726, !DIExpression(), !13408)
  %i.i = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i.epil.init, !dbg !13950 ; 2 uses
    #dbg_value(ptr %i.i, !13790, !DIExpression(), !13468)
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16, !dbg !13951
    #dbg_value(<2 x i64> poison, !13720, !DIExpression(), !13469)
    #dbg_declare(ptr poison, !13797, !DIExpression(), !13474)
    #dbg_value(<2 x i64> zeroinitializer, !13802, !DIExpression(), !13475)
    #dbg_declare(ptr poison, !13805, !DIExpression(), !13478)
    #dbg_declare(ptr poison, !13806, !DIExpression(), !13479)
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !13952
    #dbg_value(<16 x i8> %.lobit.i.i.epil, !13803, !DIExpression(), !13480)
    #dbg_declare(ptr poison, !13808, !DIExpression(), !13483)
    #dbg_declare(ptr poison, !13809, !DIExpression(), !13484)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !13953
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472), !dbg !13953
    #dbg_value(<2 x i64> %i.k, !13721, !DIExpression(), !13485)
    #dbg_value(<2 x i64> %i.k, !13811, !DIExpression(), !13490)
    #dbg_value(ptr %i.i, !13815, !DIExpression(), !13490)
    #dbg_value(ptr %i.i, !13823, !DIExpression(), !13493)
    #dbg_declare(ptr poison, !13826, !DIExpression(), !13494)
  store <2 x i64> %i.k, ptr %i.i, align 16, !dbg !13954
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13718, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(ptr undef, !13712, !DIExpression(), !13397)
    #dbg_value(ptr undef, !13706, !DIExpression(), !13396)
    #dbg_value(i64 15, !13707, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13448)
    #dbg_value(i64 15, !13777, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13451)
    #dbg_value(ptr undef, !13694, !DIExpression(), !13395)
    #dbg_value(i64 poison, !13708, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13452)
  br label %._crit_edge.i, !dbg !13955

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
    #dbg_value(i64 %i.c, !13829, !DIExpression(DW_OP_constu, 16, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13497)
    #dbg_value(ptr %2, !13617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13620)
    #dbg_value(ptr %2, !13617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13620)
    #dbg_value(i64 24, !13617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13620)
    #dbg_value(i64 24, !13617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13620)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13955
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13955
    #dbg_value(i64 0, !13585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13781)
    #dbg_value(i64 0, !13585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13781)
    #dbg_value(i64 %i.c, !13585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13781)
    #dbg_value(i64 %i.c, !13585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13781)
    #dbg_value(ptr undef, !13606, !DIExpression(), !13612)
    #dbg_value(ptr undef, !13606, !DIExpression(), !13612)
    #dbg_value(ptr undef, !13608, !DIExpression(), !13611)
    #dbg_value(ptr undef, !13608, !DIExpression(), !13611)
    #dbg_value(ptr undef, !13598, !DIExpression(), !13605)
    #dbg_value(ptr undef, !13598, !DIExpression(), !13605)
    #dbg_value(ptr undef, !13599, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13782)
    #dbg_value(ptr undef, !13599, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13782)
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16), !dbg !13604
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16), !dbg !13604
  %i.n = getelementptr inbounds nuw i8, ptr %.val52, i64 %., !dbg !13944
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val52, i64 %.27, i1 false), !dbg !13945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13946
  store ptr %2, ptr %i.l, align 8, !dbg !13955
  store i64 24, ptr %i.m, align 8, !dbg !13955
  store ptr %0, ptr %i.a, align 8, !dbg !13955
  br label %.lr.ph, !dbg !13677

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 16, !13707, !DIExpression(), !13448)
    #dbg_value(i64 16, !13777, !DIExpression(), !13451)
    #dbg_value(i64 %.sroa.0.08.i, !13709, !DIExpression(), !13461)
    #dbg_value(i64 %.sroa.0.08.i, !13778, !DIExpression(), !13451)
    #dbg_value(i64 %.sroa.0.08.i, !13718, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 %.sroa.0.08.i, !13719, !DIExpression(), !13462)
    #dbg_value(i64 %.sroa.0.08.i, !13726, !DIExpression(), !13404)
    #dbg_value(i64 %.sroa.0.08.i, !13726, !DIExpression(), !13408)
  %i.o = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !13950 ; 2 uses
    #dbg_value(ptr %i.o, !13790, !DIExpression(), !13468)
  %.val5.i = load <16 x i8>, ptr %i.o, align 16, !dbg !13951
    #dbg_value(<2 x i64> poison, !13720, !DIExpression(), !13469)
    #dbg_declare(ptr poison, !13797, !DIExpression(), !13474)
    #dbg_value(<2 x i64> zeroinitializer, !13802, !DIExpression(), !13475)
    #dbg_declare(ptr poison, !13805, !DIExpression(), !13478)
    #dbg_declare(ptr poison, !13806, !DIExpression(), !13479)
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !13952
    #dbg_value(<16 x i8> %.lobit.i.i, !13803, !DIExpression(), !13480)
    #dbg_declare(ptr poison, !13808, !DIExpression(), !13483)
    #dbg_declare(ptr poison, !13809, !DIExpression(), !13484)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !13953
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472), !dbg !13953
    #dbg_value(<2 x i64> %i.q, !13721, !DIExpression(), !13485)
    #dbg_value(<2 x i64> %i.q, !13811, !DIExpression(), !13490)
    #dbg_value(ptr %i.o, !13815, !DIExpression(), !13490)
    #dbg_value(ptr %i.o, !13823, !DIExpression(), !13493)
    #dbg_declare(ptr poison, !13826, !DIExpression(), !13494)
  store <2 x i64> %i.q, ptr %i.o, align 16, !dbg !13954
    #dbg_value(i64 %.sroa.0.08.i, !13718, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(ptr undef, !13712, !DIExpression(), !13397)
    #dbg_value(ptr undef, !13706, !DIExpression(), !13396)
    #dbg_value(i64 15, !13707, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13448)
    #dbg_value(i64 15, !13777, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13451)
    #dbg_value(ptr undef, !13694, !DIExpression(), !13395)
    #dbg_value(i64 poison, !13708, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13452)
    #dbg_value(i64 16, !13707, !DIExpression(), !13448)
    #dbg_value(i64 16, !13777, !DIExpression(), !13451)
    #dbg_value(i64 %.sroa.0.08.i, !13709, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13461)
    #dbg_value(i64 %.sroa.0.08.i, !13778, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13451)
  %i.r = add i64 %.sroa.0.08.i, 32, !dbg !13956   ; 2 uses
    #dbg_value(i64 %i.r, !13718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 %.sroa.0.08.i, !13719, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13462)
    #dbg_value(i64 %.sroa.0.08.i, !13726, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13404)
    #dbg_value(i64 %.sroa.0.08.i, !13726, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13408)
  %i.s = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !13950
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !13950 ; 2 uses
    #dbg_value(ptr %i.t, !13790, !DIExpression(), !13468)
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16, !dbg !13951
    #dbg_declare(ptr poison, !13797, !DIExpression(), !13474)
    #dbg_declare(ptr poison, !13805, !DIExpression(), !13478)
    #dbg_declare(ptr poison, !13806, !DIExpression(), !13479)
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !13952
    #dbg_value(<16 x i8> %.lobit.i.i.1, !13803, !DIExpression(), !13480)
    #dbg_declare(ptr poison, !13808, !DIExpression(), !13483)
    #dbg_declare(ptr poison, !13809, !DIExpression(), !13484)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !13953
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472), !dbg !13953
    #dbg_value(<2 x i64> %i.v, !13721, !DIExpression(), !13485)
    #dbg_value(<2 x i64> %i.v, !13811, !DIExpression(), !13490)
    #dbg_value(ptr %i.t, !13815, !DIExpression(), !13490)
    #dbg_value(ptr %i.t, !13823, !DIExpression(), !13493)
    #dbg_declare(ptr poison, !13826, !DIExpression(), !13494)
  store <2 x i64> %i.v, ptr %i.t, align 16, !dbg !13954
    #dbg_value(i64 %i.r, !13718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 poison, !13718, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 15, !13707, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13448)
    #dbg_value(i64 15, !13777, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13451)
    #dbg_value(i64 poison, !13708, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !13452)
  %niter.next.1 = add i64 %niter, 2, !dbg !13943  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13943
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b, !dbg !13943

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8, !dbg !13957 ; 2 uses
  %.pre13 = add i64 %.pre, 1, !dbg !13958
  %i.w = lshr i64 %.pre13, 3, !dbg !13958
  %i.x = mul nuw i64 %i.w, 7, !dbg !13958
  br label %._crit_edge, !dbg !13957

._crit_edge:                                      ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13958
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13957 ; 2 uses
    #dbg_value(i64 %i.y, !13834, !DIExpression(), !13837)
  %i.z = icmp ult i64 %i.y, 8, !dbg !13958
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi, !dbg !13958
    #dbg_value(i64 %.sroa.04.0, !13834, !DIExpression(), !13837)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13959
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13959, !noundef !1539
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13960
  %i.ad = sub i64 %.sroa.04.0, %i.ab, !dbg !13960
  store i64 %i.ad, ptr %i.ac, align 8, !dbg !13960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13961
  ret void, !dbg !13962

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 9 uses
    #dbg_value(i64 %.sroa.0.06, !13609, !DIExpression(), !13838)
    #dbg_value(i64 %.sroa.0.06, !13661, !DIExpression(), !13664)
    #dbg_value(i64 %.sroa.0.06, !13666, !DIExpression(), !13669)
  %i.ae = add nuw i64 %.sroa.0.06, 1, !dbg !13963 ; 2 uses
    #dbg_value(i64 %i.ae, !13585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13781)
    #dbg_value(i64 %.sroa.0.06, !13586, !DIExpression(), !13839)
    #dbg_value(i64 %.sroa.0.06, !13840, !DIExpression(), !13844)
    #dbg_value(i64 %.sroa.0.06, !13623, !DIExpression(), !13626)
    #dbg_value(i64 %.sroa.0.06, !13845, !DIExpression(), !13854)
    #dbg_value(i64 %.sroa.0.06, !13855, !DIExpression(), !13860)
    #dbg_value(i64 %.sroa.0.06, !13689, !DIExpression(), !13692)
    #dbg_value(ptr %0, !13841, !DIExpression(), !13844)
  %i.af = load ptr, ptr %0, align 8, !dbg !13964, !nonnull !1539, !noundef !1539 ; 2 uses
end_hunk_4
