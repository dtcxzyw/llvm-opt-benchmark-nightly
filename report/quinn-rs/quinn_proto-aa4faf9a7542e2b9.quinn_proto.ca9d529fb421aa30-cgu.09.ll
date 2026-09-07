Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.09?download=true
inline.NumInlined: 672
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtCshovLROGBtMy_11quinn_proto6packetNtB5_13PartialEncode6finish:bb.a
  %i.e = load i64, ptr %i.d, align 8, !dbg !13745 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13745
  %i.g = load i8, ptr %i.f, align 8, !dbg !13745, !range !2565, !noundef !1053 ; 2 uses
    #dbg_value(i64 %i.e, !13651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13703)
    #dbg_value(i8 %i.g, !13651, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !13703)
  %.not = icmp eq i8 %i.g, 2, !dbg !13746
  br i1 %.not, label %bb.c, label %bb.b, !dbg !13747

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.e, !13652, !DIExpression(), !13705)
  %i.h = trunc nuw i8 %i.g to i1, !dbg !13748
    #dbg_value(i1 %i.h, !13653, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13705)
  %i.i = sub i64 %i.c, %i.e, !dbg !13749          ; 5 uses
    #dbg_value(i64 %i.i, !13656, !DIExpression(), !13706)
    #dbg_value(i64 %i.i, !13692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13695)
    #dbg_value(i64 %i.i, !13697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13701)
    #dbg_value(i64 %i.i, !13707, !DIExpression(), !13711)
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !13750

bb.c:                                             ; preds = %bb.a, %bb.j
  ret void, !dbg !13751

bb.d:                                             ; preds = %_RNvXs0_NtNtCsdIYt8sV98we_5bytes3buf7buf_mutQShNtB5_6BufMut9put_slice.exit, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !13752
  %i.k = load ptr, ptr %i.j, align 8, !dbg !13752, !noundef !1053 ; 2 uses
  %.not31 = icmp eq ptr %i.k, null, !dbg !13752
  br i1 %.not31, label %bb.j, label %bb.i, !dbg !13753

bb.e:                                             ; preds = %bb.b
  %i.l = sub i64 %2, %i.c, !dbg !13754
  %i.m = add i64 %i.l, %i.e, !dbg !13754          ; 2 uses
    #dbg_value(i64 %i.m, !13657, !DIExpression(), !13712)
  %i.n = icmp ult i64 %i.m, 16384, !dbg !13755
  br i1 %i.n, label %bb.g, label %bb.f, !dbg !13755, !prof !3138

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #31, !dbg !13756
  unreachable, !dbg !13756

bb.g:                                             ; preds = %bb.e
  %i.o = add i64 %i.i, -2, !dbg !13757            ; 2 uses
    #dbg_value(i64 %i.o, !13692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13695)
    #dbg_value(i64 %i.o, !13697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13701)
    #dbg_value(i64 %i.o, !13708, !DIExpression(), !13711)
    #dbg_value(i64 %i.o, !13713, !DIExpression(), !13718)
  %i.p = icmp ult i64 %i.i, 2, !dbg !13758
    #dbg_value(i64 2, !13698, !DIExpression(), !13701)
    #dbg_value(i64 2, !13715, !DIExpression(), !13718)
  %.not30 = icmp ugt i64 %i.i, %2
  %or.cond = or i1 %i.p, %.not30, !dbg !13758
  br i1 %or.cond, label %bb.h, label %_RNvXs0_NtNtCsdIYt8sV98we_5bytes3buf7buf_mutQShNtB5_6BufMut9put_slice.exit, !dbg !13758, !prof !3153

