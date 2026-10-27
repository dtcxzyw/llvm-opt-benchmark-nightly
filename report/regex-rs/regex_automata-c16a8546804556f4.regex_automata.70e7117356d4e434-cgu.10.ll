Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.10?download=true
inline.NumInlined: 352
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config26get_minimum_cache_capacity:bb.a
  %i.q = shl nuw nsw i128 1, %i.p, !dbg !15787
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.n, !dbg !15788 ; 2 uses
  %i.s = load i128, ptr %i.r, align 16, !dbg !15788, !noalias !15757, !noundef !1285
  %i.t = or i128 %i.q, %i.s, !dbg !15788
  store i128 %i.t, ptr %i.r, align 16, !dbg !15788, !noalias !15757
    #dbg_value(i8 poison, !4653, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15601)
    #dbg_value(ptr undef, !4640, !DIExpression(), !15585)
    #dbg_value(ptr undef, !4625, !DIExpression(), !15584)
    #dbg_value(i8 %.sroa.5.08.i, !4653, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !15601)
    #dbg_value(i8 %.sroa.5.08.i, !4684, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !15603)
    #dbg_value(i8 %.sroa.5.08.i, !4694, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !15605)
  %i.u = icmp eq i8 %.sroa.5.08.i, -2, !dbg !15789
  %i.v = add nuw nsw i8 %.sroa.5.08.i, 2, !dbg !15789
    #dbg_value(i1 %i.u, !4653, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !15601)
    #dbg_value(i8 %i.v, !4653, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15601)
    #dbg_value(i8 %.sroa.5.08.i, !4654, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !15609)
    #dbg_value(i8 %.sroa.5.08.i, !4707, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !15610)
    #dbg_value(i8 %.sroa.5.08.i, !4709, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !15611)
    #dbg_value(i8 %.sroa.5.08.i, !4713, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15613)
    #dbg_value(i8 %.sroa.5.08.i, !4708, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15614)
  %.lobit.i.1 = lshr i8 %.sroa.5.08.i, 7, !dbg !15784
    #dbg_value(i8 %.lobit.i.1, !4708, !DIExpression(), !15614)
    #dbg_value(i8 %.lobit.i.1, !4713, !DIExpression(), !15613)
  %i.w = zext nneg i8 %.lobit.i.1 to i64, !dbg !15785
  %i.x = and i8 %.sroa.5.08.i, 126, !dbg !15786
  %i.y = or disjoint i8 %i.x, 1, !dbg !15786
    #dbg_value(i8 %i.y, !4709, !DIExpression(), !15611)
  %i.z = zext nneg i8 %i.y to i128, !dbg !15787
  %i.aa = shl nuw i128 1, %i.z, !dbg !15787
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w, !dbg !15788 ; 2 uses
  %i.ac = load i128, ptr %i.ab, align 16, !dbg !15788, !noalias !15757, !noundef !1285
  %i.ad = or i128 %i.aa, %i.ac, !dbg !15788
  store i128 %i.ad, ptr %i.ab, align 16, !dbg !15788, !noalias !15757
    #dbg_value(i8 poison, !4653, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15601)
    #dbg_value(i8 %i.v, !4653, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15601)
  br i1 %i.u, label %.loopexit, label %.preheader.i, !dbg !15790

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 -9223372036854775799, !15733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15759)
    #dbg_value(ptr @42, !15733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15759)
    #dbg_value(i64 177, !15733, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15759)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15791, !noalias !15757
    #dbg_value(i64 -9223372036854775799, !15732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15760)
    #dbg_value(ptr @42, !15732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15760)
    #dbg_value(i64 177, !15732, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15760)
    #dbg_value(i64 -9223372036854775799, !15718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15761)
    #dbg_value(i64 -9223372036854775799, !15726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15762)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !15726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15762)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !15718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15761)
    #dbg_value(i64 177, !15726, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15762)
    #dbg_value(i64 177, !15718, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15761)
    #dbg_value(i64 -9223372036854775799, !15723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15763)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !15723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15763)
    #dbg_value(i64 177, !15723, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15763)
  store i64 -9223372036854775799, ptr %0, align 8, !dbg !15792
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15792
  store i64 ptrtoint (ptr @42 to i64), ptr %.sroa.414.0..sroa_idx, align 8, !dbg !15792
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15792
  store i64 177, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !15792
  br label %bb.n, !dbg !15793

