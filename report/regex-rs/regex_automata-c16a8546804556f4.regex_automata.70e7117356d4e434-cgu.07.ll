Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.07?download=true
inline.NumInlined: 195
inline.NumDeleted: 83
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta7limited26hybrid_try_search_half_rev:bb.a
    #dbg_value(ptr %.sroa.0.0.i67, !1587, !DIExpression(), !8784)
    #dbg_value(ptr %.sroa.0.0.i67, !1590, !DIExpression(), !8786)
    #dbg_value(ptr %.sroa.0.0.i67, !1596, !DIExpression(), !8788)
    #dbg_value(i64 8, !1582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8782)
    #dbg_value(i64 8, !1588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8784)
    #dbg_value(i64 8, !1594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8786)
    #dbg_value(i64 8, !1597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8788)
    #dbg_value(i64 16, !1582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8782)
    #dbg_value(i64 16, !1588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8784)
    #dbg_value(i64 16, !1594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8786)
    #dbg_value(i64 16, !1597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8788)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.0.0.i67, i64 noundef 16, i64 noundef 8) #23, !dbg !9402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9403, !noalias !9076
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9404
  store i64 1, ptr %i.km, align 8, !dbg !9404
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9404
  store i64 %.sroa.0.0.i.i140, ptr %i.kn, align 8, !dbg !9404
  store i64 2, ptr %0, align 8, !dbg !9404
  br label %bb.cy, !dbg !9405

.sink.split:                                      ; preds = %bb.bb, %bb.ao
  %.sink463 = phi ptr [ %i.en, %bb.ao ], [ %i.gd, %bb.bb ]
  %.sroa.13.3.ph.ph = phi i64 [ 0, %bb.ao ], [ %i.s, %bb.bb ]
  %i.ko = call noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State13match_pattern(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink463, i64 noundef 0), !dbg !9406
  br label %bb.dc, !dbg !9407

bb.dc:                                            ; preds = %.sink.split, %bb.ay, %bb.al, %bb.am, %bb.az
  %.sroa.18.3.ph = phi i32 [ 0, %bb.az ], [ 0, %bb.am ], [ undef, %bb.al ], [ undef, %bb.ay ], [ %i.ko, %.sink.split ]
  %.sroa.13.3.ph = phi i64 [ %i.s, %bb.az ], [ 0, %bb.am ], [ undef, %bb.al ], [ undef, %bb.ay ], [ %.sroa.13.3.ph.ph, %.sink.split ]
  %.sroa.0.3.ph = phi i64 [ 1, %bb.az ], [ 1, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ay ], [ 1, %.sink.split ]
    #dbg_value(i64 %.sroa.0.3.ph, !8808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8918)
    #dbg_value(i64 %.sroa.13.3.ph, !8808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8918)
    #dbg_value(i32 %.sroa.18.3.ph, !8808, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !8918)
  store i64 %.sroa.0.3.ph, ptr %0, align 8, !dbg !9407
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9407
  store i64 %.sroa.13.3.ph, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9407
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9407
  store i32 %.sroa.18.3.ph, ptr %.sroa.5171.0..sroa_idx, align 8, !dbg !9407
  br label %bb.cy, !dbg !9408
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(352) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) initializes((0, 8)) %3) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !9410 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
    #dbg_declare(ptr poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !9436)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9438)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9438)
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9442)
    #dbg_value(ptr poison, !3162, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9443)
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9446)
    #dbg_value(ptr poison, !3178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9447)
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9450)
    #dbg_value(ptr poison, !3162, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9451)
    #dbg_value(ptr poison, !3167, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9452)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9457)
    #dbg_value(ptr poison, !10447, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9458)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9462)
    #dbg_value(ptr poison, !10449, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9463)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9467)
    #dbg_value(ptr poison, !10452, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9468)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9472)
    #dbg_value(ptr poison, !10454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9473)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9477)
    #dbg_value(ptr poison, !10456, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9478)
  %i.j = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !9483)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9485)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9485)
    #dbg_declare(ptr poison, !3194, !DIExpression(DW_OP_LLVM_fragment, 328, 56), !9486)
    #dbg_value(ptr poison, !2817, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9489)
    #dbg_value(ptr poison, !2817, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9489)
    #dbg_value(ptr poison, !2822, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9491)
    #dbg_value(ptr poison, !2822, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9491)
    #dbg_value(ptr poison, !2820, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9494)
    #dbg_value(ptr poison, !2820, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9494)
    #dbg_value(ptr poison, !2785, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9495)
    #dbg_value(ptr poison, !2785, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9495)
    #dbg_value(ptr poison, !1203, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9498)
    #dbg_value(ptr poison, !1203, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9498)
    #dbg_value(ptr poison, !3012, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9500)
    #dbg_value(ptr poison, !3012, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9500)
    #dbg_value(ptr poison, !2728, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9501)
    #dbg_value(ptr poison, !2728, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9501)
    #dbg_value(ptr poison, !3183, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9502)
    #dbg_value(ptr poison, !3183, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9502)
    #dbg_value(ptr poison, !3196, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9503)
    #dbg_value(ptr poison, !3196, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9503)
  %i.k = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !9506)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9508)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9508)
  %i.l = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9512)
    #dbg_value(ptr poison, !3162, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9513)
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9516)
    #dbg_value(ptr poison, !3178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9517)
    #dbg_value(ptr poison, !3159, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9520)
    #dbg_value(ptr poison, !3162, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9521)
    #dbg_value(ptr poison, !3167, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9522)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9525)
    #dbg_value(ptr poison, !10447, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9526)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9529)
    #dbg_value(ptr poison, !10449, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9530)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9533)
    #dbg_value(ptr poison, !10452, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9534)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9537)
    #dbg_value(ptr poison, !10454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9538)
    #dbg_value(ptr poison, !10445, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9541)
    #dbg_value(ptr poison, !10456, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9542)
    #dbg_value(ptr %0, !10407, !DIExpression(), !10459)
    #dbg_value(ptr %1, !10408, !DIExpression(), !10459)
    #dbg_value(ptr %2, !10409, !DIExpression(), !10459)
    #dbg_value(ptr %2, !10460, !DIExpression(), !10463)
    #dbg_value(ptr %2, !10464, !DIExpression(), !10467)
    #dbg_value(ptr %2, !10464, !DIExpression(), !10469)
    #dbg_value(ptr %2, !10470, !DIExpression(), !10473)
    #dbg_value(ptr %3, !10410, !DIExpression(), !10459)
  store i64 0, ptr %3, align 8, !dbg !10654
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !10655
  %i.n = load i64, ptr %i.m, align 8, !dbg !10655, !noundef !1030 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !10656
  %i.p = load i64, ptr %i.o, align 8, !dbg !10656, !noundef !1030 ; 27 uses
  %i.q = icmp ugt i64 %i.n, %i.p, !dbg !10657
  br i1 %i.q, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, label %bb.b, !dbg !10658

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %2, align 8, !dbg !10659, !range !2053, !noundef !1030 ; 3 uses
    #dbg_value(ptr poison, !10474, !DIExpression(), !10477)
  %i.s = icmp eq i32 %i.r, 0, !dbg !10660
  br i1 %i.s, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i14, !dbg !10660

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !10478, !DIExpression(), !10481)
    #dbg_value(ptr %0, !10482, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !10486)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10661
  %i.u = load i8, ptr %i.t, align 8, !dbg !10661, !range !3220, !noundef !1030
  %.not = icmp eq i8 %i.u, -1, !dbg !10661
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10662
  %.sroa.03.0 = select i1 %.not, ptr @44, ptr %i.v, !dbg !10662 ; 3 uses
    #dbg_value(ptr %.sroa.03.0, !10487, !DIExpression(), !10491)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 24, !dbg !10663
  %i.x = load i8, ptr %i.w, align 8, !dbg !10663, !range !2931, !noundef !1030
  %.not13 = icmp eq i8 %i.x, 2, !dbg !10663
  br i1 %.not13, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i14, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !10664

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i14: ; preds = %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10492), !dbg !10665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10493), !dbg !10665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10494), !dbg !10665
    #dbg_value(ptr poison, !10437, !DIExpression(), !9556)
    #dbg_value(ptr null, !10425, !DIExpression(), !9557)
    #dbg_value(ptr %0, !10422, !DIExpression(), !9557)
    #dbg_value(ptr %0, !10413, !DIExpression(), !9558)
    #dbg_value(ptr %1, !10423, !DIExpression(), !9557)
    #dbg_value(ptr %1, !10414, !DIExpression(), !9558)
    #dbg_value(ptr %1, !10495, !DIExpression(), !9562)
    #dbg_value(ptr %1, !10499, !DIExpression(), !9569)
    #dbg_value(ptr %1, !10499, !DIExpression(), !9571)
    #dbg_value(ptr %1, !10499, !DIExpression(), !9573)
    #dbg_value(ptr %1, !10506, !DIExpression(), !9577)
    #dbg_value(ptr %1, !10499, !DIExpression(), !9579)
    #dbg_value(ptr %2, !10424, !DIExpression(), !9557)
    #dbg_value(ptr %2, !10415, !DIExpression(), !9558)
    #dbg_value(ptr %3, !10426, !DIExpression(), !9557)
    #dbg_declare(ptr poison, !10510, !DIExpression(), !9585)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9592)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9592)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9594)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9594)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9596)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9596)
    #dbg_value(ptr @32, !10532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9600)
    #dbg_value(i64 31, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9600)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9602)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9602)
    #dbg_value(ptr %0, !10537, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !9605)
    #dbg_value(ptr %0, !10539, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !9608)
    #dbg_value(ptr %0, !10541, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !9611)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 688, !dbg !10666
  %i.z = load ptr, ptr %i.y, align 16, !dbg !10666, !alias.scope !10492, !nonnull !1030, !noundef !1030 ; 4 uses
    #dbg_value(i32 poison, !10543, !DIExpression(), !9616)
    #dbg_value(i32 poison, !10427, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9617)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !10667 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !10667, !range !3253, !alias.scope !10494, !noundef !1030
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 44, !dbg !10667 ; 4 uses
  %i.ad = trunc nuw i32 %i.ab to i1, !dbg !10668
  br i1 %i.ad, label %bb.d, label %bb.e, !dbg !10668

bb.d:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i14
  %i.ae = load i32, ptr %i.ac, align 4, !dbg !10669, !alias.scope !10494, !noundef !1030 ; 3 uses
    #dbg_value(i32 %i.ae, !10431, !DIExpression(), !9618)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10670 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !10670, !range !1556, !alias.scope !10494, !noundef !1030
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !10670 ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !10671
  br i1 %i.ai, label %bb.af, label %bb.aj, !dbg !10671

bb.e:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i14
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10672
  store i64 %i.n, ptr %i.aj, align 8, !dbg !10672, !alias.scope !10494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10545), !dbg !10673
    #dbg_value(ptr %0, !2726, !DIExpression(), !9621)
    #dbg_value(ptr %1, !2727, !DIExpression(), !9621)
    #dbg_value(ptr %2, !2728, !DIExpression(), !9621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10546), !dbg !10674
    #dbg_value(ptr %2, !2785, !DIExpression(), !9625)
    #dbg_value(ptr poison, !2801, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9628)
    #dbg_value(ptr %2, !2820, !DIExpression(), !9630)
    #dbg_value(ptr %2, !2822, !DIExpression(), !9632)
    #dbg_value(i64 1, !2824, !DIExpression(), !9634)
    #dbg_value(i64 %i.n, !2825, !DIExpression(), !9634)
  %i.ak = icmp eq i64 %i.n, 0, !dbg !10675        ; 2 uses
  br i1 %i.ak, label %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread, label %bb.f, !dbg !10675

bb.f:                                             ; preds = %bb.e
  %i.al = add i64 %i.n, -1, !dbg !10676           ; 2 uses
    #dbg_value(i64 %i.al, !2816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9635)
    #dbg_value(i64 1, !2816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9635)
    #dbg_value(ptr %2, !2817, !DIExpression(), !9635)
    #dbg_value(i64 %i.al, !2818, !DIExpression(), !9636)
    #dbg_value(i64 %i.al, !2808, !DIExpression(), !9628)
    #dbg_value(i64 %i.al, !2827, !DIExpression(), !9638)
    #dbg_value(i64 %i.al, !2830, !DIExpression(), !9640)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !10677
  %i.an = load i64, ptr %i.am, align 8, !dbg !10677, !alias.scope !10546, !noalias !10547, !noundef !1030
    #dbg_value(ptr poison, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9638)
    #dbg_value(ptr poison, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9640)
    #dbg_value(i64 %i.an, !2828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9638)
    #dbg_value(i64 %i.an, !2831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9640)
  %i.ao = icmp ult i64 %i.al, %i.an, !dbg !10678
  br i1 %i.ao, label %bb.g, label %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread, !dbg !10678

_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread: ; preds = %bb.e, %bb.f
    #dbg_value(i8 0, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9644)
    #dbg_value(i8 poison, !2789, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !9644)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !10679
  %i.aq = load i32, ptr %i.ap, align 4, !dbg !10679, !alias.scope !10546, !noalias !10547
    #dbg_value(i8 0, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10548)
    #dbg_value(i8 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !10548)
    #dbg_value(i32 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10548)
    #dbg_value(i32 %i.aq, !2709, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10548)
    #dbg_value(ptr %0, !2746, !DIExpression(), !9438)
    #dbg_value(ptr %0, !2835, !DIExpression(), !9646)
    #dbg_value(ptr %0, !2841, !DIExpression(), !9648)
    #dbg_value(ptr %1, !2747, !DIExpression(), !9438)
    #dbg_value(ptr %1, !2839, !DIExpression(), !9646)
    #dbg_value(ptr %1, !2842, !DIExpression(), !9648)
    #dbg_value(ptr undef, !2731, !DIExpression(), !9438)
    #dbg_declare(ptr %i.i, !2748, !DIExpression(), !9649)
    #dbg_value(ptr poison, !2846, !DIExpression(), !9652)
    #dbg_value(ptr poison, !2863, !DIExpression(), !9654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10680, !noalias !10549
  store ptr %0, ptr %i.i, align 8, !dbg !10681, !noalias !10549
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10681
  store ptr %1, ptr %i.ar, align 8, !dbg !10681, !noalias !10549
    #dbg_value(i32 poison, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9661)
    #dbg_value(i32 %i.aq, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9661)
  br label %bb.h, !dbg !10682

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10677
  %i.at = load ptr, ptr %i.as, align 8, !dbg !10677, !alias.scope !10546, !noalias !10547, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.at, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9638)
    #dbg_value(ptr %i.at, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9640)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al, !dbg !10683
    #dbg_value(ptr %i.au, !2867, !DIExpression(), !9663)
  %i.av = load i8, ptr %i.au, align 1, !dbg !10684, !noalias !10550, !noundef !1030 ; 4 uses
    #dbg_value(i8 1, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9644)
    #dbg_value(i8 %i.av, !2789, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !9644)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !10679
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !10679, !alias.scope !10546, !noalias !10547
    #dbg_value(i8 1, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10548)
    #dbg_value(i8 %i.av, !2709, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !10548)
    #dbg_value(i32 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10548)
    #dbg_value(i32 %i.ax, !2709, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10551), !dbg !10685
    #dbg_value(ptr %0, !2746, !DIExpression(), !9438)
    #dbg_value(ptr %0, !2835, !DIExpression(), !9646)
    #dbg_value(ptr %0, !2841, !DIExpression(), !9648)
    #dbg_value(ptr %1, !2747, !DIExpression(), !9438)
    #dbg_value(ptr %1, !2839, !DIExpression(), !9646)
    #dbg_value(ptr %1, !2842, !DIExpression(), !9648)
    #dbg_value(ptr undef, !2731, !DIExpression(), !9438)
    #dbg_declare(ptr %i.i, !2748, !DIExpression(), !9649)
    #dbg_value(ptr poison, !2846, !DIExpression(), !9652)
    #dbg_value(ptr poison, !2863, !DIExpression(), !9654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10680, !noalias !10552
  store ptr %0, ptr %i.i, align 8, !dbg !10681, !noalias !10552
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10681
  store ptr %1, ptr %i.ay, align 8, !dbg !10681, !noalias !10552
    #dbg_value(i32 poison, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9661)
    #dbg_value(i32 %i.ax, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9661)
    #dbg_value(i8 %i.av, !2751, !DIExpression(), !9669)
    #dbg_value(i8 %i.av, !2870, !DIExpression(), !9671)
    #dbg_value(i8 %i.av, !2878, !DIExpression(), !9673)
    #dbg_value(i8 %i.av, !2885, !DIExpression(), !9675)
    #dbg_value(ptr %0, !2861, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !9676)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !10686 ; 3 uses
    #dbg_value(ptr %i.az, !2852, !DIExpression(), !9652)
    #dbg_value(ptr %i.az, !2865, !DIExpression(), !9654)
  %i.ba = load i128, ptr %i.az, align 1, !dbg !10687
  %i.bb = getelementptr i8, ptr %i.az, i64 16, !dbg !10687
  %i.bc = load i128, ptr %i.bb, align 1, !dbg !10687
  %i.bd = or i128 %i.ba, %i.bc, !dbg !10687
  %i.be = icmp ne i128 %i.bd, 0, !dbg !10687
  %i.bf = zext i1 %i.be to i32, !dbg !10687
  %i.bg = icmp eq i32 %i.bf, 0, !dbg !10687
  br i1 %i.bg, label %bb.t, label %bb.q, !dbg !10688