_RNvXs0_NtNtCsdIYt8sV98we_5bytes3buf7buf_mutQShNtB5_6BufMut9put_slice.exit: ; preds = %bb.g
    #dbg_value(ptr %1, !13714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13718)
    #dbg_value(i64 %2, !13714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13718)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !13759
    #dbg_value(ptr %i.q, !13658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13719)
    #dbg_value(i64 2, !13658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13719)
    #dbg_value(ptr undef, !13678, !DIExpression(), !13684)
  %i.r = trunc nuw nsw i64 %i.m to i16, !dbg !13760
  %i.s = or disjoint i16 %i.r, 16384, !dbg !13760
    #dbg_value(i16 %i.s, !13679, !DIExpression(), !13684)
    #dbg_value(i16 %i.s, !13720, !DIExpression(), !13723)
    #dbg_value(i16 %i.s, !13724, !DIExpression(), !13727)
    #dbg_value(i16 %i.s, !13728, !DIExpression(), !13731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13761
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s), !dbg !13762
    #dbg_value(i16 %i.t, !13732, !DIExpression(), !13735)
  store i16 %i.t, ptr %i.a, align 2, !dbg !13763
    #dbg_value(ptr undef, !13669, !DIExpression(), !13675)
    #dbg_value(ptr %i.a, !13673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13675)
    #dbg_value(ptr %i.a, !13736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13739)
    #dbg_value(i64 2, !13673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13675)
    #dbg_value(i64 2, !13736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13739)
    #dbg_value(ptr %i.q, !13737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13739)
    #dbg_value(i64 2, !13737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13739)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.q, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54), !dbg !13764, !noalias !13740
    #dbg_value(ptr %i.q, !13658, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13719)
    #dbg_value(i64 2, !13658, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13719)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13765
  br label %bb.d, !dbg !13766

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %i.i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #31, !dbg !13767
  unreachable, !dbg !13767

