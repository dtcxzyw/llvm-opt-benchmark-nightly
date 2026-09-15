Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.11?download=true
inline.NumInlined: 213
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr15windowed_filterINtB2_14WindowedFilterNtNtB4_17bandwidth_sampler15ExtraAckedEventjjE6updateBa_:bb.a
bb.ah:                                            ; preds = %bb.ag
  store i64 %2, ptr %i.an, align 8, !dbg !5216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5217
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5139

bb.ai:                                            ; preds = %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21, !dbg !5218
  unreachable, !dbg !5218

bb.aj:                                            ; preds = %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.054.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !5208
  %.sroa.054.sroa.7.0.copyload = load i64, ptr %.sroa.054.sroa.7.0..sroa_idx, align 8, !dbg !5208
    #dbg_value(i64 %.sroa.054.sroa.7.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5100)
  %.sroa.054.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5208
  %.sroa.054.sroa.6.0.copyload = load i64, ptr %.sroa.054.sroa.6.0..sroa_idx, align 8, !dbg !5208
    #dbg_value(i64 %.sroa.054.sroa.6.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5100)
  %.sroa.054.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !5208
  %.sroa.054.sroa.5.0.copyload = load i64, ptr %.sroa.054.sroa.5.0..sroa_idx, align 8, !dbg !5208
    #dbg_value(i64 %.sroa.054.sroa.5.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5100)
  %.sroa.054.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !5208 ; 2 uses
  %.sroa.054.sroa.4.0.copyload = load i64, ptr %.sroa.054.sroa.4.0..sroa_idx, align 8, !dbg !5208
    #dbg_value(i64 %.sroa.054.sroa.4.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5100)
    #dbg_value(i32 poison, !5062, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5100)
    #dbg_value(i64 poison, !5062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5108)
    #dbg_value(i64 %.sroa.032.sroa.4.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5108)
    #dbg_value(i64 %.sroa.032.sroa.5.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5108)
    #dbg_value(i64 %.sroa.032.sroa.6.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5108)
    #dbg_value(i64 %.sroa.032.sroa.7.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5108)
    #dbg_value(i32 %.sroa.433.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5108)
    #dbg_value(i32 poison, !5062, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5108)
    #dbg_value(ptr undef, !5095, !DIExpression(), !4926)
    #dbg_value(ptr undef, !5097, !DIExpression(), !4926)
  %i.ci = icmp eq i64 %.sroa.054.sroa.4.0.copyload, %.sroa.032.sroa.4.0.copyload, !dbg !5219
  %i.cj = icmp eq i64 %.sroa.054.sroa.5.0.copyload, %.sroa.032.sroa.5.0.copyload
  %or.cond173 = select i1 %i.ci, i1 %i.cj, i1 false, !dbg !5219
  %i.ck = icmp eq i64 %.sroa.054.sroa.7.0.copyload, %.sroa.032.sroa.7.0.copyload
  %or.cond174 = select i1 %or.cond173, i1 %i.ck, i1 false, !dbg !5219
  %i.cl = icmp eq i32 %.sroa.455.0.copyload, %.sroa.433.0.copyload
  %or.cond175 = and i1 %i.cl, %or.cond174, !dbg !5219
  %i.cm = icmp eq i64 %.sroa.054.sroa.6.0.copyload, %.sroa.032.sroa.6.0.copyload
  %or.cond176 = select i1 %or.cond175, i1 %i.cm, i1 false, !dbg !5219
  br i1 %or.cond176, label %bb.ak, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5219

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i64 poison, !5062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5110)
    #dbg_value(i32 %.sroa.455.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !5110)
    #dbg_value(i32 poison, !5062, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !5110)
  %.sroa.068.0.copyload = load i64, ptr %i.af, align 8, !dbg !5220
    #dbg_value(i64 %.sroa.068.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5110)
    #dbg_value(i64 %2, !5053, !DIExpression(), !4928)
    #dbg_value(i64 %.sroa.068.0.copyload, !5058, !DIExpression(), !4928)
  %i.cn = sub i64 %2, %.sroa.068.0.copyload, !dbg !5221
    #dbg_value(i64 %i.al, !5103, !DIExpression(), !4930)
    #dbg_value(i64 2, !5105, !DIExpression(), !4930)
  %i.co = lshr i64 %i.al, 1, !dbg !5222
    #dbg_value(ptr undef, !4956, !DIExpression(), !4759)
    #dbg_value(ptr undef, !4952, !DIExpression(), !4759)
  %i.cp = icmp ugt i64 %i.cn, %i.co, !dbg !5223
  br i1 %i.cp, label %bb.al, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5224

bb.al:                                            ; preds = %bb.ak
  store i64 %2, ptr %i.af, align 8, !dbg !5225
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.054.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5225
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5226

_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread: ; preds = %bb.aj, %bb.am, %bb.ak, %bb.ao, %bb.al, %bb.ah, %bb.h
  ret void, !dbg !5227

bb.am:                                            ; preds = %bb.ad
  %.sroa.028.0.copyload = load i64, ptr %0, align 8, !dbg !5202
    #dbg_value(i64 %.sroa.028.0.copyload, !5062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5092)
    #dbg_value(i64 %2, !5053, !DIExpression(), !4932)
    #dbg_value(i64 %.sroa.028.0.copyload, !5058, !DIExpression(), !4932)
  %i.cq = sub i64 %2, %.sroa.028.0.copyload, !dbg !5228
    #dbg_value(ptr undef, !4956, !DIExpression(), !4763)
    #dbg_value(ptr %i.ak, !4952, !DIExpression(), !4763)
  %i.cr = icmp ugt i64 %i.cq, %i.al, !dbg !5229
  br i1 %i.cr, label %bb.ao, label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5230