.loopexit:                                        ; preds = %.preheader.i, %bb.d, %bb.f
  %.sroa.9.16.copyload28 = load i64, ptr %i.c, align 16, !dbg !15794, !noalias !15756
    #dbg_value(i64 %.sroa.9.16.copyload28, !15733, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15759)
  %.sroa.12.16..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.16..sroa_idx29, i64 24, i1 false), !dbg !15794
    #dbg_value(i64 -2, !15733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15759)
    #dbg_value(ptr @42, !15733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15759)
    #dbg_value(i64 %.sroa.9.16.copyload28, !15733, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15759)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15791, !noalias !15757
    #dbg_value(i64 %.sroa.9.16.copyload28, !15734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15764)
    #dbg_value(i64 %.sroa.9.16.copyload28, !15719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15765)
  store i64 %.sroa.9.16.copyload28, ptr %i.e, align 16, !dbg !15738
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.sroa.0, i64 24, i1 false), !dbg !15738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15795
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 130, !dbg !15796
  %.val22 = load i8, ptr %i.ae, align 2, !dbg !15796, !range !2648, !noundef !1285
  call void @llvm.experimental.noalias.scope.decl(metadata !15766), !dbg !15796
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15621)
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15621)
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !15621)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15622)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15622)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !15622)
    #dbg_declare(ptr %i.d, !4722, !DIExpression(), !15623)
    #dbg_value(ptr poison, !4730, !DIExpression(), !15624)
    #dbg_value(ptr poison, !4735, !DIExpression(), !15626)
    #dbg_value(ptr poison, !4731, !DIExpression(), !15624)
    #dbg_value(ptr %i.e, !4732, !DIExpression(), !15624)
    #dbg_value(ptr %i.e, !4738, !DIExpression(), !15628)
    #dbg_declare(ptr %i.b, !4733, !DIExpression(), !15629)
    #dbg_value(i8 1, !4740, !DIExpression(), !15631)
    #dbg_value(ptr poison, !4744, !DIExpression(), !15633)
    #dbg_value(ptr poison, !4747, !DIExpression(), !15635)
    #dbg_value(i8 %.val22, !4741, !DIExpression(), !15631)
  %cond.i = icmp eq i8 %.val22, 0, !dbg !15797
  br i1 %cond.i, label %vector.ph, label %bb.h, !dbg !15797

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15798, !noalias !15767
    #dbg_value(ptr %.val, !4752, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !15638)
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 272, !dbg !15799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.af, i64 32, i1 false), !dbg !15799, !noalias !15767
    #dbg_value(ptr %i.e, !4745, !DIExpression(), !15633)
    #dbg_value(ptr %i.e, !4748, !DIExpression(), !15635)
  %i.ag = load i128, ptr %i.e, align 16, !dbg !15800
  %i.ah = getelementptr i8, ptr %i.e, i64 16, !dbg !15800
  %i.ai = load i128, ptr %i.ah, align 16, !dbg !15800
  %i.aj = or i128 %i.ag, %i.ai, !dbg !15800
  %i.ak = icmp ne i128 %i.aj, 0, !dbg !15800
  %i.al = zext i1 %i.ak to i32, !dbg !15800
  %i.am = icmp eq i32 %i.al, 0, !dbg !15800
  br i1 %i.am, label %bb.j, label %bb.i, !dbg !15801

vector.ph:                                        ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false), !dbg !15802, !alias.scope !15766
    #dbg_value(i8 0, !4723, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15640)
    #dbg_value(i8 -1, !4723, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !15640)
    #dbg_value(i8 poison, !4723, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15640)
    #dbg_value(ptr undef, !4640, !DIExpression(), !15622)
    #dbg_value(ptr undef, !4625, !DIExpression(), !15621)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15803
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.d, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.an, align 16, !dbg !15803, !alias.scope !15766
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !15803
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !15803
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.ao, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ap, align 16, !dbg !15803, !alias.scope !15766
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !15803
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !15803
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.aq, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.ar, align 16, !dbg !15803, !alias.scope !15766
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 96, !dbg !15803
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !15803
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.as, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.at, align 16, !dbg !15803, !alias.scope !15766
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !15803
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !15803
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.au, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.av, align 16, !dbg !15803, !alias.scope !15766
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 160, !dbg !15803
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 176, !dbg !15803
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.aw, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.ax, align 16, !dbg !15803, !alias.scope !15766
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 192, !dbg !15803
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !15803
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ay, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.az, align 16, !dbg !15803, !alias.scope !15766
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 224, !dbg !15803
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 240, !dbg !15803
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.ba, align 16, !dbg !15803, !alias.scope !15766
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bb, align 16, !dbg !15803, !alias.scope !15766
  br label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit, !dbg !15804

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_12ByteClassSet7add_set(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.e), !dbg !15805, !noalias !15766
  br label %bb.j, !dbg !15806

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_12ByteClassSet12byte_classes(ptr noalias nofree noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.d, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.b), !dbg !15807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15808, !noalias !15767
  br label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit, !dbg !15809

_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit: ; preds = %vector.ph, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 129, !dbg !15804
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !15804, !range !2648, !noundef !1285
    #dbg_value(i8 %i.bd, !15751, !DIExpression(), !15755)
  %i.be = and i8 %i.bd, 1, !dbg !15810
  %.sroa.06.0.not = icmp eq i8 %i.be, 0, !dbg !15810
    #dbg_value(i8 poison, !15721, !DIExpression(), !15768)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 255, !dbg !15811
  %.val25 = load i8, ptr %i.bf, align 1, !dbg !15811, !noundef !1285
    #dbg_value(ptr poison, !4766, !DIExpression(), !15643)
    #dbg_value(ptr poison, !4784, !DIExpression(), !15645)
    #dbg_value(ptr poison, !4786, !DIExpression(), !15647)
    #dbg_value(ptr poison, !4786, !DIExpression(), !15649)
    #dbg_value(ptr poison, !4769, !DIExpression(), !15643)
    #dbg_value(i1 %.sroa.06.0.not, !4770, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15643)
    #dbg_value(i64 100, !4780, !DIExpression(), !15650)
    #dbg_value(ptr poison, !4788, !DIExpression(), !15652)
    #dbg_value(ptr poison, !4795, !DIExpression(), !15654)
    #dbg_value(i8 %.val25, !4798, !DIExpression(), !15656)
    #dbg_value(i8 %.val25, !4801, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value), !15659)
    #dbg_value(i8 %.val25, !4807, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !15660)
    #dbg_value(i8 %.val25, !4804, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !15661)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !15663)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !15664)
    #dbg_value(ptr %.val, !4816, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15666)
    #dbg_value(ptr %.val, !4818, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15668)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 336, !dbg !15812
  %i.bh = load i64, ptr %i.bg, align 16, !dbg !15812, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.bh, !4772, !DIExpression(), !15669)
    #dbg_value(i64 %i.bh, !4773, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !15670)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !15671)
    #dbg_value(i64 24, !4775, !DIExpression(), !15672)
  br i1 %.sroa.06.0.not, label %bb.k, label %bb.m, !dbg !15813

