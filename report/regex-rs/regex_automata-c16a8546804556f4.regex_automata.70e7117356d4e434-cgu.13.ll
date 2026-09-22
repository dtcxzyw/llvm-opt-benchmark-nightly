Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.13?download=true
inline.NumInlined: 338
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1w_:bb.a
    #dbg_value(ptr poison, !2585, !DIExpression(), !6356)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !6697, !noalias !6642
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !6698

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2589, !DIExpression(), !6359)
    #dbg_value(i64 %i.ah, !2673, !DIExpression(), !6383)
    #dbg_value(i64 %i.ah, !2595, !DIExpression(), !6381)
    #dbg_value(ptr %i.am, !2596, !DIExpression(), !6397)
    #dbg_value(ptr %i.am, !2674, !DIExpression(), !6383)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6398)
    #dbg_value(i64 poison, !2726, !DIExpression(), !6400)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !6699 ; 9 uses
    #dbg_value(ptr %i.ar, !2602, !DIExpression(), !6398)
    #dbg_value(ptr %i.ar, !2443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2443, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6401)
    #dbg_value(i64 poison, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6401)
    #dbg_value(i64 0, !2443, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6401)
    #dbg_value(i64 %i.ai, !2484, !DIExpression(), !6309)
    #dbg_value(i64 %i.ai, !2492, !DIExpression(), !6311)
    #dbg_value(ptr %i.ar, !2474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6402)
    #dbg_value(ptr %i.ar, !2469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6307)
    #dbg_value(i64 %i.ai, !2474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6402)
    #dbg_value(i64 %i.ai, !2469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6307)
    #dbg_value(ptr %i.ar, !2483, !DIExpression(), !6309)
    #dbg_value(ptr %i.ar, !2491, !DIExpression(), !6311)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !6700, !noalias !6642
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !6701
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !6702 ; 6 uses
    #dbg_value(i64 %i.at, !2726, !DIExpression(), !6400)
    #dbg_value(i64 %i.at, !2443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6401)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !6701
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !6701
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !6701 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2726, !DIExpression(), !6400)
    #dbg_value(i64 %.sroa.07.0.i.i, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6401)
    #dbg_value(ptr %i.d, !2283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6403)
    #dbg_value(i64 24, !2283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6403)
    #dbg_value(i64 16, !2283, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6403)
    #dbg_value(ptr %i.ar, !2283, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6403)
    #dbg_value(i64 %i.at, !2283, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6403)
    #dbg_value(i64 %.sroa.07.0.i.i, !2283, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6403)
    #dbg_value(i64 0, !2283, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6403)
  store ptr %i.d, ptr %i.a, align 8, !dbg !6703, !noalias !6640
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6703 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6703 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !6703 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6703 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !6703 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6703 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6703, !noalias !6640
    #dbg_value(ptr poison, !2397, !DIExpression(), !6404)
    #dbg_value(ptr poison, !2734, !DIExpression(), !6406)
    #dbg_value(<2 x i64> poison, !2742, !DIExpression(), !6409)
    #dbg_value(ptr poison, !2749, !DIExpression(), !6410)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6412)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6413)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6414)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !6704, !alias.scope !6643, !noalias !6644, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(i64 0, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6645)
    #dbg_value(i64 %i.aw, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6645)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !6645)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6269)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !6705
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !6705

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !6706, !alias.scope !6643, !noalias !6644, !nonnull !1539, !noundef !1539 ; 2 uses
    #dbg_value(ptr %i.ay, !2397, !DIExpression(), !6404)
    #dbg_value(ptr %i.ay, !2734, !DIExpression(), !6406)
    #dbg_value(ptr %i.ay, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !6707
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6414)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !6645)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !6708
    #dbg_value(<16 x i1> %i.az, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !6709
    #dbg_value(i16 %i.ba, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
  br label %.preheader, !dbg !6705

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !6710
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !6710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6711, !noalias !6640
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6712

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !6711, !noalias !6646
  resume { ptr, i32 } %i.bb, !dbg !6713

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6645)
    #dbg_value(ptr %.sroa.0.038, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(i64 %.sroa.5.037, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6645)
    #dbg_value(i16 %.sroa.13.035, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6416)
    #dbg_value(i16 %.sroa.13.035, !2759, !DIExpression(), !6418)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !6714
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !6715

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(i64 %.sroa.5.131, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6645)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2762, !DIExpression(), !6420)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !6716 ; 3 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(ptr %i.bc, !2765, !DIExpression(), !6422)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !6717
    #dbg_value(<2 x i64> poison, !2772, !DIExpression(), !6425)
    #dbg_value(ptr poison, !2774, !DIExpression(), !6426)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6428)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6429)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6430)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !6718
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !6719 ; 2 uses
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !6720    ; 2 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(i64 %i.bf, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6645)
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6416)
    #dbg_value(i16 %i.be, !2759, !DIExpression(), !6418)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !6714
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !6715

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !6721, !alias.scope !6643, !noalias !6644
  br label %._crit_edge39, !dbg !6721

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !6721 ; 2 uses
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6431)
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6431)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !6722
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6722, !noalias !6640
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6723, !noalias !6640
    #dbg_value(ptr %i.a, !2419, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6432)
    #dbg_value(ptr %0, !2777, !DIExpression(), !6434)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2780, !DIExpression(), !6434)
    #dbg_value(ptr %0, !2782, !DIExpression(), !6436)
    #dbg_value(ptr %0, !2788, !DIExpression(), !6438)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2785, !DIExpression(), !6436)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2792, !DIExpression(), !6438)
    #dbg_value(i64 1, !2786, !DIExpression(), !6436)
    #dbg_value(i64 1, !2793, !DIExpression(), !6438)
    #dbg_value(ptr %0, !2794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6439)
    #dbg_value(i64 1, !2794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6439)
    #dbg_value(i64 32, !2795, !DIExpression(), !6440)
    #dbg_value(i64 32, !2796, !DIExpression(), !6441)
    #dbg_value(ptr %0, !2807, !DIExpression(), !6443)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2810, !DIExpression(), !6443)
    #dbg_value(i64 32, !2811, !DIExpression(), !6443)
    #dbg_value(i64 32, !2812, !DIExpression(), !6444)
    #dbg_value(i64 0, !2814, !DIExpression(), !6445)
    #dbg_value(i64 4, !2813, !DIExpression(), !6446)
    #dbg_value(i64 4, !2815, !DIExpression(), !6447)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !6724, !noalias !6646

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !6725, !noalias !6646
  unreachable, !dbg !6725

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !6647), !dbg !6711
    #dbg_value(ptr %i.a, !2820, !DIExpression(), !6451)
  call void @llvm.experimental.noalias.scope.decl(metadata !6648), !dbg !6726, !noalias !6646
    #dbg_value(ptr %i.a, !2826, !DIExpression(), !6455)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6727, !alias.scope !6649, !noalias !6646 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6727, !alias.scope !6649, !noalias !6646 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6727, !alias.scope !6649, !noalias !6646, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !6457)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !6457)
    #dbg_value(ptr poison, !2833, !DIExpression(), !6457)
    #dbg_value(ptr poison, !2837, !DIExpression(), !6459)
    #dbg_value(ptr poison, !2842, !DIExpression(), !6461)
    #dbg_value(ptr poison, !2851, !DIExpression(), !6463)
    #dbg_value(ptr poison, !2863, !DIExpression(), !6465)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !6728
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6729

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6727, !alias.scope !6649, !noalias !6646
    #dbg_value(ptr poison, !2846, !DIExpression(), !6461)
    #dbg_value(i64 %.val.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6461)
    #dbg_value(i64 %.val.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6463)
    #dbg_value(i64 %.val1.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6461)
    #dbg_value(i64 %.val1.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6463)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !6730
    #dbg_value(i64 %.val.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6467)
    #dbg_value(i64 %.val1.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6467)
    #dbg_value(i64 %i.bk, !2646, !DIExpression(), !6467)
    #dbg_value(i64 %i.bk, !2658, !DIExpression(), !6469)
    #dbg_value(i64 %i.bk, !2663, !DIExpression(), !6471)
    #dbg_value(i64 %.val.i.i, !2647, !DIExpression(), !6472)
    #dbg_value(i64 %.val.i.i, !2659, !DIExpression(), !6469)
    #dbg_value(i64 %.val.i.i, !2664, !DIExpression(), !6471)
    #dbg_value(i64 %.val1.i.i, !2648, !DIExpression(), !6472)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !6731 ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6474)
    #dbg_value(i64 %i.bl, !2668, !DIExpression(), !6476)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !6732
    #dbg_value(i64 %i.bm, !2669, !DIExpression(), !6476)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !6733        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !6733
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6478)
  call void @llvm.assume(i1 %i.bo), !dbg !6734, !noalias !6646
  %i.bp = sub i64 0, %.val1.i.i, !dbg !6735
  %i.bq = and i64 %i.bn, %i.bp, !dbg !6736        ; 3 uses
    #dbg_value(i64 %i.bq, !2649, !DIExpression(), !6479)
    #dbg_value(i64 %i.bq, !2668, !DIExpression(), !6481)
  %i.br = add i64 %.val3.i.i, 17, !dbg !6737
    #dbg_value(i64 %i.br, !2669, !DIExpression(), !6481)
  %i.bs = add i64 %i.br, %i.bq, !dbg !6738        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !6738
    #dbg_value(i1 %i.bt, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6483)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !6739, !noalias !6646
  call void @llvm.assume(i1 %i.bv), !dbg !6739, !noalias !6646
    #dbg_value(i64 %.val1.i.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6485)
    #dbg_value(i64 %.val1.i.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6486)
    #dbg_value(i64 %i.bs, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6485)
    #dbg_value(i64 %i.bs, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6486)
    #dbg_value(i64 %i.bq, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6485)
    #dbg_value(i64 %i.bq, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6486)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !6740
  call void @llvm.assume(i1 %i.bw), !dbg !6741, !noalias !6646
    #dbg_value(i64 %.val1.i.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6487)
    #dbg_value(i64 %.val1.i.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6488)
    #dbg_value(i64 %i.bs, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6487)
    #dbg_value(i64 %i.bs, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6488)
    #dbg_value(i64 %i.bq, !2860, !DIExpression(), !6488)
    #dbg_value(i64 %i.bq, !2875, !DIExpression(), !6490)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !6646
    #dbg_value(ptr %.val2.i.i, !2876, !DIExpression(), !6490)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6487)
    #dbg_value(ptr poison, !2879, !DIExpression(), !6492)
    #dbg_value(ptr poison, !2885, !DIExpression(), !6494)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6492)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6494)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6496)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6498)
    #dbg_value(i64 %.val1.i.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6492)
    #dbg_value(i64 %.val1.i.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6494)
    #dbg_value(i64 %.val1.i.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6496)
    #dbg_value(i64 %.val1.i.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6498)
    #dbg_value(i64 %i.bs, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6492)
    #dbg_value(i64 %i.bs, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6494)
    #dbg_value(i64 %i.bs, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6496)
    #dbg_value(i64 %i.bs, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6498)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !6742
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !6742

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !6743
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6498)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6496)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6494)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6492)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6487)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !6744
    #dbg_value(ptr %i.bz, !2848, !DIExpression(), !6487)
    #dbg_value(ptr %i.bz, !2882, !DIExpression(), !6492)
    #dbg_value(ptr %i.bz, !2888, !DIExpression(), !6494)
    #dbg_value(ptr %i.bz, !2891, !DIExpression(), !6496)
    #dbg_value(ptr %i.bz, !2897, !DIExpression(), !6498)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !6745, !noalias !6650
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6746

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6711, !noalias !6640
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6712

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !6747 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !6747 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !6747
    #dbg_value(i16 %.sroa.13.1.lcssa, !2760, !DIExpression(), !6499)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2900, !DIExpression(), !6501)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2903, !DIExpression(), !6503)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2905, !DIExpression(), !6505)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !6748
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6749
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !6750
    #dbg_value(i64 %i.cc, !2755, !DIExpression(), !6506)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2908, !DIExpression(), !6508)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !6751
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !6645)
    #dbg_value(i64 %i.cc, !2339, !DIExpression(), !6509)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !6752 ; 2 uses
    #dbg_value(i64 1, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6431)
    #dbg_value(i64 %i.ce, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6431)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !6753    ; 2 uses
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6645)
    #dbg_value(i64 %i.ce, !2284, !DIExpression(), !6510)
    #dbg_value(i64 %i.ce, !2407, !DIExpression(), !6295)
  call void @llvm.experimental.noalias.scope.decl(metadata !6651), !dbg !6754
    #dbg_value(ptr poison, !2911, !DIExpression(DW_OP_deref, DW_OP_deref), !6514)
    #dbg_value(ptr %0, !2915, !DIExpression(), !6514)
    #dbg_value(ptr %0, !2918, !DIExpression(), !6516)
    #dbg_value(ptr %0, !2929, !DIExpression(), !6518)
    #dbg_value(i64 %i.ce, !2916, !DIExpression(), !6514)
    #dbg_value(i64 %i.ce, !2922, !DIExpression(), !6516)
    #dbg_value(i64 %i.ce, !2934, !DIExpression(), !6520)
    #dbg_value(i64 %i.ce, !2938, !DIExpression(), !6522)
    #dbg_value(i64 1, !2940, !DIExpression(), !6526)
  %i.cg = load ptr, ptr %0, align 8, !dbg !6755, !alias.scope !6651, !noalias !6652, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.cg, !2935, !DIExpression(), !6520)
    #dbg_value(ptr %i.cg, !2939, !DIExpression(), !6522)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !6756
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !6757
    #dbg_value(ptr poison, !2944, !DIExpression(), !6528)
    #dbg_value(ptr poison, !2942, !DIExpression(), !6529)
    #dbg_value(ptr %i.ci, !2939, !DIExpression(), !6526)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !6758
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !6759, !noalias !6653, !nonnull !1539, !align !2946, !noundef !1539
    #dbg_value(ptr poison, !2947, !DIExpression(DW_OP_deref), !6531)
    #dbg_value(ptr %i.cj, !2950, !DIExpression(), !6531)
    #dbg_value(ptr %.val.i, !2954, !DIExpression(), !6533)
    #dbg_value(ptr %i.cj, !2957, !DIExpression(), !6533)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.m, !dbg !6760 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !2285, !DIExpression(), !6534)
    #dbg_value(i64 %i.ck, !2960, !DIExpression(), !6536)
    #dbg_value(i64 %i.ck, !2971, !DIExpression(), !6538)
    #dbg_value(ptr %i.a, !2967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6539)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6541)
    #dbg_value(ptr %i.a, !2975, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6542)
    #dbg_value(ptr %i.a, !2978, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6544)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6546)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6548)
    #dbg_value(ptr poison, !2983, !DIExpression(), !6551)
    #dbg_value(ptr poison, !2990, !DIExpression(), !6552)
    #dbg_value(ptr poison, !2996, !DIExpression(), !6554)
    #dbg_value(i64 %i.ck, !2991, !DIExpression(), !6552)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6555)
    #dbg_value(i64 0, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6555)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !6761 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !6762
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !6763, !noalias !6654
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6764
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !6764 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !6765
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6766, !prof !3016

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !6761
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.de, %.lr.ph.i ], !dbg !6764
    #dbg_value(i16 %.lcssa.i, !3013, !DIExpression(), !6566)
    #dbg_value(i16 %.lcssa.i, !3014, !DIExpression(), !6567)
    #dbg_value(i16 %.lcssa.i, !3017, !DIExpression(), !6569)
    #dbg_value(i16 %.lcssa.i, !3020, !DIExpression(), !6571)
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6767
  %i.cp = zext nneg i16 %i.co to i64, !dbg !6768
    #dbg_value(i64 %i.cp, !3011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6572)
    #dbg_value(i64 1, !3011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6572)
  %i.cq = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cp, !dbg !6769
  %i.cr = and i64 %i.cq, %i.at, !dbg !6769        ; 2 uses
    #dbg_value(i64 1, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6573)
    #dbg_value(i64 %i.cr, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6573)
    #dbg_value(i64 %i.cr, !3022, !DIExpression(), !6575)
    #dbg_value(ptr poison, !3027, !DIExpression(), !6575)
    #dbg_value(ptr poison, !3029, !DIExpression(), !6577)
    #dbg_value(ptr poison, !3035, !DIExpression(), !6579)
    #dbg_value(ptr poison, !3035, !DIExpression(), !6581)
    #dbg_value(i64 0, !3036, !DIExpression(), !6581)
    #dbg_value(i64 %i.cr, !3033, !DIExpression(), !6577)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr, !dbg !6770
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !6771, !noundef !1539
  %i.cu = icmp sgt i8 %i.ct, -1, !dbg !6772
    #dbg_value(i1 %i.cu, !3041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6585)
  br i1 %i.cu, label %bb.p, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6773, !prof !2205