bb.an:                                            ; preds = %bb.ad
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !5231
  unreachable, !dbg !5231

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !dbg !5232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !dbg !5233
  br label %_RNvXsd_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_samplerNtB5_15ExtraAckedEventNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit123.thread, !dbg !5234
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecovery18pto_time_and_space(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2424) %1, i24 %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5244 {
bb.a:
    #dbg_declare(ptr poison, !5453, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5462)
    #dbg_declare(ptr poison, !5453, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5476)
    #dbg_declare(ptr poison, !5453, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5482)
    #dbg_declare(ptr poison, !5483, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5498)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5509)
    #dbg_value(ptr poison, !5524, !DIExpression(), !5508)
    #dbg_value(ptr poison, !5521, !DIExpression(), !5507)
    #dbg_value(ptr poison, !5518, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5515, !DIExpression(), !5527)
    #dbg_value(ptr poison, !5513, !DIExpression(), !5528)
    #dbg_value(ptr poison, !5510, !DIExpression(), !5529)
    #dbg_value(ptr poison, !5531, !DIExpression(), !5547)
    #dbg_value(ptr poison, !5500, !DIExpression(), !5509)
    #dbg_value(ptr poison, !5525, !DIExpression(), !5508)
    #dbg_value(ptr poison, !5522, !DIExpression(), !5507)
    #dbg_value(ptr poison, !5519, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5516, !DIExpression(), !5548)
    #dbg_value(ptr poison, !5514, !DIExpression(), !5549)
    #dbg_value(ptr poison, !5511, !DIExpression(), !5550)
    #dbg_value(ptr poison, !5551, !DIExpression(), !5555)
    #dbg_value(ptr poison, !5556, !DIExpression(), !5558)
    #dbg_declare(ptr poison, !5436, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5559)
    #dbg_value(ptr poison, !5494, !DIExpression(), !5560)
    #dbg_value(ptr poison, !5467, !DIExpression(), !5561)
    #dbg_value(i24 %2, !5434, !DIExpression(DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5562)
    #dbg_value(i24 %2, !5434, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5562)
    #dbg_value(i24 %2, !5434, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5562)
    #dbg_value(ptr %1, !5433, !DIExpression(), !5562)
    #dbg_value(i64 %3, !5435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5562)
    #dbg_value(i32 %4, !5435, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5562)
    #dbg_value(i32 2, !5563, !DIExpression(), !5572)
    #dbg_value(ptr @24, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5573)
    #dbg_value(i64 44, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5573)
    #dbg_value(i64 1, !5574, !DIExpression(), !5581)
    #dbg_value(i32 2, !5563, !DIExpression(), !5583)
    #dbg_value(ptr @24, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5584)
    #dbg_value(i64 44, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5584)
    #dbg_value(ptr @25, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5585)
    #dbg_value(i64 30, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5585)
    #dbg_declare(ptr poison, !5586, !DIExpression(), !5591)
  %.fr232 = freeze i24 %2                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5592), !dbg !5729
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5284)
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !5287)
    #dbg_value(ptr %1, !2573, !DIExpression(), !5288)
    #dbg_value(i32 4, !2578, !DIExpression(), !5289)
    #dbg_value(ptr @24, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5290)
    #dbg_value(i64 44, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5290)
    #dbg_value(ptr @25, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5291)
    #dbg_value(i64 30, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5291)
    #dbg_value(ptr %1, !2575, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5292)
    #dbg_value(ptr %1, !2582, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5294)
    #dbg_value(ptr %1, !2587, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !5296)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2136, !dbg !5730
  %i.b = load i32, ptr %i.a, align 8, !dbg !5730, !range !2354, !alias.scope !5592, !noundef !1030
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5297)
    #dbg_value(i32 %i.b, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5297)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2144, !dbg !5731
  %i.d = load i64, ptr %i.c, align 8, !dbg !5731, !alias.scope !5592, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.d, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5289)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i64 %i.d, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5299)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5299)
    #dbg_value(i32 4, !2594, !DIExpression(), !5299)
    #dbg_value(i64 4, !2601, !DIExpression(), !5301)
    #dbg_value(i64 4, !2609, !DIExpression(), !5303)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5304)
    #dbg_value(i64 poison, !2596, !DIExpression(), !5305)
    #dbg_value(i64 poison, !2618, !DIExpression(), !5307)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5308)
    #dbg_value(i64 %i.d, !2605, !DIExpression(), !5301)
    #dbg_value(i64 %i.d, !2615, !DIExpression(), !5303)
  %i.e = icmp ugt i64 %i.d, 4611686018427387903, !dbg !5732
    #dbg_value(i64 poison, !2606, !DIExpression(), !5309)
    #dbg_value(i1 %i.e, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5309)
    #dbg_value(i1 %i.e, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5311)
  br i1 %i.e, label %select.unfold.i, label %bb.b, !dbg !5733, !prof !2357

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2128, !dbg !5730
  %i.g = load i64, ptr %i.f, align 8, !dbg !5730, !alias.scope !5592, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.g, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5297)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5299)
    #dbg_value(i32 poison, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5304)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5308)
    #dbg_value(i64 %i.d, !2606, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5309)
    #dbg_value(i32 poison, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5305)
    #dbg_value(i32 poison, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5307)
    #dbg_value(i64 %i.d, !2598, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5312)
    #dbg_value(i64 %i.d, !2619, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !5307)
    #dbg_value(i1 false, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5314)
  %i.h = shl nuw i64 %i.d, 2, !dbg !5732
    #dbg_value(i64 %i.h, !2606, !DIExpression(), !5309)
    #dbg_value(i64 %i.h, !2598, !DIExpression(), !5312)
    #dbg_value(i64 %i.h, !2619, !DIExpression(), !5307)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2152, !dbg !5731
  %i.j = load i32, ptr %i.i, align 8, !dbg !5731, !range !2354, !alias.scope !5592, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.j, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5299)
    #dbg_value(i32 %i.j, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5289)
    #dbg_value(i32 %i.j, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5304)
  %i.k = udiv i32 %i.j, 250000000, !dbg !5734
    #dbg_value(i32 %i.k, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5307)
    #dbg_value(i32 %i.k, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5305)
  %.zext32.i = zext nneg i32 %i.k to i64, !dbg !5734
    #dbg_value(i64 %.zext32.i, !2596, !DIExpression(), !5305)
    #dbg_value(i64 %.zext32.i, !2618, !DIExpression(), !5307)
  %i.l = add nuw i64 %i.h, %.zext32.i, !dbg !5735 ; 2 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !5736
    #dbg_value(i32 %i.m, !2595, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5304)
  %i.n = urem i32 %i.m, 1000000000, !dbg !5737    ; 2 uses
    #dbg_value(i32 %i.n, !2597, !DIExpression(), !5308)
    #dbg_value(i32 %i.n, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5290)
    #dbg_value(i64 %i.l, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5290)
    #dbg_value(i64 %i.l, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5316)
    #dbg_value(i32 %i.n, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5316)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5316)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5316)
    #dbg_value(ptr poison, !2639, !DIExpression(), !5318)
    #dbg_value(ptr poison, !2642, !DIExpression(), !5318)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !5320)
    #dbg_value(ptr poison, !2650, !DIExpression(), !5322)
    #dbg_value(ptr poison, !2654, !DIExpression(), !5322)
    #dbg_value(ptr poison, !2656, !DIExpression(), !5324)
    #dbg_value(ptr poison, !2658, !DIExpression(), !5324)
  %5 = icmp ne i64 %i.l, 0, !dbg !5738
    #dbg_value(i8 poison, !2647, !DIExpression(), !5325)
  %i.o = icmp samesign ugt i32 %i.n, 1000000, !dbg !5739
  %i.p = select i1 %5, i1 true, i1 %i.o, !dbg !5738 ; 2 uses
  %.2.i.i = select i1 %i.p, i64 %i.l, i64 0, !dbg !5740
    #dbg_value(i64 %.2.i.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5297)
    #dbg_value(i32 poison, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5297)
    #dbg_value(i64 %i.g, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5327)
    #dbg_value(i32 %i.b, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5327)
    #dbg_value(i64 %.2.i.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5327)
    #dbg_value(i32 poison, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5327)
    #dbg_value(i64 1, !2670, !DIExpression(), !5329)
    #dbg_value(i64 %i.g, !2671, !DIExpression(), !5331)
    #dbg_value(i64 %.2.i.i, !2672, !DIExpression(), !5331)
  %i.q = add i64 %.2.i.i, %i.g, !dbg !5741        ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.g, !dbg !5741
    #dbg_value(i1 %i.r, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5333)
  br i1 %i.r, label %bb.f, label %bb.c, !dbg !5742, !prof !2357