bb.h:                                             ; preds = %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread, %bb.t
  %i.bh = phi i32 [ %i.ax, %bb.t ], [ %i.aq, %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread ] ; 2 uses
  %.sroa.07.0.i.i.i15 = phi i8 [ %i.cn, %bb.t ], [ 2, %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit.thread ], !dbg !10689 ; 2 uses
    #dbg_value(i8 %.sroa.07.0.i.i.i15, !2750, !DIExpression(), !9677)
    #dbg_value(i32 poison, !2888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9679)
    #dbg_value(i32 %i.bh, !2888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9679)
    #dbg_value(ptr %i.i, !2892, !DIExpression(), !9679)
    #dbg_value(i8 %.sroa.07.0.i.i.i15, !2893, !DIExpression(), !9679)
    #dbg_value(i8 0, !2898, !DIExpression(), !9682)
    #dbg_value(ptr poison, !2912, !DIExpression(), !9684)
    #dbg_value(ptr poison, !2917, !DIExpression(), !9686)
  %i.bi = zext nneg i8 %.sroa.07.0.i.i.i15 to i64, !dbg !10690 ; 3 uses
    #dbg_value(i64 %i.bi, !2894, !DIExpression(), !9687)
  switch i32 %i.r, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.i
    i32 2, label %bb.j
  ], !dbg !10691

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bj = add nuw nsw i64 %i.bi, 6, !dbg !10692
    #dbg_value(i64 %i.bj, !2895, !DIExpression(), !9688)
    #dbg_value(i64 %i.bj, !2922, !DIExpression(), !9690)
    #dbg_value(i64 %i.bj, !2925, !DIExpression(), !9692)
    #dbg_value(i64 %i.bj, !2928, !DIExpression(), !9694)
  br label %bb.k, !dbg !10693

bb.j:                                             ; preds = %bb.h
    #dbg_value(i32 %i.bh, !2896, !DIExpression(), !9695)
    #dbg_value(ptr %0, !2909, !DIExpression(), !9696)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 129, !dbg !10694
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !10694, !range !2931, !noalias !10553, !noundef !1030
    #dbg_value(i8 %i.bl, !2902, !DIExpression(), !9682)
  %i.bm = icmp eq i8 %i.bl, 1, !dbg !10695
  %i.bn = zext i32 %i.bh to i64, !dbg !10696      ; 4 uses
  br i1 %i.bm, label %bb.l, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit.i16, !dbg !10695

bb.k:                                             ; preds = %bb.m, %bb.i, %bb.h
  %.sroa.05.0.i.i71 = phi i64 [ %i.bw, %bb.m ], [ %i.bj, %bb.i ], [ %i.bi, %bb.h ], !dbg !10697 ; 3 uses
    #dbg_value(i64 %.sroa.05.0.i.i71, !2928, !DIExpression(), !9694)
    #dbg_value(i64 %.sroa.05.0.i.i71, !2925, !DIExpression(), !9692)
    #dbg_value(i64 %.sroa.05.0.i.i71, !2922, !DIExpression(), !9690)
    #dbg_value(i64 %.sroa.05.0.i.i71, !2895, !DIExpression(), !9688)
    #dbg_value(ptr %1, !2923, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9699)
    #dbg_value(ptr %1, !2933, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9701)
    #dbg_value(ptr %1, !2935, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9703)
    #dbg_value(ptr %1, !2937, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9705)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10698
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !10698, !noalias !10553, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9692)
    #dbg_value(ptr poison, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9694)
    #dbg_value(i64 %i.bp, !2926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9692)
    #dbg_value(i64 %i.bp, !2929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9694)
  %i.bq = icmp ult i64 %.sroa.05.0.i.i71, %i.bp, !dbg !10699
  br i1 %i.bq, label %bb.o, label %bb.p, !dbg !10699

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr poison, !2941, !DIExpression(), !9707)
    #dbg_value(ptr poison, !2947, !DIExpression(), !9709)
    #dbg_value(ptr %0, !2952, !DIExpression(), !9711)
    #dbg_value(ptr %0, !2954, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !9713)
    #dbg_value(ptr %i.z, !2974, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !9715)
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 360, !dbg !10700
  %i.bs = load i64, ptr %i.br, align 8, !dbg !10700, !noalias !10553, !noundef !1030 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 2305843009213693952, !dbg !10701
  tail call void @llvm.assume(i1 %i.bt), !dbg !10702, !noalias !10554
  %.not23.i.i70 = icmp samesign ugt i64 %i.bs, %i.bn, !dbg !10703
  br i1 %.not23.i.i70, label %bb.m, label %bb.n, !dbg !10703

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !2941, !DIExpression(), !9717)
    #dbg_value(ptr poison, !2947, !DIExpression(), !9719)
  %i.bu = mul nuw nsw i64 %i.bn, 6, !dbg !10704
  %i.bv = add nuw nsw i64 %i.bu, 12, !dbg !10705
  %i.bw = add nuw nsw i64 %i.bv, %i.bi, !dbg !10705
    #dbg_value(i64 %i.bw, !2895, !DIExpression(), !9688)
    #dbg_value(i64 %i.bw, !2922, !DIExpression(), !9690)
    #dbg_value(i64 %i.bw, !2925, !DIExpression(), !9692)
    #dbg_value(i64 %i.bw, !2928, !DIExpression(), !9694)
  br label %bb.k, !dbg !10706
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd:bb.a
  %.not.i.i.i75 = icmp eq i128 %i.ci, 0, !dbg !10717
  br i1 %.not.i.i.i75, label %bb.t, label %bb.r, !dbg !10719

bb.r:                                             ; preds = %bb.q
  %i.cj = zext i8 %i.av to i64, !dbg !10720
  br label %bb.s, !dbg !10721

bb.s:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit.i16, %bb.u, %bb.r
  %.sroa.5.0.i.i.i23 = phi i64 [ %i.cj, %bb.r ], [ %i.bn, %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit.i16 ], [ %.sroa.4.0.insert.ext.i.i19222, %bb.u ], !dbg !10689
  %.sroa.0.0.i.i.i24 = phi i64 [ 4, %bb.r ], [ %.sroa.04.0.insert.insert.i.i21, %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit.i16 ], [ 4294967295, %bb.u ], !dbg !10689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10722, !noalias !10552
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i25, !dbg !10720

bb.t:                                             ; preds = %bb.q, %bb.g
    #dbg_value(ptr %0, !2883, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !9730)
  %i.ck = zext i8 %i.av to i64, !dbg !10723
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !10724
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck, !dbg !10724
  %i.cn = load i8, ptr %i.cm, align 1, !dbg !10724, !range !3000, !alias.scope !10556, !noundef !1030
    #dbg_value(i8 %i.cn, !2750, !DIExpression(), !9677)
  br label %bb.h, !dbg !10725

bb.u:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.i.i17.ph = phi i32 [ %i.bx, %bb.n ], [ %i.cb, %bb.o ] ; 2 uses
  %.sroa.4.0.insert.ext.i.i19222 = zext nneg i32 %.sroa.4.0.i.i17.ph to i64, !dbg !10712
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i19222, !2979, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 4294967295, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9724)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i19222, !2979, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9724)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i19222, !2752, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9731)
    #dbg_value(ptr poison, !3003, !DIExpression(), !9733)
  %.not47.i.i.i68 = icmp sgt i32 %.sroa.4.0.i.i17.ph, -1, !dbg !10726
  br i1 %.not47.i.i.i68, label %bb.s, label %bb.v, !dbg !10727, !prof !1431

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10728, !noalias !10552
  store ptr %0, ptr %i.h, align 8, !dbg !10729, !noalias !10552
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10729
  store ptr %1, ptr %i.co, align 8, !dbg !10729, !noalias !10552
  %i.cp = call i64 @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %i.r, i32 %i.bh, i8 noundef %.sroa.07.0.i.i.i15) #24, !dbg !10730, !noalias !10555 ; 2 uses
  %.sroa.445.0.extract.shift.i.i.i69 = lshr i64 %i.cp, 32, !dbg !10730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10722, !noalias !10552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10722, !noalias !10552
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i25, !dbg !10720

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i25: ; preds = %bb.v, %bb.s
  %.sroa.5.1.i.i.i26 = phi i64 [ %.sroa.5.0.i.i.i23, %bb.s ], [ %.sroa.445.0.extract.shift.i.i.i69, %bb.v ], !dbg !10731 ; 3 uses
  %.sroa.0.1.i.i.i27 = phi i64 [ %.sroa.0.0.i.i.i24, %bb.s ], [ %i.cp, %bb.v ], !dbg !10731 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i29 = and i64 %.sroa.0.1.i.i.i27, 4294967295, !dbg !10720
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9735)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9735)
    #dbg_value(ptr %2, !3012, !DIExpression(), !9735)
  %.not.i.i31 = icmp eq i64 %.sroa.0.0.insert.ext.i.i.i29, 4294967295, !dbg !10732
  br i1 %.not.i.i31, label %bb.ad, label %bb.w, !dbg !10733

bb.w:                                             ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i25
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9735)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9735)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9736)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i26, i64 %.sroa.0.1.i.i.i27), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9736)
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.0.1.i.i.i27 to i32 ; 3 uses
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i, !2428, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9738)
    #dbg_value(i64 %.sroa.5.1.i.i.i26, !2428, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9738)
    #dbg_value(ptr poison, !2429, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9738)
    #dbg_value(i64 1, !2435, !DIExpression(), !9740)
    #dbg_value(ptr @11, !2438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9742)
    #dbg_value(i64 36, !2438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9742)
  %i.cq = icmp ugt i32 %.sroa.03.0.extract.trunc.i, 2, !dbg !10734
  %i.cr = add i32 %.sroa.03.0.extract.trunc.i, -3, !dbg !10735
  %trunc.i = select i1 %i.cq, i32 %i.cr, i32 2, !dbg !10734
  switch i32 %trunc.i, label %bb.x [
    i32 0, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ], !dbg !10735

bb.x:                                             ; preds = %bb.w
  unreachable, !dbg !10736

bb.y:                                             ; preds = %bb.w
  %i.cs = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.n), !dbg !10737
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10738

bb.z:                                             ; preds = %bb.w
    #dbg_value(i64 %.sroa.5.1.i.i.i26, !2430, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9743)
    #dbg_value(i64 %i.n, !2436, !DIExpression(), !9740)
  br i1 %i.ak, label %bb.ac, label %bb.ab, !dbg !10739, !prof !1458

bb.aa:                                            ; preds = %bb.w
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.5.1.i.i.i26 to i32
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i, !2428, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9738)
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i, !2432, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9744)
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i, !2432, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9744)
  %i.ct = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.03.0.extract.trunc.i, i32 %.sroa.4.0.extract.trunc.i), !dbg !10740
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10741

bb.ab:                                            ; preds = %bb.z
  %.sroa.3.4.extract.trunc.i = trunc i64 %.sroa.5.1.i.i.i26 to i8, !dbg !10742
    #dbg_value(i8 %.sroa.3.4.extract.trunc.i, !2430, !DIExpression(), !9743)
  %i.cu = add i64 %i.n, -1, !dbg !10743
    #dbg_value(i64 %i.cu, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9742)
    #dbg_value(i64 1, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9742)
    #dbg_value(i64 %i.cu, !2431, !DIExpression(), !9745)
  %i.cv = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc.i, i64 noundef %i.cu), !dbg !10744
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10745

bb.ac:                                            ; preds = %bb.z
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9742)
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9742)
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !dbg !10746
  unreachable, !dbg !10746

bb.ad:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i25
    #dbg_value(i64 %.sroa.5.1.i.i.i26, !3006, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9735)
  %.sroa.411.0.extract.trunc.i.i67 = trunc nuw i64 %.sroa.5.1.i.i.i26 to i32, !dbg !10685
    #dbg_value(i32 %.sroa.411.0.extract.trunc.i.i67, !3006, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9735)
  br label %bb.ae, !dbg !10747

bb.ae:                                            ; preds = %bb.aj, %bb.ad
  %.promoted384 = phi i64 [ %i.n, %bb.ad ], [ %i.dn, %bb.aj ], !dbg !10748 ; 6 uses
  %storemerge.i34 = phi i32 [ %.sroa.411.0.extract.trunc.i.i67, %bb.ad ], [ %i.ae, %bb.aj ], !dbg !10749 ; 2 uses
    #dbg_value(i32 %storemerge.i34, !10428, !DIExpression(), !10557)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10748
    #dbg_value(i64 %.promoted384, !10496, !DIExpression(), !9562)
    #dbg_value(ptr %1, !10558, !DIExpression(), !9748)
    #dbg_value(ptr %1, !10560, !DIExpression(), !9751)
  %.sroa.028.0.copyload.i35 = load i64, ptr %1, align 8, !dbg !10750, !alias.scope !10493
  %.sroa.429.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10750 ; 6 uses
  %.sroa.429.0.copyload.i37 = load i64, ptr %.sroa.429.0..sroa_idx.i36, align 8, !dbg !10750, !alias.scope !10493 ; 3 uses
  %.sroa.530.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10750 ; 3 uses
  %.sroa.530.0.copyload.i39 = load i64, ptr %.sroa.530.0..sroa_idx.i38, align 8, !dbg !10750, !alias.scope !10493 ; 3 uses
  store i64 0, ptr %1, align 8, !dbg !10751, !alias.scope !10493
  %i.cx = trunc nuw i64 %.sroa.028.0.copyload.i35 to i1, !dbg !10752
  br i1 %i.cx, label %bb.ao, label %bb.ap, !dbg !10752

bb.af:                                            ; preds = %bb.d
  %i.cy = load i64, ptr %i.ah, align 8, !dbg !10753, !alias.scope !10494, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.cy, !10432, !DIExpression(), !9752)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10754 ; 2 uses
  %.val125 = load ptr, ptr %i.cz, align 8, !dbg !10754 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !10754 ; 2 uses
  %.val126 = load i64, ptr %i.da, align 8, !dbg !10754 ; 2 uses
    #dbg_value(ptr poison, !3262, !DIExpression(), !9754)
    #dbg_value(ptr poison, !3267, !DIExpression(), !9754)
    #dbg_value(i32 %i.ae, !3268, !DIExpression(), !9754)
    #dbg_value(ptr poison, !3270, !DIExpression(), !9756)
    #dbg_value(ptr poison, !3272, !DIExpression(), !9758)
    #dbg_value(i32 %i.ae, !3274, !DIExpression(), !9760)
  %i.db = zext i32 %i.ae to i64, !dbg !10755      ; 2 uses
  %i.dc = and i64 %i.db, 134217728, !dbg !10756
  %.not.i133 = icmp eq i64 %i.dc, 0, !dbg !10756
  br i1 %.not.i133, label %bb.ag, label %bb.ah, !dbg !10757, !prof !1458

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !10758
  unreachable, !dbg !10758

bb.ah:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !10754
  %.val124 = load i64, ptr %i.dd, align 8, !dbg !10754
    #dbg_value(ptr poison, !3275, !DIExpression(), !9761)
    #dbg_value(ptr poison, !3278, !DIExpression(), !9763)
    #dbg_value(ptr poison, !3272, !DIExpression(), !9765)
  %i.de = and i64 %i.db, 134217727, !dbg !10759
  %i.df = and i64 %.val124, 63, !dbg !10760       ; 2 uses
  %i.dg = lshr i64 %i.de, %i.df, !dbg !10760      ; 3 uses
    #dbg_value(i64 %i.dg, !3276, !DIExpression(), !9766)
    #dbg_value(i64 %i.dg, !3280, !DIExpression(), !9768)
    #dbg_value(i64 %i.dg, !3283, !DIExpression(), !9770)
    #dbg_value(i64 %i.dg, !3286, !DIExpression(), !9772)
    #dbg_value(ptr poison, !3281, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9773)
    #dbg_value(ptr poison, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9770)
    #dbg_value(ptr poison, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9772)
    #dbg_value(i64 %.val126, !3284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9770)
    #dbg_value(i64 %.val126, !3287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9772)
  %i.dh = icmp ult i64 %i.dg, %.val126, !dbg !10761
  br i1 %i.dh, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit, label %bb.ai, !dbg !10761

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dg, i64 noundef %.val126, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !10761
  unreachable, !dbg !10761

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit: ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val125) ]
    #dbg_value(ptr %.val125, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9770)
    #dbg_value(ptr %.val125, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9772)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.val125, i64 %i.dg, !dbg !10762
  %i.dj = tail call noundef i64 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9match_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di), !dbg !10763
    #dbg_value(i64 %i.dj, !10433, !DIExpression(), !9774)
  %i.dk = icmp ult i64 %i.cy, %i.dj, !dbg !10764
  br i1 %i.dk, label %bb.ak, label %bb.aj, !dbg !10764

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit, %bb.d
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10765 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !10765, !alias.scope !10494, !noundef !1030
  %i.dn = add i64 %i.dm, 1, !dbg !10765           ; 3 uses
  store i64 %i.dn, ptr %i.dl, align 8, !dbg !10765, !alias.scope !10494
  %i.do = icmp ugt i64 %i.dn, %i.p, !dbg !10766
  br i1 %i.do, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, label %bb.ae, !dbg !10766