bb.i:                                             ; preds = %bb.d
  %i.u = load i64, ptr %5, align 8, !dbg !13768, !noundef !1053
    #dbg_value(i64 %i.u, !13659, !DIExpression(), !13743)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !13769
  %i.w = load ptr, ptr %i.v, align 8, !dbg !13769, !nonnull !1053, !align !2981, !noundef !1053
    #dbg_value(ptr %i.k, !13660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13743)
    #dbg_value(ptr %i.w, !13660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13743)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !13770
  %i.y = load ptr, ptr %i.x, align 8, !dbg !13770, !invariant.load !1053, !nonnull !1053
  call void %i.y(ptr noundef nonnull %i.k, i64 noundef %i.u, ptr noalias nofree noundef nonnull %1, i64 noundef %2, i64 noundef %i.c) #28, !dbg !13771
  br label %bb.j, !dbg !13772

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32, !dbg !13773
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !13773, !invariant.load !1053, !nonnull !1053
  call void %i.aa(ptr noundef nonnull %3, i64 noundef %i.i, ptr noalias nofree noundef nonnull %1, i64 noundef %2) #28, !dbg !13774
  br label %bb.c, !dbg !13751
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RNvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB5_12PacketNumber3new(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !dbg !13776 {
bb.a:
    #dbg_value(i64 %0, !13780, !DIExpression(), !13784)
    #dbg_value(i64 %1, !13781, !DIExpression(), !13784)
  %i.a = sub i64 %0, %1, !dbg !13786
  %i.b = shl i64 %i.a, 1, !dbg !13786             ; 4 uses
    #dbg_value(i64 %i.b, !13782, !DIExpression(), !13785)
  %i.c = icmp ult i64 %i.b, 256, !dbg !13787
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !13787

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.b, 65536, !dbg !13788
  br i1 %i.d, label %bb.e, label %bb.d, !dbg !13788

bb.c:                                             ; preds = %bb.a
  %i.e = shl i64 %0, 8, !dbg !13789
  %i.f = and i64 %i.e, 65280, !dbg !13789
  br label %bb.h, !dbg !13790

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.b, 16777216, !dbg !13791
  br i1 %i.g, label %bb.h, label %bb.f, !dbg !13791

bb.e:                                             ; preds = %bb.b
  %i.h = shl i64 %0, 16, !dbg !13789
  %i.i = and i64 %i.h, 4294901760, !dbg !13789
  br label %bb.h, !dbg !13792

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %i.b, 4294967296, !dbg !13793
  br i1 %i.j, label %bb.h, label %bb.g, !dbg !13793, !prof !3138

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !dbg !13794
  unreachable, !dbg !13794

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  %.sroa.7.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ %0, %bb.d ], [ %0, %bb.f ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.i, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.sroa.5.0 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.d ], [ 3, %bb.f ], !dbg !13785
  %.sroa.7.0.insert.ext = shl i64 %.sroa.7.0, 32, !dbg !13789
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext, %.sroa.6.0, !dbg !13789
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0, !dbg !13789
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0.0, !dbg !13789
  ret i64 %.sroa.0.0.insert.insert, !dbg !13789
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCslrs821VbQCb_7tinyvec7tinyvecINtB5_7TinyVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_E6insertCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !13803 {
bb.a:
    #dbg_value(ptr poison, !13939, !DIExpression(), !13944)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(i64 %1, !13926, !DIExpression(), !13962)
    #dbg_value(i64 %1, !13963, !DIExpression(), !13971)
  store i64 %1, ptr %i.f, align 8
    #dbg_value(ptr %0, !13925, !DIExpression(), !13962)
    #dbg_value(ptr %0, !13973, !DIExpression(), !13984)
    #dbg_value(ptr %0, !13973, !DIExpression(), !13986)
    #dbg_value(i64 %2, !13927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13962)
    #dbg_value(i64 %3, !13927, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13962)
    #dbg_declare(ptr %i.c, !13936, !DIExpression(), !13987)
    #dbg_declare(ptr %i.b, !13937, !DIExpression(), !13988)
    #dbg_declare(ptr poison, !13989, !DIExpression(), !13994)
    #dbg_declare(ptr poison, !13997, !DIExpression(), !14001)
    #dbg_declare(ptr poison, !14002, !DIExpression(), !14009)
    #dbg_value(i64 0, !14010, !DIExpression(), !14016)
    #dbg_declare(ptr poison, !14017, !DIExpression(), !14026)
  %i.g = load i64, ptr %0, align 8, !dbg !14232, !range !1843, !noundef !1053
  %i.h = trunc nuw i64 %i.g to i1, !dbg !14232
  br i1 %i.h, label %bb.b, label %.thread, !dbg !14232

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !13977, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14027)
    #dbg_value(ptr %0, !14028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14030)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14233 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !14233, !noundef !1053 ; 7 uses
  %i.k = icmp ult i64 %i.j, 576460752303423488, !dbg !14234
  tail call void @llvm.assume(i1 %i.k), !dbg !14235
    #dbg_value(i64 %1, !13963, !DIExpression(), !13971)
    #dbg_value(i64 %1, !13926, !DIExpression(), !13962)
  %.not = icmp ugt i64 %1, %i.j, !dbg !14236
  br i1 %.not, label %bb.c, label %bb.d, !dbg !14236, !prof !1845

.thread:                                          ; preds = %bb.a
    #dbg_value(ptr %0, !13975, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14031)
    #dbg_value(ptr %0, !14032, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14036)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14237 ; 8 uses
  %i.m = load i16, ptr %i.l, align 8, !dbg !14237, !noundef !1053 ; 4 uses
  %i.n = zext i16 %i.m to i64, !dbg !14237        ; 3 uses
    #dbg_value(i64 %1, !13963, !DIExpression(), !13971)
    #dbg_value(i64 %1, !13926, !DIExpression(), !13962)
  %.not67 = icmp ugt i64 %1, %i.n, !dbg !14236
  br i1 %.not67, label %bb.c, label %bb.h, !dbg !14236, !prof !1845

bb.c:                                             ; preds = %.thread, %bb.b
  %storemerge = phi i64 [ %i.j, %bb.b ], [ %i.n, %.thread ], !dbg !14238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14239
  store i64 %storemerge, ptr %i.e, align 8, !dbg !14238
    #dbg_value(ptr %i.e, !13929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14038)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14240
  store ptr %i.f, ptr %i.d, align 8, !dbg !14240
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14240
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !14240
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14240
  store ptr %i.e, ptr %i.o, align 8, !dbg !14240
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !14240
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !14240
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #31, !dbg !14241
  unreachable, !dbg !14241

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14242 ; 2 uses
    #dbg_value(ptr %i.p, !13933, !DIExpression(), !14039)
    #dbg_value(ptr %i.p, !13967, !DIExpression(), !13971)
    #dbg_value(i64 %2, !13968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13971)
    #dbg_value(i64 %3, !13968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13971)
    #dbg_value(ptr %i.p, !14040, !DIExpression(), !14050)
    #dbg_value(ptr %i.p, !14051, !DIExpression(), !14053)
    #dbg_value(ptr %i.p, !14054, !DIExpression(), !14060)
    #dbg_value(i64 %1, !14045, !DIExpression(), !14050)
    #dbg_value(i64 %1, !14061, !DIExpression(), !14065)
    #dbg_value(i64 %2, !14046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14050)
    #dbg_value(i64 %3, !14046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14050)
    #dbg_value(i64 16, !14066, !DIExpression(), !14069)
    #dbg_value(i64 1, !14063, !DIExpression(), !14072)
    #dbg_value(i64 16, !14066, !DIExpression(), !14073)
    #dbg_value(i64 %i.j, !14047, !DIExpression(), !14078)
    #dbg_value(ptr %i.p, !14070, !DIExpression(), !14079)
  %i.q = load i64, ptr %i.p, align 8, !dbg !14243, !range !2293, !alias.scope !14080, !noundef !1053
  %i.r = icmp eq i64 %i.j, %i.q, !dbg !14244
  br i1 %i.r, label %bb.e, label %bb.f, !dbg !14244

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE8grow_oneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #33, !dbg !14245
  br label %bb.f, !dbg !14246

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14247
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14247, !alias.scope !14080, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.t, !14062, !DIExpression(), !14065)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %1, !dbg !14248 ; 4 uses
    #dbg_value(ptr %i.u, !14048, !DIExpression(), !14081)
    #dbg_value(ptr %i.u, !14062, !DIExpression(), !14072)
    #dbg_value(ptr %i.u, !14082, !DIExpression(), !14085)
  %i.v = icmp samesign ult i64 %1, %i.j, !dbg !14249
  br i1 %i.v, label %bb.g, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE10insert_mutCshovLROGBtMy_11quinn_proto.exit, !dbg !14249

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.u, !14086, !DIExpression(), !14090)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14250
    #dbg_value(ptr %i.w, !14087, !DIExpression(), !14090)
  %i.x = sub nuw nsw i64 %i.j, %1, !dbg !14251
    #dbg_value(i64 %i.x, !14088, !DIExpression(), !14090)
  %i.y = shl nuw nsw i64 %i.x, 4, !dbg !14252
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !dbg !14252
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE10insert_mutCshovLROGBtMy_11quinn_proto.exit, !dbg !14253

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE10insert_mutCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.f, %bb.g
    #dbg_value(i64 %2, !14083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14085)
    #dbg_value(i64 %3, !14083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14085)
  store i64 %2, ptr %i.u, align 8, !dbg !14254
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !14254
  store i64 %3, ptr %i.z, align 8, !dbg !14254
  %i.aa = add nuw nsw i64 %i.j, 1, !dbg !14255
    #dbg_value(i64 %i.aa, !14058, !DIExpression(), !14060)
  store i64 %i.aa, ptr %i.i, align 8, !dbg !14256, !alias.scope !14080
  br label %_RNvMs5_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_E10try_insertCshovLROGBtMy_11quinn_proto.exit.thread, !dbg !14257