bb.c:                                             ; preds = %bb.b
  %..i.i = select i1 %i.p, i32 %i.n, i32 1000000, !dbg !5740
    #dbg_value(i32 %..i.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5297)
    #dbg_value(i32 %..i.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5327)
    #dbg_value(i64 %i.q, !2666, !DIExpression(), !5334)
    #dbg_value(i64 %i.q, !2671, !DIExpression(), !5329)
  %i.s = add nuw nsw i32 %..i.i, %i.b, !dbg !5743 ; 3 uses
    #dbg_value(i32 %i.s, !2667, !DIExpression(), !5335)
  %i.t = icmp samesign ugt i32 %i.s, 999999999, !dbg !5744
  br i1 %i.t, label %bb.d, label %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit, !dbg !5744

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.s, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !5335)
  %i.u = icmp eq i64 %i.q, -1, !dbg !5745
    #dbg_value(i1 %i.u, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5337)
  br i1 %i.u, label %bb.f, label %bb.e, !dbg !5746, !prof !2357

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw i64 %i.q, 1, !dbg !5745
  %i.w = add nsw i32 %i.s, -1000000000, !dbg !5747
    #dbg_value(i32 %i.w, !2667, !DIExpression(), !5335)
    #dbg_value(i64 %i.v, !2666, !DIExpression(), !5334)
    #dbg_value(i64 %i.v, !2671, !DIExpression(), !5329)
  br label %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit, !dbg !5748

select.unfold.i:                                  ; preds = %bb.a
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5290)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5290)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !5749, !noalias !5592
  unreachable, !dbg !5749

bb.f:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5291)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5291)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !5750, !noalias !5592
  unreachable, !dbg !5750

_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit: ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i = phi i32 [ %i.w, %bb.e ], [ %i.s, %bb.c ], !dbg !5751
  %.sroa.0.0.i24.i = phi i64 [ %i.v, %bb.e ], [ %i.q, %bb.c ], !dbg !5751
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5291)
    #dbg_value(i32 %.sroa.4.0.i.i, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5291)
    #dbg_value(i64 %.sroa.0.0.i24.i, !5477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5593)
    #dbg_value(i32 %.sroa.4.0.i.i, !5477, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5593)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2416, !dbg !5752
  %i.y = load i32, ptr %i.x, align 8, !dbg !5752, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.y, !5567, !DIExpression(), !5572)
    #dbg_value(i32 2, !5594, !DIExpression(), !5349)
    #dbg_value(i32 2, !5598, !DIExpression(), !5350)
    #dbg_value(i32 %i.y, !5597, !DIExpression(), !5349)
    #dbg_value(i32 1, !5609, !DIExpression(), !5353)
    #dbg_value(i32 1, !5599, !DIExpression(), !5354)
    #dbg_value(i32 1, !5600, !DIExpression(), !5355)
    #dbg_value(i32 %i.y, !5601, !DIExpression(), !5356)
    #dbg_value(i32 %i.y, !5610, !DIExpression(), !5353)
  %i.z = icmp ult i32 %i.y, 32, !dbg !5753
  %i.aa = shl nuw i32 1, %i.y, !dbg !5753
  %.sroa.03.0 = select i1 %i.z, i32 %i.aa, i32 -1, !dbg !5754
    #dbg_value(i32 %.sroa.03.0, !5478, !DIExpression(), !5593)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5358)
    #dbg_value(i32 %.sroa.4.0.i.i, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5358)
    #dbg_value(i32 %.sroa.03.0, !2594, !DIExpression(), !5358)
  %i.ab = zext i32 %.sroa.03.0 to i64, !dbg !5755 ; 4 uses
    #dbg_value(i64 %i.ab, !2601, !DIExpression(), !5360)
    #dbg_value(i64 %i.ab, !2609, !DIExpression(), !5362)
    #dbg_value(!DIArgList(i32 %.sroa.4.0.i.i, i64 %i.ab), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5363)
    #dbg_value(i64 poison, !2596, !DIExpression(), !5364)
    #dbg_value(i64 poison, !2618, !DIExpression(), !5366)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5367)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2605, !DIExpression(), !5360)
    #dbg_value(i64 %.sroa.0.0.i24.i, !2615, !DIExpression(), !5362)
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i24.i, i64 %i.ab), !dbg !5756 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1, !dbg !5756
    #dbg_value(i64 poison, !2606, !DIExpression(), !5368)
    #dbg_value(i1 %i.ad, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5368)
    #dbg_value(i1 %i.ad, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5370)
  br i1 %i.ad, label %select.unfold, label %bb.g, !dbg !5757, !prof !2357