bb.p:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.ar, !3043, !DIExpression(), !6587)
  %.val142.i.i = load <16 x i8>, ptr %i.ar, align 16, !dbg !6774
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !6589)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6591)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6592)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6593)
  %i.cv = icmp slt <16 x i8> %.val142.i.i, zeroinitializer, !dbg !6775
  %i.cw = bitcast <16 x i1> %i.cv to i16, !dbg !6775 ; 2 uses
    #dbg_value(i16 %i.cw, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !6595)
  %.not.i13.i = icmp ne i16 %i.cw, 0, !dbg !6776
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true), !dbg !6777
  %i.cy = zext nneg i16 %i.cx to i64, !dbg !6777
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6597)
    #dbg_value(i64 %i.cy, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6597)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !6778
    #dbg_value(i64 %i.cy, !3022, !DIExpression(), !6575)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6779

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ]
    #dbg_value(i64 0, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6573)
    #dbg_value(i64 poison, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6573)
    #dbg_value(ptr undef, !2983, !DIExpression(), !6551)
    #dbg_value(i64 %i.at, !2984, !DIExpression(), !6598)
  %i.da = add i64 %i.cz, 16, !dbg !6780           ; 2 uses
    #dbg_value(i64 %i.da, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6555)
  %i.db = add i64 %i.da, %.sroa.0.010.i, !dbg !6781
    #dbg_value(!DIArgList(i64 %i.db, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6555)
  %.sroa.0.0.i12 = and i64 %i.db, %i.at, !dbg !6761 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12, !2992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6555)
    #dbg_value(i64 %.sroa.0.0.i12, !2997, !DIExpression(), !6554)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12, !dbg !6762
    #dbg_value(ptr %i.dc, !2999, !DIExpression(), !6599)
    #dbg_value(ptr %i.dc, !2070, !DIExpression(), !6600)
    #dbg_value(<2 x i64> zeroinitializer, !2074, !DIExpression(), !6601)
    #dbg_value(ptr %i.dc, !2077, !DIExpression(), !6602)
    #dbg_value(ptr undef, !2080, !DIExpression(), !6602)
    #dbg_value(i64 16, !2081, !DIExpression(), !6602)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !6763, !noalias !6654
    #dbg_value(<2 x i64> poison, !2074, !DIExpression(), !6601)
    #dbg_value(<2 x i64> poison, !2993, !DIExpression(), !6603)
    #dbg_value(ptr poison, !3008, !DIExpression(), !6604)
    #dbg_value(ptr poison, !3009, !DIExpression(), !6604)
    #dbg_value(ptr poison, !3010, !DIExpression(), !6604)
    #dbg_value(<2 x i64> poison, !3001, !DIExpression(), !6605)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6606)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6607)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6608)
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6764
  %i.de = bitcast <16 x i1> %i.dd to i16, !dbg !6764 ; 2 uses
    #dbg_value(i16 %i.de, !3013, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !6566)
  %.not.i.i = icmp eq i16 %i.de, 0, !dbg !6765
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6766, !prof !3062

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3022, !DIExpression(), !6575)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBY_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EBY_:bb.a
    #dbg_value(ptr poison, !2585, !DIExpression(), !6896)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !7237, !noalias !7182
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !7238

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2589, !DIExpression(), !6899)
    #dbg_value(i64 %i.ah, !2673, !DIExpression(), !6923)
    #dbg_value(i64 %i.ah, !2595, !DIExpression(), !6921)
    #dbg_value(ptr %i.am, !2596, !DIExpression(), !6937)
    #dbg_value(ptr %i.am, !2674, !DIExpression(), !6923)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6938)
    #dbg_value(i64 poison, !2726, !DIExpression(), !6940)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !7239 ; 9 uses
    #dbg_value(ptr %i.ar, !2602, !DIExpression(), !6938)
    #dbg_value(ptr %i.ar, !2443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6941)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2443, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6941)
    #dbg_value(i64 poison, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6941)
    #dbg_value(i64 0, !2443, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6941)
    #dbg_value(i64 %i.ai, !2484, !DIExpression(), !6849)
    #dbg_value(i64 %i.ai, !2492, !DIExpression(), !6851)
    #dbg_value(ptr %i.ar, !2474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6942)
    #dbg_value(ptr %i.ar, !2469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6847)
    #dbg_value(i64 %i.ai, !2474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6942)
    #dbg_value(i64 %i.ai, !2469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6847)
    #dbg_value(ptr %i.ar, !2483, !DIExpression(), !6849)
    #dbg_value(ptr %i.ar, !2491, !DIExpression(), !6851)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !7240, !noalias !7182
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !7241
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !7242 ; 6 uses
    #dbg_value(i64 %i.at, !2726, !DIExpression(), !6940)
    #dbg_value(i64 %i.at, !2443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6941)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !7241
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !7241
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !7241 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2726, !DIExpression(), !6940)
    #dbg_value(i64 %.sroa.07.0.i.i, !2443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6941)
    #dbg_value(ptr %i.d, !2283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6943)
    #dbg_value(i64 24, !2283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6943)
    #dbg_value(i64 16, !2283, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6943)
    #dbg_value(ptr %i.ar, !2283, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6943)
    #dbg_value(i64 %i.at, !2283, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6943)
    #dbg_value(i64 %.sroa.07.0.i.i, !2283, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6943)
    #dbg_value(i64 0, !2283, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6943)
  store ptr %i.d, ptr %i.a, align 8, !dbg !7243, !noalias !7180
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7243 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7243 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7243 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !7243 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !7243 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !7243 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7243, !noalias !7180
    #dbg_value(ptr poison, !2397, !DIExpression(), !6944)
    #dbg_value(ptr poison, !2734, !DIExpression(), !6946)
    #dbg_value(<2 x i64> poison, !2742, !DIExpression(), !6949)
    #dbg_value(ptr poison, !2749, !DIExpression(), !6950)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6952)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6953)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6954)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !7244, !alias.scope !7183, !noalias !7184, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 0, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
    #dbg_value(i64 %i.aw, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7185)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6809)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !7245
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !7245

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !7246, !alias.scope !7183, !noalias !7184, !nonnull !1539, !noundef !1539 ; 2 uses
    #dbg_value(ptr %i.ay, !2397, !DIExpression(), !6944)
    #dbg_value(ptr %i.ay, !2734, !DIExpression(), !6946)
    #dbg_value(ptr %i.ay, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !7247
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6954)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !2253, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !7185)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !7248
    #dbg_value(<16 x i1> %i.az, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !7249
    #dbg_value(i16 %i.ba, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
  br label %.preheader, !dbg !7245

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !7250
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7251, !noalias !7180
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7252

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !7251, !noalias !7186
  resume { ptr, i32 } %i.bb, !dbg !7253

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7185)
    #dbg_value(ptr %.sroa.0.038, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 %.sroa.5.037, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
    #dbg_value(i16 %.sroa.13.035, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6956)
    #dbg_value(i16 %.sroa.13.035, !2759, !DIExpression(), !6958)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !7254
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !7255

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 %.sroa.5.131, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2762, !DIExpression(), !6960)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !7256 ; 3 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(ptr %i.bc, !2765, !DIExpression(), !6962)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !7257
    #dbg_value(<2 x i64> poison, !2772, !DIExpression(), !6965)
    #dbg_value(ptr poison, !2774, !DIExpression(), !6966)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !6968)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !6969)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !6970)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !7258
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !7259 ; 2 uses
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !7260    ; 2 uses
    #dbg_value(ptr %i.bc, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 %i.bf, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
    #dbg_value(i16 %i.be, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(ptr undef, !2754, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6956)
    #dbg_value(i16 %i.be, !2759, !DIExpression(), !6958)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !7254
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !7255

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !7261, !alias.scope !7183, !noalias !7184
  br label %._crit_edge39, !dbg !7261

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7261 ; 2 uses
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6971)
    #dbg_value(i64 poison, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6971)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !7262
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7262, !noalias !7180
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7263, !noalias !7180
    #dbg_value(ptr %i.a, !2419, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6972)
    #dbg_value(ptr %0, !2777, !DIExpression(), !6974)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2780, !DIExpression(), !6974)
    #dbg_value(ptr %0, !2782, !DIExpression(), !6976)
    #dbg_value(ptr %0, !2788, !DIExpression(), !6978)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2785, !DIExpression(), !6976)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2792, !DIExpression(), !6978)
    #dbg_value(i64 1, !2786, !DIExpression(), !6976)
    #dbg_value(i64 1, !2793, !DIExpression(), !6978)
    #dbg_value(ptr %0, !2794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6979)
    #dbg_value(i64 1, !2794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6979)
    #dbg_value(i64 32, !2795, !DIExpression(), !6980)
    #dbg_value(i64 32, !2796, !DIExpression(), !6981)
    #dbg_value(ptr %0, !2807, !DIExpression(), !6983)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2810, !DIExpression(), !6983)
    #dbg_value(i64 32, !2811, !DIExpression(), !6983)
    #dbg_value(i64 32, !2812, !DIExpression(), !6984)
    #dbg_value(i64 0, !2814, !DIExpression(), !6985)
    #dbg_value(i64 4, !2813, !DIExpression(), !6986)
    #dbg_value(i64 4, !2815, !DIExpression(), !6987)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !7264, !noalias !7186

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !7265, !noalias !7186
  unreachable, !dbg !7265

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !7187), !dbg !7251
    #dbg_value(ptr %i.a, !2820, !DIExpression(), !6991)
  call void @llvm.experimental.noalias.scope.decl(metadata !7188), !dbg !7266, !noalias !7186
    #dbg_value(ptr %i.a, !2826, !DIExpression(), !6995)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7267, !alias.scope !7189, !noalias !7186 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7267, !alias.scope !7189, !noalias !7186 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7267, !alias.scope !7189, !noalias !7186, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !6997)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !6997)
    #dbg_value(ptr poison, !2833, !DIExpression(), !6997)
    #dbg_value(ptr poison, !2837, !DIExpression(), !6999)
    #dbg_value(ptr poison, !2842, !DIExpression(), !7001)
    #dbg_value(ptr poison, !2851, !DIExpression(), !7003)
    #dbg_value(ptr poison, !2863, !DIExpression(), !7005)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !7268
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7269

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7267, !alias.scope !7189, !noalias !7186
    #dbg_value(ptr poison, !2846, !DIExpression(), !7001)
    #dbg_value(i64 %.val.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7001)
    #dbg_value(i64 %.val.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7003)
    #dbg_value(i64 %.val1.i.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7001)
    #dbg_value(i64 %.val1.i.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7003)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !7270
    #dbg_value(i64 %.val.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7007)
    #dbg_value(i64 %.val1.i.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7007)
    #dbg_value(i64 %i.bk, !2646, !DIExpression(), !7007)
    #dbg_value(i64 %i.bk, !2658, !DIExpression(), !7009)
    #dbg_value(i64 %i.bk, !2663, !DIExpression(), !7011)
    #dbg_value(i64 %.val.i.i, !2647, !DIExpression(), !7012)
    #dbg_value(i64 %.val.i.i, !2659, !DIExpression(), !7009)
    #dbg_value(i64 %.val.i.i, !2664, !DIExpression(), !7011)
    #dbg_value(i64 %.val1.i.i, !2648, !DIExpression(), !7012)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !7271 ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7014)
    #dbg_value(i64 %i.bl, !2668, !DIExpression(), !7016)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !7272
    #dbg_value(i64 %i.bm, !2669, !DIExpression(), !7016)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !7273        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !7273
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7018)
  call void @llvm.assume(i1 %i.bo), !dbg !7274, !noalias !7186
  %i.bp = sub i64 0, %.val1.i.i, !dbg !7275
  %i.bq = and i64 %i.bn, %i.bp, !dbg !7276        ; 3 uses
    #dbg_value(i64 %i.bq, !2649, !DIExpression(), !7019)
    #dbg_value(i64 %i.bq, !2668, !DIExpression(), !7021)
  %i.br = add i64 %.val3.i.i, 17, !dbg !7277
    #dbg_value(i64 %i.br, !2669, !DIExpression(), !7021)
  %i.bs = add i64 %i.br, %i.bq, !dbg !7278        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !7278
    #dbg_value(i1 %i.bt, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7023)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !7279, !noalias !7186
  call void @llvm.assume(i1 %i.bv), !dbg !7279, !noalias !7186
    #dbg_value(i64 %.val1.i.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7025)
    #dbg_value(i64 %.val1.i.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7026)
    #dbg_value(i64 %i.bs, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7025)
    #dbg_value(i64 %i.bs, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7026)
    #dbg_value(i64 %i.bq, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7025)
    #dbg_value(i64 %i.bq, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7026)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !7280
  call void @llvm.assume(i1 %i.bw), !dbg !7281, !noalias !7186
    #dbg_value(i64 %.val1.i.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7027)
    #dbg_value(i64 %.val1.i.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7028)
    #dbg_value(i64 %i.bs, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7027)
    #dbg_value(i64 %i.bs, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7028)
    #dbg_value(i64 %i.bq, !2860, !DIExpression(), !7028)
    #dbg_value(i64 %i.bq, !2875, !DIExpression(), !7030)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !7186
    #dbg_value(ptr %.val2.i.i, !2876, !DIExpression(), !7030)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7027)
    #dbg_value(ptr poison, !2879, !DIExpression(), !7032)
    #dbg_value(ptr poison, !2885, !DIExpression(), !7034)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7032)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7034)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7036)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7038)
    #dbg_value(i64 %.val1.i.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7032)
    #dbg_value(i64 %.val1.i.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7034)
    #dbg_value(i64 %.val1.i.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7036)
    #dbg_value(i64 %.val1.i.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7038)
    #dbg_value(i64 %i.bs, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7032)
    #dbg_value(i64 %i.bs, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7034)
    #dbg_value(i64 %i.bs, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7036)
    #dbg_value(i64 %i.bs, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7038)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !7282
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !7282

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !7283
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7038)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7036)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7034)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7032)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7027)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !7284
    #dbg_value(ptr %i.bz, !2848, !DIExpression(), !7027)
    #dbg_value(ptr %i.bz, !2882, !DIExpression(), !7032)
    #dbg_value(ptr %i.bz, !2888, !DIExpression(), !7034)
    #dbg_value(ptr %i.bz, !2891, !DIExpression(), !7036)
    #dbg_value(ptr %i.bz, !2897, !DIExpression(), !7038)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !7285, !noalias !7190
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7286

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7251, !noalias !7180
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7252

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !7287 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !7287 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !7287
    #dbg_value(i16 %.sroa.13.1.lcssa, !2760, !DIExpression(), !7039)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2900, !DIExpression(), !7041)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2903, !DIExpression(), !7043)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2905, !DIExpression(), !7045)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !7288
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7289
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !7290
    #dbg_value(i64 %i.cc, !2755, !DIExpression(), !7046)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2908, !DIExpression(), !7048)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !7291
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(i64 %i.cc, !2339, !DIExpression(), !7049)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !7292 ; 2 uses
    #dbg_value(i64 1, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6971)
    #dbg_value(i64 %i.ce, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6971)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !7293    ; 2 uses
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7185)
    #dbg_value(i64 %i.ce, !2284, !DIExpression(), !7050)
    #dbg_value(i64 %i.ce, !2407, !DIExpression(), !6835)
  call void @llvm.experimental.noalias.scope.decl(metadata !7191), !dbg !7294
    #dbg_value(ptr poison, !3073, !DIExpression(DW_OP_deref, DW_OP_deref), !7054)
    #dbg_value(ptr %0, !3077, !DIExpression(), !7054)
    #dbg_value(ptr %0, !3080, !DIExpression(), !7056)
    #dbg_value(ptr %0, !3096, !DIExpression(), !7058)
    #dbg_value(i64 %i.ce, !3078, !DIExpression(), !7054)
    #dbg_value(i64 %i.ce, !3089, !DIExpression(), !7056)
    #dbg_value(i64 %i.ce, !3101, !DIExpression(), !7060)
    #dbg_value(i64 %i.ce, !3109, !DIExpression(), !7062)
    #dbg_value(i64 1, !3113, !DIExpression(), !7066)
  %i.cg = load ptr, ptr %0, align 8, !dbg !7295, !alias.scope !7191, !noalias !7192, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.cg, !3105, !DIExpression(), !7060)
    #dbg_value(ptr %i.cg, !3112, !DIExpression(), !7062)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !7296
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !7297
    #dbg_value(ptr poison, !3125, !DIExpression(), !7068)
    #dbg_value(ptr poison, !3119, !DIExpression(), !7069)
    #dbg_value(ptr %i.ci, !3112, !DIExpression(), !7066)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !7298
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !7299, !noalias !7193, !nonnull !1539, !align !2946, !noundef !1539
    #dbg_value(ptr poison, !3127, !DIExpression(DW_OP_deref), !7071)
    #dbg_value(ptr %i.cj, !3130, !DIExpression(), !7071)
    #dbg_value(ptr %.val.i, !3135, !DIExpression(), !7073)
    #dbg_value(ptr %i.cj, !3138, !DIExpression(), !7073)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit unwind label %bb.m, !dbg !7300 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !2285, !DIExpression(), !7074)
    #dbg_value(i64 %i.ck, !2960, !DIExpression(), !7076)
    #dbg_value(i64 %i.ck, !2971, !DIExpression(), !7078)
    #dbg_value(ptr %i.a, !2967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7079)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7081)
    #dbg_value(ptr %i.a, !2975, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7082)
    #dbg_value(ptr %i.a, !2978, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7084)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7086)
    #dbg_value(ptr %i.a, !2399, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7088)
    #dbg_value(ptr poison, !2983, !DIExpression(), !7091)
    #dbg_value(ptr poison, !2990, !DIExpression(), !7092)
    #dbg_value(ptr poison, !2996, !DIExpression(), !7094)
    #dbg_value(i64 %i.ck, !2991, !DIExpression(), !7092)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7095)
    #dbg_value(i64 0, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7095)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !7301 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !7302
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !7303, !noalias !7194
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7304
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !7304 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !7305
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7306, !prof !3016

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !7301
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %i.de, %.lr.ph.i ], !dbg !7304
    #dbg_value(i16 %.lcssa.i, !3013, !DIExpression(), !7106)
    #dbg_value(i16 %.lcssa.i, !3014, !DIExpression(), !7107)
    #dbg_value(i16 %.lcssa.i, !3017, !DIExpression(), !7109)
    #dbg_value(i16 %.lcssa.i, !3020, !DIExpression(), !7111)
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7307
  %i.cp = zext nneg i16 %i.co to i64, !dbg !7308
    #dbg_value(i64 %i.cp, !3011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7112)
    #dbg_value(i64 1, !3011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7112)
  %i.cq = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cp, !dbg !7309
  %i.cr = and i64 %i.cq, %i.at, !dbg !7309        ; 2 uses
    #dbg_value(i64 1, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7113)
    #dbg_value(i64 %i.cr, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7113)
    #dbg_value(i64 %i.cr, !3022, !DIExpression(), !7115)
    #dbg_value(ptr poison, !3027, !DIExpression(), !7115)
    #dbg_value(ptr poison, !3029, !DIExpression(), !7117)
    #dbg_value(ptr poison, !3035, !DIExpression(), !7119)
    #dbg_value(ptr poison, !3035, !DIExpression(), !7121)
    #dbg_value(i64 0, !3036, !DIExpression(), !7121)
    #dbg_value(i64 %i.cr, !3033, !DIExpression(), !7117)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr, !dbg !7310
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !7311, !noundef !1539
  %i.cu = icmp sgt i8 %i.ct, -1, !dbg !7312
    #dbg_value(i1 %i.cu, !3041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7125)
  br i1 %i.cu, label %bb.p, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7313, !prof !2205