bb.k:                                             ; preds = %bb.m, %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit
  %.sroa.0.0.i = phi i64 [ %i.bs, %bb.m ], [ 24, %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit ], !dbg !15814
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !15664)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !15671)
    #dbg_value(i64 %i.bh, !4773, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !15670)
    #dbg_value(i64 %.sroa.0.0.i, !4775, !DIExpression(), !15672)
    #dbg_value(i64 2, !4776, !DIExpression(), !15673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15815
  %i.bi = call { ptr, i64 } @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State4dead(), !dbg !15815 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0, !dbg !15815 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1, !dbg !15815 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !dbg !15815
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15815
  store i64 %i.bk, ptr %i.bl, align 8, !dbg !15815
    #dbg_value(i64 %i.bk, !4777, !DIExpression(), !15674)
    #dbg_value(ptr %i.a, !3147, !DIExpression(), !15676)
    #dbg_value(ptr %i.a, !3152, !DIExpression(), !15678)
    #dbg_value(ptr %i.a, !3158, !DIExpression(), !15680)
    #dbg_value(i64 1, !3169, !DIExpression(), !15682)
    #dbg_value(i8 1, !3171, !DIExpression(), !15682)
    #dbg_value(i64 1, !3173, !DIExpression(), !15684)
    #dbg_value(i8 1, !3175, !DIExpression(), !15684)
    #dbg_value(ptr %i.bj, !3170, !DIExpression(), !15685)
    #dbg_value(ptr %i.bj, !3174, !DIExpression(), !15684)
  %i.bm = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !dbg !15816, !noalias !15769
  %i.bn = icmp eq i64 %i.bm, 1, !dbg !15817
  br i1 %i.bn, label %bb.l, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa22minimum_cache_capacity.exit, !dbg !15817

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 2, !2703, !DIExpression(), !15693)
  fence acquire, !dbg !15818
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23, !dbg !15819
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa22minimum_cache_capacity.exit, !dbg !15819

bb.m:                                             ; preds = %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit
    #dbg_value(ptr %.val, !4824, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !15695)
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 360, !dbg !15820
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !15820, !noundef !1285 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 2305843009213693952, !dbg !15821
  call void @llvm.assume(i1 %i.bq), !dbg !15822
  %i.br = mul i64 %i.bp, 24, !dbg !15823
  %i.bs = add i64 %i.br, 24, !dbg !15824
    #dbg_value(i64 %i.bs, !4775, !DIExpression(), !15672)
  br label %bb.k, !dbg !15825

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa22minimum_cache_capacity.exit: ; preds = %bb.k, %bb.l
    #dbg_value(i64 %i.bh, !4773, !DIExpression(DW_OP_constu, 8, DW_OP_mul, DW_OP_stack_value), !15670)
  %i.bt = zext i8 %.val25 to i64, !dbg !15826
    #dbg_value(i64 %i.bt, !4804, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15661)
    #dbg_value(i64 %i.bt, !4807, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15660)
    #dbg_value(i64 %i.bt, !4801, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15659)
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !15827
    #dbg_value(i64 %i.bu, !4801, !DIExpression(), !15659)
    #dbg_value(i64 %i.bu, !4807, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15660)
    #dbg_value(i64 %i.bu, !4804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15661)
  %i.bv = call range(i64 55, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true), !dbg !15828
    #dbg_value(!DIArgList(i64 1, i64 64, i64 %i.bv), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !15664)
    #dbg_value(!DIArgList(i64 -1, i64 %i.bv), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !15663)
    #dbg_value(!DIArgList(i64 5, i64 64, i64 %i.bv), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !15671)
  %i.bw = sub nuw nsw i64 64, %i.bv, !dbg !15829
    #dbg_value(!DIArgList(i64 1, i64 %i.bw), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !15664)
    #dbg_value(!DIArgList(i64 5, i64 %i.bw), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !15671)
  %i.bx = shl nuw nsw i64 20, %i.bw, !dbg !15830
    #dbg_value(i64 %i.bx, !4774, !DIExpression(), !15671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15831
    #dbg_value(ptr %.val, !4824, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !15697)
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 360, !dbg !15832
  %i.bz = load i64, ptr %i.by, align 8, !dbg !15832, !noundef !1285 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952, !dbg !15833
  call void @llvm.assume(i1 %i.ca), !dbg !15834
  %i.cb = shl nuw nsw i64 %i.bz, 2, !dbg !15835
  %i.cc = mul i64 %i.bh, 5, !dbg !15836
  %i.cd = add i64 %i.cc, 9, !dbg !15837
  %i.ce = add i64 %i.cd, %i.cb, !dbg !15837       ; 2 uses
    #dbg_value(!DIArgList(i64 %i.cc, i64 %i.cb), !4778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 9, DW_OP_plus, DW_OP_stack_value), !15698)
    #dbg_value(!DIArgList(i64 %i.cc, i64 %i.cb), !4782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 9, DW_OP_plus, DW_OP_stack_value), !15699)
  %i.cf = mul i64 %i.bk, 3, !dbg !15838
  %i.cg = shl i64 %i.ce, 1, !dbg !15839
    #dbg_value(!DIArgList(i64 %i.cf, i64 %i.cg), !4779, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 80, DW_OP_stack_value), !15700)
    #dbg_value(i64 %i.bh, !4781, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !15701)
  %reass.mul.i = mul i64 %i.bh, 12, !dbg !15840
  %i.ch = add i64 %reass.mul.i, 180, !dbg !15840
  %i.ci = add i64 %i.ch, %i.bx, !dbg !15840
  %i.cj = add i64 %i.ci, %.sroa.0.0.i, !dbg !15840
  %i.ck = add i64 %i.cj, %i.cf, !dbg !15840
  %i.cl = add i64 %i.ck, %i.ce, !dbg !15840
  %i.cm = add i64 %i.cl, %i.cg, !dbg !15840
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15841
  store i64 %i.cm, ptr %i.cn, align 8, !dbg !15841
  store i64 -2, ptr %0, align 8, !dbg !15841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15842
  br label %bb.n, !dbg !15793