bb.g:                                             ; preds = %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit
  %i.ae = zext nneg i32 %.sroa.4.0.i.i to i64, !dbg !5758
    #dbg_value(!DIArgList(i64 %i.ae, i64 %i.ab), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !5363)
  %i.af = mul nuw nsw i64 %i.ab, %i.ae, !dbg !5758 ; 2 uses
    #dbg_value(i64 %i.af, !2595, !DIExpression(), !5363)
  %i.ag = urem i64 %i.af, 1000000000, !dbg !5759
    #dbg_value(i64 %i.ag, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !5367)
  %i.ah = trunc nuw nsw i64 %i.ag to i32, !dbg !5759 ; 6 uses
    #dbg_value(i32 %i.ah, !2597, !DIExpression(), !5367)
  %i.ai = extractvalue { i64, i1 } %i.ac, 0, !dbg !5756 ; 2 uses
    #dbg_value(i64 %i.ai, !2606, !DIExpression(), !5368)
  %i.aj = udiv i64 %i.af, 1000000000, !dbg !5760
    #dbg_value(i64 %i.aj, !2596, !DIExpression(), !5364)
    #dbg_value(i64 %i.aj, !2618, !DIExpression(), !5366)
    #dbg_value(i64 %i.ai, !2598, !DIExpression(), !5371)
    #dbg_value(i64 %i.ai, !2619, !DIExpression(), !5366)
  %i.ak = add i64 %i.ai, %i.aj, !dbg !5761        ; 7 uses
  %i.al = icmp ult i64 %i.ak, %i.ai, !dbg !5761
    #dbg_value(i1 %i.al, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5373)
  br i1 %i.al, label %select.unfold, label %bb.h, !dbg !5762, !prof !2357

bb.h:                                             ; preds = %bb.g
    #dbg_value(i64 %i.ak, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5573)
    #dbg_value(i32 %i.ah, !5453, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5573)
    #dbg_value(i64 %i.ak, !5436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5612)
    #dbg_value(i32 %i.ah, !5436, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5612)
    #dbg_value(ptr %1, !5613, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !5616)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2296, !dbg !5763
  %i.an = load i64, ptr %i.am, align 8, !dbg !5763, !noundef !1030
  %i.ao = icmp eq i64 %i.an, 0, !dbg !5763
  br i1 %i.ao, label %bb.ae, label %bb.i, !dbg !5764

select.unfold:                                    ; preds = %bb.g, %_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto.exit
    #dbg_value(i64 poison, !5453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5573)
    #dbg_value(i32 -1, !5453, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5573)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !5765
  unreachable, !dbg !5765

bb.i:                                             ; preds = %bb.h
    #dbg_value(i64 undef, !5437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5617)
    #dbg_value(i32 -1, !5437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5617)
    #dbg_value(i8 0, !5438, !DIExpression(), !5618)
  %i.ap = tail call { ptr, i64 } @_RNvMNtCs3f36owOmepS_6quiche6packetNtB2_5Epoch6epochs(i24 131072), !dbg !5628 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0, !dbg !5628 ; 6 uses
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1, !dbg !5628 ; 3 uses
    #dbg_value(ptr %i.aq, !5619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5629)
    #dbg_value(ptr %i.aq, !5630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5633)
    #dbg_value(ptr %i.aq, !5634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5641)
    #dbg_value(i64 %i.ar, !5619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5629)
    #dbg_value(i64 %i.ar, !5630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5633)
    #dbg_value(i64 %i.ar, !5634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5641)
    #dbg_value(i64 %i.ar, !5636, !DIExpression(), !5642)
    #dbg_value(i64 %i.ar, !5643, !DIExpression(), !5650)
    #dbg_value(ptr %i.aq, !5637, !DIExpression(), !5651)
    #dbg_value(ptr %i.aq, !5652, !DIExpression(), !5658)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ], !dbg !5766
    #dbg_value(ptr %i.aq, !5647, !DIExpression(), !5650)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar, !dbg !5767 ; 8 uses
    #dbg_value(ptr %i.aq, !5439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5659)
    #dbg_value(ptr %i.as, !5439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5659)
  %i.at = and i24 %.fr232, 65536
  %.not122 = icmp eq i24 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.av, i64 %i.ab)
  %.fr233 = freeze { i64, i1 } %i.aw              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.ay = load i32, ptr %i.ax, align 8, !range !2354
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, %i.ab
  %.fr = freeze i64 %i.ba                         ; 2 uses
  %i.bb = urem i64 %.fr, 1000000000
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = extractvalue { i64, i1 } %.fr233, 0     ; 2 uses
  %i.be = udiv i64 %.fr, 1000000000
  %i.bf = add i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %.not122, label %.outer.us.preheader, label %.split