bb.h:                                             ; preds = %.thread
    #dbg_value(ptr %i.l, !13932, !DIExpression(), !14091)
    #dbg_value(ptr %i.l, !14032, !DIExpression(), !14093)
    #dbg_value(i64 %1, !13963, !DIExpression(), !13971)
    #dbg_value(i64 %1, !13926, !DIExpression(), !13962)
    #dbg_value(ptr poison, !14094, !DIExpression(), !14097)
    #dbg_value(ptr poison, !14098, !DIExpression(), !14104)
    #dbg_value(ptr poison, !14101, !DIExpression(), !14105)
    #dbg_value(i64 %1, !13949, !DIExpression(), !14106)
    #dbg_value(i64 %1, !14107, !DIExpression(), !14111)
    #dbg_value(i64 %1, !14112, !DIExpression(), !14119)
    #dbg_value(i64 %1, !14117, !DIExpression(), !14120)
    #dbg_value(i64 %2, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 %3, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr %i.l, !13948, !DIExpression(), !14106)
    #dbg_value(ptr %i.l, !14121, !DIExpression(), !14124)
    #dbg_value(i64 1, !14125, !DIExpression(), !14128)
    #dbg_value(i64 1, !14129, !DIExpression(), !14132)
  %i.ab = icmp ult i16 %i.m, 2, !dbg !14258
  br i1 %i.ab, label %_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i, label %bb.i, !dbg !14258