bb.n:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa22minimum_cache_capacity.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15843
  ret void, !dbg !15793
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config4quit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(144) %1, i8 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15844 {
bb.a:
    #dbg_declare(ptr %1, !15867, !DIExpression(), !15871)
    #dbg_value(i8 %2, !15868, !DIExpression(), !15872)
    #dbg_value(i8 %2, !15873, !DIExpression(), !15879)
    #dbg_value(i8 %2, !15880, !DIExpression(), !15887)
    #dbg_value(i1 %3, !15869, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15872)
    #dbg_value(i8 0, !15888, !DIExpression(), !15894)
    #dbg_value(ptr %1, !15895, !DIExpression(), !15897)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 131, !dbg !15942
  %i.b = load i8, ptr %i.a, align 1, !dbg !15942, !range !2648, !noundef !1285
    #dbg_value(i8 %i.b, !15889, !DIExpression(), !15894)
  %i.c = icmp slt i8 %2, 0
  %i.d = icmp eq i8 %i.b, 1, !dbg !15943
  %or.cond = and i1 %i.c, %i.d, !dbg !15943
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !15943

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15898, !DIExpression(), !15904)
    #dbg_value(ptr %1, !15905, !DIExpression(), !15909)
  %i.e = load i128, ptr %1, align 16, !dbg !15944, !range !4835, !noundef !1285
  %.not29 = icmp eq i128 %i.e, 0, !dbg !15945
  br i1 %.not29, label %bb.j, label %bb.i, !dbg !15946

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.e, label %bb.d, !dbg !15947, !prof !2658

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #24
          to label %bb.g unwind label %bb.f, !dbg !15948

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !15898, !DIExpression(), !15904)
    #dbg_value(ptr %1, !15905, !DIExpression(), !15909)
  %i.f = load i128, ptr %1, align 16, !dbg !15944, !range !4835, !noundef !1285
  %.not = icmp eq i128 %i.f, 0, !dbg !15945
  br i1 %.not, label %bb.h, label %bb.m, !dbg !15946

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %1) #21
          to label %bb.o unwind label %bb.n, !dbg !15949

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.e
  store i128 1, ptr %1, align 16, !dbg !15950
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15950
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !15950
  br label %bb.m, !dbg !15951

bb.i:                                             ; preds = %bb.j, %bb.b
  br i1 %3, label %bb.m, label %bb.k, !dbg !15952

bb.j:                                             ; preds = %bb.b
  store i128 1, ptr %1, align 16, !dbg !15950
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15950
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.0..sroa_idx5, i8 0, i64 32, i1 false), !dbg !15950
  br label %bb.i, !dbg !15951

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr %1, !15912, !DIExpression(), !15929)
    #dbg_value(ptr %1, !15882, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15887)
    #dbg_value(i8 %2, !15883, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15930)
    #dbg_value(i8 %2, !15931, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15934)
    #dbg_value(i8 %2, !15884, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !15935)
  %.lobit = lshr i8 %2, 7, !dbg !15953
    #dbg_value(i8 %.lobit, !15883, !DIExpression(), !15930)
    #dbg_value(i8 %.lobit, !15931, !DIExpression(), !15934)
  %i.h = zext nneg i8 %.lobit to i64, !dbg !15954
  %i.i = and i8 %2, 127, !dbg !15955
    #dbg_value(i8 %i.i, !15884, !DIExpression(), !15935)
  %i.j = zext nneg i8 %i.i to i128, !dbg !15956
  %i.k = shl nuw i128 1, %i.j, !dbg !15956
  %i.l = xor i128 %i.k, -1, !dbg !15957
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15958
    #dbg_value(ptr %i.m, !15882, !DIExpression(), !15887)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.h, !dbg !15959 ; 2 uses
  %i.o = load i128, ptr %i.n, align 16, !dbg !15959, !noundef !1285
  %i.p = and i128 %i.o, %i.l, !dbg !15959
  store i128 %i.p, ptr %i.n, align 16, !dbg !15959
  br label %bb.l, !dbg !15960

bb.l:                                             ; preds = %bb.m, %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !15961
  ret void, !dbg !15962

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.e
    #dbg_value(ptr %1, !15912, !DIExpression(), !15937)
    #dbg_value(ptr %1, !15874, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15879)
    #dbg_value(i8 %2, !15875, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15938)
    #dbg_value(i8 %2, !15931, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !15940)
    #dbg_value(i8 %2, !15876, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !15941)
  %.lobit30 = lshr i8 %2, 7, !dbg !15963
    #dbg_value(i8 %.lobit30, !15875, !DIExpression(), !15938)
    #dbg_value(i8 %.lobit30, !15931, !DIExpression(), !15940)
  %i.q = zext nneg i8 %.lobit30 to i64, !dbg !15964
  %i.r = and i8 %2, 127, !dbg !15965
    #dbg_value(i8 %i.r, !15876, !DIExpression(), !15941)
  %i.s = zext nneg i8 %i.r to i128, !dbg !15966
  %i.t = shl nuw i128 1, %i.s, !dbg !15966
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15967
end_hunk_0
begin_hunk_1_@_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder14build_from_nfa:bb.a
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !16587), !dbg !16718
    #dbg_value(ptr %i.g, !2669, !DIExpression(), !16257)
  call void @llvm.experimental.noalias.scope.decl(metadata !16588), !dbg !16719
    #dbg_value(ptr %i.g, !2675, !DIExpression(), !16261)
  call void @llvm.experimental.noalias.scope.decl(metadata !16589), !dbg !16720
    #dbg_value(ptr %i.g, !2682, !DIExpression(), !16265)
    #dbg_value(ptr %i.g, !3195, !DIExpression(), !16267)
    #dbg_value(i64 1, !2686, !DIExpression(), !16269)
    #dbg_value(i8 1, !2692, !DIExpression(), !16269)
    #dbg_value(i64 1, !2694, !DIExpression(), !16271)
    #dbg_value(i8 1, !2699, !DIExpression(), !16271)
  %i.ah = load ptr, ptr %i.g, align 8, !dbg !16721, !alias.scope !16590, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.ah, !2691, !DIExpression(), !16273)
    #dbg_value(ptr %i.ah, !2698, !DIExpression(), !16271)
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !dbg !16722, !noalias !16590
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !16723
  br i1 %i.aj, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit, !dbg !16723

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !2703, !DIExpression(), !16275)
  fence acquire, !dbg !16724
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit unwind label %bb.ad, !dbg !16725