.outer.us.preheader:                              ; preds = %bb.i
    #dbg_value(i64 poison, !5436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5612)
    #dbg_value(i32 poison, !5436, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5612)
    #dbg_value(i64 undef, !5437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5617)
    #dbg_value(i32 -1, !5437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5617)
    #dbg_value(i8 0, !5438, !DIExpression(), !5618)
    #dbg_value(ptr %i.aq, !5439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5659)
    #dbg_value(ptr undef, !5531, !DIExpression(), !5547)
    #dbg_value(ptr %i.aq, !5541, !DIExpression(), !5660)
    #dbg_value(ptr %i.aq, !5578, !DIExpression(), !5581)
    #dbg_value(ptr %i.as, !5542, !DIExpression(), !5661)
    #dbg_value(ptr poison, !5663, !DIExpression(), !5669)
    #dbg_value(ptr poison, !5666, !DIExpression(), !5670)
  %i.bh = icmp samesign eq i64 %i.ar, 0, !dbg !5768
  br i1 %i.bh, label %.split166.us, label %.lr.ph376, !dbg !5668

.lr.ph376:                                        ; preds = %.outer.us.preheader, %.outer.us
  %.sroa.04.0.ph.us386 = phi i64 [ %.sroa.04.1.us, %.outer.us ], [ undef, %.outer.us.preheader ] ; 5 uses
  %.sroa.9.0.ph.us385 = phi i32 [ %.sroa.9.1.us, %.outer.us ], [ -1, %.outer.us.preheader ] ; 6 uses
  %.sroa.017.0.ph.us384 = phi i8 [ %.sroa.017.1.us, %.outer.us ], [ 0, %.outer.us.preheader ] ; 3 uses
  %.sroa.019.0.ph.us383 = phi ptr [ %i.bi, %.outer.us ], [ %i.aq, %.outer.us.preheader ]
    #dbg_value(i64 %.sroa.04.0.ph.us386, !5437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5617)
    #dbg_value(i32 %.sroa.9.0.ph.us385, !5437, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !5617)
    #dbg_value(i8 %.sroa.017.0.ph.us384, !5438, !DIExpression(), !5618)
    #dbg_value(ptr %.sroa.019.0.ph.us383, !5439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5659)
  br label %bb.j, !dbg !5668