bb.p:                                             ; preds = %._crit_edge.i
    #dbg_value(ptr %i.ar, !3043, !DIExpression(), !7127)
  %.val142.i.i = load <16 x i8>, ptr %i.ar, align 16, !dbg !7314
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !7129)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !7131)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !7132)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !7133)
  %i.cv = icmp slt <16 x i8> %.val142.i.i, zeroinitializer, !dbg !7315
  %i.cw = bitcast <16 x i1> %i.cv to i16, !dbg !7315 ; 2 uses
    #dbg_value(i16 %i.cw, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !7135)
  %.not.i13.i = icmp ne i16 %i.cw, 0, !dbg !7316
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true), !dbg !7317
  %i.cy = zext nneg i16 %i.cx to i64, !dbg !7317
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7137)
    #dbg_value(i64 %i.cy, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7137)
  call void @llvm.assume(i1 %.not.i13.i), !dbg !7318
    #dbg_value(i64 %i.cy, !3022, !DIExpression(), !7115)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7319

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ]
    #dbg_value(i64 0, !2994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7113)
    #dbg_value(i64 poison, !2994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7113)
    #dbg_value(ptr undef, !2983, !DIExpression(), !7091)
    #dbg_value(i64 %i.at, !2984, !DIExpression(), !7138)
  %i.da = add i64 %i.cz, 16, !dbg !7320           ; 2 uses
    #dbg_value(i64 %i.da, !2992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7095)
  %i.db = add i64 %i.da, %.sroa.0.010.i, !dbg !7321
    #dbg_value(!DIArgList(i64 %i.db, i64 %i.at), !2992, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7095)
  %.sroa.0.0.i12 = and i64 %i.db, %i.at, !dbg !7301 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12, !2992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7095)
    #dbg_value(i64 %.sroa.0.0.i12, !2997, !DIExpression(), !7094)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12, !dbg !7302
    #dbg_value(ptr %i.dc, !2999, !DIExpression(), !7139)
    #dbg_value(ptr %i.dc, !2070, !DIExpression(), !7140)
    #dbg_value(<2 x i64> zeroinitializer, !2074, !DIExpression(), !7141)
    #dbg_value(ptr %i.dc, !2077, !DIExpression(), !7142)
    #dbg_value(ptr undef, !2080, !DIExpression(), !7142)
    #dbg_value(i64 16, !2081, !DIExpression(), !7142)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !7303, !noalias !7194
    #dbg_value(<2 x i64> poison, !2074, !DIExpression(), !7141)
    #dbg_value(<2 x i64> poison, !2993, !DIExpression(), !7143)
    #dbg_value(ptr poison, !3008, !DIExpression(), !7144)
    #dbg_value(ptr poison, !3009, !DIExpression(), !7144)
    #dbg_value(ptr poison, !3010, !DIExpression(), !7144)
    #dbg_value(<2 x i64> poison, !3001, !DIExpression(), !7145)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !7146)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !7147)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !7148)
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7304
  %i.de = bitcast <16 x i1> %i.dd to i16, !dbg !7304 ; 2 uses
    #dbg_value(i16 %i.de, !3013, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !7106)
  %.not.i.i = icmp eq i16 %i.de, 0, !dbg !7305
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7306, !prof !3062

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3022, !DIExpression(), !7115)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2286, !DIExpression(), !7149)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2968, !DIExpression(), !7150)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2401, !DIExpression(), !7151)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2976, !DIExpression(), !7078)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2407, !DIExpression(), !7153)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12.i, !dbg !7322
    #dbg_value(i8 poison, !2969, !DIExpression(), !7155)
  %i.dg = lshr i64 %i.ck, 57, !dbg !7323
  %i.dh = trunc nuw nsw i64 %i.dg to i8, !dbg !7324 ; 2 uses
  %i.di = add nsw i64 %.sroa.0.0.i12.i, -16, !dbg !7325
  %i.dj = and i64 %i.di, %i.at, !dbg !7326
  store i8 %i.dh, ptr %i.df, align 1, !dbg !7327, !noalias !7186
  %i.dk = getelementptr i8, ptr %i.ar, i64 %i.dj, !dbg !7328
  %i.dl = getelementptr i8, ptr %i.dk, i64 16, !dbg !7328
  store i8 %i.dh, ptr %i.dl, align 1, !dbg !7329, !noalias !7186
    #dbg_value(i64 24, !2408, !DIExpression(), !6835)
    #dbg_value(i64 24, !2408, !DIExpression(), !7153)
    #dbg_value(i64 24, !3065, !DIExpression(), !7160)
  %i.dm = load ptr, ptr %0, align 8, !dbg !7330, !alias.scope !7183, !noalias !7184, !nonnull !1539, !noundef !1539
  %.neg.i.i = mul i64 %i.ce, -24, !dbg !7331
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.neg.i.i, !dbg !7332
  %i.do = getelementptr i8, ptr %i.dn, i64 -24, !dbg !7332
    #dbg_value(ptr %i.do, !3066, !DIExpression(), !7160)
    #dbg_value(ptr %i.a, !2403, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7162)
    #dbg_value(ptr %i.a, !2410, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7164)
  %.neg96.i.i = mul i64 %.sroa.0.0.i12.i, -24, !dbg !7333
  %i.dp = getelementptr i8, ptr %i.ar, i64 %.neg96.i.i, !dbg !7334
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24, !dbg !7334
    #dbg_value(ptr %i.dq, !3067, !DIExpression(), !7160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 1 dereferenceable(24) %i.do, i64 24, i1 false), !dbg !7335, !noalias !7186
    #dbg_value(ptr %.sroa.0.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 %.sroa.5.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7185)
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6809)
  %i.dr = icmp eq i64 %i.cf, 0, !dbg !7245
  br i1 %i.dr, label %._crit_edge39.loopexit, label %.preheader, !dbg !7245

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B21_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceB13_) #26, !dbg !7336
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7337

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.026, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7338
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.027, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7338
  %i.ds = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !7339
  %i.dt = insertvalue { i64, i64 } %i.ds, i64 %.sroa.4.0.i, 1, !dbg !7339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7340
  ret { i64, i64 } %i.dt, !dbg !7341
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !384 {
bb.a:
    #dbg_value(ptr %0, !2820, !DIExpression(), !7389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7390), !dbg !7391
    #dbg_value(ptr %0, !2826, !DIExpression(), !7345)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7393
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7393, !alias.scope !7390 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !7393, !alias.scope !7390 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7393
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !7393, !alias.scope !7390, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !7347)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !7347)
    #dbg_value(ptr poison, !2833, !DIExpression(), !7347)
    #dbg_value(ptr poison, !2837, !DIExpression(), !7349)
    #dbg_value(ptr poison, !2842, !DIExpression(), !7351)
    #dbg_value(ptr poison, !2851, !DIExpression(), !7353)
    #dbg_value(ptr poison, !2863, !DIExpression(), !7355)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !7394
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !7395

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7393
  %.val.i = load i64, ptr %i.e, align 8, !dbg !7393, !alias.scope !7390
    #dbg_value(ptr poison, !2846, !DIExpression(), !7351)
    #dbg_value(i64 %.val.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7351)
    #dbg_value(i64 %.val.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7353)
    #dbg_value(i64 %.val1.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7351)
    #dbg_value(i64 %.val1.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7353)
  %i.f = add i64 %.val3.i, 1, !dbg !7396
    #dbg_value(i64 %.val.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7357)
    #dbg_value(i64 %.val1.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7357)
    #dbg_value(i64 %i.f, !2646, !DIExpression(), !7357)
    #dbg_value(i64 %i.f, !2658, !DIExpression(), !7359)
    #dbg_value(i64 %i.f, !2663, !DIExpression(), !7361)
    #dbg_value(i64 %.val.i, !2647, !DIExpression(), !7362)
    #dbg_value(i64 %.val.i, !2659, !DIExpression(), !7359)
    #dbg_value(i64 %.val.i, !2664, !DIExpression(), !7361)
    #dbg_value(i64 %.val1.i, !2648, !DIExpression(), !7362)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !7397    ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7364)
    #dbg_value(i64 %i.g, !2668, !DIExpression(), !7366)
  %i.h = add i64 %.val1.i, -1, !dbg !7398
    #dbg_value(i64 %i.h, !2669, !DIExpression(), !7366)
  %i.i = add i64 %i.h, %i.g, !dbg !7399           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !7399
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7368)
  tail call void @llvm.assume(i1 %i.j), !dbg !7400
  %i.k = sub i64 0, %.val1.i, !dbg !7401
  %i.l = and i64 %i.i, %i.k, !dbg !7402           ; 3 uses
    #dbg_value(i64 %i.l, !2649, !DIExpression(), !7369)
    #dbg_value(i64 %i.l, !2668, !DIExpression(), !7371)
  %i.m = add i64 %.val3.i, 17, !dbg !7403
    #dbg_value(i64 %i.m, !2669, !DIExpression(), !7371)
  %i.n = add i64 %i.m, %i.l, !dbg !7404           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !7404
    #dbg_value(i1 %i.o, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7373)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !7405
  tail call void @llvm.assume(i1 %i.q), !dbg !7405
    #dbg_value(i64 %.val1.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7375)
    #dbg_value(i64 %.val1.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7376)
    #dbg_value(i64 %i.n, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7375)
    #dbg_value(i64 %i.n, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7376)
    #dbg_value(i64 %i.l, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7375)
    #dbg_value(i64 %i.l, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7376)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !7406
  tail call void @llvm.assume(i1 %i.r), !dbg !7407
    #dbg_value(i64 %.val1.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7377)
    #dbg_value(i64 %.val1.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7378)
    #dbg_value(i64 %i.n, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7377)
    #dbg_value(i64 %i.n, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7378)
    #dbg_value(i64 %i.l, !2860, !DIExpression(), !7378)
    #dbg_value(i64 %i.l, !2875, !DIExpression(), !7380)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
    #dbg_value(ptr %.val2.i, !2876, !DIExpression(), !7380)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7377)
    #dbg_value(ptr poison, !2879, !DIExpression(), !7382)
    #dbg_value(ptr poison, !2885, !DIExpression(), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7382)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7386)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7388)
    #dbg_value(i64 %.val1.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(i64 %.val1.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7384)
    #dbg_value(i64 %.val1.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7386)
    #dbg_value(i64 %.val1.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7388)
    #dbg_value(i64 %i.n, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7382)
    #dbg_value(i64 %i.n, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7384)
    #dbg_value(i64 %i.n, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7386)
    #dbg_value(i64 %i.n, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7388)
  %i.s = icmp eq i64 %i.n, 0, !dbg !7408
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %bb.b, !dbg !7408

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !7409
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7388)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7386)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7382)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7377)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !7410
    #dbg_value(ptr %i.u, !2848, !DIExpression(), !7377)
    #dbg_value(ptr %i.u, !2882, !DIExpression(), !7382)
    #dbg_value(ptr %i.u, !2888, !DIExpression(), !7384)
    #dbg_value(ptr %i.u, !2891, !DIExpression(), !7386)
    #dbg_value(ptr %i.u, !2897, !DIExpression(), !7388)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !dbg !7411, !noalias !7390
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7412

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !7391
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 !dbg !7413 {
bb.a:
    #dbg_value(ptr %0, !7482, !DIExpression(), !7486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7487), !dbg !7539
    #dbg_value(ptr %0, !7488, !DIExpression(), !7418)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7540
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !7540, !alias.scope !7487
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7540
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7540, !alias.scope !7487
  %.val2.i = load ptr, ptr %0, align 8, !dbg !7540, !alias.scope !7487, !nonnull !1539, !align !2946, !noundef !1539 ; 9 uses
    #dbg_value(ptr poison, !7490, !DIExpression(), !7431)
    #dbg_value(ptr poison, !7493, !DIExpression(), !7432)
    #dbg_value(ptr poison, !7496, !DIExpression(), !7433)
    #dbg_value(ptr poison, !7504, !DIExpression(DW_OP_deref), !7434)
    #dbg_value(ptr poison, !7505, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7434)
    #dbg_value(ptr poison, !7503, !DIExpression(), !7434)
    #dbg_value(i64 1, !7511, !DIExpression(), !7437)
    #dbg_value(i64 1, !7514, !DIExpression(), !7440)
    #dbg_value(ptr poison, !7517, !DIExpression(), !7443)
    #dbg_value(i8 -1, !7520, !DIExpression(), !7446)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !7524, !DIExpression(), !7449)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !7541 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !7541, !noalias !7487, !noundef !1539 ; 3 uses
    #dbg_value(i64 0, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %i.d, !7506, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !7542
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i, !dbg !7543

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7494, !DIExpression(), !7452)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7512, !DIExpression(), !7437)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7515, !DIExpression(), !7440)
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !7544
    #dbg_value(i64 %i.f, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7507, !DIExpression(), !7453)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7527, !DIExpression(), !7456)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7522, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7530, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7456)
  %i.g = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i, !dbg !7546 ; 2 uses
    #dbg_value(ptr %i.h, !7518, !DIExpression(), !7443)
  %i.i = load i8, ptr %i.h, align 1, !dbg !7547, !noalias !7487, !noundef !1539
  %i.j = icmp eq i8 %i.i, -128, !dbg !7547
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !7548

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !7521, !DIExpression(), !7446)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7463)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7465)
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !7549
  %i.l = load i64, ptr %i.c, align 8, !dbg !7550, !noalias !7487, !noundef !1539
  %i.m = and i64 %i.l, %i.k, !dbg !7551
  store i8 -1, ptr %i.h, align 1, !dbg !7552, !noalias !7487
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !7553, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !7554
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !7554
  store i8 -1, ptr %i.p, align 1, !dbg !7555, !noalias !7487
  %i.q = load i64, ptr %i.e, align 8, !dbg !7556, !noalias !7487, !noundef !1539
  %i.r = add i64 %i.q, -1, !dbg !7556
  store i64 %i.r, ptr %i.e, align 8, !dbg !7556, !noalias !7487
  br label %bb.c, !dbg !7557

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
    #dbg_value(i64 %i.f, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !7542
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.us.i.i, !dbg !7543

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !7494, !DIExpression(), !7452)
    #dbg_value(i64 %.sroa.0.03.i.i, !7512, !DIExpression(), !7437)
    #dbg_value(i64 %.sroa.0.03.i.i, !7515, !DIExpression(), !7440)
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !7544
    #dbg_value(i64 %i.s, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %.sroa.0.03.i.i, !7507, !DIExpression(), !7453)
    #dbg_value(i64 %.sroa.0.03.i.i, !7527, !DIExpression(), !7456)
    #dbg_value(i64 %.sroa.0.03.i.i, !7522, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.i.i, !7530, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7456)
  %i.t = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i, !dbg !7546 ; 2 uses
    #dbg_value(ptr %i.u, !7518, !DIExpression(), !7443)
  %i.v = load i8, ptr %i.u, align 1, !dbg !7547, !noalias !7487, !noundef !1539
  %i.w = icmp eq i8 %i.v, -128, !dbg !7547
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !7548

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.s, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !7542
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.i.i, !dbg !7543

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !7544
    #dbg_value(ptr %.val2.i, !7521, !DIExpression(), !7446)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7463)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7465)
  %i.x = add i64 %.sroa.0.03.i.i, -16, !dbg !7549
  %i.y = load i64, ptr %i.c, align 8, !dbg !7550, !noalias !7487, !noundef !1539
  %i.z = and i64 %i.y, %i.x, !dbg !7551
  store i8 -1, ptr %i.u, align 1, !dbg !7552, !noalias !7487
  %i.aa = load ptr, ptr %.val2.i, align 8, !dbg !7553, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z, !dbg !7554
  %i.ac = getelementptr i8, ptr %i.ab, i64 16, !dbg !7554
  store i8 -1, ptr %i.ac, align 1, !dbg !7555, !noalias !7487
    #dbg_value(ptr %.val.i, !7508, !DIExpression(), !7469)
    #dbg_value(ptr %.val2.i, !7531, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7535, !DIExpression(), !7472)
    #dbg_value(i64 %.val1.i, !7532, !DIExpression(), !7459)
  %i.ad = load ptr, ptr %.val2.i, align 8, !dbg !7558, !noalias !7487, !nonnull !1539, !noundef !1539
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !7559
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg22.i.i, !dbg !7560
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !dbg !7561, !noalias !7487, !inline_history !7475
  %i.af = load i64, ptr %i.e, align 8, !dbg !7556, !noalias !7487, !noundef !1539
  %i.ag = add i64 %i.af, -1, !dbg !7556
  store i64 %i.ag, ptr %i.e, align 8, !dbg !7556, !noalias !7487
  br label %bb.d, !dbg !7557

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !dbg !7562, !noalias !7487, !noundef !1539 ; 3 uses
    #dbg_value(i64 %i.ah, !7537, !DIExpression(), !7478)
  %i.ai = icmp ult i64 %i.ah, 8, !dbg !7563
  %i.aj = add i64 %i.ah, 1, !dbg !7563
  %i.ak = lshr i64 %i.aj, 3, !dbg !7563
  %i.al = mul nuw i64 %i.ak, 7, !dbg !7563
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al, !dbg !7563
    #dbg_value(i64 %.sroa.04.0.i.i, !7537, !DIExpression(), !7478)
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !7564
  %i.an = load i64, ptr %i.am, align 8, !dbg !7564, !noalias !7487, !noundef !1539
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !7565
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an, !dbg !7565
  store i64 %i.ap, ptr %i.ao, align 8, !dbg !7565, !noalias !7487
  ret void, !dbg !7539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB4_8capturesNtB13_8Captures22interpolate_bytes_into0NCB10_s_0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7573 {
bb.a:
    #dbg_value(ptr poison, !3315, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7904)
  %i.a = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7913)
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBV_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertBV_:bb.a
    #dbg_value(ptr %.val.i, !3043, !DIExpression(), !10624)
  %.val142.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !10982
    #dbg_value(<2 x i64> poison, !3050, !DIExpression(), !10626)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !10628)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !10629)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !10630)
  %i.aq = icmp slt <16 x i8> %.val142.i.i.i, zeroinitializer, !dbg !10983
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !10983 ; 2 uses
    #dbg_value(i16 %i.ar, !3053, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10632)
  %.not.i46.i.i = icmp ne i16 %i.ar, 0, !dbg !10984
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !10985
  %i.at = zext nneg i16 %i.as to i64, !dbg !10985
    #dbg_value(i64 poison, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10634)
    #dbg_value(i64 %i.at, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10634)
  call void @llvm.assume(i1 %.not.i46.i.i), !dbg !10986
    #dbg_value(i64 %i.at, !3022, !DIExpression(), !10612)
  br label %bb.l, !dbg !10987