bb.i:                                             ; preds = %.noexc
    #dbg_value(i64 -9223372036854775799, !16537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16591)
    #dbg_value(ptr @42, !16537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16591)
    #dbg_value(i64 177, !16537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16591)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16726, !noalias !16585
    #dbg_value(i64 -9223372036854775799, !16536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16592)
    #dbg_value(ptr @42, !16536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16592)
    #dbg_value(i64 177, !16536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16592)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !16727
    #dbg_value(i64 -9223372036854775799, !16521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16593)
    #dbg_value(i64 -9223372036854775799, !16531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16594)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !16531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16594)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !16521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16593)
    #dbg_value(i64 177, !16531, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16594)
    #dbg_value(i64 177, !16521, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16593)
    #dbg_value(i64 -9223372036854775799, !16530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16595)
    #dbg_value(i64 ptrtoint (ptr @42 to i64), !16530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16595)
    #dbg_value(i64 177, !16530, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16595)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16728
  store i64 -9223372036854775799, ptr %i.ak, align 16, !dbg !16728
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16728
  store i64 ptrtoint (ptr @42 to i64), ptr %.sroa.420.0..sroa_idx, align 8, !dbg !16728
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16728
  store i64 177, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 16, !dbg !16728
  store i128 2, ptr %0, align 16, !dbg !16728
  br label %bb.t, !dbg !16729

.loopexit:                                        ; preds = %.preheader.i, %.noexc..loopexit_crit_edge, %bb.d
  %.val56 = phi ptr [ %.val56.pre, %.noexc..loopexit_crit_edge ], [ %2, %bb.d ], [ %2, %.preheader.i ], !dbg !16710 ; 3 uses
  %.sroa.9.16.copyload70 = load i64, ptr %i.d, align 16, !dbg !16730, !noalias !16584 ; 2 uses
    #dbg_value(i64 %.sroa.9.16.copyload70, !16537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16591)
  %.sroa.12.16..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.16..sroa_idx71, i64 24, i1 false), !dbg !16730, !noalias !16584
    #dbg_value(i64 -2, !16537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16591)
    #dbg_value(ptr @42, !16537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16591)
    #dbg_value(i64 %.sroa.9.16.copyload70, !16537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16591)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16726, !noalias !16585
    #dbg_value(i64 %.sroa.9.16.copyload70, !16538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16597)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false), !dbg !16731
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !16727
    #dbg_value(i64 %.sroa.9.16.copyload70, !16522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16598)
  store i64 %.sroa.9.16.copyload70, ptr %i.f, align 16, !dbg !16543
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false), !dbg !16543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16732
  %i.al = getelementptr i8, ptr %1, i64 130, !dbg !16710 ; 2 uses
  %.val55 = load i8, ptr %i.al, align 2, !dbg !16710, !range !2648, !noundef !1285
  call void @llvm.experimental.noalias.scope.decl(metadata !16599), !dbg !16710
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16282)
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !16282)
    #dbg_value(ptr poison, !4625, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !16282)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16283)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !16283)
    #dbg_value(ptr poison, !4640, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !16283)
    #dbg_declare(ptr %i.e, !4722, !DIExpression(), !16284)
    #dbg_value(ptr poison, !4730, !DIExpression(), !16285)
    #dbg_value(ptr poison, !4735, !DIExpression(), !16287)
    #dbg_value(ptr poison, !4731, !DIExpression(), !16285)
    #dbg_value(ptr %i.f, !4732, !DIExpression(), !16285)
    #dbg_value(ptr %i.f, !4738, !DIExpression(), !16289)
    #dbg_declare(ptr %i.c, !4733, !DIExpression(), !16290)
    #dbg_value(i8 1, !4740, !DIExpression(), !16292)
    #dbg_value(ptr poison, !4744, !DIExpression(), !16294)
    #dbg_value(ptr poison, !4747, !DIExpression(), !16296)
    #dbg_value(i8 %.val55, !4741, !DIExpression(), !16292)
  %cond.i = icmp eq i8 %.val55, 0, !dbg !16733
  br i1 %cond.i, label %vector.ph, label %bb.j, !dbg !16733

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16734, !noalias !16600
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val56) ]
    #dbg_value(ptr %.val56, !4752, !DIExpression(DW_OP_plus_uconst, 272, DW_OP_stack_value), !16299)
  %i.am = getelementptr inbounds nuw i8, ptr %.val56, i64 272, !dbg !16735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.am, i64 32, i1 false), !dbg !16735, !noalias !16600
    #dbg_value(ptr %i.f, !4745, !DIExpression(), !16294)
    #dbg_value(ptr %i.f, !4748, !DIExpression(), !16296)
  %i.an = load i128, ptr %i.f, align 16, !dbg !16736
  %i.ao = getelementptr i8, ptr %i.f, i64 16, !dbg !16736
  %i.ap = load i128, ptr %i.ao, align 16, !dbg !16736
  %i.aq = or i128 %i.an, %i.ap, !dbg !16736
  %i.ar = icmp ne i128 %i.aq, 0, !dbg !16736
  %i.as = zext i1 %i.ar to i32, !dbg !16736
  %i.at = icmp eq i32 %i.as, 0, !dbg !16736
  br i1 %i.at, label %.noexc64, label %bb.k, !dbg !16737