_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.h
  %i.ac = add nuw nsw i16 %i.m, 1, !dbg !14259    ; 2 uses
  store i16 %i.ac, ptr %i.l, align 8, !dbg !14259, !alias.scope !14133, !noalias !14134
    #dbg_value(ptr %i.l, !2148, !DIExpression(), !14135)
  %i.ad = zext nneg i16 %i.ac to i64, !dbg !14260 ; 3 uses
    #dbg_value(ptr poison, !14116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14120)
    #dbg_value(ptr poison, !14113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14119)
    #dbg_value(i64 %i.ad, !14116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14120)
    #dbg_value(i64 %i.ad, !14113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14119)
    #dbg_value(i64 %1, !14107, !DIExpression(), !14111)
    #dbg_value(i64 %1, !13949, !DIExpression(), !14106)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14261
    #dbg_value(ptr %i.ae, !14116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14120)
    #dbg_value(ptr %i.ae, !14113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14119)
  %i.af = sub nuw nsw i64 %i.ad, %1, !dbg !14262
    #dbg_value(i64 %i.af, !14114, !DIExpression(), !14136)
    #dbg_value(i64 %i.af, !14109, !DIExpression(), !14111)
    #dbg_value(ptr %i.ae, !14108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14111)
    #dbg_value(i64 %i.ad, !14108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14111)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %1, !dbg !14263 ; 5 uses
    #dbg_value(ptr %i.ag, !13955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14137)
    #dbg_value(i64 %i.af, !13955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14137)
    #dbg_value(i64 0, !13956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %i.af, !13956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14138)
    #dbg_value(i64 %2, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 %3, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr undef, !14101, !DIExpression(), !14105)
    #dbg_value(ptr undef, !14098, !DIExpression(), !14104)
    #dbg_value(ptr undef, !14094, !DIExpression(), !14097)
    #dbg_value(ptr undef, !14095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14139)
  %i.ah = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.ai = insertelement <2 x i64> %i.ah, i64 %3, i64 1 ; 2 uses
  %4 = zext nneg i16 %i.m to i64, !dbg !14264
  %5 = sub i64 %4, %1, !dbg !14264
  %i.aj = icmp ult i64 %5, 3, !dbg !14264
  br i1 %i.aj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i, !dbg !14264