bb.j:                                             ; preds = %.noexc24
  %i.au = load ptr, ptr %0, align 8, !dbg !10988, !alias.scope !10812, !noalias !10813, !nonnull !1539
  %i.av = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.w, !dbg !10988
    #dbg_value(ptr %i.av, !10755, !DIExpression(), !10858)
    #dbg_value(ptr %i.av, !10860, !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !10866)
    #dbg_value(i32 %3, !10863, !DIExpression(), !10867)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8, !dbg !10989 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !10989, !noundef !1539 ; 2 uses
  store i32 %3, ptr %i.aw, align 8, !dbg !10990
  call void @llvm.experimental.noalias.scope.decl(metadata !10868), !dbg !10991
    #dbg_value(ptr %i.a, !4372, !DIExpression(), !10639)
  call void @llvm.experimental.noalias.scope.decl(metadata !10869), !dbg !10992
    #dbg_value(ptr %i.a, !4379, !DIExpression(), !10643)
  call void @llvm.experimental.noalias.scope.decl(metadata !10870), !dbg !10993
    #dbg_value(ptr %i.a, !4385, !DIExpression(), !10647)
    #dbg_value(ptr %i.a, !4387, !DIExpression(), !10649)
    #dbg_value(i64 1, !4396, !DIExpression(), !10651)
    #dbg_value(i8 1, !4398, !DIExpression(), !10651)
    #dbg_value(i64 1, !4400, !DIExpression(), !10653)
    #dbg_value(i8 1, !4402, !DIExpression(), !10653)
  %i.ay = load ptr, ptr %i.a, align 8, !dbg !10994, !alias.scope !10871, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.ay, !4397, !DIExpression(), !10655)
    #dbg_value(ptr %i.ay, !4401, !DIExpression(), !10653)
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !10995, !noalias !10871
  %i.ba = icmp eq i64 %i.az, 1, !dbg !10996
  br i1 %i.ba, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10996

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !4350, !DIExpression(), !10657)
  fence acquire, !dbg !10997
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27, !dbg !10998
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10998

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit: ; preds = %bb.k, %bb.j, %bb.l
  %.sroa.3.0 = phi i32 [ undef, %bb.l ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ]
  %.sroa.0.0 = phi i32 [ 0, %bb.l ], [ 1, %bb.j ], [ 1, %bb.k ], !dbg !10777
  %i.bb = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !10999
  %i.bc = insertvalue { i32, i32 } %i.bb, i32 %.sroa.3.0, 1, !dbg !10999
  ret { i32, i32 } %i.bc, !dbg !10999