bb.ak:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit
  %i.dp = add nuw i64 %i.cy, 1, !dbg !10767
  store i64 1, ptr %i.af, align 8, !dbg !10768, !alias.scope !10494
  store i64 %i.dp, ptr %i.ah, align 8, !dbg !10768, !alias.scope !10494
  %.val110 = load ptr, ptr %i.cz, align 8, !dbg !10769 ; 2 uses
  %.val111 = load i64, ptr %i.da, align 8, !dbg !10769 ; 2 uses
    #dbg_value(ptr poison, !2581, !DIExpression(), !9776)
    #dbg_value(ptr poison, !2586, !DIExpression(), !9778)
    #dbg_value(ptr poison, !2582, !DIExpression(), !9776)
    #dbg_value(i32 %i.ae, !2583, !DIExpression(), !9776)
    #dbg_value(i64 %i.cy, !2584, !DIExpression(), !9776)
    #dbg_value(ptr poison, !2594, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !9780)
    #dbg_value(ptr %i.z, !2601, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !9782)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 360, !dbg !10770
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !10770, !noundef !1030 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 2305843009213693952, !dbg !10771
  tail call void @llvm.assume(i1 %i.ds), !dbg !10772
  %i.dt = icmp eq i64 %i.dr, 1, !dbg !10773
  br i1 %i.dt, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit, label %bb.al, !dbg !10773

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr poison, !2607, !DIExpression(), !9784)
    #dbg_value(i32 %i.ae, !2615, !DIExpression(), !9785)
    #dbg_value(ptr poison, !2618, !DIExpression(), !9787)
  %i.du = and i32 %i.ae, 134217727, !dbg !10774
  %i.dv = zext nneg i32 %i.du to i64, !dbg !10774
  %i.dw = lshr i64 %i.dv, %i.df, !dbg !10775      ; 3 uses
    #dbg_value(i64 %i.dw, !2616, !DIExpression(), !9788)
    #dbg_value(i64 %i.dw, !2620, !DIExpression(), !9790)
    #dbg_value(i64 %i.dw, !2627, !DIExpression(), !9792)
    #dbg_value(i64 %i.dw, !2640, !DIExpression(), !9794)
    #dbg_value(ptr poison, !2624, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9795)
    #dbg_value(ptr poison, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9792)
    #dbg_value(ptr poison, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9794)
    #dbg_value(i64 %.val111, !2634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9792)
    #dbg_value(i64 %.val111, !2643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9794)
  %i.dx = icmp ult i64 %i.dw, %.val111, !dbg !10776
  br i1 %i.dx, label %bb.am, label %bb.an, !dbg !10776

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110) ]
    #dbg_value(ptr %.val110, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9792)
    #dbg_value(ptr %.val110, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9794)
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.val110, i64 %i.dw, !dbg !10777
  %i.dz = tail call noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State13match_pattern(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dy, i64 noundef %i.cy), !dbg !10778
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit, !dbg !10779

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dw, i64 noundef %.val111, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !10776
  unreachable, !dbg !10776

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit: ; preds = %bb.ak, %bb.am
  %.sroa.0.0.i = phi i32 [ %i.dz, %bb.am ], [ 0, %bb.ak ], !dbg !10780
    #dbg_value(i32 %.sroa.0.0.i, !10434, !DIExpression(), !9796)
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10781
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !10781, !alias.scope !10494, !noundef !1030
  store i64 1, ptr %3, align 8, !dbg !10782, !alias.scope !10494
  %.sroa.4.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10782
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx.i76, align 8, !dbg !10782, !alias.scope !10494
  %.sroa.58.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10782
  store i32 %.sroa.0.0.i, ptr %.sroa.58.0..sroa_idx.i77, align 8, !dbg !10782, !alias.scope !10494
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10783

bb.ao:                                            ; preds = %bb.ae
    #dbg_value(i64 %.sroa.429.0.copyload.i37, !10497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9797)
    #dbg_value(i64 %.sroa.530.0.copyload.i39, !10497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9797)
    #dbg_value(ptr poison, !10563, !DIExpression(), !9800)
  %.not.i65 = icmp ugt i64 %.sroa.429.0.copyload.i37, %.sroa.530.0.copyload.i39, !dbg !10784
  %i.ec = sub nuw i64 %.sroa.530.0.copyload.i39, %.sroa.429.0.copyload.i37, !dbg !10784
  %i.ed = sub nuw i64 %.sroa.429.0.copyload.i37, %.sroa.530.0.copyload.i39, !dbg !10784
  %.sroa.031.0.i66 = select i1 %.not.i65, i64 %i.ed, i64 %i.ec, !dbg !10784
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !10785 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !10785, !alias.scope !10493, !noundef !1030
  %i.eg = add i64 %i.ef, %.sroa.031.0.i66, !dbg !10785
  store i64 %i.eg, ptr %i.ee, align 8, !dbg !10785, !alias.scope !10493
  br label %bb.ap, !dbg !10786

bb.ap:                                            ; preds = %bb.ao, %bb.ae
  store i64 1, ptr %1, align 8, !dbg !10787, !alias.scope !10493
  store i64 %.promoted384, ptr %.sroa.429.0..sroa_idx.i36, align 8, !dbg !10787, !alias.scope !10493
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i64, ptr %i.eh, align 8            ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !1030 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %.promoted384, i64 %i.p), !dbg !10788
  %umax458 = call i64 @llvm.umax.i64(i64 %.promoted384, i64 %i.ei), !dbg !10788 ; 2 uses
  store i64 %.promoted384, ptr %.sroa.530.0..sroa_idx.i38, align 8, !dbg !10557, !alias.scope !10493
  %exitcond.not712.not = icmp ult i64 %.promoted384, %i.p, !dbg !10789
  br i1 %exitcond.not712.not, label %.lr.ph715, label %._crit_edge716, !dbg !10789

bb.aq:                                            ; preds = %bb.bv
  store i64 %i.hw, ptr %.sroa.530.0..sroa_idx.i38, align 8, !dbg !10557, !alias.scope !10493
    #dbg_value(i32 %i.hs, !10428, !DIExpression(), !10557)
  %exitcond.not = icmp eq i64 %i.hw, %umax, !dbg !10789
  br i1 %exitcond.not, label %._crit_edge716, label %.lr.ph715, !dbg !10789

._crit_edge716:                                   ; preds = %bb.aq, %bb.ap
  %.sroa.0198.0.lcssa = phi i32 [ %storemerge.i34, %bb.ap ], [ %i.hs, %bb.aq ], !dbg !10749 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10565), !dbg !10790
    #dbg_value(ptr %0, !3164, !DIExpression(), !9452)
    #dbg_value(ptr %1, !3165, !DIExpression(), !9452)
    #dbg_value(ptr %2, !3166, !DIExpression(), !9452)
    #dbg_value(ptr %2, !3293, !DIExpression(), !9804)
    #dbg_value(ptr %2, !3295, !DIExpression(), !9806)
    #dbg_value(ptr poison, !3308, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9808)
    #dbg_value(ptr %2, !3293, !DIExpression(), !9810)
    #dbg_value(ptr %2, !3293, !DIExpression(), !9812)
    #dbg_value(ptr undef, !3167, !DIExpression(), !9452)
    #dbg_value(ptr undef, !3162, !DIExpression(), !9451)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9450)
    #dbg_value(ptr undef, !3178, !DIExpression(), !9447)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9446)
    #dbg_value(ptr undef, !3162, !DIExpression(), !9443)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9442)
    #dbg_value(ptr %3, !3168, !DIExpression(), !9452)
    #dbg_declare(ptr poison, !3313, !DIExpression(), !9814)
    #dbg_declare(ptr poison, !3306, !DIExpression(), !9815)
    #dbg_value(i64 poison, !3169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9816)
    #dbg_value(i64 %i.p, !3169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9816)
    #dbg_value(ptr poison, !3325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9818)
    #dbg_value(ptr poison, !3328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9820)
    #dbg_value(i64 %i.ei, !3325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9818)
    #dbg_value(i64 %i.ei, !3328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9820)
    #dbg_value(i64 %i.p, !3326, !DIExpression(), !9818)
    #dbg_value(i64 %i.p, !3329, !DIExpression(), !9820)
    #dbg_value(i64 %i.p, !3331, !DIExpression(), !9823)
  %i.ep = icmp ult i64 %i.p, %i.ei, !dbg !10791
  br i1 %i.ep, label %bb.aw, label %bb.ar, !dbg !10791

bb.ar:                                            ; preds = %._crit_edge716
  call void @llvm.experimental.noalias.scope.decl(metadata !10566), !dbg !10792
  call void @llvm.experimental.noalias.scope.decl(metadata !10567), !dbg !10792
    #dbg_value(ptr %0, !2649, !DIExpression(), !9828)
    #dbg_value(ptr %0, !2657, !DIExpression(), !9830)
    #dbg_value(ptr %1, !2650, !DIExpression(), !9828)
    #dbg_value(ptr %1, !2658, !DIExpression(), !9830)
    #dbg_value(i32 %.sroa.0198.0.lcssa, !2651, !DIExpression(), !9828)
    #dbg_value(ptr %0, !2660, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !9832)
    #dbg_value(ptr %0, !2665, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !9834)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 655, !dbg !10793
    #dbg_value(i8 poison, !2670, !DIExpression(), !9836)
  %i.er = load i8, ptr %i.eq, align 1, !dbg !10793, !alias.scope !10566, !noalias !10568, !noundef !1030
    #dbg_value(i8 %i.er, !2670, !DIExpression(), !9836)
  %i.es = zext i8 %i.er to i64, !dbg !10794
  %i.et = add nuw nsw i64 %i.es, 1, !dbg !10795   ; 2 uses
  %i.eu = call i32 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.et), !dbg !10796, !noalias !10569 ; 3 uses
    #dbg_value(i32 %i.eu, !2673, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !9840)
    #dbg_value(i32 %i.eu, !2673, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !9840)
  %i.ev = trunc i32 %i.eu to i1, !dbg !10797
    #dbg_value(i32 %i.eu, !2673, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !9840)
  %.sroa.519.0.extract.shift.i = lshr i32 %i.eu, 16, !dbg !10798
  %.sroa.418.0.extract.shift.i = lshr i32 %i.eu, 8, !dbg !10798
  %i.ew = and i32 %.sroa.418.0.extract.shift.i, 255, !dbg !10798
  %.sroa.01.0.in.i = select i1 %i.ev, i32 %.sroa.519.0.extract.shift.i, i32 %i.ew, !dbg !10798
    #dbg_value(i32 %.sroa.01.0.in.i, !2652, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9841)
    #dbg_value(ptr poison, !2683, !DIExpression(), !9843)
  %i.ex = and i32 %.sroa.0198.0.lcssa, 134217727, !dbg !10799
  %narrow.i = add nuw nsw i32 %.sroa.01.0.in.i, %i.ex, !dbg !10800
  %i.ey = zext nneg i32 %narrow.i to i64, !dbg !10800 ; 3 uses
    #dbg_value(i64 %i.ey, !2653, !DIExpression(), !9844)
    #dbg_value(i64 %i.ey, !2685, !DIExpression(), !9846)
    #dbg_value(i64 %i.ey, !2688, !DIExpression(), !9848)
    #dbg_value(i64 %i.ey, !2691, !DIExpression(), !9850)
    #dbg_value(ptr %1, !2686, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9851)
    #dbg_value(ptr %1, !2694, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9853)
    #dbg_value(ptr %1, !2696, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9855)
    #dbg_value(ptr %1, !2698, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9857)
  %i.ez = load i64, ptr %i.em, align 8, !dbg !10801, !alias.scope !10567, !noalias !10568, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9848)
    #dbg_value(ptr poison, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9850)
    #dbg_value(i64 %i.ez, !2689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9848)
    #dbg_value(i64 %i.ez, !2692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9850)
  %i.fa = icmp ugt i64 %i.ez, %i.ey, !dbg !10802
  br i1 %i.fa, label %bb.as, label %bb.at, !dbg !10802

bb.as:                                            ; preds = %bb.ar
  %i.fb = load ptr, ptr %i.en, align 8, !dbg !10803, !alias.scope !10567, !noalias !10568, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.fb, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9848)
    #dbg_value(ptr %i.fb, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9850)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ey, !dbg !10804
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !10805, !noalias !10569, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.fd, !2654, !DIExpression(), !9861)
    #dbg_value(ptr poison, !2700, !DIExpression(), !9863)
  %.not.i134 = icmp sgt i32 %i.fd, -1, !dbg !10806
  br i1 %.not.i134, label %bb.au, label %bb.av, !dbg !10807, !prof !1431

bb.at:                                            ; preds = %bb.ar
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21, !dbg !10802, !noalias !10569
  unreachable, !dbg !10802

bb.au:                                            ; preds = %bb.as
  %i.fe = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.fd, 1, !dbg !10808
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA14next_eoi_state.exit, !dbg !10808

bb.av:                                            ; preds = %bb.as
    #dbg_value(ptr %0, !2660, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !9865)
    #dbg_value(ptr %0, !2665, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !9867)
    #dbg_value(i8 %i.er, !2670, !DIExpression(), !9869)
  %i.ff = call i32 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.et), !dbg !10809, !noalias !10569
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd:bb.a
    #dbg_value(ptr undef, !10454, !DIExpression(), !9473)
    #dbg_value(ptr undef, !10445, !DIExpression(), !9472)
  %i.hz = zext i32 %i.hs to i64, !dbg !10893      ; 4 uses
  %i.ia = and i64 %i.hz, 268435456, !dbg !10894
  %.not161.i46 = icmp eq i64 %i.ia, 0, !dbg !10894
  br i1 %.not161.i46, label %bb.bx, label %bb.bv, !dbg !10895

bb.bx:                                            ; preds = %bb.bw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.gm
    #dbg_value(ptr undef, !10452, !DIExpression(), !9468)
    #dbg_value(ptr undef, !10445, !DIExpression(), !9467)
  %i.ic = and i64 %i.hz, 134217728, !dbg !10896
  %.not162.i47 = icmp eq i64 %i.ic, 0, !dbg !10896
  br i1 %.not162.i47, label %bb.by, label %bb.bz, !dbg !10897

bb.by:                                            ; preds = %bb.bx
    #dbg_value(ptr undef, !10449, !DIExpression(), !9463)
    #dbg_value(ptr undef, !10445, !DIExpression(), !9462)
  %i.id = and i64 %i.hz, 1073741824, !dbg !10898
  %.not163.i55 = icmp eq i64 %i.id, 0, !dbg !10898
  br i1 %.not163.i55, label %bb.ca, label %bb.cb, !dbg !10899

bb.bz:                                            ; preds = %bb.bx
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10900
  store i64 1, ptr %i.ie, align 8, !dbg !10900, !alias.scope !10494
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !10900
  store i64 1, ptr %i.if, align 8, !dbg !10900, !alias.scope !10494
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !10901
  %.val113 = load i64, ptr %i.ig, align 8, !dbg !10901
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10901
  %.val114 = load ptr, ptr %i.ih, align 8, !dbg !10901
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !10901
  %.val115 = load i64, ptr %i.ii, align 8, !dbg !10901
  %i.ij = call fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nonnull %i.z, i64 %.val113, ptr %.val114, i64 %.val115, i32 noundef %i.hs, i64 noundef 0) #22, !dbg !10901
    #dbg_value(i32 %i.ij, !10442, !DIExpression(), !9979)
  store i64 1, ptr %3, align 8, !dbg !10902, !alias.scope !10494
  %.sroa.422.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10902
  store i64 %i.gm, ptr %.sroa.422.0..sroa_idx.i48, align 8, !dbg !10902, !alias.scope !10494
  %.sroa.523.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10902
  store i32 %i.ij, ptr %.sroa.523.0..sroa_idx.i49, align 8, !dbg !10902, !alias.scope !10494
    #dbg_value(i64 %i.gm, !10500, !DIExpression(), !9569)
    #dbg_value(ptr %1, !10558, !DIExpression(), !9981)
    #dbg_value(ptr %1, !10560, !DIExpression(), !9983)
  %.sroa.045.0.copyload.i50 = load i64, ptr %1, align 8, !dbg !10903, !alias.scope !10493
    #dbg_value(i64 %.sroa.045.0.copyload.i50, !10524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9592)
  %.sroa.446.0.copyload.i51 = load i64, ptr %.sroa.429.0..sroa_idx.i36, align 8, !dbg !10903, !alias.scope !10493 ; 3 uses
    #dbg_value(i64 %.sroa.446.0.copyload.i51, !10524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9592)
    #dbg_value(i64 poison, !10524, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9592)
  store i64 0, ptr %1, align 8, !dbg !10904, !alias.scope !10493
  %i.ik = trunc nuw i64 %.sroa.045.0.copyload.i50 to i1, !dbg !10905
  br i1 %i.ik, label %bb.ci, label %bb.cj, !dbg !10905, !prof !1431

bb.ca:                                            ; preds = %bb.by
    #dbg_value(ptr undef, !10447, !DIExpression(), !9458)
    #dbg_value(ptr undef, !10445, !DIExpression(), !9457)
  %i.il = and i64 %i.hz, 536870912, !dbg !10906
  %.not164.i60 = icmp eq i64 %i.il, 0, !dbg !10906
  br i1 %.not164.i60, label %bb.cc, label %bb.cd, !dbg !10907, !prof !1458

bb.cb:                                            ; preds = %bb.by
    #dbg_value(i64 %i.gm, !10500, !DIExpression(), !9571)
    #dbg_value(ptr %1, !10558, !DIExpression(), !9985)
    #dbg_value(ptr %1, !10560, !DIExpression(), !9987)
  %.sroa.049.0.copyload.i56 = load i64, ptr %1, align 8, !dbg !10908, !alias.scope !10493
    #dbg_value(i64 %.sroa.049.0.copyload.i56, !10524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9594)
  %.sroa.450.0.copyload.i57 = load i64, ptr %.sroa.429.0..sroa_idx.i36, align 8, !dbg !10908, !alias.scope !10493 ; 3 uses
    #dbg_value(i64 %.sroa.450.0.copyload.i57, !10524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9594)
    #dbg_value(i64 poison, !10524, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9594)
  store i64 0, ptr %1, align 8, !dbg !10909, !alias.scope !10493
  %i.im = trunc nuw i64 %.sroa.049.0.copyload.i56 to i1, !dbg !10910
  br i1 %i.im, label %bb.cg, label %bb.ch, !dbg !10910, !prof !1431

bb.cc:                                            ; preds = %bb.ca
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 137 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #21, !dbg !10911, !noalias !10587
  unreachable, !dbg !10911

bb.cd:                                            ; preds = %bb.ca
    #dbg_value(i64 %i.gm, !10500, !DIExpression(), !9573)
    #dbg_value(ptr %1, !10558, !DIExpression(), !9989)
    #dbg_value(ptr %1, !10560, !DIExpression(), !9991)
  %.sroa.053.0.copyload.i61 = load i64, ptr %1, align 8, !dbg !10912, !alias.scope !10493
    #dbg_value(i64 %.sroa.053.0.copyload.i61, !10524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9596)
  %.sroa.454.0.copyload.i62 = load i64, ptr %.sroa.429.0..sroa_idx.i36, align 8, !dbg !10912, !alias.scope !10493 ; 3 uses
    #dbg_value(i64 %.sroa.454.0.copyload.i62, !10524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9596)
    #dbg_value(i64 poison, !10524, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9596)
  store i64 0, ptr %1, align 8, !dbg !10913, !alias.scope !10493
  %i.in = trunc nuw i64 %.sroa.053.0.copyload.i61 to i1, !dbg !10914
  br i1 %i.in, label %bb.cf, label %bb.ce, !dbg !10914, !prof !1431

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21, !dbg !10915, !noalias !10587
  unreachable, !dbg !10915