vector.ph:                                        ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false), !dbg !16738, !alias.scope !16599
    #dbg_value(i8 0, !4723, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !16301)
    #dbg_value(i8 -1, !4723, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !16301)
    #dbg_value(i8 poison, !4723, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16301)
    #dbg_value(ptr undef, !4640, !DIExpression(), !16283)
    #dbg_value(ptr undef, !4625, !DIExpression(), !16282)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16739
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.e, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.au, align 16, !dbg !16739, !alias.scope !16599
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !16739
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !16739
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.av, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.aw, align 16, !dbg !16739, !alias.scope !16599
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !16739
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !16739
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ax, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.ay, align 16, !dbg !16739, !alias.scope !16599
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 96, !dbg !16739
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !16739
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.az, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.ba, align 16, !dbg !16739, !alias.scope !16599
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 128, !dbg !16739
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !16739
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bb, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bc, align 16, !dbg !16739, !alias.scope !16599
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 160, !dbg !16739
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 176, !dbg !16739
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bd, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.be, align 16, !dbg !16739, !alias.scope !16599
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 192, !dbg !16739
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 208, !dbg !16739
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bf, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bg, align 16, !dbg !16739, !alias.scope !16599
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 224, !dbg !16739
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !16739
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bh, align 16, !dbg !16739, !alias.scope !16599
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bi, align 16, !dbg !16739, !alias.scope !16599
  br label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit, !dbg !16740

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_12ByteClassSet7add_set(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc64 unwind label %bb.g, !dbg !16741

.noexc64:                                         ; preds = %bb.k, %bb.j
  invoke void @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_12ByteClassSet12byte_classes(ptr noalias nofree noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.e, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc65 unwind label %bb.g, !dbg !16742

.noexc65:                                         ; preds = %.noexc64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16743, !noalias !16600
  %.val58.pre = load ptr, ptr %i.g, align 8, !dbg !16744
  br label %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit, !dbg !16745

_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit: ; preds = %vector.ph, %.noexc65
  %.val58 = phi ptr [ %.val58.pre, %.noexc65 ], [ %.val56, %vector.ph ], !dbg !16744 ; 3 uses
    #dbg_value(ptr %1, !16561, !DIExpression(), !16601)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 129, !dbg !16740 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !16740, !range !2648, !noundef !1285
    #dbg_value(i8 %i.bk, !16554, !DIExpression(), !16560)
  %i.bl = and i8 %i.bk, 1, !dbg !16746
  %.sroa.06.0.not = icmp eq i8 %i.bl, 0, !dbg !16746
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 255, !dbg !16744
  %.val59 = load i8, ptr %i.bm, align 1, !dbg !16744, !noundef !1285
    #dbg_value(ptr poison, !4766, !DIExpression(), !16304)
    #dbg_value(ptr poison, !4784, !DIExpression(), !16306)
    #dbg_value(ptr poison, !4786, !DIExpression(), !16308)
    #dbg_value(ptr poison, !4786, !DIExpression(), !16310)
    #dbg_value(ptr poison, !4769, !DIExpression(), !16304)
    #dbg_value(i1 %.sroa.06.0.not, !4770, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16304)
    #dbg_value(i64 100, !4780, !DIExpression(), !16311)
    #dbg_value(ptr poison, !4788, !DIExpression(), !16313)
    #dbg_value(ptr poison, !4795, !DIExpression(), !16315)
    #dbg_value(i8 %.val59, !4798, !DIExpression(), !16317)
    #dbg_value(i8 %.val59, !4801, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value), !16320)
    #dbg_value(i8 %.val59, !4807, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !16321)
    #dbg_value(i8 %.val59, !4804, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_stack_value), !16322)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !16324)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !16325)
    #dbg_value(ptr %.val58, !4816, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !16327)
    #dbg_value(ptr %.val58, !4818, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !16329)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val58, i64 336, !dbg !16747
  %i.bo = load i64, ptr %i.bn, align 16, !dbg !16747, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.bo, !4772, !DIExpression(), !16330)
    #dbg_value(i64 %i.bo, !4773, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !16331)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !16332)
    #dbg_value(i64 24, !4775, !DIExpression(), !16333)
  br i1 %.sroa.06.0.not, label %bb.l, label %bb.n, !dbg !16748

bb.l:                                             ; preds = %bb.n, %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit
  %.sroa.0.0.i = phi i64 [ %i.bz, %bb.n ], [ 24, %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit ], !dbg !16749
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !16325)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !16332)
    #dbg_value(i64 %i.bo, !4773, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !16331)
    #dbg_value(i64 %.sroa.0.0.i, !4775, !DIExpression(), !16333)
    #dbg_value(i64 2, !4776, !DIExpression(), !16334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16750
  %i.bp = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State4dead()
          to label %.noexc66 unwind label %bb.g, !dbg !16750 ; 2 uses

.noexc66:                                         ; preds = %bb.l
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0, !dbg !16750 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bp, 1, !dbg !16750 ; 2 uses
  store ptr %i.bq, ptr %i.b, align 8, !dbg !16750
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16750
  store i64 %i.br, ptr %i.bs, align 8, !dbg !16750
    #dbg_value(i64 %i.br, !4777, !DIExpression(), !16335)
    #dbg_value(ptr %i.b, !3147, !DIExpression(), !16337)
    #dbg_value(ptr %i.b, !3152, !DIExpression(), !16339)
    #dbg_value(ptr %i.b, !3158, !DIExpression(), !16341)
    #dbg_value(i64 1, !3169, !DIExpression(), !16343)
    #dbg_value(i8 1, !3171, !DIExpression(), !16343)
    #dbg_value(i64 1, !3173, !DIExpression(), !16345)
    #dbg_value(i8 1, !3175, !DIExpression(), !16345)
    #dbg_value(ptr %i.bq, !3170, !DIExpression(), !16346)
    #dbg_value(ptr %i.bq, !3174, !DIExpression(), !16345)
  %i.bt = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !dbg !16751, !noalias !16602
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !16752
  br i1 %i.bu, label %bb.m, label %bb.o, !dbg !16752