bb.l:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.at, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10756, !DIExpression(), !10872)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10771, !DIExpression(), !10775)
    #dbg_value(ptr %0, !10770, !DIExpression(), !10775)
  %i.bd = load ptr, ptr %i.a, align 8, !dbg !11000, !nonnull !1539, !noundef !1539
  %i.be = load i64, ptr %i.b, align 8, !dbg !11000, !noundef !1539
    #dbg_value(ptr %i.bd, !10772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10775)
    #dbg_value(ptr %i.bd, !10873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10883)
    #dbg_value(ptr %i.bd, !10884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10890)
    #dbg_value(ptr %i.bd, !10891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10896)
    #dbg_value(i64 %i.be, !10772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10775)
    #dbg_value(i64 %i.be, !10873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10883)
    #dbg_value(i64 %i.be, !10884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10890)
    #dbg_value(i64 %i.be, !10891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10896)
    #dbg_value(i32 %3, !10772, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10775)
    #dbg_value(i32 %3, !10873, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10883)
    #dbg_value(i32 %3, !10884, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10890)
    #dbg_value(i32 %3, !10891, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10896)
  call void @llvm.experimental.noalias.scope.decl(metadata !10897), !dbg !11001
    #dbg_value(ptr %0, !10877, !DIExpression(), !10668)
    #dbg_value(ptr %0, !10898, !DIExpression(), !10673)
    #dbg_value(i8 %i.k, !10878, !DIExpression(), !10668)
    #dbg_value(i8 %i.k, !10906, !DIExpression(), !10676)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10879, !DIExpression(), !10668)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10911, !DIExpression(), !10679)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10908, !DIExpression(), !10676)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10899, !DIExpression(), !10673)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10914, !DIExpression(), !10683)
    #dbg_value(i64 %.sroa.3.0.i.ph.i, !10918, !DIExpression(), !10686)
    #dbg_value(i64 1, !10920, !DIExpression(), !10690)
    #dbg_value(ptr %0, !10912, !DIExpression(), !10691)
  %i.bf = load ptr, ptr %0, align 8, !dbg !11002, !alias.scope !10897, !noalias !10924, !nonnull !1539, !noundef !1539 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.3.0.i.ph.i, !dbg !11003 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !11004, !noalias !10925, !noundef !1539
    #dbg_value(i8 %i.bh, !10880, !DIExpression(), !10695)
    #dbg_value(i8 %i.bh, !10909, !DIExpression(), !10676)
    #dbg_value(ptr %0, !10907, !DIExpression(), !10696)
    #dbg_value(ptr %0, !10926, !DIExpression(), !10699)
    #dbg_value(ptr %0, !10912, !DIExpression(), !10701)
    #dbg_value(ptr %0, !10912, !DIExpression(), !10703)
  %i.bi = and i8 %i.bh, 1, !dbg !11005
  %i.bj = zext nneg i8 %i.bi to i64, !dbg !11005
  %i.bk = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !11006
  %i.bl = load i64, ptr %i.i, align 8, !dbg !11007, !alias.scope !10897, !noalias !10924, !noundef !1539
  %i.bm = and i64 %i.bl, %i.bk, !dbg !11008
  store i8 %i.k, ptr %i.bg, align 1, !dbg !11009, !noalias !10925
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm, !dbg !11010
  %i.bo = getelementptr i8, ptr %i.bn, i64 16, !dbg !11010
  store i8 %i.k, ptr %i.bo, align 1, !dbg !11011, !noalias !10925
  %i.bp = load <2 x i64>, ptr %i.e, align 8, !dbg !11012, !alias.scope !10897, !noalias !10924
  %i.bq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bj, i64 0, !dbg !11012
  %i.br = sub <2 x i64> %i.bp, %i.bq, !dbg !11012
  store <2 x i64> %i.br, ptr %i.e, align 8, !dbg !11012, !alias.scope !10897, !noalias !10924
    #dbg_value(ptr %i.bf, !10915, !DIExpression(), !10683)
    #dbg_value(ptr %i.bf, !10919, !DIExpression(), !10686)
  %i.bs = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !11013
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bs, !dbg !11014 ; 3 uses
    #dbg_value(ptr %i.bt, !10881, !DIExpression(), !10709)
    #dbg_value(ptr poison, !10888, !DIExpression(), !10710)
    #dbg_value(ptr poison, !10922, !DIExpression(), !10711)
    #dbg_value(ptr %i.bt, !10919, !DIExpression(), !10690)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24, !dbg !11015
    #dbg_value(ptr %i.bu, !10894, !DIExpression(), !10712)
    #dbg_value(ptr %i.bu, !10929, !DIExpression(), !10715)
  store ptr %i.bd, ptr %i.bu, align 8, !dbg !11016, !noalias !10897
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bt, i64 -16, !dbg !11016
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11016, !noalias !10897
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bt, i64 -8, !dbg !11016
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11016, !noalias !10897
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEBJ_.exit, !dbg !10991

.noexc25:                                         ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %lpad.phi, !dbg !11017

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10931), !dbg !10991
    #dbg_value(ptr %i.a, !4372, !DIExpression(), !10719)
  call void @llvm.experimental.noalias.scope.decl(metadata !10932), !dbg !11018
    #dbg_value(ptr %i.a, !4379, !DIExpression(), !10723)
  call void @llvm.experimental.noalias.scope.decl(metadata !10933), !dbg !11019
    #dbg_value(ptr %i.a, !4385, !DIExpression(), !10727)
    #dbg_value(ptr %i.a, !4387, !DIExpression(), !10729)
    #dbg_value(i64 1, !4396, !DIExpression(), !10731)
    #dbg_value(i8 1, !4398, !DIExpression(), !10731)
    #dbg_value(i64 1, !4400, !DIExpression(), !10733)
    #dbg_value(i8 1, !4402, !DIExpression(), !10733)
  %i.bv = load ptr, ptr %i.a, align 8, !dbg !11020, !alias.scope !10934, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.bv, !4397, !DIExpression(), !10735)
    #dbg_value(ptr %i.bv, !4401, !DIExpression(), !10733)
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !dbg !11021, !noalias !10934
  %i.bx = icmp eq i64 %i.bw, 1, !dbg !11022
  br i1 %i.bx, label %bb.n, label %.noexc25, !dbg !11022

bb.n:                                             ; preds = %bb.m
    #dbg_value(i8 2, !4350, !DIExpression(), !10737)
  fence acquire, !dbg !11023
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %.noexc25 unwind label %bb.o, !dbg !11024