bb.cf:                                            ; preds = %bb.cd
    #dbg_value(i64 %.sroa.454.0.copyload.i62, !10503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9992)
    #dbg_value(i64 %i.gm, !10503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9992)
    #dbg_value(ptr poison, !10563, !DIExpression(), !9994)
  %.not165.i63 = icmp ugt i64 %.sroa.454.0.copyload.i62, %i.gm, !dbg !10916
  %i.io = sub nuw i64 %i.gm, %.sroa.454.0.copyload.i62, !dbg !10916
  %i.ip = sub nuw i64 %.sroa.454.0.copyload.i62, %i.gm, !dbg !10916
  %.sroa.056.0.i64 = select i1 %.not165.i63, i64 %i.ip, i64 %i.io, !dbg !10916
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !10917 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !dbg !10917, !alias.scope !10493, !noundef !1030
  %i.is = add i64 %i.ir, %.sroa.056.0.i64, !dbg !10917
  store i64 %i.is, ptr %i.iq, align 8, !dbg !10917, !alias.scope !10493
  %i.it = load i8, ptr %i.ib, align 1, !dbg !10918, !noalias !10587, !noundef !1030
  %i.iu = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.it, i64 noundef %i.gm), !dbg !10919, !noalias !10587
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10886

bb.cg:                                            ; preds = %bb.cb
    #dbg_value(i64 %.sroa.450.0.copyload.i57, !10502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9995)
    #dbg_value(i64 %i.gm, !10502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9995)
    #dbg_value(ptr poison, !10563, !DIExpression(), !9997)
  %.not166.i58 = icmp ugt i64 %.sroa.450.0.copyload.i57, %i.gm, !dbg !10920
  %i.iv = sub nuw i64 %i.gm, %.sroa.450.0.copyload.i57, !dbg !10920
  %i.iw = sub nuw i64 %.sroa.450.0.copyload.i57, %i.gm, !dbg !10920
  %.sroa.052.0.i59 = select i1 %.not166.i58, i64 %i.iw, i64 %i.iv, !dbg !10920
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !10921 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !dbg !10921, !alias.scope !10493, !noundef !1030
  %i.iz = add i64 %i.iy, %.sroa.052.0.i59, !dbg !10921
  store i64 %i.iz, ptr %i.ix, align 8, !dbg !10921, !alias.scope !10493
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10922

bb.ch:                                            ; preds = %bb.cb
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21, !dbg !10923, !noalias !10587
  unreachable, !dbg !10923

bb.ci:                                            ; preds = %bb.bz
    #dbg_value(i64 %.sroa.446.0.copyload.i51, !10501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9998)
    #dbg_value(i64 %i.gm, !10501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9998)
    #dbg_value(ptr poison, !10563, !DIExpression(), !10000)
  %.not167.i52 = icmp ugt i64 %.sroa.446.0.copyload.i51, %i.gm, !dbg !10924
  %i.ja = sub nuw i64 %i.gm, %.sroa.446.0.copyload.i51, !dbg !10924
  %i.jb = sub nuw i64 %.sroa.446.0.copyload.i51, %i.gm, !dbg !10924
  %.sroa.048.0.i53 = select i1 %.not167.i52, i64 %i.jb, i64 %i.ja, !dbg !10924
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !10925 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !10925, !alias.scope !10493, !noundef !1030
  %i.je = add i64 %i.jd, %.sroa.048.0.i53, !dbg !10925
  store i64 %i.je, ptr %i.jc, align 8, !dbg !10925, !alias.scope !10493
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10886

bb.cj:                                            ; preds = %bb.bz
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21, !dbg !10926, !noalias !10587
  unreachable, !dbg !10926

bb.ck:                                            ; preds = %bb.bv
    #dbg_value(ptr null, !10533, !DIExpression(), !9600)
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21, !dbg !10927, !noalias !10587
  unreachable, !dbg !10927

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.c
    #dbg_value(ptr %.sroa.03.0, !10411, !DIExpression(), !10578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10606), !dbg !10928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10607), !dbg !10928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10608), !dbg !10928
    #dbg_value(ptr poison, !10437, !DIExpression(), !10005)
    #dbg_value(ptr %.sroa.03.0, !10425, !DIExpression(), !10006)
    #dbg_value(ptr %0, !10422, !DIExpression(), !10006)
    #dbg_value(ptr %0, !10413, !DIExpression(), !10007)
    #dbg_value(ptr %1, !10423, !DIExpression(), !10006)
    #dbg_value(ptr %1, !10414, !DIExpression(), !10007)
    #dbg_value(ptr %1, !10495, !DIExpression(), !10009)
    #dbg_value(ptr %1, !10499, !DIExpression(), !10011)
    #dbg_value(ptr %1, !10499, !DIExpression(), !10013)
    #dbg_value(ptr %1, !10499, !DIExpression(), !10015)
    #dbg_value(ptr %1, !10506, !DIExpression(), !10017)
    #dbg_value(ptr %1, !10499, !DIExpression(), !10019)
    #dbg_value(ptr %2, !10424, !DIExpression(), !10006)
    #dbg_value(ptr %2, !10415, !DIExpression(), !10007)
    #dbg_value(ptr %3, !10426, !DIExpression(), !10006)
    #dbg_declare(ptr poison, !10510, !DIExpression(), !10021)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10023)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10023)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10025)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10027)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10027)
    #dbg_value(ptr @32, !10532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10029)
    #dbg_value(i64 31, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10029)
    #dbg_value(ptr @33, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10031)
    #dbg_value(i64 31, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10031)
    #dbg_value(ptr %0, !10537, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !10033)
    #dbg_value(ptr %0, !10539, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !10035)
    #dbg_value(ptr %0, !10541, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !10037)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 688, !dbg !10929
  %i.jg = load ptr, ptr %i.jf, align 16, !dbg !10929, !alias.scope !10606, !nonnull !1030, !noundef !1030 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 380, !dbg !10930
  %i.ji = load i32, ptr %i.jh, align 4, !dbg !10930, !noalias !10609, !noundef !1030
    #dbg_value(i32 %i.ji, !10543, !DIExpression(), !10042)
  %i.jj = icmp eq i32 %i.ji, 0, !dbg !10931
    #dbg_value(i1 %i.jj, !10427, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10043)
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !10932 ; 4 uses
  %i.jl = load i32, ptr %i.jk, align 8, !dbg !10932, !range !3253, !alias.scope !10608, !noundef !1030
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 44, !dbg !10932 ; 4 uses
  %i.jn = trunc nuw i32 %i.jl to i1, !dbg !10933
  br i1 %i.jn, label %bb.cl, label %bb.cm, !dbg !10933

bb.cl:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.jo = load i32, ptr %i.jm, align 4, !dbg !10934, !alias.scope !10608, !noundef !1030 ; 3 uses
    #dbg_value(i32 %i.jo, !10431, !DIExpression(), !10044)
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10935 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !dbg !10935, !range !1556, !alias.scope !10608, !noundef !1030
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !10935 ; 2 uses
  %i.js = trunc nuw i64 %i.jq to i1, !dbg !10936
  br i1 %i.js, label %bb.dc, label %bb.dg, !dbg !10936

bb.cm:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10937
  store i64 %i.n, ptr %i.jt, align 8, !dbg !10937, !alias.scope !10608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10610), !dbg !10938
    #dbg_value(ptr %0, !2726, !DIExpression(), !10047)
    #dbg_value(ptr %1, !2727, !DIExpression(), !10047)
    #dbg_value(ptr %2, !2728, !DIExpression(), !10047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10611), !dbg !10939
    #dbg_value(ptr %2, !2785, !DIExpression(), !10051)
    #dbg_value(ptr poison, !2801, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10054)
    #dbg_value(ptr %2, !2820, !DIExpression(), !10056)
    #dbg_value(ptr %2, !2822, !DIExpression(), !10058)
    #dbg_value(i64 1, !2824, !DIExpression(), !10060)
    #dbg_value(i64 %i.n, !2825, !DIExpression(), !10060)
  %i.ju = icmp eq i64 %i.n, 0, !dbg !10940        ; 2 uses
  br i1 %i.ju, label %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread, label %bb.cn, !dbg !10940

bb.cn:                                            ; preds = %bb.cm
  %i.jv = add i64 %i.n, -1, !dbg !10941           ; 2 uses
    #dbg_value(i64 %i.jv, !2816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 1, !2816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr %2, !2817, !DIExpression(), !10061)
    #dbg_value(i64 %i.jv, !2818, !DIExpression(), !10062)
    #dbg_value(i64 %i.jv, !2808, !DIExpression(), !10054)
    #dbg_value(i64 %i.jv, !2827, !DIExpression(), !10064)
    #dbg_value(i64 %i.jv, !2830, !DIExpression(), !10066)
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !10942
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !10942, !alias.scope !10611, !noalias !10612, !noundef !1030
    #dbg_value(ptr poison, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10064)
    #dbg_value(ptr poison, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(i64 %i.jx, !2828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10064)
    #dbg_value(i64 %i.jx, !2831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
  %i.jy = icmp ult i64 %i.jv, %i.jx, !dbg !10943
  br i1 %i.jy, label %bb.co, label %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread, !dbg !10943

_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread: ; preds = %bb.cm, %bb.cn
    #dbg_value(i8 0, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10069)
    #dbg_value(i8 poison, !2789, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10069)
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !10944
  %i.ka = load i32, ptr %i.jz, align 4, !dbg !10944, !alias.scope !10611, !noalias !10612
    #dbg_value(i8 0, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10613)
    #dbg_value(i8 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !10613)
    #dbg_value(i32 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10613)
    #dbg_value(i32 %i.ka, !2709, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10613)
    #dbg_value(ptr %0, !2746, !DIExpression(), !9508)
    #dbg_value(ptr %0, !2835, !DIExpression(), !10071)
    #dbg_value(ptr %0, !2841, !DIExpression(), !10073)
    #dbg_value(ptr %1, !2747, !DIExpression(), !9508)
    #dbg_value(ptr %1, !2839, !DIExpression(), !10071)
    #dbg_value(ptr %1, !2842, !DIExpression(), !10073)
    #dbg_value(ptr undef, !2731, !DIExpression(), !9508)
    #dbg_value(ptr poison, !2846, !DIExpression(), !10076)
    #dbg_value(ptr poison, !2863, !DIExpression(), !10078)
    #dbg_value(ptr poison, !2748, !DIExpression(), !10614)
    #dbg_value(i32 poison, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10079)
    #dbg_value(i32 %i.ka, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10079)
  br label %bb.cp, !dbg !10945

bb.co:                                            ; preds = %bb.cn
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10942
  %i.kc = load ptr, ptr %i.kb, align 8, !dbg !10942, !alias.scope !10611, !noalias !10612, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.kc, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10064)
    #dbg_value(ptr %i.kc, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jv, !dbg !10946
    #dbg_value(ptr %i.kd, !2867, !DIExpression(), !10081)
  %i.ke = load i8, ptr %i.kd, align 1, !dbg !10947, !noalias !10615, !noundef !1030 ; 4 uses
    #dbg_value(i8 1, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10069)
    #dbg_value(i8 %i.ke, !2789, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10069)
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !10944
  %i.kg = load i32, ptr %i.kf, align 4, !dbg !10944, !alias.scope !10611, !noalias !10612
    #dbg_value(i8 1, !2709, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10613)
    #dbg_value(i8 %i.ke, !2709, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !10613)
    #dbg_value(i32 poison, !2709, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10613)
    #dbg_value(i32 %i.kg, !2709, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10616), !dbg !10948
    #dbg_value(ptr %0, !2746, !DIExpression(), !9508)
    #dbg_value(ptr %0, !2835, !DIExpression(), !10071)
    #dbg_value(ptr %0, !2841, !DIExpression(), !10073)
    #dbg_value(ptr %1, !2747, !DIExpression(), !9508)
    #dbg_value(ptr %1, !2839, !DIExpression(), !10071)
    #dbg_value(ptr %1, !2842, !DIExpression(), !10073)
    #dbg_value(ptr undef, !2731, !DIExpression(), !9508)
    #dbg_value(ptr poison, !2846, !DIExpression(), !10076)
    #dbg_value(ptr poison, !2863, !DIExpression(), !10078)
    #dbg_value(ptr poison, !2748, !DIExpression(), !10614)
    #dbg_value(i32 poison, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10079)
    #dbg_value(i32 %i.kg, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10079)
    #dbg_value(i8 %i.ke, !2751, !DIExpression(), !10085)
    #dbg_value(i8 %i.ke, !2870, !DIExpression(), !10087)
    #dbg_value(i8 %i.ke, !2878, !DIExpression(), !10089)
    #dbg_value(i8 %i.ke, !2885, !DIExpression(), !10091)
    #dbg_value(ptr %0, !2861, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !10092)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !10949 ; 3 uses
    #dbg_value(ptr %i.kh, !2852, !DIExpression(), !10076)
    #dbg_value(ptr %i.kh, !2865, !DIExpression(), !10078)
  %i.ki = load i128, ptr %i.kh, align 1, !dbg !10950
  %i.kj = getelementptr i8, ptr %i.kh, i64 16, !dbg !10950
  %i.kk = load i128, ptr %i.kj, align 1, !dbg !10950
  %i.kl = or i128 %i.ki, %i.kk, !dbg !10950
  %i.km = icmp ne i128 %i.kl, 0, !dbg !10950
  %i.kn = zext i1 %i.km to i32, !dbg !10950
  %i.ko = icmp eq i32 %i.kn, 0, !dbg !10950
  br i1 %i.ko, label %bb.cs, label %bb.cr, !dbg !10951

bb.cp:                                            ; preds = %bb.cs, %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread
  %i.kp = phi i32 [ %i.kg, %bb.cs ], [ %i.ka, %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread ]
  %.sroa.07.0.i.i.i = phi i8 [ %i.lf, %bb.cs ], [ 2, %_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB2_6Config18from_input_forward.exit144.thread ], !dbg !10952 ; 2 uses
    #dbg_value(i8 %.sroa.07.0.i.i.i, !2750, !DIExpression(), !10093)
    #dbg_value(i32 0, !2888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10095)
    #dbg_value(i32 %i.kp, !2888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10095)
    #dbg_value(ptr poison, !2892, !DIExpression(), !10095)
    #dbg_value(i8 %.sroa.07.0.i.i.i, !2893, !DIExpression(), !10095)
    #dbg_value(i8 0, !2898, !DIExpression(), !10098)
    #dbg_value(ptr poison, !2912, !DIExpression(), !10100)
    #dbg_value(ptr poison, !2917, !DIExpression(), !10102)
  %i.kq = zext nneg i8 %.sroa.07.0.i.i.i to i64, !dbg !10953 ; 3 uses
    #dbg_value(i64 %i.kq, !2894, !DIExpression(), !10103)
    #dbg_value(i64 %i.kq, !2928, !DIExpression(), !10107)
    #dbg_value(i64 %i.kq, !2925, !DIExpression(), !10108)
    #dbg_value(i64 %i.kq, !2922, !DIExpression(), !10109)
    #dbg_value(i64 %i.kq, !2895, !DIExpression(), !10110)
    #dbg_value(ptr %1, !2923, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10111)
    #dbg_value(ptr %1, !2933, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10113)
    #dbg_value(ptr %1, !2935, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10115)
    #dbg_value(ptr %1, !2937, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10117)
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10954
  %i.ks = load i64, ptr %i.kr, align 8, !dbg !10954, !noalias !10617, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10108)
    #dbg_value(ptr poison, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10107)
    #dbg_value(i64 %i.ks, !2926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10108)
    #dbg_value(i64 %i.ks, !2929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10107)
  %i.kt = icmp ugt i64 %i.ks, %i.kq, !dbg !10955
  br i1 %i.kt, label %bb.ct, label %bb.cq, !dbg !10955

bb.cq:                                            ; preds = %bb.cp
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.kq, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !10955, !noalias !10617
  unreachable, !dbg !10955

bb.cr:                                            ; preds = %bb.co
    #dbg_value(ptr %0, !2874, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !10121)
    #dbg_value(i8 %i.ke, !2875, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !10122)
    #dbg_value(i8 %i.ke, !2885, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !10124)
    #dbg_value(i8 poison, !2876, !DIExpression(), !10125)
  %.lobit.i.i.i = lshr i8 %i.ke, 7, !dbg !10956
    #dbg_value(i8 %.lobit.i.i.i, !2875, !DIExpression(), !10122)
    #dbg_value(i8 %.lobit.i.i.i, !2885, !DIExpression(), !10124)
  %i.ku = zext nneg i8 %.lobit.i.i.i to i64, !dbg !10957
  %i.kv = and i8 %i.ke, 127, !dbg !10958
    #dbg_value(i8 %i.kv, !2876, !DIExpression(), !10125)
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %i.ku, !dbg !10959
  %i.kx = load i128, ptr %i.kw, align 16, !dbg !10959, !alias.scope !10618, !noundef !1030
  %i.ky = zext nneg i8 %i.kv to i128, !dbg !10960
  %i.kz = shl nuw i128 1, %i.ky, !dbg !10960
  %i.la = and i128 %i.kx, %i.kz, !dbg !10959
  %.not.i.i.i = icmp eq i128 %i.la, 0, !dbg !10959
  br i1 %.not.i.i.i, label %bb.cs, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread510, !dbg !10961

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread510: ; preds = %bb.cr
  %i.lb = zext i8 %i.ke to i64, !dbg !10962
    #dbg_value(!DIArgList(i64 %i.lb, i64 4), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10127)
    #dbg_value(!DIArgList(i64 %i.lb, i64 4), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10127)
    #dbg_value(ptr %2, !3012, !DIExpression(), !10127)
  br label %bb.cu, !dbg !10963

bb.cs:                                            ; preds = %bb.cr, %bb.co
    #dbg_value(ptr %0, !2883, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !10128)
  %i.lc = zext i8 %i.ke to i64, !dbg !10964
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !10965
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lc, !dbg !10965
  %i.lf = load i8, ptr %i.le, align 1, !dbg !10965, !range !3000, !alias.scope !10618, !noundef !1030
    #dbg_value(i8 %i.lf, !2750, !DIExpression(), !10093)
  br label %bb.cp, !dbg !10966