bb.m:                                             ; preds = %.noexc66
    #dbg_value(i8 2, !2703, !DIExpression(), !16354)
  fence acquire, !dbg !16753
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %bb.o unwind label %bb.g, !dbg !16754

bb.n:                                             ; preds = %_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config21byte_classes_from_nfa.exit
    #dbg_value(ptr %.val58, !4824, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16356)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val58, i64 360, !dbg !16755
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !16755, !noundef !1285 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 2305843009213693952, !dbg !16756
  call void @llvm.assume(i1 %i.bx), !dbg !16757
  %i.by = mul i64 %i.bw, 24, !dbg !16758
  %i.bz = add i64 %i.by, 24, !dbg !16759
    #dbg_value(i64 %i.bz, !4775, !DIExpression(), !16333)
  br label %bb.l, !dbg !16760

bb.o:                                             ; preds = %.noexc66, %bb.m
    #dbg_value(i64 %i.bo, !4773, !DIExpression(DW_OP_constu, 8, DW_OP_mul, DW_OP_stack_value), !16331)
  %i.ca = zext i8 %.val59 to i64, !dbg !16761
    #dbg_value(i64 %i.ca, !4804, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !16322)
    #dbg_value(i64 %i.ca, !4807, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !16321)
    #dbg_value(i64 %i.ca, !4801, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16320)
  %i.cb = add nuw nsw i64 %i.ca, 1, !dbg !16762
    #dbg_value(i64 %i.cb, !4801, !DIExpression(), !16320)
    #dbg_value(i64 %i.cb, !4807, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16321)
    #dbg_value(i64 %i.cb, !4804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16322)
  %i.cc = call range(i64 55, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !16763
    #dbg_value(!DIArgList(i64 1, i64 64, i64 %i.cc), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !16325)
    #dbg_value(!DIArgList(i64 -1, i64 %i.cc), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !16324)
    #dbg_value(!DIArgList(i64 5, i64 64, i64 %i.cc), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !16332)
  %i.cd = sub nuw nsw i64 64, %i.cc, !dbg !16764  ; 2 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.cd), !4771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_stack_value), !16325)
    #dbg_value(!DIArgList(i64 5, i64 %i.cd), !4774, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_shl, DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !16332)
  %i.ce = shl nuw nsw i64 20, %i.cd, !dbg !16765
    #dbg_value(i64 %i.ce, !4774, !DIExpression(), !16332)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16766
    #dbg_value(ptr %.val58, !4824, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16358)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val58, i64 360, !dbg !16767
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !16767, !noundef !1285 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 2305843009213693952, !dbg !16768
  call void @llvm.assume(i1 %i.ch), !dbg !16769
  %i.ci = shl nuw nsw i64 %i.cg, 2, !dbg !16770
  %i.cj = mul i64 %i.bo, 5, !dbg !16771
  %i.ck = add i64 %i.cj, 9, !dbg !16772
  %i.cl = add i64 %i.ck, %i.ci, !dbg !16772       ; 2 uses
    #dbg_value(!DIArgList(i64 %i.cj, i64 %i.ci), !4778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 9, DW_OP_plus, DW_OP_stack_value), !16359)
    #dbg_value(!DIArgList(i64 %i.cj, i64 %i.ci), !4782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 9, DW_OP_plus, DW_OP_stack_value), !16360)
  %i.cm = mul i64 %i.br, 3, !dbg !16773
  %i.cn = shl i64 %i.cl, 1, !dbg !16774
    #dbg_value(!DIArgList(i64 %i.cm, i64 %i.cn), !4779, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 80, DW_OP_stack_value), !16361)
    #dbg_value(i64 %i.bo, !4781, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !16362)
  %reass.mul.i = mul i64 %i.bo, 12, !dbg !16775
  %i.co = add i64 %reass.mul.i, 180, !dbg !16775
  %i.cp = add i64 %i.co, %i.ce, !dbg !16775
  %i.cq = add i64 %i.cp, %.sroa.0.0.i, !dbg !16775
  %i.cr = add i64 %i.cq, %i.cm, !dbg !16775
  %i.cs = add i64 %i.cr, %i.cl, !dbg !16775
  %i.ct = add i64 %i.cs, %i.cn, !dbg !16775       ; 3 uses
    #dbg_value(i64 %i.ct, !16524, !DIExpression(), !16603)
    #dbg_value(ptr %1, !16576, !DIExpression(), !16604)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !16776
  %i.cv = load i64, ptr %i.cu, align 16, !dbg !16776, !range !2667, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.cv, !16567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16572)
    #dbg_value(i64 poison, !16567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16572)
  %i.cw = trunc nuw i64 %i.cv to i1, !dbg !16777  ; 2 uses
  br i1 %i.cw, label %bb.p, label %bb.q, !dbg !16777

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !16776
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !16776
    #dbg_value(i64 %i.cy, !16567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16572)
    #dbg_value(i64 %i.cy, !16525, !DIExpression(), !16605)
  br label %bb.q, !dbg !16778

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.07.0 = phi i64 [ %i.cy, %bb.p ], [ 2097152, %bb.o ], !dbg !16572 ; 3 uses
    #dbg_value(i64 %.sroa.07.0, !16525, !DIExpression(), !16605)
  %i.cz = icmp ult i64 %.sroa.07.0, %i.ct, !dbg !16779
  br i1 %i.cz, label %bb.r, label %bb.v, !dbg !16779

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %1, !16582, !DIExpression(), !16606)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 133, !dbg !16780
  %i.db = load i8, ptr %i.da, align 1, !dbg !16780, !range !2648, !noundef !1285
    #dbg_value(i8 %i.db, !16554, !DIExpression(), !16580)
  %i.dc = icmp eq i8 %i.db, 1, !dbg !16781
  br i1 %i.dc, label %bb.v, label %bb.s, !dbg !16781

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16782
  store i64 -9223372036854775801, ptr %i.dd, align 16, !dbg !16782
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16782
  store i64 %i.ct, ptr %.sroa.434.0..sroa_idx, align 8, !dbg !16782
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16782
  store i64 %.sroa.07.0, ptr %.sroa.535.0..sroa_idx, align 16, !dbg !16782
  store i128 2, ptr %0, align 16, !dbg !16782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16783
  br label %bb.t, !dbg !16784