.lr.ph.i:                                         ; preds = %_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i, %.lr.ph.i
  %.sroa.03.036.i = phi i64 [ %i.at, %.lr.ph.i ], [ 0, %_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i ] ; 5 uses
  %i.ak = phi <2 x i64> [ %i.aw, %.lr.ph.i ], [ %i.ai, %_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %_RNvXs2_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_ENtNtBX_5deref8DerefMut9deref_mutCshovLROGBtMy_11quinn_proto.exit.i ]
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 %.sroa.03.036.i, !14099, !DIExpression(), !14140)
    #dbg_value(i64 %.sroa.03.036.i, !14126, !DIExpression(), !14128)
    #dbg_value(i64 %.sroa.03.036.i, !14130, !DIExpression(), !14132)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %.sroa.03.036.i, !13957, !DIExpression(), !14142)
    #dbg_value(ptr undef, !13939, !DIExpression(), !13944)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.03.036.i, !dbg !14265 ; 2 uses
    #dbg_value(ptr %i.al, !13942, !DIExpression(), !14144)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
  %i.am = load <2 x i64>, ptr %i.al, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
  store <2 x i64> %i.ak, ptr %i.al, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr undef, !14101, !DIExpression(), !14105)
    #dbg_value(ptr undef, !14098, !DIExpression(), !14104)
    #dbg_value(ptr undef, !14094, !DIExpression(), !14097)
    #dbg_value(ptr undef, !14095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14139)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 %.sroa.03.036.i, !14099, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !14140)
    #dbg_value(i64 %.sroa.03.036.i, !14126, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !14128)
    #dbg_value(i64 %.sroa.03.036.i, !14130, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !14132)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %.sroa.03.036.i, !13957, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !14142)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.03.036.i, !dbg !14265
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !14265 ; 2 uses
    #dbg_value(ptr %i.ao, !13942, !DIExpression(), !14144)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
  store <2 x i64> %i.am, ptr %i.ao, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 %.sroa.03.036.i, !14099, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !14140)
    #dbg_value(i64 %.sroa.03.036.i, !14126, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !14128)
    #dbg_value(i64 %.sroa.03.036.i, !14130, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !14132)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %.sroa.03.036.i, !13957, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !14142)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.03.036.i, !dbg !14265
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !14265 ; 2 uses
    #dbg_value(ptr %i.ar, !13942, !DIExpression(), !14144)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
  store <2 x i64> %i.ap, ptr %i.ar, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(i64 %.sroa.03.036.i, !14099, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !14140)
    #dbg_value(i64 %.sroa.03.036.i, !14126, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !14128)
    #dbg_value(i64 %.sroa.03.036.i, !14130, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !14132)
    #dbg_value(i64 %.sroa.03.036.i, !13956, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %.sroa.03.036.i, !13957, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !14142)
  %i.at = add nuw nsw i64 %.sroa.03.036.i, 4, !dbg !14267 ; 2 uses
    #dbg_value(i64 %i.at, !13956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14138)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.03.036.i, !dbg !14265
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48, !dbg !14265 ; 2 uses
    #dbg_value(ptr %i.av, !13942, !DIExpression(), !14144)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134 ; 2 uses
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
  store <2 x i64> %i.as, ptr %i.av, align 8, !dbg !14266, !alias.scope !14133, !noalias !14134
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 poison, !13950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
  %niter.next.3 = add i64 %niter, 4, !dbg !14264  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0, !dbg !14264
  br i1 %niter.ncmp.3, label %_RNvMs5_NtCslrs821VbQCb_7tinyvec8arrayvecINtB5_8ArrayVecAINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEj2_E10try_insertCshovLROGBtMy_11quinn_proto.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !14264

bb.i:                                             ; preds = %bb.h
    #dbg_value(i64 %2, !13935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14152)
    #dbg_value(i64 %3, !13935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14268
  %i.ax = shl nuw nsw i64 %i.n, 1, !dbg !14269    ; 2 uses
    #dbg_value(i64 %i.ax, !13995, !DIExpression(), !14153)
    #dbg_value(i64 %i.ax, !13990, !DIExpression(), !14154)
    #dbg_value(i64 %i.ax, !13998, !DIExpression(), !14155)
    #dbg_value(i64 %i.ax, !14003, !DIExpression(), !14156)
    #dbg_value(i64 %i.ax, !14012, !DIExpression(), !14016)
    #dbg_value(i64 8, !14004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14156)
    #dbg_value(i64 8, !14013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14016)
    #dbg_value(i64 16, !14004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14156)
    #dbg_value(i64 16, !14013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14270
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !14270
  %i.ay = load i64, ptr %i.a, align 8, !dbg !14270, !range !1843, !noundef !1053
  %i.az = trunc nuw i64 %i.ay to i1, !dbg !14271
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14156
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !14156, !range !1844, !noundef !1053 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14156 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k, !dbg !14271, !prof !1845

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !14272
    #dbg_value(i64 %i.bb, !14006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14157)
    #dbg_value(i64 %i.bd, !14006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14157)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #30, !dbg !14273
  unreachable, !dbg !14273