bb.ct:                                            ; preds = %bb.cp
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !10967
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !10967, !noalias !10617, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.lh, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10108)
    #dbg_value(ptr %i.lh, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10107)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.kq, !dbg !10968
  %i.lj = load i32, ptr %i.li, align 4, !dbg !10969, !noalias !10617, !noundef !1030 ; 2 uses
  %.sroa.4.0.insert.ext.i.i = zext nneg i32 %i.lj to i64, !dbg !10970
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i, !2979, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 4294967295, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10133)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i, !2979, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10133)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i, !2752, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !10134)
    #dbg_value(ptr poison, !3003, !DIExpression(), !10136)
  %.not47.i.i.i = icmp sgt i32 %i.lj, -1, !dbg !10971
  br i1 %.not47.i.i.i, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i, !dbg !10972, !prof !1431

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10973, !noalias !10619
  store ptr %0, ptr %i.k, align 8, !dbg !10974, !noalias !10619
  %i.lk = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10974
  store ptr %1, ptr %i.lk, align 8, !dbg !10974, !noalias !10619
  %i.ll = call i64 @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef 0, i32 %i.kp, i8 noundef %.sroa.07.0.i.i.i) #24, !dbg !10975, !noalias !10620 ; 3 uses
  %.sroa.445.0.extract.shift.i.i.i = lshr i64 %i.ll, 32, !dbg !10975 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10976, !noalias !10619
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ll, 4294967295, !dbg !10962
    #dbg_value(!DIArgList(i64 %.sroa.445.0.extract.shift.i.i.i, i64 %i.ll), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10127)
    #dbg_value(!DIArgList(i64 %.sroa.445.0.extract.shift.i.i.i, i64 %i.ll), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10127)
    #dbg_value(ptr %2, !3012, !DIExpression(), !10127)
  %.not.i.i = icmp eq i64 %.sroa.0.0.insert.ext.i.i.i, 4294967295, !dbg !10977
  br i1 %.not.i.i, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread, label %bb.cu, !dbg !10963

bb.cu:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread510, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i
  %.sroa.0.1.i.i.i516 = phi i64 [ 4, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread510 ], [ %i.ll, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i ]
  %.sroa.5.1.i.i.i515 = phi i64 [ %i.lb, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread510 ], [ %.sroa.445.0.extract.shift.i.i.i, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i ] ; 2 uses
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i515, i64 %.sroa.0.1.i.i.i516), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10127)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i515, i64 %.sroa.0.1.i.i.i516), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10127)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i515, i64 %.sroa.0.1.i.i.i516), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10139)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i.i515, i64 %.sroa.0.1.i.i.i516), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10139)
  %.sroa.03.0.extract.trunc.i145 = trunc i64 %.sroa.0.1.i.i.i516 to i32 ; 3 uses
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i145, !2428, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10141)
    #dbg_value(i64 %.sroa.5.1.i.i.i515, !2428, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10141)
    #dbg_value(ptr poison, !2429, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10141)
    #dbg_value(i64 1, !2435, !DIExpression(), !10143)
    #dbg_value(ptr @11, !2438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10145)
    #dbg_value(i64 36, !2438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10145)
  %i.lm = icmp ugt i32 %.sroa.03.0.extract.trunc.i145, 2, !dbg !10978
  %i.ln = add i32 %.sroa.03.0.extract.trunc.i145, -3, !dbg !10979
  %trunc.i146 = select i1 %i.lm, i32 %i.ln, i32 2, !dbg !10978
  switch i32 %trunc.i146, label %bb.cv [
    i32 0, label %bb.cw
    i32 1, label %bb.cx
    i32 2, label %bb.cy
  ], !dbg !10979

bb.cv:                                            ; preds = %bb.cu
  unreachable, !dbg !10980

bb.cw:                                            ; preds = %bb.cu
  %i.lo = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.n), !dbg !10981
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10982

bb.cx:                                            ; preds = %bb.cu
    #dbg_value(i64 %.sroa.5.1.i.i.i515, !2430, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10146)
    #dbg_value(i64 %i.n, !2436, !DIExpression(), !10143)
  br i1 %i.ju, label %bb.da, label %bb.cz, !dbg !10983, !prof !1458

bb.cy:                                            ; preds = %bb.cu
  %.sroa.4.0.extract.trunc.i147 = trunc nuw i64 %.sroa.5.1.i.i.i515 to i32
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i147, !2428, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10141)
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i145, !2432, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10147)
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i147, !2432, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10147)
  %i.lp = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.03.0.extract.trunc.i145, i32 %.sroa.4.0.extract.trunc.i147), !dbg !10984
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10985

bb.cz:                                            ; preds = %bb.cx
  %.sroa.3.4.extract.trunc.i149 = trunc i64 %.sroa.5.1.i.i.i515 to i8, !dbg !10986
    #dbg_value(i8 %.sroa.3.4.extract.trunc.i149, !2430, !DIExpression(), !10146)
  %i.lq = add i64 %i.n, -1, !dbg !10987
    #dbg_value(i64 %i.lq, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10145)
    #dbg_value(i64 1, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10145)
    #dbg_value(i64 %i.lq, !2431, !DIExpression(), !10148)
  %i.lr = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc.i149, i64 noundef %i.lq), !dbg !10988
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !10989

bb.da:                                            ; preds = %bb.cx
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10145)
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10145)
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !dbg !10990
  unreachable, !dbg !10990

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread: ; preds = %bb.ct, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i
  %.sroa.5.1.i.i.i509 = phi i64 [ %.sroa.445.0.extract.shift.i.i.i, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i ], [ %.sroa.4.0.insert.ext.i.i, %bb.ct ]
    #dbg_value(i64 %.sroa.5.1.i.i.i509, !3006, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10127)
  %.sroa.411.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.1.i.i.i509 to i32, !dbg !10948
    #dbg_value(i32 %.sroa.411.0.extract.trunc.i.i, !3006, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10127)
  br label %bb.db, !dbg !10991

bb.db:                                            ; preds = %bb.dg, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread
  %.promoted = phi i64 [ %i.n, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread ], [ %i.mj, %bb.dg ], !dbg !10992 ; 4 uses
  %storemerge.i = phi i32 [ %.sroa.411.0.extract.trunc.i.i, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.thread ], [ %i.jo, %bb.dg ], !dbg !10993 ; 2 uses
    #dbg_value(i32 %storemerge.i, !10428, !DIExpression(), !10621)
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10992 ; 2 uses
    #dbg_value(i64 %.promoted, !10496, !DIExpression(), !10009)
    #dbg_value(ptr %1, !10558, !DIExpression(), !10150)
    #dbg_value(ptr %1, !10560, !DIExpression(), !10152)
  %.sroa.028.0.copyload.i = load i64, ptr %1, align 8, !dbg !10994, !alias.scope !10607
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10994 ; 6 uses
  %.sroa.429.0.copyload.i = load i64, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !10994, !alias.scope !10607 ; 3 uses
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10994 ; 3 uses
  %.sroa.530.0.copyload.i = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !10994, !alias.scope !10607 ; 3 uses
  store i64 0, ptr %1, align 8, !dbg !10995, !alias.scope !10607
  %i.lt = trunc nuw i64 %.sroa.028.0.copyload.i to i1, !dbg !10996
  br i1 %i.lt, label %bb.di, label %bb.dj, !dbg !10996

bb.dc:                                            ; preds = %bb.cl
  %i.lu = load i64, ptr %i.jr, align 8, !dbg !10997, !alias.scope !10608, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.lu, !10432, !DIExpression(), !10153)
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !10998
  %.val127 = load i64, ptr %i.lv, align 8, !dbg !10998 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10998 ; 2 uses
  %.val128 = load ptr, ptr %i.lw, align 8, !dbg !10998 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !10998 ; 2 uses
  %.val129 = load i64, ptr %i.lx, align 8, !dbg !10998 ; 2 uses
    #dbg_value(ptr poison, !3262, !DIExpression(), !10155)
    #dbg_value(ptr poison, !3267, !DIExpression(), !10155)
    #dbg_value(i32 %i.jo, !3268, !DIExpression(), !10155)
    #dbg_value(ptr poison, !3270, !DIExpression(), !10157)
    #dbg_value(ptr poison, !3272, !DIExpression(), !10159)
    #dbg_value(i32 %i.jo, !3274, !DIExpression(), !10161)
  %i.ly = zext i32 %i.jo to i64, !dbg !10999      ; 2 uses
  %i.lz = and i64 %i.ly, 134217728, !dbg !11000
  %.not.i151 = icmp eq i64 %i.lz, 0, !dbg !11000
  br i1 %.not.i151, label %bb.dd, label %bb.de, !dbg !11001, !prof !1458

bb.dd:                                            ; preds = %bb.dc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !11002
  unreachable, !dbg !11002

bb.de:                                            ; preds = %bb.dc
    #dbg_value(ptr poison, !3275, !DIExpression(), !10162)
    #dbg_value(ptr poison, !3278, !DIExpression(), !10164)
    #dbg_value(ptr poison, !3272, !DIExpression(), !10166)
  %i.ma = and i64 %i.ly, 134217727, !dbg !11003
  %i.mb = and i64 %.val127, 63, !dbg !11004
  %i.mc = lshr i64 %i.ma, %i.mb, !dbg !11004      ; 3 uses
    #dbg_value(i64 %i.mc, !3276, !DIExpression(), !10167)
    #dbg_value(i64 %i.mc, !3280, !DIExpression(), !10169)
    #dbg_value(i64 %i.mc, !3283, !DIExpression(), !10171)
    #dbg_value(i64 %i.mc, !3286, !DIExpression(), !10173)
    #dbg_value(ptr poison, !3281, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !10174)
    #dbg_value(ptr poison, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10171)
    #dbg_value(ptr poison, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10173)
    #dbg_value(i64 %.val129, !3284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10171)
    #dbg_value(i64 %.val129, !3287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10173)
  %i.md = icmp ult i64 %i.mc, %.val129, !dbg !11005
  br i1 %i.md, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit152, label %bb.df, !dbg !11005

bb.df:                                            ; preds = %bb.de
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mc, i64 noundef %.val129, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !11005
  unreachable, !dbg !11005

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit152: ; preds = %bb.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val128) ]
    #dbg_value(ptr %.val128, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10171)
    #dbg_value(ptr %.val128, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10173)
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.val128, i64 %i.mc, !dbg !11006
  %i.mf = tail call noundef i64 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9match_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.me), !dbg !11007
    #dbg_value(i64 %i.mf, !10433, !DIExpression(), !10175)
  %i.mg = icmp ult i64 %i.lu, %i.mf, !dbg !11008
  br i1 %i.mg, label %bb.dh, label %bb.dg, !dbg !11008

bb.dg:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit152, %bb.cl
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11009 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !11009, !alias.scope !10608, !noundef !1030
  %i.mj = add i64 %i.mi, 1, !dbg !11009           ; 3 uses
  store i64 %i.mj, ptr %i.mh, align 8, !dbg !11009, !alias.scope !10608
  %i.mk = icmp ugt i64 %i.mj, %i.p, !dbg !11010
  br i1 %i.mk, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, label %bb.db, !dbg !11010

bb.dh:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit152
  %i.ml = add nuw i64 %i.lu, 1, !dbg !11011
  store i64 1, ptr %i.jp, align 8, !dbg !11012, !alias.scope !10608
  store i64 %i.ml, ptr %i.jr, align 8, !dbg !11012, !alias.scope !10608
  %.val118 = load ptr, ptr %i.lw, align 8, !dbg !11013
  %.val119 = load i64, ptr %i.lx, align 8, !dbg !11013
  %i.mm = tail call fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nonnull %i.jg, i64 %.val127, ptr %.val118, i64 %.val119, i32 noundef %i.jo, i64 noundef %i.lu) #22, !dbg !11013
    #dbg_value(i32 %i.mm, !10434, !DIExpression(), !10176)
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11014
  %i.mo = load i64, ptr %i.mn, align 8, !dbg !11014, !alias.scope !10608, !noundef !1030
  store i64 1, ptr %3, align 8, !dbg !11015, !alias.scope !10608
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11015
  store i64 %i.mo, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !11015, !alias.scope !10608
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11015
  store i32 %i.mm, ptr %.sroa.58.0..sroa_idx.i, align 8, !dbg !11015, !alias.scope !10608
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78, !dbg !11016

bb.di:                                            ; preds = %bb.db
    #dbg_value(i64 %.sroa.429.0.copyload.i, !10497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10177)
    #dbg_value(i64 %.sroa.530.0.copyload.i, !10497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10177)
    #dbg_value(ptr poison, !10563, !DIExpression(), !10179)
  %.not.i = icmp ugt i64 %.sroa.429.0.copyload.i, %.sroa.530.0.copyload.i, !dbg !11017
  %i.mp = sub nuw i64 %.sroa.530.0.copyload.i, %.sroa.429.0.copyload.i, !dbg !11017
  %i.mq = sub nuw i64 %.sroa.429.0.copyload.i, %.sroa.530.0.copyload.i, !dbg !11017
  %.sroa.031.0.i = select i1 %.not.i, i64 %i.mq, i64 %i.mp, !dbg !11017
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !11018 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !11018, !alias.scope !10607, !noundef !1030
  %i.mt = add i64 %i.ms, %.sroa.031.0.i, !dbg !11018
  store i64 %i.mt, ptr %i.mr, align 8, !dbg !11018, !alias.scope !10607
  br label %bb.dj, !dbg !11019

bb.dj:                                            ; preds = %bb.di, %bb.db
  store i64 1, ptr %1, align 8, !dbg !11020, !alias.scope !10607
  store i64 %.promoted, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !11020, !alias.scope !10607
  store i64 %.promoted, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11020, !alias.scope !10607
    #dbg_value(i32 %storemerge.i, !10428, !DIExpression(), !10621)
  %i.mu = icmp ult i64 %.promoted, %i.p, !dbg !11021
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mw = load i64, ptr %i.mv, align 8            ; 9 uses
  br i1 %i.mu, label %.lr.ph, label %._crit_edge, !dbg !11021

.lr.ph:                                           ; preds = %bb.dj
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !nonnull !1030 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nd = load ptr, ptr %.sroa.03.0, align 8, !nonnull !1030
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !nonnull !1030, !align !2065 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.ni = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.i159 = icmp ugt i64 %i.p, %i.mw
  %i.nm = add i64 %i.p, 1
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ds, !dbg !11021

._crit_edge:                                      ; preds = %.backedge, %bb.dj
  %.sroa.0.0217.lcssa = phi i32 [ %storemerge.i, %bb.dj ], [ %.sroa.0.0217.be, %.backedge ], !dbg !10993 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10622), !dbg !11022
  call void @llvm.experimental.noalias.scope.decl(metadata !10623), !dbg !11022
    #dbg_value(ptr %0, !3164, !DIExpression(), !9522)
    #dbg_value(ptr %1, !3165, !DIExpression(), !9522)
    #dbg_value(ptr %2, !3166, !DIExpression(), !9522)
    #dbg_value(ptr %2, !3293, !DIExpression(), !10184)
    #dbg_value(ptr %2, !3295, !DIExpression(), !10186)
    #dbg_value(ptr poison, !3308, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10188)
    #dbg_value(ptr %2, !3293, !DIExpression(), !10190)
    #dbg_value(ptr %2, !3293, !DIExpression(), !10192)
    #dbg_value(ptr undef, !3167, !DIExpression(), !9522)
    #dbg_value(ptr undef, !3162, !DIExpression(), !9521)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9520)
    #dbg_value(ptr undef, !3178, !DIExpression(), !9517)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9516)
    #dbg_value(ptr undef, !3162, !DIExpression(), !9513)
    #dbg_value(ptr undef, !3159, !DIExpression(), !9512)
    #dbg_value(ptr %3, !3168, !DIExpression(), !9522)
    #dbg_declare(ptr poison, !3313, !DIExpression(), !10194)
    #dbg_declare(ptr poison, !3306, !DIExpression(), !10195)
    #dbg_value(i64 poison, !3169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10196)
    #dbg_value(i64 %i.p, !3169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10196)
    #dbg_value(ptr poison, !3325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10198)
    #dbg_value(ptr poison, !3328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10200)
    #dbg_value(i64 %i.mw, !3325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10198)
    #dbg_value(i64 %i.mw, !3328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10200)
    #dbg_value(i64 %i.p, !3326, !DIExpression(), !10198)
    #dbg_value(i64 %i.p, !3329, !DIExpression(), !10200)
    #dbg_value(i64 %i.p, !3331, !DIExpression(), !10203)
  %i.ns = icmp ult i64 %i.p, %i.mw, !dbg !11023
  br i1 %i.ns, label %bb.dl, label %bb.dk, !dbg !11023

bb.dk:                                            ; preds = %._crit_edge
  %i.nt = call fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA14next_eoi_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %.sroa.0.0217.lcssa) #22, !dbg !11024, !noalias !10624 ; 2 uses
  %i.nu = extractvalue { i32, i32 } %i.nt, 0, !dbg !11024
    #dbg_value(i32 %i.nu, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10186)
    #dbg_value(i32 poison, !3304, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10186)
  %i.nv = trunc i32 %i.nu to i1, !dbg !11025
  br i1 %i.nv, label %bb.dm, label %bb.dn, !dbg !11025

bb.dl:                                            ; preds = %._crit_edge
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11026
  %i.nx = load ptr, ptr %i.nw, align 8, !dbg !11026, !alias.scope !10622, !noalias !10625, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.nx, !3325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10198)
    #dbg_value(ptr %i.nx, !3328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10200)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.p, !dbg !11027
  %i.nz = load i8, ptr %i.ny, align 1, !dbg !11028, !noalias !10626, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.nz, !3170, !DIExpression(), !10207)
  %i.oa = call fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA10next_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %.sroa.0.0217.lcssa, i8 noundef %i.nz) #22, !dbg !11029, !noalias !10624 ; 2 uses
  %i.ob = extractvalue { i32, i32 } %i.oa, 0, !dbg !11029
  %i.oc = extractvalue { i32, i32 } %i.oa, 1, !dbg !11029 ; 4 uses
    #dbg_value(i32 %i.ob, !3321, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10208)
    #dbg_value(i32 %i.oc, !3321, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10208)
    #dbg_value(ptr poison, !3322, !DIExpression(), !10209)
    #dbg_value(ptr poison, !3337, !DIExpression(), !10210)
  %i.od = trunc i32 %i.ob to i1, !dbg !11030
  br i1 %i.od, label %bb.do, label %bb.dp, !dbg !11030