bb.t:                                             ; preds = %bb.s, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16718
  call void @llvm.experimental.noalias.scope.decl(metadata !16608), !dbg !16718
    #dbg_value(ptr %i.g, !2669, !DIExpression(), !16366)
  call void @llvm.experimental.noalias.scope.decl(metadata !16609), !dbg !16785
    #dbg_value(ptr %i.g, !2675, !DIExpression(), !16370)
  call void @llvm.experimental.noalias.scope.decl(metadata !16610), !dbg !16786
    #dbg_value(ptr %i.g, !2682, !DIExpression(), !16374)
    #dbg_value(ptr %i.g, !3195, !DIExpression(), !16376)
    #dbg_value(i64 1, !2686, !DIExpression(), !16378)
    #dbg_value(i8 1, !2692, !DIExpression(), !16378)
    #dbg_value(i64 1, !2694, !DIExpression(), !16380)
    #dbg_value(i8 1, !2699, !DIExpression(), !16380)
  %i.de = load ptr, ptr %i.g, align 8, !dbg !16787, !alias.scope !16611, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.de, !2691, !DIExpression(), !16382)
    #dbg_value(ptr %i.de, !2698, !DIExpression(), !16380)
  %i.df = atomicrmw add ptr %i.de, i64 -1 release, align 8, !dbg !16788, !noalias !16611
  %i.dg = icmp eq i64 %i.df, 1, !dbg !16789
  br i1 %i.dg, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit68, !dbg !16789

bb.u:                                             ; preds = %bb.t
    #dbg_value(i8 2, !2703, !DIExpression(), !16384)
  fence acquire, !dbg !16790
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #23, !dbg !16791
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit68, !dbg !16791

bb.v:                                             ; preds = %bb.q, %bb.r
  %.sroa.07.1 = phi i64 [ %.sroa.07.0, %bb.q ], [ %i.ct, %bb.r ], !dbg !16603
    #dbg_value(i64 %.sroa.07.1, !16525, !DIExpression(), !16605)
    #dbg_value(ptr poison, !4788, !DIExpression(), !16390)
    #dbg_value(ptr poison, !4795, !DIExpression(), !16392)
    #dbg_value(i8 %.val59, !4798, !DIExpression(), !16394)
    #dbg_value(i64 %i.cb, !4801, !DIExpression(), !16397)
    #dbg_value(i64 %i.cb, !4807, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16398)
    #dbg_value(i64 %i.cb, !4804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16399)
    #dbg_value(!DIArgList(i64 -1, i64 %i.cc), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !16401)
    #dbg_value(ptr poison, !4788, !DIExpression(), !16403)
    #dbg_value(ptr poison, !4795, !DIExpression(), !16405)
    #dbg_value(i8 %.val59, !4798, !DIExpression(), !16407)
    #dbg_value(i64 %i.cb, !4801, !DIExpression(), !16410)
    #dbg_value(i64 %i.cb, !4807, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16411)
    #dbg_value(i64 %i.cb, !4804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16412)
    #dbg_value(!DIArgList(i64 -1, i64 %i.cc), !4811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value), !16414)
    #dbg_value(i64 %i.cd, !16527, !DIExpression(), !16618)
    #dbg_value(ptr %i.g, !16619, !DIExpression(), !16625)
    #dbg_value(ptr %i.g, !16626, !DIExpression(), !16629)
    #dbg_value(ptr %i.g, !16630, !DIExpression(), !16633)
  %i.dh = load ptr, ptr %i.g, align 8, !dbg !16792, !nonnull !1285, !noundef !1285
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 384, !dbg !16793
  %.val61 = load i8, ptr %i.di, align 1, !dbg !16794 ; 2 uses
    #dbg_value(ptr poison, !16635, !DIExpression(), !16424)
    #dbg_declare(ptr %i.a, !16640, !DIExpression(), !16425)
    #dbg_value(i8 10, !16644, !DIExpression(), !16428)
    #dbg_value(i8 13, !16644, !DIExpression(), !16430)
    #dbg_value(i8 95, !16644, !DIExpression(), !16432)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !dbg !16795
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 10, !dbg !16796
  store i8 3, ptr %i.dj, align 1, !dbg !16796
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 13, !dbg !16797
  store i8 4, ptr %i.dk, align 1, !dbg !16797
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 95, !dbg !16798
  store i8 1, ptr %i.dl, align 1, !dbg !16798
    #dbg_value(i8 48, !16641, !DIExpression(), !16433)
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !16799
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %scevgep.i, i8 1, i64 10, i1 false), !dbg !16800
    #dbg_value(i64 poison, !16641, !DIExpression(), !16433)
    #dbg_value(i64 poison, !16645, !DIExpression(), !16435)
  %scevgep6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 65, !dbg !16801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %scevgep6.i, i8 1, i64 26, i1 false), !dbg !16802
    #dbg_value(i64 poison, !16645, !DIExpression(), !16437)
  %scevgep8.i = getelementptr inbounds nuw i8, ptr %i.a, i64 97, !dbg !16803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %scevgep8.i, i8 1, i64 26, i1 false), !dbg !16804
end_hunk_1