bb.o:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !11017
  unreachable, !dbg !11017
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 !dbg !11031 {
bb.a:
    #dbg_value(ptr %0, !11086, !DIExpression(), !11097)
    #dbg_value(ptr %0, !11098, !DIExpression(), !11103)
    #dbg_value(i64 %1, !11087, !DIExpression(), !11097)
    #dbg_value(i64 %1, !11104, !DIExpression(), !11108)
    #dbg_value(i64 %1, !11100, !DIExpression(), !11103)
    #dbg_value(i64 %2, !11088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11097)
    #dbg_value(i64 %3, !11088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11097)
  %.val = load i64, ptr %0, align 8, !dbg !11191  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11191 ; 3 uses
  %.val35 = load ptr, ptr %i.a, align 8, !dbg !11191 ; 3 uses
    #dbg_value(ptr poison, !4408, !DIExpression(), !11035)
    #dbg_value(i64 %2, !4422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11035)
    #dbg_value(i64 %3, !4422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11035)
    #dbg_value(i64 %3, !4426, !DIExpression(), !11037)
  %i.b = icmp eq i64 %3, 0, !dbg !11192
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !11192
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !11192

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.val, !4427, !DIExpression(), !11037)
  %4 = mul nuw i64 %.val, %3, !dbg !11193         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35) ]
    #dbg_value(ptr %.val35, !11089, !DIExpression(), !11109)
    #dbg_value(i64 %2, !11090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11109)
    #dbg_value(i64 %4, !11090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11109)
  %i.d = icmp eq i64 %1, 0, !dbg !11194
  br i1 %i.d, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit, !dbg !11194

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
    #dbg_value(ptr poison, !2879, !DIExpression(), !11039)
    #dbg_value(ptr poison, !2885, !DIExpression(), !11041)
    #dbg_value(ptr %.val35, !2882, !DIExpression(), !11039)
    #dbg_value(ptr %.val35, !2888, !DIExpression(), !11041)
    #dbg_value(ptr %.val35, !2891, !DIExpression(), !11043)
    #dbg_value(ptr %.val35, !2897, !DIExpression(), !11045)
    #dbg_value(i64 %2, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11039)
    #dbg_value(i64 %2, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11041)
    #dbg_value(i64 %2, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11043)
    #dbg_value(i64 %2, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11045)
    #dbg_value(i64 %4, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11039)
    #dbg_value(i64 %4, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11041)
    #dbg_value(i64 %4, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11043)
    #dbg_value(i64 %4, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11045)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !11195
    #dbg_value(i64 %2, !11111, !DIExpression(), !11117)
    #dbg_value(i64 %2, !11118, !DIExpression(), !11124)
  %i.e = inttoptr i64 %2 to ptr, !dbg !11196
  store ptr %i.e, ptr %i.a, align 8, !dbg !11197
  br label %bb.c, !dbg !11198

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
    #dbg_value(i64 %3, !11105, !DIExpression(), !11108)
  %i.f = mul nuw i64 %3, %1, !dbg !11199          ; 3 uses
    #dbg_value(i64 %i.f, !11092, !DIExpression(), !11125)
    #dbg_value(i64 %2, !11093, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11126)
    #dbg_value(i64 %i.f, !11093, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11126)
    #dbg_value(ptr poison, !11127, !DIExpression(), !11050)
    #dbg_value(ptr poison, !11132, !DIExpression(), !11053)
    #dbg_value(ptr %.val35, !11128, !DIExpression(), !11050)
    #dbg_value(ptr %.val35, !11135, !DIExpression(), !11053)
    #dbg_value(i64 %2, !11129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11050)
    #dbg_value(i64 %2, !11136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11053)
    #dbg_value(i64 %4, !11129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11050)
    #dbg_value(i64 %4, !11136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11053)
    #dbg_value(i64 %2, !11130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11050)
    #dbg_value(i64 %2, !11137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11053)
    #dbg_value(i64 %i.f, !11130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11050)
    #dbg_value(i64 %i.f, !11137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11053)
    #dbg_value(ptr poison, !11139, !DIExpression(), !11065)
    #dbg_value(ptr %.val35, !11141, !DIExpression(), !11065)
    #dbg_value(ptr %.val35, !11156, !DIExpression(), !11068)
    #dbg_value(i64 %2, !11142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11065)
    #dbg_value(i64 %2, !11157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11068)
    #dbg_value(i64 %4, !11142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11065)
    #dbg_value(i64 %4, !11157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11068)
    #dbg_value(i64 %2, !11143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11065)
    #dbg_value(i64 %i.f, !11143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11065)
    #dbg_value(i1 false, !11144, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11065)
    #dbg_value(i64 %i.f, !11145, !DIExpression(), !11069)
    #dbg_value(i64 %i.f, !11158, !DIExpression(), !11068)
    #dbg_value(ptr poison, !11146, !DIExpression(), !11070)
  %i.g = icmp ule i64 %i.f, %4, !dbg !11200
    #dbg_value(i1 true, !11160, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11073)
  tail call void @llvm.assume(i1 %i.g), !dbg !11201
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.val35, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #23, !dbg !11202 ; 2 uses
    #dbg_value(ptr %i.h, !11162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11187)
    #dbg_value(i64 poison, !11162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11187)
    #dbg_value(ptr poison, !11182, !DIExpression(), !11188)
  %i.i = icmp eq ptr %i.h, null, !dbg !11203
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !11204

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !11109
  br label %bb.e, !dbg !11205

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit
    #dbg_value(ptr %i.h, !11091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11189)
    #dbg_value(ptr %i.h, !11099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11103)
    #dbg_value(i64 poison, !11091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11189)
    #dbg_value(i64 poison, !11099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11103)
  store ptr %i.h, ptr %i.a, align 8, !dbg !11206
  %i.j = icmp sgt i64 %1, -1, !dbg !11207
  tail call void @llvm.assume(i1 %i.j), !dbg !11207
  br label %bb.c, !dbg !11198

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !11097
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ], !dbg !11097
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !11205
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1, !dbg !11205
  ret { i64, i64 } %i.l, !dbg !11205
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11208 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !11233, !DIExpression(), !11235)
    #dbg_value(i64 8, !11236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11241)
    #dbg_value(i64 24, !11236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11241)
    #dbg_value(ptr %0, !11237, !DIExpression(), !11241)
  %i.b = load i64, ptr %0, align 8, !dbg !11244, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11242), !dbg !11245
    #dbg_value(ptr %0, !3755, !DIExpression(), !11214)
    #dbg_value(ptr %0, !3801, !DIExpression(), !11216)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !11214)
    #dbg_value(i64 1, !3771, !DIExpression(), !11214)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11214)
    #dbg_value(i64 24, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11214)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !11218)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11219)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11221)
  %i.c = shl nuw i64 %i.b, 1, !dbg !11246
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !11221)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11223)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11223)
    #dbg_value(i64 poison, !3776, !DIExpression(), !11224)
    #dbg_value(i64 poison, !3838, !DIExpression(), !11226)
    #dbg_value(i64 4, !3839, !DIExpression(), !11226)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11228)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11228)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !11247 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !11229)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !11216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11248, !noalias !11242
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11249 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !11249, !alias.scope !11242
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !dbg !11249, !noalias !11242
  %i.f = load i64, ptr %i.a, align 8, !dbg !11250, !range !3518, !noalias !11242, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11251
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11252 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !11251

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !11253, !range !3841, !noalias !11242, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11253
  %i.k = load i64, ptr %i.j, align 8, !dbg !11253, !noalias !11242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11254, !noalias !11242
    #dbg_value(i64 %i.i, !11238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11243)
    #dbg_value(i64 %i.k, !11238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11243)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !11255
  unreachable, !dbg !11255

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !11256, !noalias !11242, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11254, !noalias !11242
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11216)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11216)
  store ptr %i.l, ptr %i.e, align 8, !dbg !11257, !alias.scope !11242
  %i.m = icmp sgt i64 %i.d, -1, !dbg !11258
  tail call void @llvm.assume(i1 %i.m), !dbg !11258
  store i64 %i.d, ptr %0, align 8, !dbg !11259, !alias.scope !11242
  ret void, !dbg !11260
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11261 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !11286, !DIExpression(), !11288)
    #dbg_value(i64 8, !11289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11294)
    #dbg_value(i64 16, !11289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11294)
    #dbg_value(ptr %0, !11290, !DIExpression(), !11294)
  %i.b = load i64, ptr %0, align 8, !dbg !11297, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11295), !dbg !11298
    #dbg_value(ptr %0, !3755, !DIExpression(), !11267)
    #dbg_value(ptr %0, !3801, !DIExpression(), !11269)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !11267)
    #dbg_value(i64 1, !3771, !DIExpression(), !11267)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11267)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11267)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !11271)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11272)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11274)
  %i.c = shl nuw i64 %i.b, 1, !dbg !11299
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !11274)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11276)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11276)
    #dbg_value(i64 poison, !3776, !DIExpression(), !11277)
    #dbg_value(i64 poison, !3838, !DIExpression(), !11279)
    #dbg_value(i64 4, !3839, !DIExpression(), !11279)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !11281)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !11281)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !11300 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !11282)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !11269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11301, !noalias !11295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11302 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !11302, !alias.scope !11295
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !11302, !noalias !11295
  %i.f = load i64, ptr %i.a, align 8, !dbg !11303, !range !3518, !noalias !11295, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11304
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11305 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !11304

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !11306, !range !3841, !noalias !11295, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11306
  %i.k = load i64, ptr %i.j, align 8, !dbg !11306, !noalias !11295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11307, !noalias !11295
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDBN_EE8grow_oneBT_:bb.a
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12574, !alias.scope !12567
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !dbg !12574, !noalias !12567
  %i.f = load i64, ptr %i.a, align 8, !dbg !12575, !range !3518, !noalias !12567, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12576
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12577 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12576

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12578, !range !3841, !noalias !12567, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12578
  %i.k = load i64, ptr %i.j, align 8, !dbg !12578, !noalias !12567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12579, !noalias !12567
    #dbg_value(i64 %i.i, !12563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(i64 %i.k, !12563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12568)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12580
  unreachable, !dbg !12580

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12581, !noalias !12567, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12579, !noalias !12567
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12555)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12541)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12555)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12541)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12582, !alias.scope !12567
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12583
  tail call void @llvm.assume(i1 %i.m), !dbg !12583
  store i64 %i.d, ptr %0, align 8, !dbg !12584, !alias.scope !12567
  ret void, !dbg !12585
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtNtNtBT_3dfa7onepass8EpsilonsEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12586 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12611, !DIExpression(), !12613)
    #dbg_value(i64 8, !12614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_value(i64 16, !12614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12619)
    #dbg_value(ptr %0, !12615, !DIExpression(), !12619)
  %i.b = load i64, ptr %0, align 8, !dbg !12622, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12620), !dbg !12623
    #dbg_value(ptr %0, !3755, !DIExpression(), !12592)
    #dbg_value(ptr %0, !3801, !DIExpression(), !12594)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !12592)
    #dbg_value(i64 1, !3771, !DIExpression(), !12592)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12592)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12592)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !12596)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12597)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12599)
  %i.c = shl nuw i64 %i.b, 1, !dbg !12624
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !12599)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12601)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12601)
    #dbg_value(i64 poison, !3776, !DIExpression(), !12602)
    #dbg_value(i64 poison, !3838, !DIExpression(), !12604)
    #dbg_value(i64 4, !3839, !DIExpression(), !12604)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12606)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12606)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !12625 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !12607)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !12594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12626, !noalias !12620
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12627 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12627, !alias.scope !12620
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !12627, !noalias !12620
  %i.f = load i64, ptr %i.a, align 8, !dbg !12628, !range !3518, !noalias !12620, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12629
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12630 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12629

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12631, !range !3841, !noalias !12620, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12631
  %i.k = load i64, ptr %i.j, align 8, !dbg !12631, !noalias !12620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12632, !noalias !12620
    #dbg_value(i64 %i.i, !12616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12621)
    #dbg_value(i64 %i.k, !12616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12621)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12633
  unreachable, !dbg !12633

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12634, !noalias !12620, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12632, !noalias !12620
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12608)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12594)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12608)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12594)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12635, !alias.scope !12620
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12636
  tail call void @llvm.assume(i1 %i.m), !dbg !12636
  store i64 %i.d, ptr %0, align 8, !dbg !12637, !alias.scope !12620
  ret void, !dbg !12638
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12639 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12664, !DIExpression(), !12666)
    #dbg_value(i64 8, !12667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12672)
    #dbg_value(i64 16, !12667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12672)
    #dbg_value(ptr %0, !12668, !DIExpression(), !12672)
  %i.b = load i64, ptr %0, align 8, !dbg !12675, !range !3519, !noundef !1539 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12673), !dbg !12676
    #dbg_value(ptr %0, !3755, !DIExpression(), !12645)
    #dbg_value(ptr %0, !3801, !DIExpression(), !12647)
    #dbg_value(i64 %i.b, !3770, !DIExpression(), !12645)
    #dbg_value(i64 1, !3771, !DIExpression(), !12645)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12645)
    #dbg_value(i64 16, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12645)
    #dbg_declare(ptr %i.a, !3809, !DIExpression(), !12649)
    #dbg_value(i64 %i.b, !3773, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12650)
    #dbg_value(i64 %i.b, !3838, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12652)
  %i.c = shl nuw i64 %i.b, 1, !dbg !12677
    #dbg_value(i64 %i.c, !3839, !DIExpression(), !12652)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12654)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12654)
    #dbg_value(i64 poison, !3776, !DIExpression(), !12655)
    #dbg_value(i64 poison, !3838, !DIExpression(), !12657)
    #dbg_value(i64 4, !3839, !DIExpression(), !12657)
    #dbg_value(ptr undef, !2361, !DIExpression(DW_OP_deref), !12659)
    #dbg_value(ptr undef, !2366, !DIExpression(DW_OP_deref), !12659)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !12678 ; 3 uses
    #dbg_value(i64 %i.d, !3777, !DIExpression(), !12660)
    #dbg_value(i64 %i.d, !3806, !DIExpression(), !12647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12679, !noalias !12673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12680 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !12680, !alias.scope !12673
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !12680, !noalias !12673
  %i.f = load i64, ptr %i.a, align 8, !dbg !12681, !range !3518, !noalias !12673, !noundef !1539
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12682
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12683 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12682

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12684, !range !3841, !noalias !12673, !noundef !1539
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12684
  %i.k = load i64, ptr %i.j, align 8, !dbg !12684, !noalias !12673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12685, !noalias !12673
    #dbg_value(i64 %i.i, !12669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12674)
    #dbg_value(i64 %i.k, !12669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12674)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !dbg !12686
  unreachable, !dbg !12686

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !12687, !noalias !12673, !nonnull !1539, !noundef !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12685, !noalias !12673
    #dbg_value(ptr %i.l, !3778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12661)
    #dbg_value(ptr %i.l, !3805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12647)
    #dbg_value(i64 poison, !3778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12661)
    #dbg_value(i64 poison, !3805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12647)
  store ptr %i.l, ptr %i.e, align 8, !dbg !12688, !alias.scope !12673
  %i.m = icmp sgt i64 %i.d, -1, !dbg !12689
  tail call void @llvm.assume(i1 %i.m), !dbg !12689
  store i64 %i.d, ptr %0, align 8, !dbg !12690, !alias.scope !12673
  ret void, !dbg !12691
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 !dbg !12697 {
bb.a:
    #dbg_value(ptr poison, !12767, !DIExpression(), !12777)
    #dbg_value(i64 %1, !12768, !DIExpression(), !12777)
    #dbg_value(i64 %1, !12778, !DIExpression(), !12782)
    #dbg_value(i64 %1, !12783, !DIExpression(), !12788)
    #dbg_value(i64 %1, !12789, !DIExpression(), !12795)
    #dbg_value(i64 %1, !12796, !DIExpression(), !12800)
    #dbg_value(i64 %2, !12769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12777)
    #dbg_value(i64 %3, !12769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12777)
    #dbg_declare(ptr poison, !12801, !DIExpression(), !12817)
    #dbg_value(i64 %3, !12779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12782)
    #dbg_value(i64 %3, !12790, !DIExpression(), !12795)
    #dbg_value(i64 %3, !12797, !DIExpression(), !12800)
    #dbg_value(i64 %2, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12782)
    #dbg_value(ptr poison, !12784, !DIExpression(), !12818)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !12885 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !12885 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !12885
    #dbg_value(i1 %i.c, !12792, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12819)
    #dbg_value(i1 %i.c, !12820, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12823)
    #dbg_value(i64 %i.b, !12785, !DIExpression(), !12824)
    #dbg_value(i64 %i.b, !12791, !DIExpression(), !12819)
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !12886, !prof !2672
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !12886, !prof !2672

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %2, !12770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12825)
    #dbg_value(i64 %i.b, !12770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12825)
    #dbg_value(ptr poison, !4408, !DIExpression(), !12710)
    #dbg_value(i64 %2, !4422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12710)
    #dbg_value(i64 %3, !4422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12710)
    #dbg_value(i64 %3, !4426, !DIExpression(), !12712)
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit, !dbg !12887

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
    #dbg_value(i64 %.0.val, !4427, !DIExpression(), !12712)
  %4 = mul nuw i64 %3, %.0.val, !dbg !12888       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %.8.val, !12774, !DIExpression(), !12826)
    #dbg_value(i64 %2, !12775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12826)
    #dbg_value(i64 %4, !12775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12826)
    #dbg_value(ptr poison, !12827, !DIExpression(), !12715)
    #dbg_value(ptr poison, !12832, !DIExpression(), !12718)
    #dbg_value(ptr %.8.val, !12828, !DIExpression(), !12715)
    #dbg_value(ptr %.8.val, !12834, !DIExpression(), !12718)
    #dbg_value(i64 %2, !12829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12715)
    #dbg_value(i64 %2, !12835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12718)
    #dbg_value(i64 %4, !12829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12715)
    #dbg_value(i64 %4, !12835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12718)
    #dbg_value(i64 %2, !12830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12715)
    #dbg_value(i64 %2, !12836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12718)
    #dbg_value(i64 %i.b, !12830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12715)
    #dbg_value(i64 %i.b, !12836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12718)
    #dbg_value(i8 0, !12837, !DIExpression(), !12718)
    #dbg_value(ptr poison, !12839, !DIExpression(), !12731)
    #dbg_value(ptr %.8.val, !12841, !DIExpression(), !12731)
    #dbg_value(ptr %.8.val, !12857, !DIExpression(), !12734)
    #dbg_value(i64 %2, !12842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12731)
    #dbg_value(i64 %2, !12858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12734)
    #dbg_value(i64 %4, !12842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12731)
    #dbg_value(i64 %4, !12858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12734)
    #dbg_value(i64 %2, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12731)
    #dbg_value(i64 %i.b, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12731)
    #dbg_value(i1 false, !12844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12731)
    #dbg_value(i64 %4, !12845, !DIExpression(), !12735)
    #dbg_value(ptr poison, !12846, !DIExpression(), !12736)
    #dbg_value(i64 %i.b, !12847, !DIExpression(), !12737)
    #dbg_value(i64 %i.b, !12859, !DIExpression(), !12734)
  %i.f = icmp uge i64 %i.b, %4, !dbg !12889
    #dbg_value(i1 true, !12861, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12740)
  tail call void @llvm.assume(i1 %i.f), !dbg !12890
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23, !dbg !12891
    #dbg_value(ptr poison, !12773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12863)
    #dbg_value(ptr poison, !12812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12864)
    #dbg_value(i64 poison, !12773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12863)
    #dbg_value(i64 poison, !12812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !12892

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !2677, !DIExpression(), !12742)
    #dbg_value(ptr poison, !2694, !DIExpression(), !12744)
    #dbg_value(i64 %2, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12742)
    #dbg_value(i64 %2, !2698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12744)
    #dbg_value(i64 %i.b, !2692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12742)
    #dbg_value(i64 %i.b, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12744)
    #dbg_value(i8 0, !2699, !DIExpression(), !12744)
    #dbg_value(i64 %2, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12746)
    #dbg_value(i64 %2, !2721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12748)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12746)
    #dbg_value(i64 %i.b, !2721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12748)
    #dbg_value(i1 false, !2705, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12746)
    #dbg_value(i64 0, !12865, !DIExpression(), !12751)
    #dbg_value(i64 0, !12872, !DIExpression(), !12754)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12755)
    #dbg_value(i64 %i.b, !12870, !DIExpression(), !12757)
    #dbg_value(i64 %i.b, !12875, !DIExpression(), !12759)
  %i.h = icmp eq i64 %i.b, 0, !dbg !12893
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !12893

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !12869, !DIExpression(), !12751)
    #dbg_value(i64 %2, !12874, !DIExpression(), !12754)
    #dbg_value(i64 %2, !12878, !DIExpression(), !12762)
  %i.i = inttoptr i64 %2 to ptr, !dbg !12894
    #dbg_value(ptr %i.i, !12812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12864)
    #dbg_value(ptr %i.i, !12773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12863)
    #dbg_value(i64 poison, !12812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
    #dbg_value(i64 poison, !12773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12863)
    #dbg_value(ptr poison, !12813, !DIExpression(), !12883)
  br label %bb.f, !dbg !12895

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !12896
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !12897
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !12898

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !12812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12864)
    #dbg_value(ptr %.pn8, !12773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12863)
    #dbg_value(i64 poison, !12812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
    #dbg_value(i64 poison, !12773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12863)
    #dbg_value(ptr poison, !12813, !DIExpression(), !12883)
  %i.k = icmp eq ptr %.pn8, null, !dbg !12899
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !12895

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12900
  store i64 %2, ptr %i.l, align 8, !dbg !12900
  br label %bb.g, !dbg !12901

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !12773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12863)
    #dbg_value(i64 %i.b, !12812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
    #dbg_value(ptr %.pn810, !12814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12884)
    #dbg_value(i64 %i.b, !12814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12884)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12902
  store ptr %.pn810, ptr %i.m, align 8, !dbg !12902
  br label %bb.g, !dbg !12903

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !12777
  store i64 %.sink11, ptr %i.n, align 8, !dbg !12777
  store i64 %.sink, ptr %0, align 8, !dbg !12777
  ret void, !dbg !12904
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12914 {
bb.a:
    #dbg_value(i64 %1, !12960, !DIExpression(), !12970)
    #dbg_value(i64 %1, !12971, !DIExpression(), !12975)
    #dbg_value(i64 %1, !12976, !DIExpression(), !12981)
    #dbg_value(i64 %1, !12982, !DIExpression(), !12988)
    #dbg_value(i64 %1, !12989, !DIExpression(), !12993)
    #dbg_value(i64 %1, !12994, !DIExpression(), !12997)
    #dbg_value(i1 %2, !12961, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12970)
    #dbg_declare(ptr poison, !12962, !DIExpression(), !12998)
    #dbg_value(i64 %3, !12963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12970)
    #dbg_value(i64 %4, !12963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12970)
    #dbg_declare(ptr poison, !12999, !DIExpression(), !13006)
    #dbg_value(i64 %4, !12972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12975)
    #dbg_value(i64 %4, !12983, !DIExpression(), !12988)
    #dbg_value(i64 %4, !12990, !DIExpression(), !12993)
    #dbg_value(i64 %3, !12972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12975)
    #dbg_value(i64 %3, !13003, !DIExpression(), !13007)
    #dbg_value(ptr poison, !12977, !DIExpression(), !13008)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !13033 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !13033 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !13033
    #dbg_value(i1 %i.c, !12985, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13009)
    #dbg_value(i1 %i.c, !13010, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13013)
    #dbg_value(i64 %i.b, !12978, !DIExpression(), !13014)
    #dbg_value(i64 %i.b, !12984, !DIExpression(), !13009)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !13034, !prof !2672
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !13034, !prof !2672

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !12964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13015)
    #dbg_value(i64 %i.b, !12964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13015)
  %i.e = icmp eq i64 %i.b, 0, !dbg !13035
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !13035

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13036
  store i64 0, ptr %i.f, align 8, !dbg !13036
  br label %bb.f, !dbg !13037

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !13038
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13039
  store i64 0, ptr %i.h, align 8, !dbg !13039
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13039
  store ptr %i.g, ptr %i.i, align 8, !dbg !13039
  br label %bb.f, !dbg !13040

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12930)
    #dbg_value(i64 %3, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12934)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12930)
    #dbg_value(i64 %i.b, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12934)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12935)
    #dbg_value(i64 %i.b, !2706, !DIExpression(), !12936)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13015
    #dbg_value(ptr poison, !12966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13028)
    #dbg_value(ptr poison, !12966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13028)
    #dbg_value(i64 poison, !12966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13028)
    #dbg_value(i64 poison, !12966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13028)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit, !dbg !13041

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !12970
  ret void, !dbg !13042

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !13025, !DIExpression(), !12937)
    #dbg_value(ptr poison, !13021, !DIExpression(), !12938)
    #dbg_value(i64 %3, !13026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12937)
    #dbg_value(i64 %3, !13022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12938)
    #dbg_value(i64 %i.b, !13026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12937)
    #dbg_value(i64 %i.b, !13022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12938)
    #dbg_value(i8 1, !13023, !DIExpression(), !12938)
    #dbg_value(i64 %3, !13029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12941)
    #dbg_value(i64 %i.b, !13029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12941)
    #dbg_value(i1 true, !2705, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12930)
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !13043
  br label %bb.h, !dbg !13044

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !2677, !DIExpression(), !12942)
    #dbg_value(ptr poison, !2694, !DIExpression(), !12943)