bb.dm:                                            ; preds = %bb.dk
    #dbg_value(i64 %i.mw, !3331, !DIExpression(), !10212)
  %i.oe = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.mw), !dbg !11031, !noalias !10624
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, !dbg !11032

bb.dn:                                            ; preds = %bb.dk
  %i.of = extractvalue { i32, i32 } %i.nt, 1, !dbg !11024 ; 3 uses
    #dbg_value(i32 %i.of, !3304, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10186)
    #dbg_value(i32 %i.of, !10428, !DIExpression(), !10621)
  %i.og = and i32 %i.of, 134217728, !dbg !11033
  %.not.i81 = icmp eq i32 %i.og, 0, !dbg !11033
  br i1 %.not.i81, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, label %bb.du, !dbg !11034

bb.do:                                            ; preds = %bb.dl
  %i.oh = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.p), !dbg !11035, !noalias !10624
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, !dbg !11036

bb.dp:                                            ; preds = %bb.dl
    #dbg_value(i32 %i.oc, !10428, !DIExpression(), !10621)
  %i.oi = zext i32 %i.oc to i64, !dbg !11037      ; 2 uses
  %i.oj = and i64 %i.oi, 134217728, !dbg !11038
  %.not50.i85 = icmp eq i64 %i.oj, 0, !dbg !11038
  br i1 %.not50.i85, label %bb.dq, label %bb.du, !dbg !11039

bb.dq:                                            ; preds = %bb.dp
  %i.ok = and i64 %i.oi, 536870912, !dbg !11040
  %.not51.i88 = icmp eq i64 %i.ok, 0, !dbg !11040
  br i1 %.not51.i88, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, label %bb.dr, !dbg !11041

bb.dr:                                            ; preds = %bb.dq
  %i.ol = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.nz, i64 noundef %i.p), !dbg !11042, !noalias !10624
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, !dbg !11036

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89: ; preds = %bb.dm, %bb.dn, %bb.do, %bb.dq, %bb.dr
  %.sroa.0.2.ph = phi i32 [ %i.of, %bb.dn ], [ %.sroa.0.0217.lcssa, %bb.dm ], [ %i.oc, %bb.dr ], [ %i.oc, %bb.dq ], [ %.sroa.0.0217.lcssa, %bb.do ]
  %.sroa.0.1.i84.ph = phi ptr [ null, %bb.dn ], [ %i.oe, %bb.dm ], [ %i.ol, %bb.dr ], [ null, %bb.dq ], [ %i.oh, %bb.do ]
    #dbg_value(i32 %.sroa.0.2.ph, !10428, !DIExpression(), !10621)
    #dbg_value(ptr %.sroa.0.1.i84.ph, !10443, !DIExpression(), !10627)
  store i32 1, ptr %i.jk, align 8, !dbg !11043, !alias.scope !10608
  store i32 %.sroa.0.2.ph, ptr %i.jm, align 4, !dbg !11043, !alias.scope !10608
  br label %bb.dt, !dbg !11044

bb.ds:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0.0217381 = phi i32 [ %storemerge.i, %.lr.ph ], [ %.sroa.0.0217.be, %.backedge ] ; 2 uses
  %i.om = phi i64 [ %.promoted, %.lr.ph ], [ %i.ta, %.backedge ] ; 19 uses
    #dbg_value(i32 %.sroa.0.0217381, !10428, !DIExpression(), !10621)
  %i.on = icmp ult i64 %i.om, %i.mw, !dbg !11045
  br i1 %i.on, label %bb.dz, label %bb.ee, !dbg !11045

bb.dt:                                            ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89, %bb.du
  %.sroa.0.1.i84250 = phi ptr [ null, %bb.du ], [ %.sroa.0.1.i84.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_fwd.exit89 ] ; 3 uses
    #dbg_value(i64 %i.p, !10500, !DIExpression(), !10019)
    #dbg_value(ptr %1, !10558, !DIExpression(), !10214)
    #dbg_value(ptr %1, !10560, !DIExpression(), !10216)
  %.sroa.058.0.copyload.i = load i64, ptr %1, align 8, !dbg !11046, !alias.scope !10607
    #dbg_value(i64 %.sroa.058.0.copyload.i, !10524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10031)
  %.sroa.459.0.copyload.i = load i64, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !11046, !alias.scope !10607 ; 3 uses
    #dbg_value(i64 %.sroa.459.0.copyload.i, !10524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10031)
    #dbg_value(i64 poison, !10524, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10031)
  store i64 0, ptr %1, align 8, !dbg !11047, !alias.scope !10607
  %i.oo = trunc nuw i64 %.sroa.058.0.copyload.i to i1, !dbg !11048
  br i1 %i.oo, label %bb.dv, label %bb.dw, !dbg !11048, !prof !1431

bb.du:                                            ; preds = %bb.dp, %bb.dn
  %.sink630 = phi i32 [ %i.of, %bb.dn ], [ %i.oc, %bb.dp ] ; 2 uses
  %.sink629 = phi i64 [ %i.mw, %bb.dn ], [ %i.p, %bb.dp ]
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !11049
  %.val93 = load i64, ptr %i.op, align 8, !dbg !11049
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !11049
  %.val94 = load ptr, ptr %i.oq, align 8, !dbg !11049
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11049
  %.val95 = load i64, ptr %i.or, align 8, !dbg !11049
  %i.os = call fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nonnull %i.jg, i64 %.val93, ptr %.val94, i64 %.val95, i32 noundef %.sink630, i64 noundef 0) #22, !dbg !11049
  store i64 1, ptr %3, align 8, !dbg !11049, !alias.scope !10623, !noalias !10625
  %.sroa.4.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11049
  store i64 %.sink629, ptr %.sroa.4.0..sroa_idx.i86, align 8, !dbg !11049, !alias.scope !10623, !noalias !10625
  %.sroa.510.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11049
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd:bb.a

bb.fi:                                            ; preds = %bb.fe
    #dbg_value(ptr poison, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10367)
    #dbg_value(ptr poison, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10366)
  %i.sq = load ptr, ptr %i.nq, align 8, !dbg !11162, !noalias !10650, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.sq, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10367)
    #dbg_value(ptr %i.sq, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10366)
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sc, !dbg !11163
  %i.ss = load i32, ptr %i.sr, align 4, !dbg !11164, !noalias !10650, !noundef !1030 ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i256 = zext nneg i32 %i.ss to i64, !dbg !11165
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i.i256, !2979, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 4294967295, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10390)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i.i256, !2979, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10390)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i.i.i256, !2752, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !10391)
    #dbg_value(ptr poison, !3003, !DIExpression(), !10393)
  %.not47.i.i.i.i = icmp sgt i32 %i.ss, -1, !dbg !11166
  br i1 %.not47.i.i.i.i, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i, !dbg !11167, !prof !1431

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i: ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11168, !noalias !10652
  store ptr %0, ptr %i.j, align 8, !dbg !11169, !noalias !10652
  store ptr %1, ptr %i.nr, align 8, !dbg !11169, !noalias !10652
  %i.st = call i64 @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef 0, i32 %i.nk, i8 noundef %.sroa.07.0.i.i.i.i) #24, !dbg !11170, !noalias !10653 ; 3 uses
  %.sroa.445.0.extract.shift.i.i.i.i = lshr i64 %i.st, 32, !dbg !11170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11171, !noalias !10652
  %.sroa.0.0.insert.ext.i.i.i.i = and i64 %i.st, 4294967295, !dbg !11157
    #dbg_value(!DIArgList(i64 %.sroa.445.0.extract.shift.i.i.i.i, i64 %i.st), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9500)
    #dbg_value(!DIArgList(i64 %.sroa.445.0.extract.shift.i.i.i.i, i64 %i.st), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9500)
    #dbg_value(ptr undef, !3012, !DIExpression(), !9500)
  %.not.i.i169.i = icmp eq i64 %.sroa.0.0.insert.ext.i.i.i.i, 4294967295, !dbg !11172
  br i1 %.not.i.i169.i, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread, label %.loopexit529.loopexit, !dbg !11158

.loopexit529.loopexit:                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i
  %i.su = trunc i64 %i.st to i32
  br label %.loopexit529

.loopexit529:                                     ; preds = %.loopexit529.loopexit, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread522
  %.sroa.0.1.i.i.i.i528 = phi i32 [ 4, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread522 ], [ %i.su, %.loopexit529.loopexit ] ; 3 uses
  %.sroa.5.1.i.i.i.i527 = phi i64 [ %i.sm, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread522 ], [ %.sroa.445.0.extract.shift.i.i.i.i, %.loopexit529.loopexit ] ; 2 uses
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !9500)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9500)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !10396)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3014, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10396)
    #dbg_value(i32 %.sroa.0.1.i.i.i.i528, !2428, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10398)
    #dbg_value(i64 %.sroa.5.1.i.i.i.i527, !2428, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10398)
    #dbg_value(ptr poison, !2429, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10398)
    #dbg_value(i64 1, !2435, !DIExpression(), !10400)
    #dbg_value(ptr @11, !2438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10402)
    #dbg_value(i64 36, !2438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10402)
  %i.sv = icmp ugt i32 %.sroa.0.1.i.i.i.i528, 2, !dbg !11173
  %i.sw = add i32 %.sroa.0.1.i.i.i.i528, -3, !dbg !11174
  %trunc.i164 = select i1 %i.sv, i32 %i.sw, i32 2, !dbg !11173
  switch i32 %trunc.i164, label %bb.fj [
    i32 0, label %bb.fk
    i32 1, label %bb.fm
    i32 2, label %bb.fl
  ], !dbg !11174

bb.fj:                                            ; preds = %.loopexit529
  unreachable, !dbg !11175

bb.fk:                                            ; preds = %.loopexit529
  %i.sx = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.ro), !dbg !11176
  br label %.loopexit, !dbg !11177

bb.fl:                                            ; preds = %.loopexit529
  %.sroa.4.0.extract.trunc.i165 = trunc nuw i64 %.sroa.5.1.i.i.i.i527 to i32
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i165, !2428, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10398)
    #dbg_value(i32 %.sroa.0.1.i.i.i.i528, !2432, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10403)
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i165, !2432, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10403)
  %i.sy = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.0.1.i.i.i.i528, i32 %.sroa.4.0.extract.trunc.i165), !dbg !11178
  br label %.loopexit, !dbg !11179

bb.fm:                                            ; preds = %.loopexit529
    #dbg_value(i64 %.sroa.5.1.i.i.i.i527, !2430, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10404)
    #dbg_value(i64 %i.ro, !2436, !DIExpression(), !10400)
  %.sroa.3.4.extract.trunc.i167 = trunc i64 %.sroa.5.1.i.i.i.i527 to i8, !dbg !11180
    #dbg_value(i8 %.sroa.3.4.extract.trunc.i167, !2430, !DIExpression(), !10404)
    #dbg_value(i64 %i.rr, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10402)
    #dbg_value(i64 1, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10402)
    #dbg_value(i64 %i.rr, !2431, !DIExpression(), !10405)
  %i.sz = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc.i167, i64 noundef %i.rr), !dbg !11181
  br label %.loopexit, !dbg !11182

bb.fn:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread, %bb.ez
  %.sroa.0.1 = phi i32 [ %i.pt, %bb.ez ], [ %.sroa.411.0.extract.trunc.i.i.i, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread ], !dbg !10621
    #dbg_value(i32 %.sroa.0.1, !10428, !DIExpression(), !10621)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11126, !noalias !10609
  br label %.backedge, !dbg !11078

.backedge:                                        ; preds = %bb.fn, %bb.fo
  %i.ta = phi i64 [ %i.ro, %bb.fn ], [ %i.px, %bb.fo ] ; 2 uses
  %.sroa.0.0217.be = phi i32 [ %.sroa.0.1, %bb.fn ], [ %i.pt, %bb.fo ] ; 2 uses
    #dbg_value(i32 %.sroa.0.0217.be, !10428, !DIExpression(), !10621)
  %i.tb = icmp ult i64 %i.ta, %i.p, !dbg !11021
  br i1 %i.tb, label %bb.ds, label %._crit_edge, !dbg !11021

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i.thread: ; preds = %bb.fi, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i
  %.sroa.5.1.i.i.i.i521 = phi i64 [ %.sroa.445.0.extract.shift.i.i.i.i, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i.i.i ], [ %.sroa.4.0.insert.ext.i.i.i256, %bb.fi ]
    #dbg_value(i64 %.sroa.5.1.i.i.i.i521, !3006, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9500)
  %.sroa.411.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.5.1.i.i.i.i521 to i32, !dbg !11141
    #dbg_value(i32 %.sroa.411.0.extract.trunc.i.i.i, !3006, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9500)
    #dbg_value(i32 %.sroa.411.0.extract.trunc.i.i.i, !10428, !DIExpression(), !10621)
  br label %bb.fn, !dbg !11183

bb.fo:                                            ; preds = %bb.eh
    #dbg_value(ptr %.sroa.429.0..sroa_idx.i, !10533, !DIExpression(), !10029)
    #dbg_value(ptr %.sroa.429.0..sroa_idx.i, !10508, !DIExpression(), !10406)
  store i64 %i.px, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !11184, !alias.scope !10607
  br label %.backedge, !dbg !11185