bb.j:                                             ; preds = %.lr.ph376, %bb.p
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps27get_updated_qlog_event_data:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2192, !dbg !14190
  %i.d = load i64, ptr %i.c, align 8, !dbg !14190, !noundef !1030
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2200, !dbg !14190
  %i.f = load i32, ptr %i.e, align 8, !dbg !14190, !range !2354, !noundef !1030
    #dbg_value(ptr %1, !14132, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14135)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2128, !dbg !14191
  %i.h = load i64, ptr %i.g, align 8, !dbg !14191, !noundef !1030
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2136, !dbg !14191
  %i.j = load i32, ptr %i.i, align 8, !dbg !14191, !range !2354, !noundef !1030
    #dbg_value(ptr %1, !14136, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14140)
  %i.k = load i64, ptr %i.b, align 8, !dbg !14192, !noundef !1030
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2104, !dbg !14192
  %i.m = load i32, ptr %i.l, align 8, !dbg !14192, !range !2354, !noundef !1030
    #dbg_value(ptr %1, !14141, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14144)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2144, !dbg !14193
  %i.o = load i64, ptr %i.n, align 8, !dbg !14193, !noundef !1030
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2152, !dbg !14193
  %i.q = load i32, ptr %i.p, align 8, !dbg !14193, !range !2354, !noundef !1030
    #dbg_value(ptr %1, !14145, !DIExpression(DW_OP_plus_uconst, 864, DW_OP_stack_value), !14148)
    #dbg_value(ptr %1, !14149, !DIExpression(DW_OP_plus_uconst, 864, DW_OP_stack_value), !14152)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 864, !dbg !14194 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1896, !dbg !14194
  %i.t = load i64, ptr %i.s, align 8, !dbg !14194, !noundef !1030
    #dbg_value(ptr %1, !14153, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !14156)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2296, !dbg !14195
  %i.v = load i64, ptr %i.u, align 8, !dbg !14195, !noundef !1030 ; 2 uses
    #dbg_value(ptr %1, !14153, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !14158)
  %i.w = tail call noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer11pacing_rate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.r, i64 noundef %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b), !dbg !14196
    #dbg_value(i64 %i.w, !14159, !DIExpression(), !14165)
  %i.x = lshr i64 %i.w, 3, !dbg !14197
    #dbg_value(ptr %1, !3053, !DIExpression(), !12733)
  %i.y = tail call noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18bandwidth_estimate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b), !dbg !14198
    #dbg_value(i64 %i.y, !14159, !DIExpression(), !14167)
  %i.z = lshr i64 %i.y, 3, !dbg !14199
    #dbg_value(ptr %1, !14168, !DIExpression(), !12736)
    #dbg_value(i64 0, !14171, !DIExpression(), !12740)
  %i.aa = tail call { i64, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9send_rate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.r), !dbg !14200 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0, !dbg !14200
    #dbg_value(i64 %i.ab, !14175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12740)
    #dbg_value(i64 poison, !14175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12740)
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !14201
  %i.ad = extractvalue { i64, i64 } %i.aa, 1, !dbg !14201
    #dbg_value(i64 poison, !14159, !DIExpression(), !14179)
  %i.ae = lshr i64 %i.ad, 3, !dbg !14202
  %i.af = select i1 %i.ac, i64 %i.ae, i64 0, !dbg !14201
    #dbg_value(ptr %1, !14180, !DIExpression(), !12743)
    #dbg_value(i64 0, !14183, !DIExpression(), !12747)
  %i.ag = tail call { i64, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer8ack_rate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.r), !dbg !14203 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0, !dbg !14203
    #dbg_value(i64 %i.ah, !14184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12747)
    #dbg_value(i64 poison, !14184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12747)
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14204
  %i.aj = extractvalue { i64, i64 } %i.ag, 1, !dbg !14204
    #dbg_value(i64 poison, !14159, !DIExpression(), !14188)
  %i.ak = lshr i64 %i.aj, 3, !dbg !14205
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0, !dbg !14204
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2368, !dbg !14206
  %i.an = load i64, ptr %i.am, align 8, !dbg !14206, !noundef !1030
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2392, !dbg !14207
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !14207, !noundef !1030
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2416, !dbg !14208
  %i.ar = load i32, ptr %i.aq, align 8, !dbg !14208, !noundef !1030
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !14209
  store i64 %i.d, ptr %i.as, align 8, !dbg !14209
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !14209
  store i32 %i.f, ptr %i.at, align 8, !dbg !14209
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !14209
  store i64 %i.h, ptr %i.au, align 8, !dbg !14209
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !14209
  store i32 %i.j, ptr %i.av, align 8, !dbg !14209
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !14209
  store i64 %i.k, ptr %i.aw, align 8, !dbg !14209
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !14209
  store i32 %i.m, ptr %i.ax, align 8, !dbg !14209
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !14209
  store i64 %i.o, ptr %i.ay, align 8, !dbg !14209
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !14209
  store i32 %i.q, ptr %i.az, align 8, !dbg !14209
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 184, !dbg !14209
  store i64 %i.t, ptr %i.ba, align 8, !dbg !14209
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 192, !dbg !14209
  store i64 %i.v, ptr %i.bb, align 8, !dbg !14209
  store i64 0, ptr %i.a, align 8, !dbg !14209
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14209
  store i64 1, ptr %i.bc, align 8, !dbg !14209
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14209
  store i64 %i.x, ptr %i.bd, align 8, !dbg !14209
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14209
  store i64 1, ptr %i.be, align 8, !dbg !14209
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14209
  store i64 %i.z, ptr %i.bf, align 8, !dbg !14209
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !14209
  store i64 1, ptr %i.bg, align 8, !dbg !14209
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !14209
  store i64 %i.af, ptr %i.bh, align 8, !dbg !14209
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !14209
  store i64 1, ptr %i.bi, align 8, !dbg !14209
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !14209
  store i64 %i.al, ptr %i.bj, align 8, !dbg !14209
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !14209
  store i64 1, ptr %i.bk, align 8, !dbg !14209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !14209
  store i64 %i.an, ptr %i.bl, align 8, !dbg !14209
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !14209
  store i64 1, ptr %i.bm, align 8, !dbg !14209
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !14209
  store i64 %i.ap, ptr %i.bn, align 8, !dbg !14209
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !14209
  store i32 1, ptr %i.bo, align 8, !dbg !14209
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 116, !dbg !14209
  store i32 %i.ar, ptr %i.bp, align 4, !dbg !14209
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 664, !dbg !14210
  call void @_RNvMs7_NtCs3f36owOmepS_6quiche8recoveryNtB5_11QlogMetrics12maybe_update(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.a), !dbg !14211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14212
  ret void, !dbg !14213
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps30pmtud_update_max_datagram_size(ptr noalias nofree noundef align 8 dereferenceable(2424) initializes((2400, 2408)) %0, i64 noundef %1) unnamed_addr #0 !dbg !566 {
bb.a:
    #dbg_value(ptr %0, !3358, !DIExpression(), !14214)
    #dbg_value(i64 %1, !3359, !DIExpression(), !14214)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2400, !dbg !14215
  store i64 %1, ptr %i.a, align 8, !dbg !14215
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14216
  tail call void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer10update_mss(ptr noalias nofree noundef nonnull align 8 dereferenceable(1152) %i.b, i64 noundef %1), !dbg !14217
  ret void, !dbg !14218
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps3pto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(2424) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !383 {
bb.a:
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14261)
    #dbg_declare(ptr poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14264)
    #dbg_value(ptr %0, !2573, !DIExpression(), !14265)
    #dbg_value(i32 4, !2578, !DIExpression(), !14266)
    #dbg_value(ptr @24, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14267)
    #dbg_value(i64 44, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14267)
    #dbg_value(ptr @25, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14268)
    #dbg_value(i64 30, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14268)
    #dbg_value(ptr %0, !2575, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14269)
    #dbg_value(ptr %0, !2582, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14271)
    #dbg_value(ptr %0, !2587, !DIExpression(DW_OP_plus_uconst, 2096, DW_OP_stack_value), !14273)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136, !dbg !14275
  %i.b = load i32, ptr %i.a, align 8, !dbg !14275, !range !2354, !noundef !1030
    #dbg_value(i64 poison, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14274)
    #dbg_value(i32 %i.b, !2567, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14274)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2144, !dbg !14276
  %i.d = load i64, ptr %i.c, align 8, !dbg !14276, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.d, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14266)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14266)
    #dbg_value(i64 %i.d, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14220)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14220)
    #dbg_value(i32 4, !2594, !DIExpression(), !14220)
    #dbg_value(i64 4, !2601, !DIExpression(), !14222)
    #dbg_value(i64 4, !2609, !DIExpression(), !14224)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14225)
    #dbg_value(i64 poison, !2596, !DIExpression(), !14226)
    #dbg_value(i64 poison, !2618, !DIExpression(), !14228)
    #dbg_value(i64 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14229)
    #dbg_value(i64 %i.d, !2605, !DIExpression(), !14222)
    #dbg_value(i64 %i.d, !2615, !DIExpression(), !14224)
  %i.e = icmp ugt i64 %i.d, 4611686018427387903, !dbg !14277
    #dbg_value(i64 poison, !2606, !DIExpression(), !14230)
    #dbg_value(i1 %i.e, !2607, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14230)
    #dbg_value(i1 %i.e, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14232)
  br i1 %i.e, label %select.unfold, label %bb.b, !dbg !14278, !prof !2357

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128, !dbg !14275
  %i.g = load i64, ptr %i.f, align 8, !dbg !14275, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.g, !2567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14274)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14225)
    #dbg_value(i32 poison, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14266)
    #dbg_value(i32 poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14220)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !2595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14225)
    #dbg_value(i32 poison, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14225)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14229)
    #dbg_value(i32 poison, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14229)
    #dbg_value(i64 %i.d, !2606, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14230)
    #dbg_value(i32 poison, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14226)
    #dbg_value(i32 poison, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14228)
    #dbg_value(i64 %i.d, !2598, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14233)
    #dbg_value(i64 %i.d, !2619, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14228)
    #dbg_value(i1 false, !2624, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14235)
  %i.h = shl nuw i64 %i.d, 2, !dbg !14277
    #dbg_value(i64 %i.h, !2606, !DIExpression(), !14230)
    #dbg_value(i64 %i.h, !2598, !DIExpression(), !14233)
    #dbg_value(i64 %i.h, !2619, !DIExpression(), !14228)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2152, !dbg !14276
  %i.j = load i32, ptr %i.i, align 8, !dbg !14276, !range !2354, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.j, !2590, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14220)
    #dbg_value(i32 %i.j, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14266)
    #dbg_value(i32 %i.j, !2595, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14225)
  %i.k = udiv i32 %i.j, 250000000, !dbg !14279
    #dbg_value(i32 %i.k, !2618, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14228)
    #dbg_value(i32 %i.k, !2596, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14226)
  %.zext32 = zext nneg i32 %i.k to i64, !dbg !14279
    #dbg_value(i64 %.zext32, !2596, !DIExpression(), !14226)
    #dbg_value(i64 %.zext32, !2618, !DIExpression(), !14228)
  %i.l = add nuw i64 %i.h, %.zext32, !dbg !14280  ; 2 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !14281
    #dbg_value(i32 %i.m, !2595, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14225)
  %i.n = urem i32 %i.m, 1000000000, !dbg !14282   ; 2 uses
    #dbg_value(i32 %i.n, !2597, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14229)
    #dbg_value(i32 %i.n, !2597, !DIExpression(), !14229)
    #dbg_value(i32 %i.n, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14267)
    #dbg_value(i64 %i.l, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14267)
    #dbg_value(i64 %i.l, !2633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14237)
    #dbg_value(i32 %i.n, !2633, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14237)
    #dbg_value(i64 0, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14237)
    #dbg_value(i32 1000000, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14237)
    #dbg_value(ptr poison, !2639, !DIExpression(), !14239)
    #dbg_value(ptr poison, !2642, !DIExpression(), !14239)
    #dbg_declare(ptr poison, !2646, !DIExpression(), !14241)
    #dbg_value(ptr poison, !2650, !DIExpression(), !14243)
    #dbg_value(ptr poison, !2654, !DIExpression(), !14243)
    #dbg_value(ptr poison, !2656, !DIExpression(), !14245)
    #dbg_value(ptr poison, !2658, !DIExpression(), !14245)
  %1 = icmp ne i64 %i.l, 0, !dbg !14283
    #dbg_value(i8 poison, !2647, !DIExpression(), !14246)
  %i.o = icmp samesign ugt i32 %i.n, 1000000, !dbg !14284
  %i.p = select i1 %1, i1 true, i1 %i.o, !dbg !14283 ; 2 uses
  %.2.i = select i1 %i.p, i64 %i.l, i64 0, !dbg !14285
    #dbg_value(i64 %.2.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14274)
    #dbg_value(i32 poison, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14274)
    #dbg_value(i64 %i.g, !2661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14248)
    #dbg_value(i32 %i.b, !2661, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14248)
    #dbg_value(i64 %.2.i, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14248)
    #dbg_value(i32 poison, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14248)
    #dbg_value(i64 1, !2670, !DIExpression(), !14250)
    #dbg_value(i64 %i.g, !2671, !DIExpression(), !14252)
    #dbg_value(i64 %.2.i, !2672, !DIExpression(), !14252)
  %i.q = add i64 %.2.i, %i.g, !dbg !14286         ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.g, !dbg !14286
    #dbg_value(i1 %i.r, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14254)
  br i1 %i.r, label %bb.g, label %bb.c, !dbg !14287, !prof !2357