end_hunk_3
begin_hunk_4_@_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEE5clearBX_:bb.a
    #dbg_value(ptr %i.h, !5274, !DIExpression(), !13108)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !13341 ; 2 uses
    #dbg_value(ptr undef, !5276, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13110)
  %.cast.i.i = bitcast <16 x i1> %i.j to i16, !dbg !13342 ; 2 uses
    #dbg_value(i16 %.cast.i.i, !5281, !DIExpression(), !13124)
  %.not.i.i = icmp eq i16 %.cast.i.i, 0, !dbg !13335
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i, !dbg !13336

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1.i = phi ptr [ %.sroa.6.027.i, %bb.c ], [ %i.l, %.lr.ph.i.i ], !dbg !13343
  %.sroa.017.1.i = phi ptr [ %.sroa.017.028.i, %bb.c ], [ %i.k, %.lr.ph.i.i ], !dbg !13343 ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.818.026.i, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ], !dbg !13342 ; 3 uses
    #dbg_value(ptr %.sroa.017.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13103)
    #dbg_value(ptr %.sroa.6.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13103)
    #dbg_value(i16 %.lcssa.i.i, !5282, !DIExpression(), !13125)
    #dbg_value(i16 %.lcssa.i.i, !5295, !DIExpression(), !13127)
    #dbg_value(i16 %.lcssa.i.i, !5298, !DIExpression(), !13129)
    #dbg_value(i16 %.lcssa.i.i, !5300, !DIExpression(), !13131)
  %i.m = add i16 %.lcssa.i.i, -1, !dbg !13344
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !13345
  %i.o = zext nneg i16 %i.n to i64, !dbg !13346
    #dbg_value(i64 %i.o, !5277, !DIExpression(), !13132)
    #dbg_value(i16 %.lcssa.i.i, !5303, !DIExpression(), !13134)
  %i.p = and i16 %i.m, %.lcssa.i.i, !dbg !13347
    #dbg_value(i16 %i.p, !5206, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13103)
    #dbg_value(i64 %i.o, !5189, !DIExpression(), !13135)
    #dbg_value(i64 %i.o, !5166, !DIExpression(), !13136)
    #dbg_value(i64 %i.o, !5270, !DIExpression(), !13138)
    #dbg_value(ptr undef, !5162, !DIExpression(), !13067)
    #dbg_value(ptr %.sroa.017.1.i, !5269, !DIExpression(), !13138)
  %i.q = sub nsw i64 0, %i.o, !dbg !13348
  %i.r = getelementptr inbounds [24 x i8], ptr %.sroa.017.1.i, i64 %i.q, !dbg !13349
    #dbg_value(ptr %i.r, !5199, !DIExpression(), !13139)
  %i.s = add i64 %.sroa.1019.025.i, -1, !dbg !13350 ; 2 uses
    #dbg_value(i64 %i.s, !5206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13103)
    #dbg_value(ptr %i.r, !5207, !DIExpression(), !13140)
    #dbg_value(ptr poison, !5229, !DIExpression(), !13141)
    #dbg_value(ptr poison, !5224, !DIExpression(), !13142)
    #dbg_value(ptr %i.r, !5218, !DIExpression(), !13081)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -24, !dbg !13351 ; 2 uses
    #dbg_value(ptr %i.t, !5305, !DIExpression(), !13144)
    #dbg_value(ptr %i.t, !5309, !DIExpression(), !13146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13269), !dbg !13352
    #dbg_value(ptr %i.t, !5312, !DIExpression(), !13150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13270), !dbg !13353
    #dbg_value(ptr %i.t, !4372, !DIExpression(), !13154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13271), !dbg !13354
    #dbg_value(ptr %i.t, !4379, !DIExpression(), !13158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13272), !dbg !13355
    #dbg_value(ptr %i.t, !4385, !DIExpression(), !13162)
    #dbg_value(ptr %i.t, !4387, !DIExpression(), !13164)
    #dbg_value(i64 1, !4396, !DIExpression(), !13166)
    #dbg_value(i8 1, !4398, !DIExpression(), !13166)
    #dbg_value(i64 1, !4400, !DIExpression(), !13168)
    #dbg_value(i8 1, !4402, !DIExpression(), !13168)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !13356, !alias.scope !13273, !noalias !13266, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.u, !4397, !DIExpression(), !13170)
    #dbg_value(ptr %i.u, !4401, !DIExpression(), !13168)
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !13357, !noalias !13274
  %i.w = icmp eq i64 %i.v, 1, !dbg !13358
  br i1 %i.w, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i, !dbg !13358

bb.d:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i
    #dbg_value(i8 2, !4350, !DIExpression(), !13172)
  fence acquire, !dbg !13359
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i unwind label %bb.e, !dbg !13360

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i: ; preds = %bb.d, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_.exit.i
    #dbg_value(ptr %.sroa.017.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13103)
    #dbg_value(ptr %.sroa.6.1.i, !5206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13103)
    #dbg_value(i16 %i.p, !5206, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !13103)
    #dbg_value(i64 %i.s, !5206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13103)
    #dbg_value(ptr undef, !5198, !DIExpression(), !13069)
  %i.x = icmp eq i64 %i.s, 0, !dbg !13334
  br i1 %i.x, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit, label %bb.c, !dbg !13334

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !13276, !DIExpression(), !13175)
    #dbg_value(ptr poison, !13282, !DIExpression(), !13178)
    #dbg_value(ptr poison, !13285, !DIExpression(), !13181)
    #dbg_value(ptr poison, !13289, !DIExpression(), !13181)
    #dbg_value(i8 -1, !13291, !DIExpression(), !13191)
    #dbg_value(i8 -1, !13305, !DIExpression(), !13194)
    #dbg_value(i8 -1, !13309, !DIExpression(), !13197)
    #dbg_value(ptr %0, !13303, !DIExpression(), !13198)
    #dbg_value(ptr %0, !13300, !DIExpression(), !13199)
    #dbg_value(ptr %0, !13313, !DIExpression(), !13202)
    #dbg_value(ptr %0, !13315, !DIExpression(), !13205)
    #dbg_value(ptr %0, !13320, !DIExpression(), !13208)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13361
  %i.aa = load i64, ptr %i.z, align 8, !dbg !13361, !noundef !1539 ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !13361
  br i1 %i.ab, label %bb.i, label %bb.f, !dbg !13362

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !dbg !13363, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.ac, !13306, !DIExpression(), !13194)
    #dbg_value(ptr %i.ac, !13310, !DIExpression(), !13197)
  %i.ad = add i64 %i.aa, 17, !dbg !13364
    #dbg_value(i64 %i.ad, !13307, !DIExpression(), !13194)
    #dbg_value(i64 %i.ad, !13311, !DIExpression(), !13197)
    #dbg_value(ptr %i.ac, !13297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13209)
    #dbg_value(ptr %i.ac, !13292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13191)
    #dbg_value(i64 %i.ad, !13297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13209)
    #dbg_value(i64 %i.ad, !13292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13191)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 -1, i64 %i.ad, i1 false), !dbg !13365
    #dbg_value(i64 %i.aa, !13323, !DIExpression(), !13212)
  %i.ae = icmp ult i64 %i.aa, 8, !dbg !13366
  %i.af = add i64 %i.aa, 1, !dbg !13366
  %i.ag = lshr i64 %i.af, 3, !dbg !13366
  %i.ah = mul nuw i64 %i.ag, 7, !dbg !13366
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.ah, !dbg !13366
  br label %bb.i, !dbg !13366

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i
    #dbg_value(ptr poison, !13276, !DIExpression(), !13214)
    #dbg_value(ptr poison, !13282, !DIExpression(), !13216)
    #dbg_value(ptr poison, !13285, !DIExpression(), !13218)
    #dbg_value(ptr poison, !13289, !DIExpression(), !13218)
    #dbg_value(i8 -1, !13291, !DIExpression(), !13223)
    #dbg_value(i8 -1, !13305, !DIExpression(), !13225)
    #dbg_value(i8 -1, !13309, !DIExpression(), !13227)
    #dbg_value(ptr %0, !13303, !DIExpression(), !13228)
    #dbg_value(ptr %0, !13300, !DIExpression(), !13229)
    #dbg_value(ptr %0, !13313, !DIExpression(), !13231)
    #dbg_value(ptr %0, !13315, !DIExpression(), !13233)
    #dbg_value(ptr %0, !13320, !DIExpression(), !13235)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13367
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !13367, !noundef !1539 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !13367
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, label %bb.g, !dbg !13368

bb.g:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit
  %i.al = load ptr, ptr %0, align 8, !dbg !13369, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.al, !13306, !DIExpression(), !13225)
    #dbg_value(ptr %i.al, !13310, !DIExpression(), !13227)
  %i.am = add i64 %i.aj, 17, !dbg !13370
    #dbg_value(i64 %i.am, !13307, !DIExpression(), !13225)
    #dbg_value(i64 %i.am, !13311, !DIExpression(), !13227)
    #dbg_value(ptr %i.al, !13297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13236)
    #dbg_value(ptr %i.al, !13292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13223)
    #dbg_value(i64 %i.am, !13297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13236)
    #dbg_value(i64 %i.am, !13292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13223)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 -1, i64 %i.am, i1 false), !dbg !13371
    #dbg_value(i64 %i.aj, !13323, !DIExpression(), !13238)
  %i.an = icmp ult i64 %i.aj, 8, !dbg !13372
  %i.ao = add i64 %i.aj, 1, !dbg !13372
  %i.ap = lshr i64 %i.ao, 3, !dbg !13372
  %i.aq = mul nuw i64 %i.ap, 7, !dbg !13372
  %spec.select.i.i.i5 = select i1 %i.an, i64 %i.aj, i64 %i.aq, !dbg !13372
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, !dbg !13372

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit, %bb.g
  %i.ar = phi i64 [ %spec.select.i.i.i5, %bb.g ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit ], !dbg !13372
  store i64 0, ptr %i.a, align 8, !dbg !13373
    #dbg_value(i64 %i.ar, !13323, !DIExpression(), !13238)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13374
  store i64 %i.ar, ptr %i.as, align 8, !dbg !13374
  br label %bb.h, !dbg !13375