bb.fp:                                            ; preds = %bb.eh
    #dbg_value(ptr null, !10533, !DIExpression(), !10029)
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21, !dbg !11186, !noalias !10628
  unreachable, !dbg !11186

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search24find_overlapping_fwd_imp.exit78: ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.ab, %bb.aa, %bb.y, %bb.dv, %.loopexit, %bb.ev, %bb.et, %bb.es, %bb.ef, %bb.dh, %bb.dg, %bb.bj, %bb.ci, %bb.cg, %bb.cf, %bb.bt, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit, %bb.aj, %bb.a
  %.sroa.0.0 = phi ptr [ %i.iu, %bb.cf ], [ null, %bb.a ], [ %.sroa.0.1.i237, %bb.bj ], [ null, %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit ], [ null, %bb.dg ], [ %i.hu, %bb.bt ], [ null, %bb.aj ], [ null, %bb.ci ], [ null, %bb.cg ], [ %.sroa.0.1.i84250, %bb.dv ], [ null, %bb.dh ], [ %i.cs, %bb.y ], [ %i.pv, %bb.ef ], [ %.sroa.02.2.i, %.loopexit ], [ null, %bb.ev ], [ null, %bb.et ], [ %i.rd, %bb.es ], [ %i.ct, %bb.aa ], [ %i.cv, %bb.ab ], [ %i.lp, %bb.cy ], [ %i.lr, %bb.cz ], [ %i.lo, %bb.cw ], !dbg !10459
  ret ptr %.sroa.0.0, !dbg !11187
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_rev(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(352) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) initializes((0, 8)) %3) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !11200 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
    #dbg_declare(ptr poison, !3080, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !11206)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11208)
    #dbg_value(ptr poison, !2731, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11208)
    #dbg_value(ptr poison, !3378, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11212)
    #dbg_value(ptr poison, !3381, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11213)
    #dbg_value(ptr poison, !3378, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11216)
    #dbg_value(ptr poison, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11217)
    #dbg_value(ptr poison, !3378, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11220)
    #dbg_value(ptr poison, !3381, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11221)
    #dbg_value(ptr poison, !3386, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11222)
    #dbg_value(ptr poison, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11614)
    #dbg_value(ptr poison, !11615, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11617)
    #dbg_value(ptr poison, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11620)
    #dbg_value(ptr poison, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11623)
    #dbg_value(ptr poison, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11627)
    #dbg_value(ptr poison, !11628, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11630)
    #dbg_value(ptr poison, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11633)
    #dbg_value(ptr poison, !11634, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11636)
    #dbg_value(ptr poison, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11639)
    #dbg_value(ptr poison, !11640, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11642)
    #dbg_value(ptr %0, !11585, !DIExpression(), !11643)
    #dbg_value(ptr %0, !11602, !DIExpression(), !11644)
    #dbg_value(ptr %1, !11586, !DIExpression(), !11643)
    #dbg_value(ptr %1, !11603, !DIExpression(), !11644)
    #dbg_value(ptr %1, !11645, !DIExpression(), !11650)
    #dbg_value(ptr %1, !11651, !DIExpression(), !11659)
    #dbg_value(ptr %1, !11651, !DIExpression(), !11661)
    #dbg_value(ptr %1, !11651, !DIExpression(), !11663)
    #dbg_value(ptr %1, !11664, !DIExpression(), !11669)
    #dbg_value(ptr %1, !11651, !DIExpression(), !11671)
    #dbg_value(ptr %2, !11587, !DIExpression(), !11643)
    #dbg_value(ptr %2, !11672, !DIExpression(), !11675)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11679)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11681)
    #dbg_value(ptr %2, !11604, !DIExpression(), !11644)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11684)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11689)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11695)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11699)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11703)
    #dbg_value(ptr %2, !11676, !DIExpression(), !11707)
    #dbg_value(ptr %3, !11588, !DIExpression(), !11643)
    #dbg_declare(ptr poison, !11708, !DIExpression(), !11722)
    #dbg_value(ptr @33, !11723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11731)
    #dbg_value(i64 31, !11723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11731)
    #dbg_value(ptr @33, !11723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11734)
    #dbg_value(i64 31, !11723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11734)
    #dbg_value(ptr @33, !11723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11737)
    #dbg_value(i64 31, !11723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11737)
    #dbg_value(ptr @32, !11738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11743)
    #dbg_value(i64 31, !11738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11743)
    #dbg_value(ptr @33, !11723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11746)
    #dbg_value(i64 31, !11723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11746)
  store i64 0, ptr %3, align 8, !dbg !11843
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11843 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !11844
  %i.g = load i64, ptr %i.f, align 8, !dbg !11844, !noundef !1030 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !11845
  %i.i = load i64, ptr %i.h, align 8, !dbg !11845, !noundef !1030 ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i, !dbg !11846
  br i1 %i.j, label %bb.cq, label %bb.b, !dbg !11847

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !11848 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !dbg !11848, !range !3253, !noundef !1030
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44, !dbg !11848 ; 5 uses
  %i.n = trunc nuw i32 %i.l to i1, !dbg !11849
  br i1 %i.n, label %bb.c, label %bb.d, !dbg !11849

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !dbg !11850, !noundef !1030 ; 4 uses
    #dbg_value(i32 %i.o, !11593, !DIExpression(), !11747)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11851 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !11851, !range !1556, !noundef !1030
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !11851 ; 2 uses
  %i.s = trunc nuw i64 %i.q to i1, !dbg !11852
  br i1 %i.s, label %bb.ae, label %bb.ai, !dbg !11852

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11748), !dbg !11853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11749), !dbg !11853
    #dbg_value(ptr %0, !3082, !DIExpression(), !11256)
    #dbg_value(ptr %1, !3083, !DIExpression(), !11256)
    #dbg_value(ptr %2, !3084, !DIExpression(), !11256)
    #dbg_value(ptr %2, !3087, !DIExpression(), !11258)
    #dbg_value(ptr %2, !3091, !DIExpression(), !11260)
    #dbg_value(ptr %2, !3093, !DIExpression(), !11262)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !11854
  %i.u = load i64, ptr %i.t, align 8, !dbg !11854, !alias.scope !11749, !noundef !1030
    #dbg_value(ptr poison, !3095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11264)
    #dbg_value(ptr poison, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11266)
    #dbg_value(i64 %i.u, !3095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11264)
    #dbg_value(i64 %i.u, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11266)
    #dbg_value(i64 %i.i, !3096, !DIExpression(), !11264)
    #dbg_value(i64 %i.i, !3099, !DIExpression(), !11266)
  %i.v = icmp ult i64 %i.i, %i.u, !dbg !11855
  br i1 %i.v, label %bb.f, label %bb.e, !dbg !11855

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 0, !3089, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11267)
    #dbg_value(i8 undef, !3089, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11267)
  %i.w = load i32, ptr %2, align 8, !dbg !11856, !range !2053, !alias.scope !11749, !noundef !1030
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !11856
  %i.y = load i32, ptr %i.x, align 4, !dbg !11856, !alias.scope !11749
    #dbg_value(i8 0, !3080, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !11750)
    #dbg_value(i8 undef, !3080, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !11750)
    #dbg_value(i32 %i.w, !3080, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11750)
    #dbg_value(i32 %i.y, !3080, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11751), !dbg !11857
    #dbg_value(ptr %0, !2746, !DIExpression(), !11208)
    #dbg_value(ptr %0, !2835, !DIExpression(), !11271)
    #dbg_value(ptr %0, !2841, !DIExpression(), !11273)
    #dbg_value(ptr %1, !2747, !DIExpression(), !11208)
    #dbg_value(ptr %1, !2839, !DIExpression(), !11271)
    #dbg_value(ptr %1, !2842, !DIExpression(), !11273)
    #dbg_value(ptr undef, !2731, !DIExpression(), !11208)
    #dbg_declare(ptr %i.e, !2748, !DIExpression(), !11274)
    #dbg_value(ptr poison, !2846, !DIExpression(), !11277)
    #dbg_value(ptr poison, !2863, !DIExpression(), !11279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11858, !noalias !11752
  store ptr %0, ptr %i.e, align 8, !dbg !11859, !noalias !11752
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11859
  store ptr %1, ptr %i.z, align 8, !dbg !11859, !noalias !11752
    #dbg_value(i32 %i.w, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11284)
    #dbg_value(i32 %i.y, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11284)
  br label %bb.g, !dbg !11860

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11854
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !11854, !alias.scope !11749, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ab, !3095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11264)
    #dbg_value(ptr %i.ab, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11266)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.i, !dbg !11861
    #dbg_value(ptr %i.ac, !3101, !DIExpression(), !11286)
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !11862, !noalias !11753, !noundef !1030 ; 4 uses
    #dbg_value(i8 1, !3089, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11267)
    #dbg_value(i8 %i.ad, !3089, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11267)
  %i.ae = load i32, ptr %2, align 8, !dbg !11856, !range !2053, !alias.scope !11749, !noundef !1030
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !11856
  %i.ag = load i32, ptr %i.af, align 4, !dbg !11856, !alias.scope !11749
    #dbg_value(i8 1, !3080, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !11750)
    #dbg_value(i8 %i.ad, !3080, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !11750)
    #dbg_value(i32 %i.ae, !3080, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11750)
    #dbg_value(i32 %i.ag, !3080, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11750)
    #dbg_value(ptr %0, !2746, !DIExpression(), !11208)
    #dbg_value(ptr %0, !2835, !DIExpression(), !11271)
    #dbg_value(ptr %0, !2841, !DIExpression(), !11273)
    #dbg_value(ptr %1, !2747, !DIExpression(), !11208)
    #dbg_value(ptr %1, !2839, !DIExpression(), !11271)
    #dbg_value(ptr %1, !2842, !DIExpression(), !11273)
    #dbg_value(ptr undef, !2731, !DIExpression(), !11208)
    #dbg_declare(ptr %i.e, !2748, !DIExpression(), !11274)
    #dbg_value(ptr poison, !2846, !DIExpression(), !11277)
    #dbg_value(ptr poison, !2863, !DIExpression(), !11279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11858, !noalias !11754
  store ptr %0, ptr %i.e, align 8, !dbg !11859, !noalias !11754
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11859
  store ptr %1, ptr %i.ah, align 8, !dbg !11859, !noalias !11754
    #dbg_value(i32 %i.ae, !2749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11284)
    #dbg_value(i32 %i.ag, !2749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11284)
    #dbg_value(i8 %i.ad, !2751, !DIExpression(), !11291)
    #dbg_value(i8 %i.ad, !2870, !DIExpression(), !11293)
    #dbg_value(i8 %i.ad, !2878, !DIExpression(), !11295)
    #dbg_value(i8 %i.ad, !2885, !DIExpression(), !11297)
    #dbg_value(ptr %0, !2861, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !11298)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !11863 ; 3 uses
    #dbg_value(ptr %i.ai, !2852, !DIExpression(), !11277)
    #dbg_value(ptr %i.ai, !2865, !DIExpression(), !11279)
  %i.aj = load i128, ptr %i.ai, align 1, !dbg !11864
  %i.ak = getelementptr i8, ptr %i.ai, i64 16, !dbg !11864
  %i.al = load i128, ptr %i.ak, align 1, !dbg !11864
  %i.am = or i128 %i.aj, %i.al, !dbg !11864
  %i.an = icmp ne i128 %i.am, 0, !dbg !11864
  %i.ao = zext i1 %i.an to i32, !dbg !11864
  %i.ap = icmp eq i32 %i.ao, 0, !dbg !11864
  br i1 %i.ap, label %bb.s, label %bb.p, !dbg !11865

bb.g:                                             ; preds = %bb.e, %bb.s
  %i.aq = phi i32 [ %i.ag, %bb.s ], [ %i.y, %bb.e ] ; 2 uses
  %i.ar = phi i32 [ %i.ae, %bb.s ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.07.0.i.i = phi i8 [ %i.bz, %bb.s ], [ 2, %bb.e ], !dbg !11866 ; 2 uses
    #dbg_value(i8 %.sroa.07.0.i.i, !2750, !DIExpression(), !11299)
    #dbg_value(i32 %i.ar, !2888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11301)
    #dbg_value(i32 %i.aq, !2888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11301)
    #dbg_value(ptr %i.e, !2892, !DIExpression(), !11301)
    #dbg_value(i8 %.sroa.07.0.i.i, !2893, !DIExpression(), !11301)
    #dbg_value(i8 0, !2898, !DIExpression(), !11304)
    #dbg_value(ptr poison, !2912, !DIExpression(), !11306)
    #dbg_value(ptr poison, !2917, !DIExpression(), !11308)
  %i.as = zext nneg i8 %.sroa.07.0.i.i to i64, !dbg !11867 ; 3 uses
    #dbg_value(i64 %i.as, !2894, !DIExpression(), !11309)
  switch i32 %i.ar, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.h
    i32 2, label %bb.i
  ], !dbg !11868

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.at = add nuw nsw i64 %i.as, 6, !dbg !11869
    #dbg_value(i64 %i.at, !2895, !DIExpression(), !11310)
    #dbg_value(i64 %i.at, !2922, !DIExpression(), !11312)
    #dbg_value(i64 %i.at, !2925, !DIExpression(), !11314)
    #dbg_value(i64 %i.at, !2928, !DIExpression(), !11316)
  br label %bb.j, !dbg !11870

bb.i:                                             ; preds = %bb.g
    #dbg_value(i32 %i.aq, !2896, !DIExpression(), !11317)
    #dbg_value(ptr %0, !2909, !DIExpression(), !11318)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 129, !dbg !11871
  %i.av = load i8, ptr %i.au, align 1, !dbg !11871, !range !2931, !noalias !11755, !noundef !1030
    #dbg_value(i8 %i.av, !2902, !DIExpression(), !11304)
  %i.aw = icmp eq i8 %i.av, 1, !dbg !11872
  %i.ax = zext i32 %i.aq to i64, !dbg !11873      ; 4 uses
  br i1 %i.aw, label %bb.k, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit, !dbg !11872

bb.j:                                             ; preds = %bb.l, %bb.h, %bb.g
  %.sroa.05.0.i = phi i64 [ %i.bi, %bb.l ], [ %i.at, %bb.h ], [ %i.as, %bb.g ], !dbg !11874 ; 3 uses
    #dbg_value(i64 %.sroa.05.0.i, !2928, !DIExpression(), !11316)
    #dbg_value(i64 %.sroa.05.0.i, !2925, !DIExpression(), !11314)
    #dbg_value(i64 %.sroa.05.0.i, !2922, !DIExpression(), !11312)
    #dbg_value(i64 %.sroa.05.0.i, !2895, !DIExpression(), !11310)
    #dbg_value(ptr %1, !2923, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !11321)
    #dbg_value(ptr %1, !2933, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !11323)
    #dbg_value(ptr %1, !2935, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !11325)
    #dbg_value(ptr %1, !2937, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !11327)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !11875
  %i.az = load i64, ptr %i.ay, align 8, !dbg !11875, !noalias !11755, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11314)
    #dbg_value(ptr poison, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11316)
    #dbg_value(i64 %i.az, !2926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11314)
    #dbg_value(i64 %i.az, !2929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11316)
  %i.ba = icmp ult i64 %.sroa.05.0.i, %i.az, !dbg !11876
  br i1 %i.ba, label %bb.n, label %bb.o, !dbg !11876

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !2941, !DIExpression(), !11329)
    #dbg_value(ptr poison, !2947, !DIExpression(), !11331)
    #dbg_value(ptr %0, !2952, !DIExpression(), !11333)
    #dbg_value(ptr %0, !2954, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !11335)
    #dbg_value(ptr %0, !2958, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !11337)
    #dbg_value(ptr %0, !2964, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !11339)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 688, !dbg !11877
  %i.bc = load ptr, ptr %i.bb, align 16, !dbg !11877, !noalias !11755, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.bc, !2974, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !11342)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 360, !dbg !11878
  %i.be = load i64, ptr %i.bd, align 8, !dbg !11878, !noalias !11755, !noundef !1030 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 2305843009213693952, !dbg !11879
  tail call void @llvm.assume(i1 %i.bf), !dbg !11880, !noalias !11756
  %.not23.i = icmp samesign ugt i64 %i.be, %i.ax, !dbg !11881
  br i1 %.not23.i, label %bb.l, label %bb.m, !dbg !11881

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !2941, !DIExpression(), !11344)
    #dbg_value(ptr poison, !2947, !DIExpression(), !11346)
  %i.bg = mul nuw nsw i64 %i.ax, 6, !dbg !11882
  %i.bh = add nuw nsw i64 %i.bg, 12, !dbg !11883
  %i.bi = add nuw nsw i64 %i.bh, %i.as, !dbg !11883
    #dbg_value(i64 %i.bi, !2895, !DIExpression(), !11310)
    #dbg_value(i64 %i.bi, !2922, !DIExpression(), !11312)
    #dbg_value(i64 %i.bi, !2925, !DIExpression(), !11314)
    #dbg_value(i64 %i.bi, !2928, !DIExpression(), !11316)
  br label %bb.j, !dbg !11884

bb.m:                                             ; preds = %bb.k
  %i.bj = call noundef i32 @_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !dbg !11885, !noalias !11756
  br label %bb.t, !dbg !11886

bb.n:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !11887
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !11887, !noalias !11755, !nonnull !1030, !noundef !1030
end_hunk_3
begin_hunk_4_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_rev:bb.a
  %i.bt = shl nuw i128 1, %i.bs, !dbg !11896
  %i.bu = and i128 %i.br, %i.bt, !dbg !11895
  %.not.i.i = icmp eq i128 %i.bu, 0, !dbg !11895
  br i1 %.not.i.i, label %bb.s, label %bb.q, !dbg !11897

bb.q:                                             ; preds = %bb.p
  %i.bv = zext i8 %i.ad to i64, !dbg !11898
  br label %bb.r, !dbg !11899

bb.r:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit, %bb.t, %bb.q
  %.sroa.5.0.i.i = phi i64 [ %i.bv, %bb.q ], [ %i.ax, %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit ], [ %.sroa.4.0.insert.ext.i203, %bb.t ], !dbg !11866
  %.sroa.0.0.i.i = phi i64 [ 4, %bb.q ], [ %.sroa.04.0.insert.insert.i, %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef19get_cached_start_id.exit ], [ 4294967295, %bb.t ], !dbg !11866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11900, !noalias !11752
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i, !dbg !11898

bb.s:                                             ; preds = %bb.p, %bb.f
    #dbg_value(ptr %0, !2883, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !11357)
  %i.bw = zext i8 %i.ad to i64, !dbg !11901
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !11902
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw, !dbg !11902
  %i.bz = load i8, ptr %i.by, align 1, !dbg !11902, !range !3000, !alias.scope !11757, !noundef !1030
    #dbg_value(i8 %i.bz, !2750, !DIExpression(), !11299)
  br label %bb.g, !dbg !11903

bb.t:                                             ; preds = %bb.n, %bb.m
  %.sroa.4.0.i.ph = phi i32 [ %i.bj, %bb.m ], [ %i.bn, %bb.n ] ; 2 uses
  %.sroa.4.0.insert.ext.i203 = zext nneg i32 %.sroa.4.0.i.ph to i64, !dbg !11890
    #dbg_value(i64 %.sroa.4.0.insert.ext.i203, !2979, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 4294967295, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !11351)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i203, !2979, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11351)
    #dbg_value(i64 %.sroa.4.0.insert.ext.i203, !2752, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !11358)
    #dbg_value(ptr poison, !3003, !DIExpression(), !11360)
  %.not47.i.i = icmp sgt i32 %.sroa.4.0.i.ph, -1, !dbg !11904
  br i1 %.not47.i.i, label %bb.r, label %bb.u, !dbg !11905, !prof !1431

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11906, !noalias !11752
  store ptr %0, ptr %i.d, align 8, !dbg !11907, !noalias !11752
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11907
  store ptr %1, ptr %i.ca, align 8, !dbg !11907, !noalias !11752
  %i.cb = call i64 @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %i.ar, i32 %i.aq, i8 noundef %.sroa.07.0.i.i) #24, !dbg !11908, !noalias !11756 ; 2 uses
  %.sroa.445.0.extract.shift.i.i = lshr i64 %i.cb, 32, !dbg !11908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11900, !noalias !11752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11900, !noalias !11752
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i, !dbg !11898

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i: ; preds = %bb.u, %bb.r
  %.sroa.5.1.i.i = phi i64 [ %.sroa.5.0.i.i, %bb.r ], [ %.sroa.445.0.extract.shift.i.i, %bb.u ], !dbg !11909 ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.r ], [ %i.cb, %bb.u ], !dbg !11909 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.sroa.0.1.i.i, 4294967295, !dbg !11898
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !11362)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11362)
    #dbg_value(ptr %2, !3113, !DIExpression(), !11362)
  %.not.i = icmp eq i64 %.sroa.0.0.insert.ext.i.i, 4294967295, !dbg !11910
  br i1 %.not.i, label %bb.aa, label %bb.v, !dbg !11911

bb.v:                                             ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !11362)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11362)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !11363)
    #dbg_value(!DIArgList(i64 %.sroa.5.1.i.i, i64 %.sroa.0.1.i.i), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11363)
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.0.1.i.i to i32 ; 3 uses
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i, !3117, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11365)
    #dbg_value(i64 %.sroa.5.1.i.i, !3117, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11365)
    #dbg_value(ptr poison, !3120, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11365)
  %i.cc = icmp ugt i32 %.sroa.03.0.extract.trunc.i, 2, !dbg !11912
  %i.cd = add i32 %.sroa.03.0.extract.trunc.i, -3, !dbg !11913
  %trunc.i = select i1 %i.cc, i32 %i.cd, i32 2, !dbg !11912
  switch i32 %trunc.i, label %bb.w [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
  ], !dbg !11913

bb.w:                                             ; preds = %bb.v
  unreachable, !dbg !11912

bb.x:                                             ; preds = %bb.v
  %i.ce = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.i), !dbg !11914
  br label %bb.cq, !dbg !11915

bb.y:                                             ; preds = %bb.v
  %.sroa.3.4.extract.trunc.i = trunc i64 %.sroa.5.1.i.i to i8, !dbg !11916
    #dbg_value(i8 %.sroa.3.4.extract.trunc.i, !3121, !DIExpression(), !11366)
    #dbg_value(i64 %i.i, !3122, !DIExpression(), !11367)
  %i.cf = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc.i, i64 noundef %i.i), !dbg !11917
  br label %bb.cq, !dbg !11918

bb.z:                                             ; preds = %bb.v
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.5.1.i.i to i32
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i, !3117, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11365)
    #dbg_value(i32 %.sroa.03.0.extract.trunc.i, !3123, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11368)
    #dbg_value(i32 %.sroa.4.0.extract.trunc.i, !3123, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11368)
  %i.cg = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.03.0.extract.trunc.i, i32 %.sroa.4.0.extract.trunc.i), !dbg !11919
  br label %bb.cq, !dbg !11920