bb.k:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.bc, align 8, !dbg !14274, !nonnull !1053, !noundef !1053
    #dbg_value(i64 %i.bb, !14005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14158)
    #dbg_value(ptr %i.be, !14005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14158)
    #dbg_value(ptr poison, !14011, !DIExpression(), !14159)
  %i.bf = icmp samesign ule i64 %i.ax, %i.bb, !dbg !14275
    #dbg_value(i1 true, !14160, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14163)
  tail call void @llvm.assume(i1 %i.bf), !dbg !14276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14277
  store i64 %i.bb, ptr %i.c, align 8, !dbg !14278
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14278 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8, !dbg !14278
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14278 ; 3 uses
  store i64 0, ptr %i.bh, align 8, !dbg !14278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14279
    #dbg_value(ptr %i.l, !2148, !DIExpression(), !14164)
    #dbg_value(i64 0, !2157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(i64 0, !2178, !DIExpression(), !14166)
    #dbg_value(ptr poison, !2173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14167)
    #dbg_value(ptr poison, !2168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !2161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(i64 2, !2173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14167)
    #dbg_value(i64 2, !2168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 2, !2161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14165)
  %i.bi = load i16, ptr %i.l, align 8, !dbg !14280, !alias.scope !14169, !noundef !1053 ; 2 uses
  %i.bj = zext i16 %i.bi to i64, !dbg !14280      ; 2 uses
    #dbg_value(i64 %i.bj, !2174, !DIExpression(), !14167)
    #dbg_value(i64 %i.bj, !2167, !DIExpression(), !14168)
    #dbg_value(i64 %i.bj, !2157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %i.bj, !2162, !DIExpression(), !14165)
    #dbg_value(i64 %i.bj, !2181, !DIExpression(), !14166)
  %i.bk = icmp ult i16 %i.bi, 3
  br i1 %i.bk, label %bb.m, label %bb.l, !dbg !14281, !prof !2183

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bj, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #31
          to label %.noexc unwind label %bb.v, !dbg !14282

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !14282

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtB4_3ops5range5RangeyEEECshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.bz, %bb.s ]
  store i64 1, ptr %0, align 8, !dbg !14283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !14283
  br label %bb.x, !dbg !14284

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14285 ; 2 uses
    #dbg_value(ptr %i.bl, !14170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14173)
    #dbg_value(ptr %i.bl, !14174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14180)
    #dbg_value(i64 %i.bj, !14170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14173)
    #dbg_value(i64 %i.bj, !14174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14180)
    #dbg_value(i64 %i.bj, !14175, !DIExpression(), !14181)
    #dbg_value(i64 %i.bj, !14182, !DIExpression(), !14186)
    #dbg_value(ptr %i.bl, !14176, !DIExpression(), !14187)
    #dbg_value(ptr %i.bl, !14183, !DIExpression(), !14186)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bj, !dbg !14286
    #dbg_value(ptr %i.bl, !14020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14188)
    #dbg_value(ptr %i.bm, !14020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14188)
  store ptr %i.bl, ptr %i.b, align 8, !dbg !14287
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14287 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !dbg !14287
    #dbg_value(ptr %i.c, !14191, !DIExpression(), !14206)
    #dbg_value(i64 %1, !13963, !DIExpression(), !13971)
    #dbg_value(i64 %1, !13926, !DIExpression(), !13962)
    #dbg_value(ptr %i.b, !14201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14206)
    #dbg_value(i64 %1, !14201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14206)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEEINtB4_10SpecExtendBT_INtNtNtNtB10_4iter8adapters4take4TakeQINtNtB22_3map3MapINtNtNtB10_5slice4iter7IterMutBT_EINvNtB10_3mem4takeBT_EEEE11spec_extendCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1)
          to label %bb.n unwind label %bb.v, !dbg !14288

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.c, !14207, !DIExpression(), !14211)
    #dbg_value(i64 %2, !14208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14211)
    #dbg_value(i64 %3, !14208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14211)
    #dbg_value(ptr %i.c, !2265, !DIExpression(), !14212)
    #dbg_value(ptr %i.c, !2273, !DIExpression(), !14213)
    #dbg_value(i64 %2, !2269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14212)
    #dbg_value(i64 %3, !2269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14212)
    #dbg_value(i64 16, !2278, !DIExpression(), !14214)
  %i.bo = load i64, ptr %i.bh, align 8, !dbg !14289, !alias.scope !14215, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.bo, !2270, !DIExpression(), !14216)
    #dbg_value(i64 %i.bo, !2290, !DIExpression(), !14217)
    #dbg_value(ptr %i.c, !2288, !DIExpression(), !14218)
  %i.bp = load i64, ptr %i.c, align 8, !dbg !14290, !range !2293, !alias.scope !14215, !noundef !1053
  %i.bq = icmp eq i64 %i.bo, %i.bp, !dbg !14291
  br i1 %i.bq, label %bb.o, label %bb.p, !dbg !14291
end_hunk_0