bb.h:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6
  ret void, !dbg !13375

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.at = phi i64 [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.e ], !dbg !13366
  store i64 0, ptr %i.a, align 8, !dbg !13376
    #dbg_value(i64 %i.at, !13323, !DIExpression(), !13212)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13377
  store i64 %i.at, ptr %i.au, align 8, !dbg !13377
  resume { ptr, i32 } %i.y, !dbg !13378
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, ptr noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !13389 {
bb.a:
    #dbg_value(ptr poison, !13626, !DIExpression(), !13633)
    #dbg_value(ptr poison, !13636, !DIExpression(), !13639)
    #dbg_value(ptr poison, !13634, !DIExpression(), !13640)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !13608, !DIExpression(), !13641)
    #dbg_value(ptr %0, !13642, !DIExpression(), !13648)
    #dbg_value(ptr %1, !13609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13641)
    #dbg_value(ptr poison, !13609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13641)
    #dbg_value(i64 24, !13610, !DIExpression(), !13641)
    #dbg_value(i64 24, !13649, !DIExpression(), !13654)
    #dbg_value(i64 24, !13649, !DIExpression(), !13656)
    #dbg_value(i64 24, !13657, !DIExpression(), !13662)
    #dbg_value(i64 24, !13663, !DIExpression(), !13670)
    #dbg_value(i64 24, !13671, !DIExpression(), !13686)
    #dbg_value(ptr %2, !13611, !DIExpression(), !13641)
    #dbg_declare(ptr %i.a, !13612, !DIExpression(), !13687)
    #dbg_value(i64 1, !13688, !DIExpression(), !13692)
    #dbg_value(i64 1, !13693, !DIExpression(), !13697)
    #dbg_value(ptr poison, !13698, !DIExpression(), !13706)
    #dbg_value(ptr poison, !13707, !DIExpression(), !13712)
    #dbg_value(ptr poison, !13707, !DIExpression(), !13714)
    #dbg_value(i8 -1, !13715, !DIExpression(), !13720)
  %.val52 = load ptr, ptr %0, align 8, !dbg !13969 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13969 ; 4 uses
  %.val53 = load i64, ptr %i.b, align 8, !dbg !13969, !noundef !1539 ; 2 uses
    #dbg_value(ptr poison, !13722, !DIExpression(), !13423)
    #dbg_value(ptr poison, !13734, !DIExpression(), !13424)
    #dbg_value(ptr poison, !13740, !DIExpression(), !13425)
    #dbg_value(ptr poison, !13745, !DIExpression(), !13426)
    #dbg_value(ptr poison, !13751, !DIExpression(), !13429)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13432)
    #dbg_value(ptr poison, !13751, !DIExpression(), !13434)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13436)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13438)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13440)
    #dbg_value(ptr poison, !13751, !DIExpression(), !13442)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13444)
    #dbg_value(ptr poison, !13751, !DIExpression(), !13446)
    #dbg_value(ptr poison, !13753, !DIExpression(), !13448)
    #dbg_value(i64 16, !13758, !DIExpression(), !13451)
    #dbg_value(i64 0, !13755, !DIExpression(), !13438)
    #dbg_value(i64 16, !13755, !DIExpression(), !13440)
    #dbg_value(i64 0, !13755, !DIExpression(), !13444)
    #dbg_value(i64 16, !13768, !DIExpression(), !13454)
    #dbg_value(i64 16, !13775, !DIExpression(), !13457)
  %i.c = add i64 %.val53, 1, !dbg !13970          ; 6 uses
    #dbg_value(i64 0, !13764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13451)
    #dbg_value(i64 %i.c, !13764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13451)
    #dbg_value(i64 0, !13783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13461)
    #dbg_value(i64 %i.c, !13783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13461)
    #dbg_value(i64 16, !13785, !DIExpression(), !13461)
    #dbg_value(i64 0, !13788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13466)
    #dbg_value(i64 16, !13792, !DIExpression(), !13466)
    #dbg_value(i64 16, !13796, !DIExpression(), !13471)
    #dbg_value(i64 %i.c, !13797, !DIExpression(), !13471)
    #dbg_value(i64 %i.c, !13793, !DIExpression(), !13472)
    #dbg_value(i64 %i.c, !13798, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !13473)
    #dbg_value(i64 %i.c, !13799, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !13474)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13466)
    #dbg_value(i64 0, !13746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 15, !13746, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13475)
    #dbg_value(i8 1, !13746, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !13475)
    #dbg_value(ptr undef, !13740, !DIExpression(), !13425)
    #dbg_value(ptr undef, !13734, !DIExpression(), !13424)
    #dbg_value(i64 15, !13735, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13476)
    #dbg_value(i64 15, !13805, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13479)
    #dbg_value(ptr undef, !13722, !DIExpression(), !13423)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !13736, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13480)
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !13971
  br i1 %.not6.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !13971

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
    #dbg_value(ptr %.val52, !13771, !DIExpression(), !13482)
    #dbg_value(ptr poison, !13772, !DIExpression(), !13482)
    #dbg_value(ptr poison, !13779, !DIExpression(), !13484)
    #dbg_value(i64 %i.c, !13773, !DIExpression(), !13482)
    #dbg_value(i64 %i.c, !13780, !DIExpression(), !13484)
    #dbg_value(ptr %.val52, !13778, !DIExpression(), !13484)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val52, i64 16, !dbg !13972
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val52, i64 %i.c, i1 false), !dbg !13973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13974
    #dbg_value(ptr %2, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13648)
    #dbg_value(i64 24, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13648)
    #dbg_value(i64 0, !13613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(i64 %i.c, !13613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13809)
    #dbg_value(ptr undef, !13634, !DIExpression(), !13640)
    #dbg_value(ptr undef, !13636, !DIExpression(), !13639)
    #dbg_value(ptr undef, !13626, !DIExpression(), !13633)
    #dbg_value(ptr undef, !13627, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13810)
  br label %._crit_edge, !dbg !13632

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !13975
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13466)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !13736, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13480)
    #dbg_value(i64 %i.e, !13798, !DIExpression(), !13473)
  %i.f = and i64 %i.c, 15, !dbg !13976
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13736, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13480)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !13788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13466)
    #dbg_value(i64 %i.f, !13799, !DIExpression(), !13474)
  %.not13.i.i.i = icmp ne i64 %i.f, 0, !dbg !13977
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13466)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !13736, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !13480)
  %i.g = zext i1 %.not13.i.i.i to i64, !dbg !13977
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13736, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13480)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !13788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13466)
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !13977 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13466)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !13736, !DIExpression(), !13480)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !13971
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !13971
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !13971

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !13971
  br label %bb.b, !dbg !13971

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13971
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader, !dbg !13971

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !13971
  tail call void @llvm.assume(i1 %lcmp.mod11), !dbg !13971
    #dbg_value(i64 16, !13735, !DIExpression(), !13476)
    #dbg_value(i64 16, !13805, !DIExpression(), !13479)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13737, !DIExpression(), !13489)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13806, !DIExpression(), !13479)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13746, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13747, !DIExpression(), !13490)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13754, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13754, !DIExpression(), !13436)
  %i.i = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i.epil.init, !dbg !13978 ; 2 uses
    #dbg_value(ptr %i.i, !13818, !DIExpression(), !13496)
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16, !dbg !13979
    #dbg_value(<2 x i64> poison, !13748, !DIExpression(), !13497)
    #dbg_declare(ptr poison, !13825, !DIExpression(), !13502)
    #dbg_value(<2 x i64> zeroinitializer, !13830, !DIExpression(), !13503)
    #dbg_declare(ptr poison, !13833, !DIExpression(), !13506)
    #dbg_declare(ptr poison, !13834, !DIExpression(), !13507)
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !13980
    #dbg_value(<16 x i8> %.lobit.i.i.epil, !13831, !DIExpression(), !13508)
    #dbg_declare(ptr poison, !13836, !DIExpression(), !13511)
    #dbg_declare(ptr poison, !13837, !DIExpression(), !13512)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !13981
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472), !dbg !13981
    #dbg_value(<2 x i64> %i.k, !13749, !DIExpression(), !13513)
    #dbg_value(<2 x i64> %i.k, !13839, !DIExpression(), !13518)
    #dbg_value(ptr %i.i, !13843, !DIExpression(), !13518)
    #dbg_value(ptr %i.i, !13851, !DIExpression(), !13521)
    #dbg_declare(ptr poison, !13854, !DIExpression(), !13522)
  store <2 x i64> %i.k, ptr %i.i, align 16, !dbg !13982
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !13746, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(ptr undef, !13740, !DIExpression(), !13425)
    #dbg_value(ptr undef, !13734, !DIExpression(), !13424)
    #dbg_value(i64 15, !13735, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13476)
    #dbg_value(i64 15, !13805, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13479)
    #dbg_value(ptr undef, !13722, !DIExpression(), !13423)
    #dbg_value(i64 poison, !13736, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13480)
  br label %._crit_edge.i, !dbg !13983

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
    #dbg_value(i64 %i.c, !13857, !DIExpression(DW_OP_constu, 16, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13525)
    #dbg_value(ptr %2, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13648)
    #dbg_value(ptr %2, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13648)
    #dbg_value(i64 24, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13648)
    #dbg_value(i64 24, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13648)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13983
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13983
    #dbg_value(i64 0, !13613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(i64 0, !13613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(i64 %i.c, !13613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13809)
    #dbg_value(i64 %i.c, !13613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13809)
    #dbg_value(ptr undef, !13634, !DIExpression(), !13640)
    #dbg_value(ptr undef, !13634, !DIExpression(), !13640)
    #dbg_value(ptr undef, !13636, !DIExpression(), !13639)
    #dbg_value(ptr undef, !13636, !DIExpression(), !13639)
    #dbg_value(ptr undef, !13626, !DIExpression(), !13633)
    #dbg_value(ptr undef, !13626, !DIExpression(), !13633)
    #dbg_value(ptr undef, !13627, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13810)
    #dbg_value(ptr undef, !13627, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13810)
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16), !dbg !13632
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16), !dbg !13632
  %i.n = getelementptr inbounds nuw i8, ptr %.val52, i64 %., !dbg !13972
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val52, i64 %.27, i1 false), !dbg !13973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13974
  store ptr %2, ptr %i.l, align 8, !dbg !13983
  store i64 24, ptr %i.m, align 8, !dbg !13983
  store ptr %0, ptr %i.a, align 8, !dbg !13983
  br label %.lr.ph, !dbg !13705

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 16, !13735, !DIExpression(), !13476)
    #dbg_value(i64 16, !13805, !DIExpression(), !13479)
    #dbg_value(i64 %.sroa.0.08.i, !13737, !DIExpression(), !13489)
    #dbg_value(i64 %.sroa.0.08.i, !13806, !DIExpression(), !13479)
    #dbg_value(i64 %.sroa.0.08.i, !13746, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 %.sroa.0.08.i, !13747, !DIExpression(), !13490)
    #dbg_value(i64 %.sroa.0.08.i, !13754, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.0.08.i, !13754, !DIExpression(), !13436)
  %i.o = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !13978 ; 2 uses
    #dbg_value(ptr %i.o, !13818, !DIExpression(), !13496)
  %.val5.i = load <16 x i8>, ptr %i.o, align 16, !dbg !13979
    #dbg_value(<2 x i64> poison, !13748, !DIExpression(), !13497)
    #dbg_declare(ptr poison, !13825, !DIExpression(), !13502)
    #dbg_value(<2 x i64> zeroinitializer, !13830, !DIExpression(), !13503)
    #dbg_declare(ptr poison, !13833, !DIExpression(), !13506)
    #dbg_declare(ptr poison, !13834, !DIExpression(), !13507)
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !13980
    #dbg_value(<16 x i8> %.lobit.i.i, !13831, !DIExpression(), !13508)
    #dbg_declare(ptr poison, !13836, !DIExpression(), !13511)
    #dbg_declare(ptr poison, !13837, !DIExpression(), !13512)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !13981
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472), !dbg !13981
    #dbg_value(<2 x i64> %i.q, !13749, !DIExpression(), !13513)
    #dbg_value(<2 x i64> %i.q, !13839, !DIExpression(), !13518)
    #dbg_value(ptr %i.o, !13843, !DIExpression(), !13518)
    #dbg_value(ptr %i.o, !13851, !DIExpression(), !13521)
    #dbg_declare(ptr poison, !13854, !DIExpression(), !13522)
  store <2 x i64> %i.q, ptr %i.o, align 16, !dbg !13982
    #dbg_value(i64 %.sroa.0.08.i, !13746, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(ptr undef, !13740, !DIExpression(), !13425)
    #dbg_value(ptr undef, !13734, !DIExpression(), !13424)
    #dbg_value(i64 15, !13735, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13476)
    #dbg_value(i64 15, !13805, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13479)
    #dbg_value(ptr undef, !13722, !DIExpression(), !13423)
    #dbg_value(i64 poison, !13736, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13480)
    #dbg_value(i64 16, !13735, !DIExpression(), !13476)
    #dbg_value(i64 16, !13805, !DIExpression(), !13479)
    #dbg_value(i64 %.sroa.0.08.i, !13737, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13489)
    #dbg_value(i64 %.sroa.0.08.i, !13806, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13479)
  %i.r = add i64 %.sroa.0.08.i, 32, !dbg !13984   ; 2 uses
    #dbg_value(i64 %i.r, !13746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 %.sroa.0.08.i, !13747, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13490)
    #dbg_value(i64 %.sroa.0.08.i, !13754, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13432)
    #dbg_value(i64 %.sroa.0.08.i, !13754, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !13436)
  %i.s = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !13978
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !13978 ; 2 uses
    #dbg_value(ptr %i.t, !13818, !DIExpression(), !13496)
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16, !dbg !13979
    #dbg_declare(ptr poison, !13825, !DIExpression(), !13502)
    #dbg_declare(ptr poison, !13833, !DIExpression(), !13506)
    #dbg_declare(ptr poison, !13834, !DIExpression(), !13507)
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !13980
    #dbg_value(<16 x i8> %.lobit.i.i.1, !13831, !DIExpression(), !13508)
    #dbg_declare(ptr poison, !13836, !DIExpression(), !13511)
    #dbg_declare(ptr poison, !13837, !DIExpression(), !13512)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !13981
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472), !dbg !13981
    #dbg_value(<2 x i64> %i.v, !13749, !DIExpression(), !13513)
    #dbg_value(<2 x i64> %i.v, !13839, !DIExpression(), !13518)
    #dbg_value(ptr %i.t, !13843, !DIExpression(), !13518)
    #dbg_value(ptr %i.t, !13851, !DIExpression(), !13521)
    #dbg_declare(ptr poison, !13854, !DIExpression(), !13522)
  store <2 x i64> %i.v, ptr %i.t, align 16, !dbg !13982
    #dbg_value(i64 %i.r, !13746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13475)
    #dbg_value(i64 poison, !13746, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13475)
    #dbg_value(i64 15, !13735, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13476)
    #dbg_value(i64 15, !13805, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13479)
    #dbg_value(i64 poison, !13736, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !13480)
  %niter.next.1 = add i64 %niter, 2, !dbg !13971  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13971
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b, !dbg !13971

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8, !dbg !13985 ; 2 uses
  %.pre13 = add i64 %.pre, 1, !dbg !13986
  %i.w = lshr i64 %.pre13, 3, !dbg !13986
  %i.x = mul nuw i64 %i.w, 7, !dbg !13986
  br label %._crit_edge, !dbg !13985

._crit_edge:                                      ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13986
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13985 ; 2 uses
    #dbg_value(i64 %i.y, !13862, !DIExpression(), !13865)
  %i.z = icmp ult i64 %i.y, 8, !dbg !13986
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi, !dbg !13986
    #dbg_value(i64 %.sroa.04.0, !13862, !DIExpression(), !13865)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13987
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13987, !noundef !1539
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13988
  %i.ad = sub i64 %.sroa.04.0, %i.ab, !dbg !13988
  store i64 %i.ad, ptr %i.ac, align 8, !dbg !13988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13989
  ret void, !dbg !13990

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 9 uses
    #dbg_value(i64 %.sroa.0.06, !13637, !DIExpression(), !13866)
    #dbg_value(i64 %.sroa.0.06, !13689, !DIExpression(), !13692)
    #dbg_value(i64 %.sroa.0.06, !13694, !DIExpression(), !13697)
  %i.ae = add nuw i64 %.sroa.0.06, 1, !dbg !13991 ; 2 uses
    #dbg_value(i64 %i.ae, !13613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(i64 %.sroa.0.06, !13614, !DIExpression(), !13867)
    #dbg_value(i64 %.sroa.0.06, !13868, !DIExpression(), !13872)
    #dbg_value(i64 %.sroa.0.06, !13651, !DIExpression(), !13654)
    #dbg_value(i64 %.sroa.0.06, !13873, !DIExpression(), !13882)
    #dbg_value(i64 %.sroa.0.06, !13883, !DIExpression(), !13888)
    #dbg_value(i64 %.sroa.0.06, !13717, !DIExpression(), !13720)
    #dbg_value(ptr %0, !13869, !DIExpression(), !13872)
  %i.af = load ptr, ptr %0, align 8, !dbg !13992, !nonnull !1539, !noundef !1539 ; 2 uses
end_hunk_4