bb.aa:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA11start_state.exit.i
    #dbg_value(i64 %.sroa.5.1.i.i, !3104, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11362)
  %.sroa.417.0.extract.trunc.i = trunc nuw i64 %.sroa.5.1.i.i to i32, !dbg !11857 ; 3 uses
    #dbg_value(i32 %.sroa.417.0.extract.trunc.i, !3104, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11362)
    #dbg_value(i32 %.sroa.417.0.extract.trunc.i, !11590, !DIExpression(), !11758)
  store i32 1, ptr %i.k, align 8, !dbg !11921
  store i32 %.sroa.417.0.extract.trunc.i, ptr %i.m, align 4, !dbg !11921
  %i.ch = icmp eq i64 %i.g, %i.i, !dbg !11922
  br i1 %i.ch, label %bb.ac, label %bb.ab, !dbg !11922

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11923
  %i.cj = add i64 %i.i, -1, !dbg !11923           ; 2 uses
  store i64 %i.cj, ptr %i.ci, align 8, !dbg !11923
  br label %bb.ad, !dbg !11924

bb.ac:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !11925
  store i8 1, ptr %i.ck, align 8, !dbg !11925
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !11926
  br label %bb.ad, !dbg !11924

bb.ad:                                            ; preds = %bb.ao, %bb.ap, %bb.ab, %bb.ac
  %i.cl = phi i64 [ %i.cj, %bb.ab ], [ %.pre, %bb.ac ], [ %i.g, %bb.ap ], [ %i.dv, %bb.ao ], !dbg !11926 ; 3 uses
  %storemerge = phi i32 [ %.sroa.417.0.extract.trunc.i, %bb.ab ], [ %.sroa.417.0.extract.trunc.i, %bb.ac ], [ %i.o, %bb.ap ], [ %i.o, %bb.ao ], !dbg !11643 ; 2 uses
    #dbg_value(i32 %storemerge, !11589, !DIExpression(), !11759)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11926 ; 2 uses
    #dbg_value(i64 %i.cl, !11646, !DIExpression(), !11650)
    #dbg_value(ptr %1, !11760, !DIExpression(), !11763)
    #dbg_value(ptr %1, !11764, !DIExpression(), !11767)
  %.sroa.025.0.copyload = load i64, ptr %1, align 8, !dbg !11927
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11927 ; 6 uses
  %.sroa.426.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !11927 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11927 ; 3 uses
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !11927 ; 3 uses
  store i64 0, ptr %1, align 8, !dbg !11928
  %i.cn = trunc nuw i64 %.sroa.025.0.copyload to i1, !dbg !11929
  br i1 %i.cn, label %bb.aq, label %bb.ar, !dbg !11929

bb.ae:                                            ; preds = %bb.c
  %i.co = load i64, ptr %i.r, align 8, !dbg !11930, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.co, !11594, !DIExpression(), !11768)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !11931 ; 2 uses
  %.val172 = load ptr, ptr %i.cp, align 8, !dbg !11931 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11931 ; 2 uses
  %.val173 = load i64, ptr %i.cq, align 8, !dbg !11931 ; 2 uses
    #dbg_value(ptr poison, !3262, !DIExpression(), !11372)
    #dbg_value(ptr poison, !3267, !DIExpression(), !11372)
    #dbg_value(i32 %i.o, !3268, !DIExpression(), !11372)
    #dbg_value(ptr poison, !3270, !DIExpression(), !11374)
    #dbg_value(ptr poison, !3272, !DIExpression(), !11376)
    #dbg_value(i32 %i.o, !3274, !DIExpression(), !11378)
  %i.cr = zext i32 %i.o to i64, !dbg !11932       ; 2 uses
  %i.cs = and i64 %i.cr, 134217728, !dbg !11933
  %.not.i176 = icmp eq i64 %i.cs, 0, !dbg !11933
  br i1 %.not.i176, label %bb.af, label %bb.ag, !dbg !11934, !prof !1458

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21, !dbg !11935
  unreachable, !dbg !11935

bb.ag:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !11931
  %.val171 = load i64, ptr %i.ct, align 8, !dbg !11931
    #dbg_value(ptr poison, !3275, !DIExpression(), !11379)
    #dbg_value(ptr poison, !3278, !DIExpression(), !11381)
    #dbg_value(ptr poison, !3272, !DIExpression(), !11383)
  %i.cu = and i64 %i.cr, 134217727, !dbg !11936
  %i.cv = and i64 %.val171, 63, !dbg !11937       ; 2 uses
  %i.cw = lshr i64 %i.cu, %i.cv, !dbg !11937      ; 3 uses
    #dbg_value(i64 %i.cw, !3276, !DIExpression(), !11384)
    #dbg_value(i64 %i.cw, !3280, !DIExpression(), !11386)
    #dbg_value(i64 %i.cw, !3283, !DIExpression(), !11388)
    #dbg_value(i64 %i.cw, !3286, !DIExpression(), !11390)
    #dbg_value(ptr poison, !3281, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11391)
    #dbg_value(ptr poison, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11388)
    #dbg_value(ptr poison, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11390)
    #dbg_value(i64 %.val173, !3284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11388)
    #dbg_value(i64 %.val173, !3287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11390)
  %i.cx = icmp ult i64 %i.cw, %.val173, !dbg !11938
  br i1 %i.cx, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit, label %bb.ah, !dbg !11938

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %.val173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !11938
  unreachable, !dbg !11938

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit: ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val172) ]
    #dbg_value(ptr %.val172, !3284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11388)
    #dbg_value(ptr %.val172, !3287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11390)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val172, i64 %i.cw, !dbg !11939
  %i.cz = tail call noundef i64 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9match_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy), !dbg !11940
    #dbg_value(i64 %i.cz, !11595, !DIExpression(), !11769)
  %i.da = icmp ult i64 %i.co, %i.cz, !dbg !11941
  br i1 %i.da, label %bb.aj, label %bb.ai, !dbg !11941

bb.ai:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit, %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !11942 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !dbg !11942, !range !1318, !noundef !1030
  %i.dd = trunc nuw i8 %i.dc to i1, !dbg !11942
  br i1 %i.dd, label %bb.cq, label %bb.an, !dbg !11942

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA9match_len.exit
  %i.de = add nuw i64 %i.co, 1, !dbg !11943
  store i64 1, ptr %i.p, align 8, !dbg !11944
  store i64 %i.de, ptr %i.r, align 8, !dbg !11944
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 688, !dbg !11945
  %.val166 = load ptr, ptr %i.df, align 16, !dbg !11945, !nonnull !1030, !noundef !1030
  %.val168 = load ptr, ptr %i.cp, align 8, !dbg !11945 ; 2 uses
  %.val169 = load i64, ptr %i.cq, align 8, !dbg !11945 ; 2 uses
    #dbg_value(ptr poison, !2581, !DIExpression(), !11393)
    #dbg_value(ptr poison, !2586, !DIExpression(), !11395)
    #dbg_value(ptr poison, !2582, !DIExpression(), !11393)
    #dbg_value(i32 %i.o, !2583, !DIExpression(), !11393)
    #dbg_value(i64 %i.co, !2584, !DIExpression(), !11393)
    #dbg_value(ptr poison, !2594, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !11397)
    #dbg_value(ptr %.val166, !2601, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !11399)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val166, i64 360, !dbg !11946
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !11946, !noundef !1030 ; 2 uses
  %i.di = icmp ult i64 %i.dh, 2305843009213693952, !dbg !11947
  tail call void @llvm.assume(i1 %i.di), !dbg !11948
  %i.dj = icmp eq i64 %i.dh, 1, !dbg !11949
  br i1 %i.dj, label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit, label %bb.ak, !dbg !11949

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr poison, !2607, !DIExpression(), !11401)
    #dbg_value(i32 %i.o, !2615, !DIExpression(), !11402)
    #dbg_value(ptr poison, !2618, !DIExpression(), !11404)
  %i.dk = and i32 %i.o, 134217727, !dbg !11950
  %i.dl = zext nneg i32 %i.dk to i64, !dbg !11950
  %i.dm = lshr i64 %i.dl, %i.cv, !dbg !11951      ; 3 uses
    #dbg_value(i64 %i.dm, !2616, !DIExpression(), !11405)
    #dbg_value(i64 %i.dm, !2620, !DIExpression(), !11407)
    #dbg_value(i64 %i.dm, !2627, !DIExpression(), !11409)
    #dbg_value(i64 %i.dm, !2640, !DIExpression(), !11411)
    #dbg_value(ptr poison, !2624, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11412)
    #dbg_value(ptr poison, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11409)
    #dbg_value(ptr poison, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11411)
    #dbg_value(i64 %.val169, !2634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11409)
    #dbg_value(i64 %.val169, !2643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11411)
  %i.dn = icmp ult i64 %i.dm, %.val169, !dbg !11952
  br i1 %i.dn, label %bb.al, label %bb.am, !dbg !11952

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val168) ]
    #dbg_value(ptr %.val168, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11409)
    #dbg_value(ptr %.val168, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11411)
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %.val168, i64 %i.dm, !dbg !11953
  %i.dp = tail call noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State13match_pattern(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, i64 noundef %i.co), !dbg !11954
  br label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit, !dbg !11955

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %.val169, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !11952
  unreachable, !dbg !11952

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern.exit: ; preds = %bb.aj, %bb.al
  %.sroa.0.0.i177 = phi i32 [ %i.dp, %bb.al ], [ 0, %bb.aj ], !dbg !11956
    #dbg_value(i32 %.sroa.0.0.i177, !11596, !DIExpression(), !11770)
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11957
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !11957, !noundef !1030
  store i64 1, ptr %3, align 8, !dbg !11958
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11958
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11958
  store i32 %.sroa.0.0.i177, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !11958
  br label %bb.cq, !dbg !11959

bb.an:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !11960 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !11960, !noundef !1030 ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.g, !dbg !11960
  br i1 %i.du, label %bb.ap, label %bb.ao, !dbg !11960

bb.ao:                                            ; preds = %bb.an
  %i.dv = add i64 %i.dt, -1, !dbg !11961          ; 2 uses
  store i64 %i.dv, ptr %i.ds, align 8, !dbg !11961
  br label %bb.ad, !dbg !11962

bb.ap:                                            ; preds = %bb.an
  store i8 1, ptr %i.db, align 8, !dbg !11963
  br label %bb.ad, !dbg !11962

bb.aq:                                            ; preds = %bb.ad
    #dbg_value(i64 %.sroa.426.0.copyload, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11772)
    #dbg_value(i64 %.sroa.527.0.copyload, !11647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11772)
    #dbg_value(ptr poison, !11773, !DIExpression(), !11776)
  %.not = icmp ugt i64 %.sroa.426.0.copyload, %.sroa.527.0.copyload, !dbg !11964
  %i.dw = sub nuw i64 %.sroa.527.0.copyload, %.sroa.426.0.copyload, !dbg !11964
  %i.dx = sub nuw i64 %.sroa.426.0.copyload, %.sroa.527.0.copyload, !dbg !11964
  %.sroa.028.0 = select i1 %.not, i64 %i.dx, i64 %i.dw, !dbg !11964
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !11965 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !11965, !noundef !1030
  %i.ea = add i64 %i.dz, %.sroa.028.0, !dbg !11965
  store i64 %i.ea, ptr %i.dy, align 8, !dbg !11965
  br label %bb.ar, !dbg !11966

bb.ar:                                            ; preds = %bb.aq, %bb.ad
  store i64 1, ptr %1, align 8, !dbg !11967
  store i64 %i.cl, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !11967
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 8, !range !1318, !noundef !1030
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ef = load i64, ptr %i.ee, align 8            ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !1030 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.ed, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ar
  %.promoted = load i64, ptr %i.cm, align 8
  br label %.split, !dbg !11968

.split.us:                                        ; preds = %bb.ar
  store i64 %i.cl, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !11759
    #dbg_value(i32 %storemerge, !11589, !DIExpression(), !11759)
  br label %.split254

.split:                                           ; preds = %.split.preheader, %bb.ch
  %i.em = phi i64 [ %i.iq, %bb.ch ], [ %.promoted, %.split.preheader ] ; 18 uses
  %storemerge219 = phi i64 [ %i.iq, %bb.ch ], [ %i.cl, %.split.preheader ], !dbg !11759
  %.sroa.0.0196 = phi i32 [ %i.hd, %bb.ch ], [ %storemerge, %.split.preheader ], !dbg !11643 ; 2 uses
  store i64 %storemerge219, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !11759
    #dbg_value(i32 %.sroa.0.0196, !11589, !DIExpression(), !11759)
  %i.en = icmp ult i64 %i.em, %i.ef, !dbg !11968
  br i1 %i.en, label %bb.bk, label %bb.bp, !dbg !11968

.split254:                                        ; preds = %bb.bs, %.split.us
  %.us-phi = phi i32 [ %storemerge, %.split.us ], [ %i.hd, %bb.bs ] ; 6 uses
    #dbg_value(i32 %.us-phi, !11589, !DIExpression(), !11759)
  call void @llvm.experimental.noalias.scope.decl(metadata !11777), !dbg !11969
    #dbg_value(ptr %0, !3383, !DIExpression(), !11222)
    #dbg_value(ptr %1, !3384, !DIExpression(), !11222)
    #dbg_value(ptr %2, !3385, !DIExpression(), !11222)
    #dbg_value(ptr undef, !3386, !DIExpression(), !11222)
    #dbg_value(ptr undef, !3381, !DIExpression(), !11221)
    #dbg_value(ptr undef, !3378, !DIExpression(), !11220)
    #dbg_value(ptr undef, !3397, !DIExpression(), !11217)
    #dbg_value(ptr undef, !3378, !DIExpression(), !11216)
    #dbg_value(ptr undef, !3381, !DIExpression(), !11213)
    #dbg_value(ptr undef, !3378, !DIExpression(), !11212)
    #dbg_value(ptr %3, !3387, !DIExpression(), !11222)
    #dbg_declare(ptr poison, !3399, !DIExpression(), !11417)
    #dbg_declare(ptr poison, !3412, !DIExpression(), !11419)
    #dbg_value(i64 %i.g, !3388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11420)
    #dbg_value(i64 poison, !3388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11420)
    #dbg_value(i64 %i.g, !3424, !DIExpression(), !11423)
    #dbg_value(i64 %i.g, !3424, !DIExpression(), !11426)
  %.not.i154 = icmp eq i64 %i.g, 0, !dbg !11970
  br i1 %.not.i154, label %bb.as, label %bb.ax, !dbg !11970

bb.as:                                            ; preds = %.split254
  call void @llvm.experimental.noalias.scope.decl(metadata !11778), !dbg !11971
  call void @llvm.experimental.noalias.scope.decl(metadata !11779), !dbg !11971
    #dbg_value(ptr %0, !2649, !DIExpression(), !11431)
    #dbg_value(ptr %0, !2657, !DIExpression(), !11433)
    #dbg_value(ptr %1, !2650, !DIExpression(), !11431)
    #dbg_value(ptr %1, !2658, !DIExpression(), !11433)
    #dbg_value(i32 %.us-phi, !2651, !DIExpression(), !11431)
    #dbg_value(ptr %0, !2660, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !11435)
    #dbg_value(ptr %0, !2665, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !11437)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 655, !dbg !11972
    #dbg_value(i8 poison, !2670, !DIExpression(), !11439)
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !11972, !alias.scope !11778, !noalias !11780, !noundef !1030
    #dbg_value(i8 %i.ep, !2670, !DIExpression(), !11439)
  %i.eq = zext i8 %i.ep to i64, !dbg !11973
  %i.er = add nuw nsw i64 %i.eq, 1, !dbg !11974   ; 2 uses
  %i.es = call i32 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.er), !dbg !11975, !noalias !11781 ; 3 uses
    #dbg_value(i32 %i.es, !2673, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !11443)
    #dbg_value(i32 %i.es, !2673, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !11443)
  %i.et = trunc i32 %i.es to i1, !dbg !11976
    #dbg_value(i32 %i.es, !2673, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11443)
  %.sroa.519.0.extract.shift.i = lshr i32 %i.es, 16, !dbg !11977
  %.sroa.418.0.extract.shift.i = lshr i32 %i.es, 8, !dbg !11977
  %i.eu = and i32 %.sroa.418.0.extract.shift.i, 255, !dbg !11977
  %.sroa.01.0.in.i = select i1 %i.et, i32 %.sroa.519.0.extract.shift.i, i32 %i.eu, !dbg !11977
    #dbg_value(i32 %.sroa.01.0.in.i, !2652, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11444)
    #dbg_value(ptr poison, !2683, !DIExpression(), !11446)
  %i.ev = and i32 %.us-phi, 134217727, !dbg !11978
  %narrow.i = add nuw nsw i32 %.sroa.01.0.in.i, %i.ev, !dbg !11979
  %i.ew = zext nneg i32 %narrow.i to i64, !dbg !11979 ; 3 uses
    #dbg_value(i64 %i.ew, !2653, !DIExpression(), !11447)
    #dbg_value(i64 %i.ew, !2685, !DIExpression(), !11449)
    #dbg_value(i64 %i.ew, !2688, !DIExpression(), !11451)
    #dbg_value(i64 %i.ew, !2691, !DIExpression(), !11453)
    #dbg_value(ptr %1, !2686, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11454)
    #dbg_value(ptr %1, !2694, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11456)
    #dbg_value(ptr %1, !2696, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11458)
    #dbg_value(ptr %1, !2698, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11460)
  %i.ex = load i64, ptr %i.ej, align 8, !dbg !11980, !alias.scope !11779, !noalias !11780, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11451)
    #dbg_value(ptr poison, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11453)
    #dbg_value(i64 %i.ex, !2689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11451)
    #dbg_value(i64 %i.ex, !2692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11453)
  %i.ey = icmp ugt i64 %i.ex, %i.ew, !dbg !11981
  br i1 %i.ey, label %bb.at, label %bb.au, !dbg !11981

bb.at:                                            ; preds = %bb.as
  %i.ez = load ptr, ptr %i.ek, align 8, !dbg !11982, !alias.scope !11779, !noalias !11780, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ez, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11451)
    #dbg_value(ptr %i.ez, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11453)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew, !dbg !11983
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !11984, !noalias !11781, !noundef !1030 ; 2 uses
end_hunk_4