bb.c:                                             ; preds = %bb.b
  %..i = select i1 %i.p, i32 %i.n, i32 1000000, !dbg !14285
    #dbg_value(i32 %..i, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14274)
    #dbg_value(i32 %..i, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14248)
    #dbg_value(i64 %i.q, !2666, !DIExpression(), !14255)
    #dbg_value(i64 %i.q, !2671, !DIExpression(), !14250)
  %i.s = add nuw nsw i32 %..i, %i.b, !dbg !14288  ; 3 uses
    #dbg_value(i32 %i.s, !2667, !DIExpression(), !14256)
  %i.t = icmp samesign ugt i32 %i.s, 999999999, !dbg !14289
  br i1 %i.t, label %bb.d, label %bb.f, !dbg !14289

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.s, !2667, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !14256)
  %i.u = icmp eq i64 %i.q, -1, !dbg !14290
    #dbg_value(i1 %i.u, !2674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14258)
  br i1 %i.u, label %bb.g, label %bb.e, !dbg !14291, !prof !2357

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw i64 %i.q, 1, !dbg !14290
  %i.w = add nsw i32 %i.s, -1000000000, !dbg !14292
    #dbg_value(i32 %i.w, !2667, !DIExpression(), !14256)
    #dbg_value(i64 %i.v, !2666, !DIExpression(), !14255)
    #dbg_value(i64 %i.v, !2671, !DIExpression(), !14250)
  br label %bb.f, !dbg !14293

select.unfold:                                    ; preds = %bb.a
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14267)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14267)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21, !dbg !14294
  unreachable, !dbg !14294

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i = phi i32 [ %i.w, %bb.e ], [ %i.s, %bb.c ], !dbg !14295
  %.sroa.0.0.i24 = phi i64 [ %i.v, %bb.e ], [ %i.q, %bb.c ], !dbg !14295
  %i.x = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i24, 0, !dbg !14296
  %i.y = insertvalue { i64, i32 } %i.x, i32 %.sroa.4.0.i, 1, !dbg !14296
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14268)
    #dbg_value(i32 %.sroa.4.0.i, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14268)
  ret { i64, i32 } %i.y, !dbg !14297

bb.g:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14268)
    #dbg_value(i32 -1, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14268)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !dbg !14298
  unreachable, !dbg !14298
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs2_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtB9_11RecoveryOps9state_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 !dbg !567 {
bb.a:
    #dbg_value(ptr %0, !3361, !DIExpression(), !14299)
    #dbg_value(i64 %1, !3364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14299)
    #dbg_value(i32 %2, !3364, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14299)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14300
  %i.b = tail call { ptr, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9state_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.a), !dbg !14301
  ret { ptr, i64 } %i.b, !dbg !14302
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recoveryNtB5_9GRecoveryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !14327 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !14353, !DIExpression(), !14397)
    #dbg_value(ptr %0, !14398, !DIExpression(), !14403)
    #dbg_value(ptr %1, !14354, !DIExpression(), !14397)
    #dbg_value(ptr %1, !14404, !DIExpression(), !14424)
    #dbg_value(ptr %1, !14404, !DIExpression(), !14426)
    #dbg_value(ptr %1, !14404, !DIExpression(), !14428)
    #dbg_value(ptr %1, !14404, !DIExpression(), !14430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14474
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2336, !dbg !14475
  %i.h = load i64, ptr %i.g, align 8, !dbg !14475
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2344, !dbg !14475
  %i.j = load i32, ptr %i.i, align 8, !dbg !14475, !range !2325, !noundef !1030
  store i64 %i.h, ptr %i.f, align 8, !dbg !14475
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14475
  store i32 %i.j, ptr %i.k, align 8, !dbg !14475
    #dbg_value(ptr %i.f, !14356, !DIExpression(), !14431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14476
  store ptr %i.f, ptr %i.e, align 8, !dbg !14476
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14476
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4time7InstantENtNtB7_3fmt5Debug3fmtCs3f36owOmepS_6quiche, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !14476
    #dbg_value(ptr @74, !14416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14424)
    #dbg_value(ptr %i.e, !14416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14424)
  %i.l = load ptr, ptr %1, align 8, !dbg !14477, !nonnull !1030, !noundef !1030 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14477
  %i.n = load ptr, ptr %i.m, align 8, !dbg !14477, !nonnull !1030, !align !3029, !noundef !1030 ; 4 uses
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @74, ptr noundef nonnull %i.e), !dbg !14478
    #dbg_value(i1 %i.o, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14460)
    #dbg_value(i1 %i.o, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14460)
    #dbg_value(i1 %i.o, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14479
  br i1 %i.o, label %bb.e, label %bb.b, !dbg !14480

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2096, !dbg !14481
    #dbg_value(ptr %i.p, !14362, !DIExpression(), !14461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14482
  store ptr %i.p, ptr %i.d, align 8, !dbg !14482
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14482
  store ptr @_RNvXNtNtCs3f36owOmepS_6quiche8recovery3rttNtB2_8RttStatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !14482
    #dbg_value(ptr @75, !14416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14426)
    #dbg_value(ptr %i.d, !14416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14426)
  %i.q = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @75, ptr noundef nonnull %i.d), !dbg !14483
    #dbg_value(i1 %i.q, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14463)
    #dbg_value(i1 %i.q, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14463)
    #dbg_value(i1 %i.q, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14463)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14484
  br i1 %i.q, label %bb.e, label %bb.c, !dbg !14485

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14486
    #dbg_value(ptr %0, !14464, !DIExpression(DW_OP_plus_uconst, 2280, DW_OP_stack_value), !14467)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2296, !dbg !14487
  %i.s = load i64, ptr %i.r, align 8, !dbg !14487, !noundef !1030
  store i64 %i.s, ptr %i.c, align 8, !dbg !14487
    #dbg_value(ptr %i.c, !14368, !DIExpression(), !14468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14488
  store ptr %i.c, ptr %i.b, align 8, !dbg !14488
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14488
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8, !dbg !14488
    #dbg_value(ptr @76, !14416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14428)
    #dbg_value(ptr %i.b, !14416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14428)
  %i.t = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @76, ptr noundef nonnull %i.b), !dbg !14489
    #dbg_value(i1 %i.t, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14470)
    #dbg_value(i1 %i.t, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14470)
    #dbg_value(i1 %i.t, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14470)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14490
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !14491

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !14492
    #dbg_value(ptr %i.u, !14374, !DIExpression(), !14471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14493
  store ptr %i.u, ptr %i.a, align 8, !dbg !14493
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14493
  store ptr @_RNvXs_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB4_5PacerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !14493
    #dbg_value(ptr @77, !14416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14430)
    #dbg_value(ptr %i.a, !14416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14430)
  %i.v = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @77, ptr noundef nonnull %i.a), !dbg !14494
    #dbg_value(i1 %i.v, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14473)
    #dbg_value(i1 %i.v, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14473)
    #dbg_value(i1 %i.v, !14432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14473)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14495
  br label %bb.e, !dbg !14496

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.v, %bb.d ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], !dbg !14397
  ret i1 %.sroa.0.0, !dbg !14497
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14502 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
    #dbg_declare(ptr %i.b, !14526, !DIExpression(), !14530)
    #dbg_declare(ptr %i.a, !14527, !DIExpression(), !14531)
  %i.e = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !14538
    #dbg_value(i64 %i.e, !14532, !DIExpression(), !14536)
  %i.f = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !14539
    #dbg_value(i64 %i.f, !14533, !DIExpression(), !14536)
    #dbg_value(i64 %i.e, !3353, !DIExpression(), !14505)
    #dbg_value(i64 %i.e, !3353, !DIExpression(), !14505)
    #dbg_value(i64 %i.f, !3354, !DIExpression(), !14505)
    #dbg_value(i64 %i.f, !3354, !DIExpression(), !14505)
    #dbg_value(ptr undef, !3353, !DIExpression(DW_OP_deref), !14505)
    #dbg_value(ptr undef, !3354, !DIExpression(DW_OP_deref), !14505)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e), !dbg !14540
    #dbg_value(i64 %..i, !14528, !DIExpression(), !14537)
  store ptr %1, ptr %0, align 8, !dbg !14541
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14541
end_hunk_1
