Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.13?download=true
inline.NumInlined: 762
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_7PeekMutNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3popB1d_:bb.a
    #dbg_value(i64 7, !4189, !DIExpression(), !25525)
    #dbg_value(i64 7, !4191, !DIExpression(), !25526)
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshovLROGBtMy_11quinn_proto(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %i.i, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i unwind label %bb.e, !dbg !25913, !noalias !25834

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #30, !dbg !25914, !noalias !25834
  unreachable, !dbg !25914

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i), !dbg !25915
    #dbg_declare(ptr %.sroa.17.i.i.i, !25849, !DIExpression(DW_OP_LLVM_fragment, 192, 448), !25541)
    #dbg_value(ptr poison, !8201, !DIExpression(), !25544)
    #dbg_value(ptr poison, !8207, !DIExpression(), !25545)
    #dbg_declare(ptr %.sroa.17.i.i.i, !25845, !DIExpression(DW_OP_LLVM_fragment, 192, 448), !25546)
    #dbg_value(ptr poison, !8201, !DIExpression(), !25549)
    #dbg_value(ptr poison, !8207, !DIExpression(), !25550)
    #dbg_value(ptr poison, !25853, !DIExpression(), !25559)
    #dbg_value(ptr poison, !25862, !DIExpression(), !25562)
    #dbg_value(ptr poison, !25853, !DIExpression(), !25564)
    #dbg_value(ptr poison, !25862, !DIExpression(), !25566)
    #dbg_value(i64 0, !25842, !DIExpression(), !25567)
    #dbg_value(i64 0, !25865, !DIExpression(), !25571)
    #dbg_value(i64 0, !25869, !DIExpression(), !25574)
    #dbg_value(i64 0, !25872, !DIExpression(), !25577)
    #dbg_value(ptr poison, !25841, !DIExpression(), !25567)
    #dbg_value(ptr poison, !25835, !DIExpression(), !25578)
    #dbg_value(i64 1, !25875, !DIExpression(), !25581)
    #dbg_value(i64 1, !25875, !DIExpression(), !25583)
    #dbg_value(i64 %i.e, !25843, !DIExpression(), !25584)
    #dbg_value(i64 0, !25844, !DIExpression(), !25585)
    #dbg_value(ptr %i.i, !25866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25571)
    #dbg_value(ptr %i.i, !25870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25574)
    #dbg_value(ptr %i.i, !25873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25577)
    #dbg_value(i64 %i.e, !25866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25571)
    #dbg_value(i64 %i.e, !25870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25574)
    #dbg_value(i64 %i.e, !25873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25577)
    #dbg_value(ptr %i.i, !25880, !DIExpression(), !25588)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !dbg !25916, !noalias !25882
    #dbg_value(ptr %i.i, !25845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25590)
    #dbg_value(i64 %i.e, !25845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25590)
    #dbg_value(i64 0, !25845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25590)
    #dbg_value(i64 1, !25846, !DIExpression(), !25591)
    #dbg_value(i64 1, !25854, !DIExpression(), !25592)
    #dbg_value(i64 1, !25883, !DIExpression(), !25595)
    #dbg_value(i64 1, !25854, !DIExpression(), !25596)
    #dbg_value(i64 1, !25883, !DIExpression(), !25598)
  %i.n = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %.not.not10.i.i.i = icmp samesign ult i64 %i.c, 4, !dbg !25917
  br i1 %.not.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !25917

._crit_edge.i.i.i:                                ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i
  %.sroa.10.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i ], [ %i.au, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i ], !dbg !25918 ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i ], [ %i.ay, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i ], !dbg !25919 ; 3 uses
  %i.o = add nsw i64 %i.c, -2, !dbg !25920
  %i.p = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.o, !dbg !25921
  br i1 %i.p, label %bb.i, label %bb.j, !dbg !25921

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i
  %.sroa.05.012.i.i.i = phi i64 [ %i.ay, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i ] ; 3 uses
  %.sroa.10.011.i.i.i = phi i64 [ %i.au, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEB16_.exit.i.i ]
    #dbg_value(i64 %.sroa.05.012.i.i.i, !25883, !DIExpression(), !25595)
    #dbg_value(i64 %.sroa.10.011.i.i.i, !25845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25590)
    #dbg_value(ptr undef, !25862, !DIExpression(), !25566)
    #dbg_value(i64 %.sroa.05.012.i.i.i, !25863, !DIExpression(), !25599)
    #dbg_value(i64 %.sroa.05.012.i.i.i, !25869, !DIExpression(), !25601)
    #dbg_value(i64 %.sroa.05.012.i.i.i, !25872, !DIExpression(), !25603)
    #dbg_value(ptr %i.i, !25870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25601)
    #dbg_value(ptr %i.i, !25873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25603)
    #dbg_value(i64 %i.e, !25870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25601)
    #dbg_value(i64 %i.e, !25873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25603)
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.05.012.i.i.i, !dbg !25922 ; 2 uses
    #dbg_value(ptr poison, !25888, !DIExpression(), !25606)
    #dbg_value(ptr undef, !25862, !DIExpression(), !25562)
  %i.r = add nuw nsw i64 %.sroa.05.012.i.i.i, 1, !dbg !25923 ; 2 uses
    #dbg_value(i64 %i.r, !25863, !DIExpression(), !25607)
    #dbg_value(i64 %i.r, !25869, !DIExpression(), !25609)
    #dbg_value(i64 %i.r, !25872, !DIExpression(), !25611)
    #dbg_value(ptr %i.i, !25870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25609)
    #dbg_value(ptr %i.i, !25873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25611)
    #dbg_value(i64 %i.e, !25870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25609)
    #dbg_value(i64 %i.e, !25873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25611)
  %i.s = icmp ult i64 %i.r, %i.e, !dbg !25924
  call void @llvm.assume(i1 %i.s), !dbg !25925
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.r, !dbg !25926 ; 2 uses
    #dbg_value(ptr poison, !25889, !DIExpression(), !25612)
    #dbg_value(ptr %i.q, !8246, !DIExpression(), !25614)
    #dbg_value(ptr %i.t, !8250, !DIExpression(), !25614)
    #dbg_declare(ptr poison, !8258, !DIExpression(), !25616)
    #dbg_value(ptr %i.q, !8277, !DIExpression(), !25618)
    #dbg_value(ptr %i.q, !8283, !DIExpression(), !25620)
    #dbg_value(ptr %i.t, !8281, !DIExpression(), !25618)
    #dbg_value(ptr %i.t, !8287, !DIExpression(), !25620)
    #dbg_value(ptr %i.q, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25622)
    #dbg_value(ptr %i.t, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25623)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !25927
  %i.v = load i64, ptr %i.u, align 8, !dbg !25927, !noalias !25882, !noundef !2579
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !25928
  %i.x = load i64, ptr %i.w, align 8, !dbg !25928, !noalias !25882, !noundef !2579
  %i.y = call i8 @llvm.ucmp.i8.i64(i64 %i.v, i64 %i.x), !dbg !25929
    #dbg_value(i8 %i.y, !8296, !DIExpression(), !25625)
  switch i8 %i.y, label %bb.f [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i
    i8 0, label %bb.g
    i8 1, label %bb.h
  ], !dbg !25930

bb.f:                                             ; preds = %.lr.ph.i.i.i
  unreachable, !dbg !25931

bb.g:                                             ; preds = %.lr.ph.i.i.i
    #dbg_value(i8 0, !8301, !DIExpression(), !25627)
    #dbg_value(ptr %i.q, !8309, !DIExpression(), !25629)
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !25932
  %i.aa = load i64, ptr %i.z, align 8, !dbg !25932, !noalias !25882, !noundef !2579
    #dbg_value(ptr %i.t, !8309, !DIExpression(), !25631)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !25933
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !25933, !noalias !25882, !noundef !2579
    #dbg_value(i8 poison, !8305, !DIExpression(), !25627)
  %i.ad = icmp ule i64 %i.aa, %i.ac, !dbg !25934
  %i.ae = zext i1 %i.ad to i64, !dbg !25935
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, !dbg !25936

bb.h:                                             ; preds = %.lr.ph.i.i.i
    #dbg_value(i8 -1, !8301, !DIExpression(), !25627)
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, !dbg !25937

bb.i:                                             ; preds = %._crit_edge.i.i.i
    #dbg_value(ptr undef, !25853, !DIExpression(), !25564)
    #dbg_value(ptr %i.i, !25858, !DIExpression(), !25632)
    #dbg_value(ptr %i.i, !25884, !DIExpression(), !25598)
    #dbg_value(ptr %i.i, !25884, !DIExpression(), !25634)
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i, !dbg !25938
    #dbg_value(ptr %i.af, !25859, !DIExpression(), !25635)
    #dbg_value(ptr %i.af, !25876, !DIExpression(), !25583)
    #dbg_value(i64 %.sroa.10.0.lcssa.i.i.i, !25883, !DIExpression(), !25634)
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.10.0.lcssa.i.i.i, !dbg !25939
    #dbg_value(ptr %i.ag, !25860, !DIExpression(), !25636)
    #dbg_value(ptr %i.ag, !25877, !DIExpression(), !25583)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false), !dbg !25940, !noalias !25882
    #dbg_value(i64 %.sroa.05.0.lcssa.i.i.i, !25845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25590)
  br label %bb.j, !dbg !25941

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.10.1.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %bb.i ], [ %.sroa.10.0.lcssa.i.i.i, %._crit_edge.i.i.i ], !dbg !25918 ; 4 uses
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25590)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25842, !DIExpression(), !25567)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25865, !DIExpression(), !25571)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25869, !DIExpression(), !25574)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25872, !DIExpression(), !25577)
    #dbg_value(ptr %i.i, !25849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25637)
    #dbg_value(i64 %i.e, !25849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25637)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !25849, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25637)
    #dbg_value(ptr undef, !8207, !DIExpression(), !25545)
    #dbg_value(ptr undef, !8201, !DIExpression(), !25544)
    #dbg_value(i64 1, !8314, !DIExpression(), !25639)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8205, !DIExpression(), !25640)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8318, !DIExpression(), !25642)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8323, !DIExpression(), !25644)
    #dbg_value(ptr undef, !8315, !DIExpression(), !25639)
    #dbg_value(ptr %i.i, !8321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25642)
    #dbg_value(i64 poison, !8321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25642)
    #dbg_value(ptr %i.i, !8326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25644)
    #dbg_value(i64 poison, !8326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25644)
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.10.1.i.i.i, !dbg !25942 ; 3 uses
    #dbg_value(ptr %i.ah, !8316, !DIExpression(), !25639)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17.i.i.i, i64 56, i1 false), !dbg !25943, !noalias !25882
    #dbg_declare(ptr %.sroa.17.i.i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 192, 128), !25646)
    #dbg_declare(ptr %.sroa.17.i.i.i, !8329, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_LLVM_fragment, 512, 128), !25646)
    #dbg_value(ptr poison, !8201, !DIExpression(), !25649)
    #dbg_value(ptr poison, !8207, !DIExpression(), !25650)
    #dbg_value(ptr poison, !8201, !DIExpression(), !25653)
    #dbg_value(ptr poison, !8207, !DIExpression(), !25654)
    #dbg_value(ptr poison, !8339, !DIExpression(), !25656)
    #dbg_value(ptr poison, !8345, !DIExpression(), !25658)
    #dbg_value(ptr poison, !8334, !DIExpression(), !25659)
    #dbg_value(i64 0, !8335, !DIExpression(), !25659)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8336, !DIExpression(), !25659)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8348, !DIExpression(), !25661)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8352, !DIExpression(), !25663)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8355, !DIExpression(), !25665)
    #dbg_value(i64 1, !8358, !DIExpression(), !25667)
    #dbg_value(ptr %i.i, !8349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25661)
    #dbg_value(ptr %i.i, !8353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25663)
    #dbg_value(ptr %i.i, !8356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25665)
    #dbg_value(i64 %i.e, !8349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25661)
    #dbg_value(i64 %i.e, !8353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25663)
    #dbg_value(i64 %i.e, !8356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25665)
  %i.ai = icmp ult i64 %.sroa.10.1.i.i.i, %i.e, !dbg !25944
  call void @llvm.assume(i1 %i.ai), !dbg !25945
    #dbg_value(ptr %i.ah, !8362, !DIExpression(), !25669)
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !25946 ; 2 uses
  %i.aj = load <2 x i64>, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !dbg !25946, !noalias !25882
  %.sroa.431.0.copyload.i.i.i.i = load i64, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !dbg !25946, !noalias !25882
  %.sroa.633.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !25946
  %.sroa.633.0.copyload.i.i.i.i = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !dbg !25946, !noalias !25882 ; 2 uses
    #dbg_value(ptr %i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25670)
    #dbg_value(i64 %i.e, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25670)
    #dbg_value(i64 %.sroa.431.0.copyload.i.i.i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25670)
    #dbg_value(i64 poison, !8329, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25670)
    #dbg_value(i64 %.sroa.633.0.copyload.i.i.i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !25670)
    #dbg_value(i64 %.sroa.10.1.i.i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25670)
  %.not40.i.i.i.i = icmp eq i64 %.sroa.10.1.i.i.i, 0, !dbg !25947
  br i1 %.not40.i.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i, label %.lr.ph.i.i.i.i, !dbg !25947

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i
  %.sroa.9.041.i.i.i.i = phi i64 [ %i.al, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i ], [ %.sroa.10.1.i.i.i, %bb.j ] ; 4 uses
    #dbg_value(i64 %.sroa.9.041.i.i.i.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25670)
  %i.ak = add nsw i64 %.sroa.9.041.i.i.i.i, -1, !dbg !25948
  %i.al = lshr i64 %i.ak, 1, !dbg !25948          ; 4 uses
    #dbg_value(i64 %i.al, !8337, !DIExpression(), !25671)
    #dbg_value(i64 %i.al, !8346, !DIExpression(), !25672)
    #dbg_value(i64 %i.al, !8352, !DIExpression(), !25674)
    #dbg_value(i64 %i.al, !8355, !DIExpression(), !25676)
    #dbg_value(i64 %i.al, !8340, !DIExpression(), !25677)
    #dbg_value(i64 %i.al, !8366, !DIExpression(), !25679)
    #dbg_value(ptr poison, !8369, !DIExpression(), !25681)
    #dbg_value(ptr undef, !8345, !DIExpression(), !25658)
    #dbg_value(ptr %i.i, !8353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25674)
    #dbg_value(ptr %i.i, !8356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25676)
    #dbg_value(i64 %i.e, !8353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25674)
    #dbg_value(i64 %i.e, !8356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25676)
  %i.am = icmp samesign ult i64 %i.al, %i.e, !dbg !25949
  call void @llvm.assume(i1 %i.am), !dbg !25950
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.al, !dbg !25951 ; 3 uses
    #dbg_value(ptr poison, !8370, !DIExpression(), !25682)
    #dbg_value(ptr undef, !8246, !DIExpression(), !25684)
    #dbg_value(ptr %i.an, !8250, !DIExpression(), !25684)
    #dbg_declare(ptr poison, !8258, !DIExpression(), !25686)
    #dbg_value(ptr undef, !8277, !DIExpression(), !25688)
    #dbg_value(ptr undef, !8283, !DIExpression(), !25690)
    #dbg_value(ptr %i.an, !8281, !DIExpression(), !25688)
    #dbg_value(ptr %i.an, !8287, !DIExpression(), !25690)
    #dbg_value(ptr undef, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25692)
    #dbg_value(ptr %i.an, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25693)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !25952
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !25952, !noalias !25882, !noundef !2579
  %i.aq = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.633.0.copyload.i.i.i.i, i64 %i.ap), !dbg !25953
    #dbg_value(i8 %i.aq, !8296, !DIExpression(), !25695)
  switch i8 %i.aq, label %bb.k [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i
    i8 0, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i.i
    i8 1, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i
  ], !dbg !25954

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  unreachable, !dbg !25955

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
    #dbg_value(ptr undef, !8309, !DIExpression(), !25697)
    #dbg_value(ptr %i.an, !8309, !DIExpression(), !25699)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !25956
  %i.as = load i64, ptr %i.ar, align 8, !dbg !25956, !noalias !25882, !noundef !2579
  %.not38.i.i.i.i = icmp ugt i64 %.sroa.431.0.copyload.i.i.i.i, %i.as, !dbg !25957
    #dbg_value(i8 poison, !8273, !DIExpression(), !25700)
  br i1 %.not38.i.i.i.i, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i, !dbg !25958

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
    #dbg_value(ptr undef, !8339, !DIExpression(), !25656)
    #dbg_value(ptr %i.i, !8341, !DIExpression(), !25701)
    #dbg_value(ptr %i.i, !8367, !DIExpression(), !25679)
    #dbg_value(ptr %i.i, !8367, !DIExpression(), !25703)
    #dbg_value(ptr %i.an, !8342, !DIExpression(), !25704)
    #dbg_value(ptr %i.an, !8359, !DIExpression(), !25667)
    #dbg_value(i64 %.sroa.9.041.i.i.i.i, !8366, !DIExpression(), !25703)
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.9.041.i.i.i.i, !dbg !25959
    #dbg_value(ptr %i.at, !8343, !DIExpression(), !25705)
    #dbg_value(ptr %i.at, !8360, !DIExpression(), !25667)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false), !dbg !25960, !noalias !25882
    #dbg_value(i64 %i.al, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25670)
  %.not.i.i.i.i = icmp eq i64 %i.al, 0, !dbg !25947
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i, label %.lr.ph.i.i.i.i, !dbg !25947

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ 1, %bb.h ], [ 0, %.lr.ph.i.i.i ], !dbg !25961
    #dbg_value(i8 poison, !8305, !DIExpression(), !25627)
    #dbg_value(i8 poison, !8273, !DIExpression(), !25706)
  %i.au = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %.sroa.05.012.i.i.i, !dbg !25962 ; 4 uses
    #dbg_value(i64 %i.au, !25846, !DIExpression(), !25591)
    #dbg_value(i64 %i.au, !25854, !DIExpression(), !25592)
    #dbg_value(i64 %i.au, !25883, !DIExpression(), !25595)
    #dbg_value(i64 %i.au, !25854, !DIExpression(), !25596)
    #dbg_value(i64 %i.au, !25883, !DIExpression(), !25598)
    #dbg_value(ptr undef, !25853, !DIExpression(), !25559)
    #dbg_value(ptr %i.i, !25855, !DIExpression(), !25707)
    #dbg_value(ptr %i.i, !25884, !DIExpression(), !25595)
    #dbg_value(ptr %i.i, !25884, !DIExpression(), !25709)
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.au, !dbg !25963
    #dbg_value(ptr %i.av, !25856, !DIExpression(), !25710)
    #dbg_value(ptr %i.av, !25876, !DIExpression(), !25581)
    #dbg_value(i64 %.sroa.10.011.i.i.i, !25883, !DIExpression(), !25709)
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.10.011.i.i.i, !dbg !25964
    #dbg_value(ptr %i.aw, !25857, !DIExpression(), !25711)
    #dbg_value(ptr %i.aw, !25877, !DIExpression(), !25581)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false), !dbg !25965, !noalias !25882
    #dbg_value(i64 %i.au, !25845, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25590)
  %i.ax = shl nuw nsw i64 %i.au, 1, !dbg !25966   ; 2 uses
  %i.ay = or disjoint i64 %i.ax, 1, !dbg !25967   ; 2 uses
    #dbg_value(i64 %i.ay, !25854, !DIExpression(), !25596)
    #dbg_value(i64 %i.ay, !25883, !DIExpression(), !25598)
    #dbg_value(i64 %i.ay, !25883, !DIExpression(), !25595)
    #dbg_value(i64 %i.ay, !25854, !DIExpression(), !25592)
    #dbg_value(i64 %i.ay, !25846, !DIExpression(), !25591)
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.ax, %i.n, !dbg !25917
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !dbg !25917

_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.j
  %.sroa.9.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.9.041.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.9.041.i.i.i.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i.i ], [ 0, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i.i.i.i ], !dbg !25968
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.17.i.i.i, i64 40, !dbg !25946
    #dbg_value(ptr undef, !8207, !DIExpression(), !25654)
    #dbg_value(ptr undef, !8201, !DIExpression(), !25653)
    #dbg_value(i64 1, !8314, !DIExpression(), !25713)
    #dbg_value(i64 %.sroa.9.0.lcssa.i.i.i.i, !8205, !DIExpression(), !25714)
    #dbg_value(i64 %.sroa.9.0.lcssa.i.i.i.i, !8318, !DIExpression(), !25716)
    #dbg_value(i64 %.sroa.9.0.lcssa.i.i.i.i, !8323, !DIExpression(), !25718)
    #dbg_value(ptr undef, !8315, !DIExpression(), !25713)
    #dbg_value(ptr %i.i, !8321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25716)
    #dbg_value(i64 poison, !8321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25716)
    #dbg_value(ptr %i.i, !8326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25718)
    #dbg_value(i64 poison, !8326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25718)
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.9.0.lcssa.i.i.i.i, !dbg !25969 ; 4 uses
    #dbg_value(ptr %i.ba, !8316, !DIExpression(), !25713)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.i.i.i, i64 16, i1 false), !dbg !25970, !noalias !25882
  %.sroa.19.24..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !25970
  store <2 x i64> %i.aj, ptr %.sroa.19.24..sroa_idx8.i.i.i.i, align 8, !dbg !25970, !noalias !25882
  %.sroa.2016.24..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !25970
  store i64 %.sroa.633.0.copyload.i.i.i.i, ptr %.sroa.2016.24..sroa_idx17.i.i.i.i, align 8, !dbg !25970, !noalias !25882
  %.sroa.21.24..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40, !dbg !25970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.24..sroa_idx21.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !25970, !noalias !25882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i), !dbg !25971
  %.sroa.4.0.copyload16.pre = load i8, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !25972, !noalias !25787
  br label %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3pop0B1j_.exit.i, !dbg !25971

_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3pop0B1j_.exit.i: ; preds = %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i, %bb.c
  %.sroa.4.0.copyload16 = phi i8 [ %.sroa.4.0.copyload16.pre, %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE19sift_down_to_bottomB1h_.exit.i.i ], [ %.sroa.47.0.copyload.i, %bb.c ], !dbg !25972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !25972, !noalias !25787
    #dbg_value(i8 %.sroa.4.0.copyload16, !25726, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !25895)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.i, i64 7, i1 false), !dbg !25972, !noalias !25787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25973, !noalias !25798
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11binary_heap7PeekMutNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1G_.exit11, !dbg !25974

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11binary_heap7PeekMutNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1G_.exit11: ; preds = %bb.b, %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3pop0B1j_.exit.i
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.copyload16, %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3pop0B1j_.exit.i ], [ 2, %bb.b ], !dbg !25975 ; 2 uses
    #dbg_value(i8 %.sroa.4.0, !25726, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !25895)
  %i.bb = icmp ne i8 %.sroa.4.0, 2, !dbg !25976
  call void @llvm.assume(i1 %i.bb), !dbg !25977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014, i64 48, i1 false), !dbg !25978
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25978
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25978
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49, !dbg !25978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false), !dbg !25978
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014), !dbg !25979
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25979
  ret void, !dbg !25980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaE10try_removeBD_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((88, 90)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #6 !dbg !25988 {
bb.a:
    #dbg_declare(ptr poison, !26017, !DIExpression(DW_OP_LLVM_fragment, 0, 704), !26024)
    #dbg_declare(ptr poison, !26017, !DIExpression(DW_OP_LLVM_fragment, 720, 624), !26024)
    #dbg_declare(ptr poison, !26027, !DIExpression(DW_OP_LLVM_fragment, 0, 704), !26032)
    #dbg_declare(ptr poison, !26027, !DIExpression(DW_OP_LLVM_fragment, 720, 624), !26032)
    #dbg_declare(ptr poison, !26013, !DIExpression(DW_OP_LLVM_fragment, 0, 704), !26033)
    #dbg_declare(ptr poison, !26013, !DIExpression(DW_OP_LLVM_fragment, 720, 624), !26033)
    #dbg_value(ptr %1, !26010, !DIExpression(), !26034)
    #dbg_value(i64 %2, !26011, !DIExpression(), !26034)
    #dbg_value(i64 %2, !26035, !DIExpression(), !26039)
    #dbg_value(i64 %2, !26040, !DIExpression(), !26044)
    #dbg_value(ptr %1, !26045, !DIExpression(), !26050)
    #dbg_value(ptr %1, !26051, !DIExpression(), !26055)
    #dbg_value(ptr %1, !26056, !DIExpression(), !26059)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26075
  %i.b = load i64, ptr %i.a, align 8, !dbg !26075, !noundef !2579
    #dbg_value(ptr poison, !26036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26039)
    #dbg_value(ptr poison, !26041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26044)
    #dbg_value(i64 %i.b, !26036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26039)
    #dbg_value(i64 %i.b, !26041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26044)
  %i.c = icmp ult i64 %2, %i.b, !dbg !26076
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !26076

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26077
  %i.e = load ptr, ptr %i.d, align 8, !dbg !26077, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.e, !26036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26039)
    #dbg_value(ptr %i.e, !26041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26044)
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.e, i64 %2, !dbg !26078 ; 4 uses
    #dbg_value(ptr %i.f, !26012, !DIExpression(), !26063)
    #dbg_value(ptr %i.f, !26064, !DIExpression(), !26070)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88, !dbg !26079 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !dbg !26079, !range !5711, !noundef !2579 ; 2 uses
  %.not = icmp eq i16 %i.h, 2, !dbg !26079
  br i1 %.not, label %bb.d, label %bb.c, !dbg !26080

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !26081 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !26081, !noundef !2579
    #dbg_value(i64 %i.j, !26067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26070)
    #dbg_value(i16 2, !26067, !DIExpression(DW_OP_LLVM_fragment, 704, 16), !26070)
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE3popB1h_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #30, !dbg !29699, !noalias !29613
  unreachable, !dbg !29699

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !29700
    #dbg_declare(ptr %.sroa.10.i.i, !29628, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !29302)
    #dbg_value(ptr poison, !8862, !DIExpression(), !29305)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29306)
    #dbg_declare(ptr %.sroa.10.i.i, !29624, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !29307)
    #dbg_value(ptr poison, !8862, !DIExpression(), !29310)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29311)
    #dbg_value(ptr poison, !29632, !DIExpression(), !29320)
    #dbg_value(ptr poison, !29641, !DIExpression(), !29323)
    #dbg_value(ptr poison, !29632, !DIExpression(), !29325)
    #dbg_value(ptr poison, !29641, !DIExpression(), !29327)
    #dbg_value(i64 0, !29621, !DIExpression(), !29328)
    #dbg_value(i64 0, !29644, !DIExpression(), !29332)
    #dbg_value(i64 0, !29648, !DIExpression(), !29335)
    #dbg_value(i64 0, !29651, !DIExpression(), !29338)
    #dbg_value(ptr poison, !29620, !DIExpression(), !29328)
    #dbg_value(ptr poison, !29614, !DIExpression(), !29339)
    #dbg_value(i64 1, !29654, !DIExpression(), !29342)
    #dbg_value(i64 1, !29654, !DIExpression(), !29344)
    #dbg_value(i64 %i.e, !29622, !DIExpression(), !29345)
    #dbg_value(i64 0, !29623, !DIExpression(), !29346)
    #dbg_value(ptr %i.i, !29645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29332)
    #dbg_value(ptr %i.i, !29649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29335)
    #dbg_value(ptr %i.i, !29652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29338)
    #dbg_value(i64 %i.e, !29645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29332)
    #dbg_value(i64 %i.e, !29649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29335)
    #dbg_value(i64 %i.e, !29652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29338)
    #dbg_value(ptr %i.i, !29659, !DIExpression(), !29349)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !29701, !noalias !29661
    #dbg_value(ptr %i.i, !29624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29351)
    #dbg_value(i64 %i.e, !29624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29351)
    #dbg_value(i64 0, !29624, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29351)
    #dbg_value(i64 1, !29625, !DIExpression(), !29352)
    #dbg_value(i64 1, !29633, !DIExpression(), !29353)
    #dbg_value(i64 1, !29662, !DIExpression(), !29356)
    #dbg_value(i64 1, !29633, !DIExpression(), !29357)
    #dbg_value(i64 1, !29662, !DIExpression(), !29359)
  %i.n = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %.not.not8.i.i = icmp samesign ult i64 %i.c, 4, !dbg !29702
  br i1 %.not.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !29702

._crit_edge.i.i:                                  ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i
  %.sroa.12.0.lcssa.i.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i ], [ %i.bd, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i ], !dbg !29703 ; 2 uses
  %.sroa.05.0.lcssa.i.i = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i ], [ %i.bh, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i ], !dbg !29704 ; 3 uses
  %i.o = add nsw i64 %i.c, -2, !dbg !29705
  %i.p = icmp eq i64 %.sroa.05.0.lcssa.i.i, %i.o, !dbg !29706
  br i1 %i.p, label %bb.g, label %bb.h, !dbg !29706

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.bh, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i ] ; 3 uses
  %.sroa.12.09.i.i = phi i64 [ %i.bd, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamEB16_.exit.i ]
    #dbg_value(i64 %.sroa.05.010.i.i, !29662, !DIExpression(), !29356)
    #dbg_value(i64 %.sroa.12.09.i.i, !29624, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29351)
    #dbg_value(ptr undef, !29641, !DIExpression(), !29327)
    #dbg_value(i64 %.sroa.05.010.i.i, !29642, !DIExpression(), !29360)
    #dbg_value(i64 %.sroa.05.010.i.i, !29648, !DIExpression(), !29362)
    #dbg_value(i64 %.sroa.05.010.i.i, !29651, !DIExpression(), !29364)
    #dbg_value(ptr %i.i, !29649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29362)
    #dbg_value(ptr %i.i, !29652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29364)
    #dbg_value(i64 %i.e, !29649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29362)
    #dbg_value(i64 %i.e, !29652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29364)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.05.010.i.i, !dbg !29707 ; 3 uses
    #dbg_value(ptr poison, !29667, !DIExpression(), !29367)
    #dbg_value(ptr undef, !29641, !DIExpression(), !29323)
  %i.r = add nuw nsw i64 %.sroa.05.010.i.i, 1, !dbg !29708 ; 2 uses
    #dbg_value(i64 %i.r, !29642, !DIExpression(), !29368)
    #dbg_value(i64 %i.r, !29648, !DIExpression(), !29370)
    #dbg_value(i64 %i.r, !29651, !DIExpression(), !29372)
    #dbg_value(ptr %i.i, !29649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29370)
    #dbg_value(ptr %i.i, !29652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29372)
    #dbg_value(i64 %i.e, !29649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29370)
    #dbg_value(i64 %i.e, !29652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29372)
  %i.s = icmp ult i64 %i.r, %i.e, !dbg !29709
  call void @llvm.assume(i1 %i.s), !dbg !29710
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.r, !dbg !29711 ; 3 uses
    #dbg_value(ptr poison, !29668, !DIExpression(), !29373)
  call void @llvm.experimental.noalias.scope.decl(metadata !29672), !dbg !29712
  call void @llvm.experimental.noalias.scope.decl(metadata !29673), !dbg !29712
    #dbg_value(ptr %i.q, !8901, !DIExpression(), !29378)
    #dbg_value(ptr %i.t, !8904, !DIExpression(), !29378)
    #dbg_declare(ptr poison, !8909, !DIExpression(), !29380)
  call void @llvm.experimental.noalias.scope.decl(metadata !29674), !dbg !29713
  call void @llvm.experimental.noalias.scope.decl(metadata !29675), !dbg !29713
    #dbg_value(ptr %i.q, !8914, !DIExpression(), !29385)
    #dbg_value(ptr %i.t, !8918, !DIExpression(), !29385)
  call void @llvm.experimental.noalias.scope.decl(metadata !29676), !dbg !29714
  call void @llvm.experimental.noalias.scope.decl(metadata !29677), !dbg !29714
    #dbg_value(ptr %i.q, !8920, !DIExpression(), !29390)
    #dbg_value(ptr %i.t, !8924, !DIExpression(), !29390)
    #dbg_value(ptr %i.q, !8929, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29392)
    #dbg_value(ptr %i.t, !8933, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29393)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !29715
  %i.v = load i32, ptr %i.u, align 8, !dbg !29715, !alias.scope !29678, !noalias !29679, !noundef !2579 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !29716
  %i.x = load i32, ptr %i.w, align 8, !dbg !29716, !alias.scope !29680, !noalias !29681, !noundef !2579 ; 2 uses
  %i.y = icmp eq i32 %i.v, %i.x, !dbg !29717
  %i.z = icmp sle i32 %i.v, %i.x, !dbg !29718
  br i1 %i.y, label %bb.e, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i, !dbg !29717

bb.e:                                             ; preds = %.lr.ph.i.i
    #dbg_value(ptr %i.q, !8935, !DIExpression(), !29395)
    #dbg_value(ptr %i.t, !8936, !DIExpression(), !29396)
  %i.aa = load i64, ptr %i.q, align 8, !dbg !29719, !alias.scope !29678, !noalias !29679, !noundef !2579 ; 2 uses
  %i.ab = load i64, ptr %i.t, align 8, !dbg !29720, !alias.scope !29680, !noalias !29681, !noundef !2579 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.ab, !dbg !29721
  %i.ad = icmp ule i64 %i.aa, %i.ab, !dbg !29718
  br i1 %i.ac, label %bb.f, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i, !dbg !29721

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.q, !8938, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29398)
    #dbg_value(ptr %i.t, !8942, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29398)
    #dbg_value(ptr %i.q, !8935, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29400)
    #dbg_value(ptr %i.t, !8936, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29401)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !29722
  %i.af = load i64, ptr %i.ae, align 8, !dbg !29722, !alias.scope !29678, !noalias !29679, !noundef !2579
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !29723
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !29723, !alias.scope !29680, !noalias !29681, !noundef !2579
  %i.ai = icmp ule i64 %i.af, %i.ah, !dbg !29718
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i, !dbg !29724

bb.g:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !29632, !DIExpression(), !29325)
    #dbg_value(ptr %i.i, !29637, !DIExpression(), !29402)
    #dbg_value(ptr %i.i, !29663, !DIExpression(), !29359)
    #dbg_value(ptr %i.i, !29663, !DIExpression(), !29404)
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i, !dbg !29725
    #dbg_value(ptr %i.aj, !29638, !DIExpression(), !29405)
    #dbg_value(ptr %i.aj, !29655, !DIExpression(), !29344)
    #dbg_value(i64 %.sroa.12.0.lcssa.i.i, !29662, !DIExpression(), !29404)
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i, !dbg !29726
    #dbg_value(ptr %i.ak, !29639, !DIExpression(), !29406)
    #dbg_value(ptr %i.ak, !29656, !DIExpression(), !29344)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !dbg !29727, !noalias !29661
    #dbg_value(i64 %.sroa.05.0.lcssa.i.i, !29624, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29351)
  br label %bb.h, !dbg !29728

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.12.1.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i, %bb.g ], [ %.sroa.12.0.lcssa.i.i, %._crit_edge.i.i ], !dbg !29703 ; 4 uses
    #dbg_value(i64 %.sroa.12.1.i.i, !29624, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29351)
    #dbg_value(i64 %.sroa.12.1.i.i, !29621, !DIExpression(), !29328)
    #dbg_value(i64 %.sroa.12.1.i.i, !29644, !DIExpression(), !29332)
    #dbg_value(i64 %.sroa.12.1.i.i, !29648, !DIExpression(), !29335)
    #dbg_value(i64 %.sroa.12.1.i.i, !29651, !DIExpression(), !29338)
    #dbg_value(ptr %i.i, !29628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29407)
    #dbg_value(i64 %i.e, !29628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29407)
    #dbg_value(i64 %.sroa.12.1.i.i, !29628, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29407)
    #dbg_value(ptr undef, !8867, !DIExpression(), !29306)
    #dbg_value(ptr undef, !8862, !DIExpression(), !29305)
    #dbg_value(i64 1, !8944, !DIExpression(), !29409)
    #dbg_value(i64 %.sroa.12.1.i.i, !8865, !DIExpression(), !29410)
    #dbg_value(i64 %.sroa.12.1.i.i, !8948, !DIExpression(), !29412)
    #dbg_value(i64 %.sroa.12.1.i.i, !8953, !DIExpression(), !29414)
    #dbg_value(ptr undef, !8945, !DIExpression(), !29409)
    #dbg_value(ptr %i.i, !8951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29412)
    #dbg_value(i64 poison, !8951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29412)
    #dbg_value(ptr %i.i, !8956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29414)
    #dbg_value(i64 poison, !8956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29414)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.12.1.i.i, !dbg !29729 ; 4 uses
    #dbg_value(ptr %i.al, !8946, !DIExpression(), !29409)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false), !dbg !29730, !noalias !29661
    #dbg_value(ptr poison, !8862, !DIExpression(), !29418)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29419)
    #dbg_value(ptr poison, !8862, !DIExpression(), !29422)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29423)
    #dbg_value(ptr poison, !8968, !DIExpression(), !29425)
    #dbg_value(ptr poison, !8974, !DIExpression(), !29427)
    #dbg_value(ptr poison, !8962, !DIExpression(), !29428)
    #dbg_value(i64 0, !8963, !DIExpression(), !29428)
    #dbg_value(i64 %.sroa.12.1.i.i, !8964, !DIExpression(), !29428)
    #dbg_value(i64 %.sroa.12.1.i.i, !8977, !DIExpression(), !29430)
    #dbg_value(i64 %.sroa.12.1.i.i, !8981, !DIExpression(), !29432)
    #dbg_value(i64 %.sroa.12.1.i.i, !8984, !DIExpression(), !29434)
    #dbg_value(i64 1, !8987, !DIExpression(), !29436)
    #dbg_value(ptr %i.i, !8978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29430)
    #dbg_value(ptr %i.i, !8982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29432)
    #dbg_value(ptr %i.i, !8985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29434)
    #dbg_value(i64 %i.e, !8978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29430)
    #dbg_value(i64 %i.e, !8982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29432)
    #dbg_value(i64 %i.e, !8985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29434)
  %i.am = icmp ult i64 %.sroa.12.1.i.i, %i.e, !dbg !29731
  call void @llvm.assume(i1 %i.am), !dbg !29732
    #dbg_value(ptr %i.al, !8991, !DIExpression(), !29438)
  %.sroa.028.0.copyload.i.i.i = load i64, ptr %i.al, align 8, !dbg !29733, !noalias !29661 ; 3 uses
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !29733
  %.sroa.429.0.copyload.i.i.i = load i64, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !dbg !29733, !noalias !29661 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !29733 ; 2 uses
  %i.an = load <2 x i32>, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !dbg !29733, !noalias !29661
  %.sroa.530.0.copyload.i.i.i = load i32, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !dbg !29733, !noalias !29661 ; 2 uses
    #dbg_value(ptr %i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29439)
    #dbg_value(i64 %i.e, !8965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29439)
    #dbg_value(i64 %.sroa.028.0.copyload.i.i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29439)
    #dbg_value(i64 %.sroa.429.0.copyload.i.i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !29439)
    #dbg_value(i32 %.sroa.530.0.copyload.i.i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !29439)
    #dbg_value(i32 poison, !8965, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !29439)
    #dbg_value(i64 %.sroa.12.1.i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29439)
  %.not33.i.i.i = icmp eq i64 %.sroa.12.1.i.i, 0, !dbg !29734
  br i1 %.not33.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i, label %.lr.ph.i.i.i, !dbg !29734

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.j
  %.sroa.1518.034.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %.sroa.12.1.i.i, %bb.h ] ; 4 uses
    #dbg_value(i64 %.sroa.1518.034.i.i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29439)
  %i.ao = add nsw i64 %.sroa.1518.034.i.i.i, -1, !dbg !29735
  %i.ap = lshr i64 %i.ao, 1, !dbg !29735          ; 4 uses
    #dbg_value(i64 %i.ap, !8966, !DIExpression(), !29440)
    #dbg_value(i64 %i.ap, !8975, !DIExpression(), !29441)
    #dbg_value(i64 %i.ap, !8981, !DIExpression(), !29443)
    #dbg_value(i64 %i.ap, !8984, !DIExpression(), !29445)
    #dbg_value(i64 %i.ap, !8969, !DIExpression(), !29446)
    #dbg_value(i64 %i.ap, !8996, !DIExpression(), !29448)
    #dbg_value(ptr poison, !8999, !DIExpression(), !29450)
    #dbg_value(ptr undef, !8974, !DIExpression(), !29427)
    #dbg_value(ptr %i.i, !8982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29443)
    #dbg_value(ptr %i.i, !8985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29445)
    #dbg_value(i64 %i.e, !8982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29443)
    #dbg_value(i64 %i.e, !8985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29445)
  %i.aq = icmp samesign ult i64 %i.ap, %i.e, !dbg !29736
  call void @llvm.assume(i1 %i.aq), !dbg !29737
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ap, !dbg !29738 ; 4 uses
    #dbg_value(ptr poison, !9000, !DIExpression(), !29451)
    #dbg_value(ptr undef, !8901, !DIExpression(), !29453)
    #dbg_value(ptr %i.ar, !8904, !DIExpression(), !29453)
    #dbg_declare(ptr poison, !8909, !DIExpression(), !29455)
    #dbg_value(ptr undef, !8914, !DIExpression(), !29457)
    #dbg_value(ptr %i.ar, !8918, !DIExpression(), !29457)
    #dbg_value(ptr undef, !8920, !DIExpression(), !29459)
    #dbg_value(ptr %i.ar, !8924, !DIExpression(), !29459)
    #dbg_value(ptr undef, !8929, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29461)
    #dbg_value(ptr %i.ar, !8933, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29462)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !29739
  %i.at = load i32, ptr %i.as, align 8, !dbg !29739, !alias.scope !29683, !noalias !29684, !noundef !2579 ; 2 uses
  %i.au = icmp eq i32 %.sroa.530.0.copyload.i.i.i, %i.at, !dbg !29740
  %i.av = icmp sle i32 %.sroa.530.0.copyload.i.i.i, %i.at, !dbg !29741
  br i1 %i.au, label %bb.i, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, !dbg !29740

bb.i:                                             ; preds = %.lr.ph.i.i.i
    #dbg_value(ptr undef, !8935, !DIExpression(), !29473)
    #dbg_value(ptr %i.ar, !8936, !DIExpression(), !29474)
  %i.aw = load i64, ptr %i.ar, align 8, !dbg !29742, !alias.scope !29683, !noalias !29684, !noundef !2579 ; 2 uses
  %i.ax = icmp eq i64 %.sroa.028.0.copyload.i.i.i, %i.aw, !dbg !29743
  %i.ay = icmp ule i64 %.sroa.028.0.copyload.i.i.i, %i.aw, !dbg !29741
  br i1 %i.ax, label %.split.i.i.i, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, !dbg !29743

.split.i.i.i:                                     ; preds = %bb.i
    #dbg_value(ptr undef, !8938, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29476)
    #dbg_value(ptr %i.ar, !8942, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29476)
    #dbg_value(ptr undef, !8935, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29478)
    #dbg_value(ptr %i.ar, !8936, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29479)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !29744
  %i.ba = load i64, ptr %i.az, align 8, !dbg !29744, !alias.scope !29683, !noalias !29684, !noundef !2579
  %.not32.i.i.i = icmp ugt i64 %.sroa.429.0.copyload.i.i.i, %i.ba, !dbg !29741
    #dbg_value(i8 poison, !8910, !DIExpression(), !29480)
  br i1 %.not32.i.i.i, label %bb.j, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i, !dbg !29745

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.av, %.lr.ph.i.i.i ], [ %i.ay, %bb.i ], !dbg !29746
    #dbg_value(i8 poison, !8910, !DIExpression(), !29480)
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i, label %bb.j, !dbg !29745

bb.j:                                             ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, %.split.i.i.i
    #dbg_value(ptr undef, !8968, !DIExpression(), !29425)
    #dbg_value(ptr %i.i, !8970, !DIExpression(), !29481)
    #dbg_value(ptr %i.i, !8997, !DIExpression(), !29448)
    #dbg_value(ptr %i.i, !8997, !DIExpression(), !29483)
    #dbg_value(ptr %i.ar, !8971, !DIExpression(), !29484)
    #dbg_value(ptr %i.ar, !8988, !DIExpression(), !29436)
    #dbg_value(i64 %.sroa.1518.034.i.i.i, !8996, !DIExpression(), !29483)
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.1518.034.i.i.i, !dbg !29747
    #dbg_value(ptr %i.bb, !8972, !DIExpression(), !29485)
    #dbg_value(ptr %i.bb, !8989, !DIExpression(), !29436)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !dbg !29748, !noalias !29661
    #dbg_value(i64 %i.ap, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29439)
  %.not.i.i.i = icmp eq i64 %i.ap, 0, !dbg !29734
  br i1 %.not.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i, label %.lr.ph.i.i.i, !dbg !29734

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.ai, %bb.f ], [ %i.ad, %bb.e ], [ %i.z, %.lr.ph.i.i ], !dbg !29749
    #dbg_value(i8 poison, !8910, !DIExpression(), !29486)
  %i.bc = zext i1 %.sroa.0.0.i.i.i.i.i to i64, !dbg !29750
  %i.bd = add nuw nsw i64 %.sroa.05.010.i.i, %i.bc, !dbg !29751 ; 4 uses
    #dbg_value(i64 %i.bd, !29625, !DIExpression(), !29352)
    #dbg_value(i64 %i.bd, !29633, !DIExpression(), !29353)
    #dbg_value(i64 %i.bd, !29662, !DIExpression(), !29356)
    #dbg_value(i64 %i.bd, !29633, !DIExpression(), !29357)
    #dbg_value(i64 %i.bd, !29662, !DIExpression(), !29359)
    #dbg_value(ptr undef, !29632, !DIExpression(), !29320)
    #dbg_value(ptr %i.i, !29634, !DIExpression(), !29487)
    #dbg_value(ptr %i.i, !29663, !DIExpression(), !29356)
    #dbg_value(ptr %i.i, !29663, !DIExpression(), !29489)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.bd, !dbg !29752
    #dbg_value(ptr %i.be, !29635, !DIExpression(), !29490)
    #dbg_value(ptr %i.be, !29655, !DIExpression(), !29342)
    #dbg_value(i64 %.sroa.12.09.i.i, !29662, !DIExpression(), !29489)
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.12.09.i.i, !dbg !29753
    #dbg_value(ptr %i.bf, !29636, !DIExpression(), !29491)
    #dbg_value(ptr %i.bf, !29656, !DIExpression(), !29342)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !dbg !29754, !noalias !29661
    #dbg_value(i64 %i.bd, !29624, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29351)
  %i.bg = shl nuw nsw i64 %i.bd, 1, !dbg !29755   ; 2 uses
  %i.bh = or disjoint i64 %i.bg, 1, !dbg !29756   ; 2 uses
    #dbg_value(i64 %i.bh, !29633, !DIExpression(), !29357)
    #dbg_value(i64 %i.bh, !29662, !DIExpression(), !29359)
    #dbg_value(i64 %i.bh, !29662, !DIExpression(), !29356)
    #dbg_value(i64 %i.bh, !29633, !DIExpression(), !29353)
    #dbg_value(i64 %i.bh, !29625, !DIExpression(), !29352)
  %.not.not.not.i.i = icmp samesign ult i64 %i.bg, %i.n, !dbg !29702
  br i1 %.not.not.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !29702

_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i: ; preds = %bb.j, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i, %.split.i.i.i, %bb.h
  %.sroa.1518.0.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ %.sroa.1518.034.i.i.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i.i.i ], [ %.sroa.1518.034.i.i.i, %.split.i.i.i ], !dbg !29757
    #dbg_value(ptr undef, !8867, !DIExpression(), !29423)
    #dbg_value(ptr undef, !8862, !DIExpression(), !29422)
    #dbg_value(i64 1, !8944, !DIExpression(), !29493)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i.i.i, !8865, !DIExpression(), !29494)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i.i.i, !8948, !DIExpression(), !29496)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i.i.i, !8953, !DIExpression(), !29498)
    #dbg_value(ptr undef, !8945, !DIExpression(), !29493)
    #dbg_value(ptr %i.i, !8951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29496)
    #dbg_value(i64 poison, !8951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29496)
    #dbg_value(ptr %i.i, !8956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29498)
    #dbg_value(i64 poison, !8956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29498)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.1518.0.lcssa.i.i.i, !dbg !29758 ; 3 uses
    #dbg_value(ptr %i.bi, !8946, !DIExpression(), !29493)
  store i64 %.sroa.028.0.copyload.i.i.i, ptr %i.bi, align 8, !dbg !29759, !noalias !29661
  %.sroa.13.16..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !29759
  store i64 %.sroa.429.0.copyload.i.i.i, ptr %.sroa.13.16..sroa_idx6.i.i.i, align 8, !dbg !29759, !noalias !29661
  %.sroa.14.16..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !29759
  store <2 x i32> %i.an, ptr %.sroa.14.16..sroa_idx10.i.i.i, align 8, !dbg !29759, !noalias !29661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !29760
  br label %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE3pop0B1j_.exit, !dbg !29761

_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE3pop0B1j_.exit: ; preds = %bb.b, %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE19sift_down_to_bottomB1h_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29764
  br label %bb.k, !dbg !29765

bb.k:                                             ; preds = %bb.a, %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE3pop0B1j_.exit
  %storemerge = phi i64 [ 1, %_RNCNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE3pop0B1j_.exit ], [ 0, %bb.a ], !dbg !29576
  store i64 %storemerge, ptr %0, align 8, !dbg !29576
  ret void, !dbg !29766
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE4pushB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29768 {
bb.a:
    #dbg_value(ptr %0, !29886, !DIExpression(), !29890)
    #dbg_value(ptr %0, !29891, !DIExpression(), !29894)
    #dbg_declare(ptr %1, !29887, !DIExpression(), !29895)
    #dbg_declare(ptr %1, !29896, !DIExpression(), !29903)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29937 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !29937, !noundef !2579 ; 7 uses
    #dbg_value(i64 %i.b, !29888, !DIExpression(), !29905)
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !29938
  tail call void @llvm.assume(i1 %i.c), !dbg !29939
    #dbg_value(ptr %0, !29900, !DIExpression(), !29906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29907), !dbg !29940
    #dbg_value(ptr %0, !29908, !DIExpression(), !29778)
    #dbg_value(ptr %0, !29916, !DIExpression(), !29781)
    #dbg_declare(ptr %1, !29912, !DIExpression(), !29782)
    #dbg_declare(ptr %1, !29921, !DIExpression(), !29785)
    #dbg_value(i64 24, !29926, !DIExpression(), !29790)
    #dbg_value(i64 %i.b, !29913, !DIExpression(), !29791)
    #dbg_value(i64 %i.b, !29931, !DIExpression(), !29794)
    #dbg_value(ptr %0, !29929, !DIExpression(), !29795)
  %i.d = load i64, ptr %0, align 8, !dbg !29941, !range !6134, !alias.scope !29907, !noalias !29934, !noundef !2579
  %i.e = icmp eq i64 %i.b, %i.d, !dbg !29942
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit, !dbg !29942

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32, !dbg !29943, !noalias !29934
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit, !dbg !29944

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29945
  %i.g = load ptr, ptr %i.f, align 8, !dbg !29945, !alias.scope !29907, !noalias !29934, !nonnull !2579, !noundef !2579 ; 4 uses
    #dbg_value(ptr %i.g, !29932, !DIExpression(), !29794)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b, !dbg !29946 ; 4 uses
    #dbg_value(ptr %i.h, !29914, !DIExpression(), !29803)
    #dbg_value(ptr %i.h, !29924, !DIExpression(), !29804)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !29947, !noalias !29907
  %i.i = add nuw nsw i64 %i.b, 1, !dbg !29948
  store i64 %i.i, ptr %i.a, align 8, !dbg !29948, !alias.scope !29907, !noalias !29934
    #dbg_value(ptr poison, !8862, !DIExpression(), !29808)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29809)
    #dbg_value(ptr poison, !8862, !DIExpression(), !29812)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29813)
    #dbg_value(ptr poison, !8968, !DIExpression(), !29815)
    #dbg_value(ptr poison, !8974, !DIExpression(), !29817)
    #dbg_value(ptr poison, !8962, !DIExpression(), !29818)
    #dbg_value(i64 0, !8963, !DIExpression(), !29818)
    #dbg_value(i64 %i.b, !8964, !DIExpression(), !29818)
    #dbg_value(i64 %i.b, !8977, !DIExpression(), !29820)
    #dbg_value(i64 %i.b, !8981, !DIExpression(), !29822)
    #dbg_value(i64 %i.b, !8984, !DIExpression(), !29824)
    #dbg_value(i64 1, !8987, !DIExpression(), !29826)
    #dbg_value(ptr %i.g, !8978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29820)
    #dbg_value(ptr %i.g, !8982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29822)
    #dbg_value(ptr %i.g, !8985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29824)
    #dbg_value(i64 %i.i, !8978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29820)
    #dbg_value(i64 %i.i, !8982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29822)
    #dbg_value(i64 %i.i, !8985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29824)
    #dbg_value(ptr %i.h, !8991, !DIExpression(), !29828)
  %.sroa.028.0.copyload.i = load i64, ptr %i.h, align 8, !dbg !29949 ; 3 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !29949
  %.sroa.429.0.copyload.i = load i64, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !29949 ; 2 uses
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !29949 ; 2 uses
  %i.j = load <2 x i32>, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !29949
  %.sroa.530.0.copyload.i = load i32, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !29949 ; 2 uses
    #dbg_value(ptr %i.g, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29829)
    #dbg_value(i64 %i.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29829)
    #dbg_value(i64 %.sroa.028.0.copyload.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29829)
    #dbg_value(i64 %.sroa.429.0.copyload.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !29829)
    #dbg_value(i32 %.sroa.530.0.copyload.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !29829)
    #dbg_value(i32 poison, !8965, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !29829)
    #dbg_value(i64 %i.b, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29829)
  %.not33.i = icmp eq i64 %i.b, 0, !dbg !29950
  br i1 %.not33.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE7sift_upB1h_.exit, label %.lr.ph.i, !dbg !29950

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit, %bb.d
  %.sroa.1518.034.i = phi i64 [ %i.l, %bb.d ], [ %i.b, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit ] ; 4 uses
    #dbg_value(i64 %.sroa.1518.034.i, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29829)
  %i.k = add nsw i64 %.sroa.1518.034.i, -1, !dbg !29951
  %i.l = lshr i64 %i.k, 1, !dbg !29951            ; 4 uses
    #dbg_value(i64 %i.l, !8966, !DIExpression(), !29830)
    #dbg_value(i64 %i.l, !8975, !DIExpression(), !29831)
    #dbg_value(i64 %i.l, !8981, !DIExpression(), !29833)
    #dbg_value(i64 %i.l, !8984, !DIExpression(), !29835)
    #dbg_value(i64 %i.l, !8969, !DIExpression(), !29836)
    #dbg_value(i64 %i.l, !8996, !DIExpression(), !29838)
    #dbg_value(ptr poison, !8999, !DIExpression(), !29840)
    #dbg_value(ptr undef, !8974, !DIExpression(), !29817)
    #dbg_value(ptr %i.g, !8982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29833)
    #dbg_value(ptr %i.g, !8985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29835)
    #dbg_value(i64 %i.i, !8982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29833)
    #dbg_value(i64 %i.i, !8985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29835)
  %i.m = icmp samesign ule i64 %i.l, %i.b, !dbg !29952
  tail call void @llvm.assume(i1 %i.m), !dbg !29953
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.l, !dbg !29954 ; 4 uses
    #dbg_value(ptr poison, !9000, !DIExpression(), !29841)
    #dbg_value(ptr undef, !8901, !DIExpression(), !29843)
    #dbg_value(ptr %i.n, !8904, !DIExpression(), !29843)
    #dbg_declare(ptr poison, !8909, !DIExpression(), !29845)
    #dbg_value(ptr undef, !8914, !DIExpression(), !29847)
    #dbg_value(ptr %i.n, !8918, !DIExpression(), !29847)
    #dbg_value(ptr undef, !8920, !DIExpression(), !29849)
    #dbg_value(ptr %i.n, !8924, !DIExpression(), !29849)
    #dbg_value(ptr undef, !8929, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29851)
    #dbg_value(ptr %i.n, !8933, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !29852)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !29955
  %i.p = load i32, ptr %i.o, align 8, !dbg !29955, !alias.scope !29935, !noalias !29936, !noundef !2579 ; 2 uses
  %i.q = icmp eq i32 %.sroa.530.0.copyload.i, %i.p, !dbg !29956
  %i.r = icmp sle i32 %.sroa.530.0.copyload.i, %i.p, !dbg !29957
  br i1 %i.q, label %bb.c, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, !dbg !29956

bb.c:                                             ; preds = %.lr.ph.i
    #dbg_value(ptr undef, !8935, !DIExpression(), !29863)
    #dbg_value(ptr %i.n, !8936, !DIExpression(), !29864)
  %i.s = load i64, ptr %i.n, align 8, !dbg !29958, !alias.scope !29935, !noalias !29936, !noundef !2579 ; 2 uses
  %i.t = icmp eq i64 %.sroa.028.0.copyload.i, %i.s, !dbg !29959
  %i.u = icmp ule i64 %.sroa.028.0.copyload.i, %i.s, !dbg !29957
  br i1 %i.t, label %.split.i, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, !dbg !29959

.split.i:                                         ; preds = %bb.c
    #dbg_value(ptr undef, !8938, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29866)
    #dbg_value(ptr %i.n, !8942, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29866)
    #dbg_value(ptr undef, !8935, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29868)
    #dbg_value(ptr %i.n, !8936, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !29869)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !29960
  %i.w = load i64, ptr %i.v, align 8, !dbg !29960, !alias.scope !29935, !noalias !29936, !noundef !2579
  %.not32.i = icmp ugt i64 %.sroa.429.0.copyload.i, %i.w, !dbg !29957
    #dbg_value(i8 poison, !8910, !DIExpression(), !29870)
  br i1 %.not32.i, label %bb.d, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE7sift_upB1h_.exit, !dbg !29961

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.r, %.lr.ph.i ], [ %i.u, %bb.c ], !dbg !29962
    #dbg_value(i8 poison, !8910, !DIExpression(), !29870)
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE7sift_upB1h_.exit, label %bb.d, !dbg !29961

bb.d:                                             ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, %.split.i
    #dbg_value(ptr undef, !8968, !DIExpression(), !29815)
    #dbg_value(ptr %i.g, !8970, !DIExpression(), !29871)
    #dbg_value(ptr %i.g, !8997, !DIExpression(), !29838)
    #dbg_value(ptr %i.g, !8997, !DIExpression(), !29873)
    #dbg_value(ptr %i.n, !8971, !DIExpression(), !29874)
    #dbg_value(ptr %i.n, !8988, !DIExpression(), !29826)
    #dbg_value(i64 %.sroa.1518.034.i, !8996, !DIExpression(), !29873)
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.1518.034.i, !dbg !29963
    #dbg_value(ptr %i.x, !8972, !DIExpression(), !29875)
    #dbg_value(ptr %i.x, !8989, !DIExpression(), !29826)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !29964
    #dbg_value(i64 %i.l, !8965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !29829)
  %.not.i = icmp eq i64 %i.l, 0, !dbg !29950
  br i1 %.not.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE7sift_upB1h_.exit, label %.lr.ph.i, !dbg !29950

_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE7sift_upB1h_.exit: ; preds = %.split.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit
  %.sroa.1518.0.lcssa.i = phi i64 [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE8push_mutBL_.exit ], [ 0, %bb.d ], [ %.sroa.1518.034.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i ], [ %.sroa.1518.034.i, %.split.i ], !dbg !29965
    #dbg_value(ptr undef, !8867, !DIExpression(), !29813)
    #dbg_value(ptr undef, !8862, !DIExpression(), !29812)
    #dbg_value(i64 1, !8944, !DIExpression(), !29877)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i, !8865, !DIExpression(), !29878)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i, !8948, !DIExpression(), !29880)
    #dbg_value(i64 %.sroa.1518.0.lcssa.i, !8953, !DIExpression(), !29882)
    #dbg_value(ptr undef, !8945, !DIExpression(), !29877)
    #dbg_value(ptr %i.g, !8951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29880)
    #dbg_value(i64 poison, !8951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29880)
    #dbg_value(ptr %i.g, !8956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29882)
    #dbg_value(i64 poison, !8956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29882)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.1518.0.lcssa.i, !dbg !29966 ; 3 uses
    #dbg_value(ptr %i.y, !8946, !DIExpression(), !29877)
  store i64 %.sroa.028.0.copyload.i, ptr %i.y, align 8, !dbg !29967
  %.sroa.13.16..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !29967
  store i64 %.sroa.429.0.copyload.i, ptr %.sroa.13.16..sroa_idx6.i, align 8, !dbg !29967
  %.sroa.14.16..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !29967
  store <2 x i32> %i.j, ptr %.sroa.14.16..sroa_idx10.i, align 8, !dbg !29967
  ret void, !dbg !29968
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE15into_sorted_vecB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !29971 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %1, !29992, !DIExpression(), !29996)
    #dbg_value(ptr %1, !29997, !DIExpression(), !30000)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30024
  %i.c = load i64, ptr %i.b, align 8, !dbg !30024, !noundef !2579 ; 4 uses
    #dbg_value(i64 %i.c, !29993, !DIExpression(), !30002)
  %i.d = icmp ult i64 %i.c, 164703072086692426, !dbg !30025
  tail call void @llvm.assume(i1 %i.d), !dbg !30026
  %i.e = icmp samesign ugt i64 %i.c, 1, !dbg !30027
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !30027

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !2579, !noundef !2579 ; 4 uses
  br label %bb.b, !dbg !30027

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !30028
  ret void, !dbg !30029

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.09 = phi i64 [ %i.c, %.lr.ph ], [ %i.h, %bb.b ]
    #dbg_value(i64 %.sroa.0.09, !29993, !DIExpression(), !30002)
  %i.h = add nsw i64 %.sroa.0.09, -1, !dbg !30030 ; 4 uses
    #dbg_value(i64 %i.h, !29993, !DIExpression(), !30002)
    #dbg_value(ptr %i.g, !29994, !DIExpression(), !30003)
    #dbg_value(ptr %i.g, !30004, !DIExpression(), !30008)
    #dbg_value(i64 %i.h, !30005, !DIExpression(), !30008)
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.h, !dbg !30031 ; 2 uses
    #dbg_value(ptr %i.g, !30009, !DIExpression(), !29979)
    #dbg_value(ptr %i.g, !30016, !DIExpression(), !29982)
    #dbg_value(ptr %i.i, !30010, !DIExpression(), !29979)
    #dbg_value(ptr %i.i, !30020, !DIExpression(), !29985)
    #dbg_declare(ptr %i.a, !30011, !DIExpression(), !29986)
    #dbg_value(i64 1, !30022, !DIExpression(), !29988)
    #dbg_value(i64 1, !30018, !DIExpression(), !29982)
    #dbg_value(i64 1, !30022, !DIExpression(), !29985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30032
    #dbg_value(ptr %i.g, !30021, !DIExpression(), !29988)
    #dbg_value(ptr %i.a, !30020, !DIExpression(), !29988)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !30033
    #dbg_value(ptr %i.i, !30017, !DIExpression(), !29982)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !dbg !30034
    #dbg_value(ptr %i.a, !30021, !DIExpression(), !29985)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !30035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30036
  tail call fastcc void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE15sift_down_rangeB1h_(ptr nonnull %i.g, i64 %i.c, i64 noundef %i.h), !dbg !30037
  %i.j = icmp ugt i64 %i.h, 1, !dbg !30027
  br i1 %i.j, label %bb.b, label %._crit_edge, !dbg !30027
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE15sift_down_rangeB1h_(ptr nofree captures(none) %.8.val, i64 %.16.val, i64 noundef range(i64 0, 164703072086692426) %0) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !30040 {
bb.a:
    #dbg_declare(ptr poison, !30148, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !30155)
    #dbg_declare(ptr poison, !30148, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !30155)
    #dbg_declare(ptr poison, !30158, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !30161)
    #dbg_declare(ptr poison, !30158, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !30161)
  %.sroa.26 = alloca [16 x i8], align 8           ; 4 uses
  %.sroa.34 = alloca [16 x i8], align 8           ; 4 uses
    #dbg_declare(ptr %.sroa.26, !30143, !DIExpression(DW_OP_LLVM_fragment, 192, 128), !30162)
    #dbg_declare(ptr %.sroa.34, !30143, !DIExpression(DW_OP_LLVM_fragment, 512, 128), !30162)
    #dbg_value(ptr poison, !8201, !DIExpression(), !30046)
    #dbg_value(ptr poison, !8207, !DIExpression(), !30047)
    #dbg_value(ptr poison, !8201, !DIExpression(), !30050)
    #dbg_value(ptr poison, !8207, !DIExpression(), !30051)
    #dbg_value(ptr poison, !8201, !DIExpression(), !30054)
    #dbg_value(ptr poison, !8207, !DIExpression(), !30055)
    #dbg_value(ptr poison, !30163, !DIExpression(), !30169)
    #dbg_value(ptr poison, !30163, !DIExpression(), !30171)
    #dbg_value(ptr poison, !30172, !DIExpression(), !30182)
    #dbg_value(ptr poison, !30183, !DIExpression(), !30187)
    #dbg_value(ptr poison, !30183, !DIExpression(), !30189)
    #dbg_value(ptr poison, !30172, !DIExpression(), !30191)
    #dbg_value(ptr poison, !30163, !DIExpression(), !30193)
    #dbg_value(ptr poison, !30183, !DIExpression(), !30195)
    #dbg_value(ptr poison, !30183, !DIExpression(), !30197)
    #dbg_value(ptr poison, !30163, !DIExpression(), !30199)
    #dbg_value(ptr poison, !30140, !DIExpression(), !30200)
    #dbg_value(i64 0, !30141, !DIExpression(), !30200)
    #dbg_value(i64 0, !30157, !DIExpression(), !30201)
    #dbg_value(i64 0, !30202, !DIExpression(), !30206)
    #dbg_value(i64 0, !30207, !DIExpression(), !30211)
    #dbg_value(i64 %0, !30142, !DIExpression(), !30200)
    #dbg_value(i64 1, !30212, !DIExpression(), !30217)
    #dbg_value(i64 1, !30212, !DIExpression(), !30220)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26), !dbg !30317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34), !dbg !30317
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %.8.val, !30156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30201)
    #dbg_value(ptr %.8.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30206)
    #dbg_value(ptr %.8.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30211)
    #dbg_value(i64 %.16.val, !30156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30201)
    #dbg_value(i64 %.16.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30206)
    #dbg_value(i64 %.16.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30211)
    #dbg_value(ptr %.8.val, !30221, !DIExpression(), !30224)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(16) %.8.val, i64 16, i1 false), !dbg !30318
  %.sroa.445.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !30318 ; 2 uses
    #dbg_value(i64 poison, !30158, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30225)
    #dbg_value(i64 poison, !30148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30226)
  %i.a = load <2 x i64>, ptr %.sroa.445.0..8.val.sroa_idx, align 8, !dbg !30318
  %.sroa.445.0.copyload = load i64, ptr %.sroa.445.0..8.val.sroa_idx, align 8, !dbg !30318 ; 2 uses
    #dbg_value(i64 %.sroa.445.0.copyload, !30158, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30225)
    #dbg_value(i64 %.sroa.445.0.copyload, !30148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30226)
    #dbg_value(i64 poison, !30158, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30225)
    #dbg_value(i64 poison, !30148, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30226)
  %.sroa.647.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32, !dbg !30318
  %.sroa.647.0.copyload = load i64, ptr %.sroa.647.0..8.val.sroa_idx, align 8, !dbg !30318 ; 3 uses
    #dbg_value(i64 %.sroa.647.0.copyload, !30158, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !30225)
    #dbg_value(i64 %.sroa.647.0.copyload, !30148, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !30226)
  %.sroa.748.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 40, !dbg !30318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.0..8.val.sroa_idx, i64 16, i1 false), !dbg !30318
    #dbg_value(ptr %.8.val, !30143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30227)
    #dbg_value(i64 %.16.val, !30143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30227)
    #dbg_value(i64 %.sroa.445.0.copyload, !30143, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !30227)
    #dbg_value(i64 poison, !30143, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !30227)
    #dbg_value(i64 %.sroa.647.0.copyload, !30143, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !30227)
    #dbg_value(i64 0, !30143, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30227)
    #dbg_value(ptr undef, !30163, !DIExpression(), !30199)
    #dbg_value(i64 1, !30144, !DIExpression(), !30228)
    #dbg_value(i64 1, !30173, !DIExpression(), !30229)
    #dbg_value(i64 1, !30230, !DIExpression(), !30234)
    #dbg_value(i64 1, !30173, !DIExpression(), !30235)
    #dbg_value(i64 1, !30230, !DIExpression(), !30238)
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 2)
  %.not62 = icmp samesign ult i64 %0, 3, !dbg !30319
  br i1 %.not62, label %._crit_edge, label %.lr.ph, !dbg !30319

._crit_edge:                                      ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53, %bb.a
  %.sroa.16.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ad, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53 ], !dbg !30200 ; 4 uses
  %.sroa.01.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.an, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53 ], !dbg !30227 ; 4 uses
  %i.c = add nsw i64 %0, -1, !dbg !30320
  %i.d = icmp eq i64 %.sroa.01.0.lcssa, %i.c, !dbg !30321
  br i1 %i.d, label %bb.e, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread, !dbg !30321

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53
  %.sroa.01.064 = phi i64 [ %i.an, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53 ], [ 1, %bb.a ] ; 3 uses
  %.sroa.16.063 = phi i64 [ %i.ad, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53 ], [ 0, %bb.a ] ; 3 uses
    #dbg_value(i64 %.sroa.01.064, !30230, !DIExpression(), !30234)
    #dbg_value(i64 %.sroa.16.063, !30143, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30227)
    #dbg_value(ptr undef, !30183, !DIExpression(), !30197)
    #dbg_value(i64 %.sroa.01.064, !30184, !DIExpression(), !30239)
    #dbg_value(i64 %.sroa.01.064, !30202, !DIExpression(), !30241)
    #dbg_value(i64 %.sroa.01.064, !30207, !DIExpression(), !30244)
    #dbg_value(ptr %.8.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30241)
    #dbg_value(ptr %.8.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30244)
    #dbg_value(i64 %.16.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30241)
    #dbg_value(i64 %.16.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30244)
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.01.064, !dbg !30322 ; 2 uses
    #dbg_value(ptr poison, !30245, !DIExpression(), !30249)
    #dbg_value(ptr undef, !30183, !DIExpression(), !30189)
  %i.f = add nuw nsw i64 %.sroa.01.064, 1, !dbg !30323 ; 2 uses
    #dbg_value(i64 %i.f, !30184, !DIExpression(), !30250)
    #dbg_value(i64 %i.f, !30202, !DIExpression(), !30253)
    #dbg_value(i64 %i.f, !30207, !DIExpression(), !30256)
    #dbg_value(ptr %.8.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30253)
    #dbg_value(ptr %.8.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30256)
    #dbg_value(i64 %.16.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30253)
    #dbg_value(i64 %.16.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30256)
  %i.g = icmp ult i64 %i.f, %.16.val, !dbg !30324
  tail call void @llvm.assume(i1 %i.g), !dbg !30325
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %i.f, !dbg !30326 ; 2 uses
    #dbg_value(ptr poison, !30246, !DIExpression(), !30257)
    #dbg_value(ptr %i.e, !8246, !DIExpression(), !30072)
    #dbg_value(ptr %i.h, !8250, !DIExpression(), !30072)
    #dbg_declare(ptr poison, !8258, !DIExpression(), !30074)
    #dbg_value(ptr %i.e, !8277, !DIExpression(), !30076)
    #dbg_value(ptr %i.e, !8283, !DIExpression(), !30078)
    #dbg_value(ptr %i.h, !8281, !DIExpression(), !30076)
    #dbg_value(ptr %i.h, !8287, !DIExpression(), !30078)
    #dbg_value(ptr %i.e, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30080)
    #dbg_value(ptr %i.h, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30081)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !30327
  %i.j = load i64, ptr %i.i, align 8, !dbg !30327, !noundef !2579
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !30328
  %i.l = load i64, ptr %i.k, align 8, !dbg !30328, !noundef !2579
  %i.m = tail call i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %i.l), !dbg !30329
    #dbg_value(i8 %i.m, !8296, !DIExpression(), !30083)
  switch i8 %i.m, label %bb.b [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit
    i8 0, label %bb.c
    i8 1, label %bb.d
  ], !dbg !30330

bb.b:                                             ; preds = %.lr.ph
  unreachable, !dbg !30331

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(i8 0, !8301, !DIExpression(), !30085)
    #dbg_value(ptr %i.e, !8309, !DIExpression(), !30087)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !30332
  %i.o = load i64, ptr %i.n, align 8, !dbg !30332, !noundef !2579
    #dbg_value(ptr %i.h, !8309, !DIExpression(), !30089)
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !30333
  %i.q = load i64, ptr %i.p, align 8, !dbg !30333, !noundef !2579
    #dbg_value(i8 poison, !8305, !DIExpression(), !30085)
  %i.r = icmp ule i64 %i.o, %i.q, !dbg !30334
  %i.s = zext i1 %i.r to i64, !dbg !30335
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit, !dbg !30336

bb.d:                                             ; preds = %.lr.ph
    #dbg_value(i8 -1, !8301, !DIExpression(), !30085)
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit, !dbg !30337

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(ptr poison, !30258, !DIExpression(), !30262)
    #dbg_value(ptr undef, !30183, !DIExpression(), !30195)
    #dbg_value(i64 %.sroa.01.0.lcssa, !30184, !DIExpression(), !30263)
    #dbg_value(i64 %.sroa.01.0.lcssa, !30202, !DIExpression(), !30266)
    #dbg_value(i64 %.sroa.01.0.lcssa, !30207, !DIExpression(), !30269)
    #dbg_value(ptr %.8.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30266)
    #dbg_value(ptr %.8.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30269)
    #dbg_value(i64 %.16.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30266)
    #dbg_value(i64 %.16.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30269)
  %i.t = icmp ult i64 %.sroa.01.0.lcssa, %.16.val, !dbg !30338
  tail call void @llvm.assume(i1 %i.t), !dbg !30339
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.01.0.lcssa, !dbg !30340 ; 3 uses
    #dbg_value(ptr poison, !30259, !DIExpression(), !30270)
    #dbg_value(ptr poison, !30271, !DIExpression(), !30093)
    #dbg_value(ptr %i.u, !30273, !DIExpression(), !30093)
    #dbg_declare(ptr poison, !30275, !DIExpression(), !30097)
    #dbg_value(ptr poison, !8277, !DIExpression(), !30099)
    #dbg_value(ptr poison, !8283, !DIExpression(), !30101)
    #dbg_value(ptr %i.u, !8281, !DIExpression(), !30099)
    #dbg_value(ptr %i.u, !8287, !DIExpression(), !30101)
    #dbg_value(ptr poison, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30103)
    #dbg_value(ptr %i.u, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30104)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !30341
  %i.w = load i64, ptr %i.v, align 8, !dbg !30341, !noundef !2579
  %i.x = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.647.0.copyload, i64 %i.w), !dbg !30342
    #dbg_value(i8 %i.x, !8296, !DIExpression(), !30106)
  switch i8 %i.x, label %bb.f [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread
    i8 0, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit
    i8 1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit.thread
  ], !dbg !30343

bb.f:                                             ; preds = %bb.e
  unreachable, !dbg !30344

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit: ; preds = %bb.e
    #dbg_value(i8 0, !8301, !DIExpression(), !30108)
    #dbg_value(ptr poison, !8309, !DIExpression(), !30110)
    #dbg_value(ptr %i.u, !8309, !DIExpression(), !30112)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !30345
  %i.z = load i64, ptr %i.y, align 8, !dbg !30345, !noundef !2579
    #dbg_value(i8 poison, !8305, !DIExpression(), !30108)
  %i.aa = icmp ult i64 %.sroa.445.0.copyload, %i.z, !dbg !30346
    #dbg_value(i8 poison, !30277, !DIExpression(), !30113)
  br i1 %i.aa, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit.thread, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread, !dbg !30261

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit.thread: ; preds = %bb.e, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit
    #dbg_value(ptr undef, !30172, !DIExpression(), !30191)
    #dbg_value(ptr %.8.val, !30177, !DIExpression(), !30280)
    #dbg_value(ptr %.8.val, !30231, !DIExpression(), !30238)
    #dbg_value(ptr %.8.val, !30231, !DIExpression(), !30283)
    #dbg_value(ptr %i.u, !30178, !DIExpression(), !30284)
    #dbg_value(ptr %i.u, !30213, !DIExpression(), !30220)
    #dbg_value(i64 %.sroa.16.0.lcssa, !30230, !DIExpression(), !30283)
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.16.0.lcssa, !dbg !30347
    #dbg_value(ptr %i.ab, !30179, !DIExpression(), !30285)
    #dbg_value(ptr %i.ab, !30214, !DIExpression(), !30220)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !dbg !30348
    #dbg_value(i64 %.sroa.01.0.lcssa, !30143, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30227)
  br label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread, !dbg !30349

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit.thread, %._crit_edge, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit, %bb.e
  %.sroa.16.063.lcssa73.sink = phi i64 [ %.sroa.16.0.lcssa, %._crit_edge ], [ %.sroa.16.0.lcssa, %bb.e ], [ %.sroa.01.0.lcssa, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit.thread ], [ %.sroa.16.0.lcssa, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB8_.exit ], [ %.sroa.16.063, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit ], [ %.sroa.16.063, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit ]
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.16.063.lcssa73.sink, !dbg !30350 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26, i64 16, i1 false), !dbg !30351
  %.sroa.30.24..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !30351
  store <2 x i64> %i.a, ptr %.sroa.30.24..sroa_idx20, align 8, !dbg !30351
  %.sroa.3228.24..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !30351
  store i64 %.sroa.647.0.copyload, ptr %.sroa.3228.24..sroa_idx33, align 8, !dbg !30351
  %.sroa.34.24..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40, !dbg !30351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34.24..sroa_idx37, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34, i64 16, i1 false), !dbg !30351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26), !dbg !30286
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !30286
  ret void, !dbg !30352

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph ], !dbg !30353
    #dbg_value(i8 poison, !8305, !DIExpression(), !30085)
    #dbg_value(i8 poison, !8273, !DIExpression(), !30114)
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i, %.sroa.01.064, !dbg !30354 ; 5 uses
    #dbg_value(i64 %i.ad, !30144, !DIExpression(), !30228)
    #dbg_value(i64 %i.ad, !30173, !DIExpression(), !30229)
    #dbg_value(i64 %i.ad, !30230, !DIExpression(), !30234)
    #dbg_value(i64 %i.ad, !30173, !DIExpression(), !30235)
    #dbg_value(i64 %i.ad, !30230, !DIExpression(), !30238)
    #dbg_value(ptr poison, !30291, !DIExpression(), !30295)
    #dbg_value(ptr undef, !30183, !DIExpression(), !30187)
    #dbg_value(i64 %i.ad, !30184, !DIExpression(), !30296)
    #dbg_value(i64 %i.ad, !30202, !DIExpression(), !30299)
    #dbg_value(i64 %i.ad, !30207, !DIExpression(), !30302)
    #dbg_value(ptr %.8.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30299)
    #dbg_value(ptr %.8.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30302)
    #dbg_value(i64 %.16.val, !30203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30299)
    #dbg_value(i64 %.16.val, !30208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30302)
  %i.ae = icmp ult i64 %i.ad, %.16.val, !dbg !30355
  tail call void @llvm.assume(i1 %i.ae), !dbg !30356
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %i.ad, !dbg !30357 ; 3 uses
    #dbg_value(ptr poison, !30292, !DIExpression(), !30303)
    #dbg_value(ptr poison, !30304, !DIExpression(), !30118)
    #dbg_value(ptr %i.af, !30305, !DIExpression(), !30118)
    #dbg_declare(ptr poison, !30307, !DIExpression(), !30122)
    #dbg_value(ptr poison, !8277, !DIExpression(), !30124)
    #dbg_value(ptr poison, !8283, !DIExpression(), !30126)
    #dbg_value(ptr %i.af, !8281, !DIExpression(), !30124)
    #dbg_value(ptr %i.af, !8287, !DIExpression(), !30126)
    #dbg_value(ptr poison, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30128)
    #dbg_value(ptr %i.af, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30129)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !30358
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !30358, !noundef !2579
  %i.ai = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.647.0.copyload, i64 %i.ah), !dbg !30359
    #dbg_value(i8 %i.ai, !8296, !DIExpression(), !30131)
  switch i8 %i.ai, label %bb.g [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread
    i8 0, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit
    i8 1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53
  ], !dbg !30360

bb.g:                                             ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit
  unreachable, !dbg !30361

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit
    #dbg_value(i8 0, !8301, !DIExpression(), !30133)
    #dbg_value(ptr poison, !8309, !DIExpression(), !30135)
    #dbg_value(ptr %i.af, !8309, !DIExpression(), !30137)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !30362
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !30362, !noundef !2579
    #dbg_value(i8 poison, !8305, !DIExpression(), !30133)
  %.not55 = icmp ult i64 %.sroa.445.0.copyload, %i.ak, !dbg !30363
    #dbg_value(i8 poison, !30309, !DIExpression(), !30138)
  br i1 %.not55, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread, !dbg !30294

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit.thread53: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2geB8_.exit
    #dbg_value(ptr undef, !30172, !DIExpression(), !30182)
    #dbg_value(ptr %.8.val, !30174, !DIExpression(), !30312)
    #dbg_value(ptr %.8.val, !30231, !DIExpression(), !30234)
    #dbg_value(ptr %.8.val, !30231, !DIExpression(), !30314)
    #dbg_value(ptr %i.af, !30175, !DIExpression(), !30315)
    #dbg_value(ptr %i.af, !30213, !DIExpression(), !30217)
    #dbg_value(i64 %.sroa.16.063, !30230, !DIExpression(), !30314)
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.16.063, !dbg !30364
    #dbg_value(ptr %i.al, !30176, !DIExpression(), !30316)
    #dbg_value(ptr %i.al, !30214, !DIExpression(), !30217)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false), !dbg !30365
    #dbg_value(i64 %i.ad, !30143, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30227)
    #dbg_value(ptr undef, !30163, !DIExpression(), !30169)
  %i.am = shl nuw nsw i64 %i.ad, 1, !dbg !30366   ; 2 uses
  %i.an = or disjoint i64 %i.am, 1, !dbg !30367   ; 2 uses
    #dbg_value(i64 %i.an, !30173, !DIExpression(), !30235)
    #dbg_value(i64 %i.an, !30230, !DIExpression(), !30238)
    #dbg_value(i64 %i.an, !30230, !DIExpression(), !30234)
    #dbg_value(i64 %i.an, !30173, !DIExpression(), !30229)
    #dbg_value(i64 %i.an, !30144, !DIExpression(), !30228)
  %.not.not = icmp samesign ult i64 %i.am, %i.b, !dbg !30319
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !dbg !30319
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE4pushB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30369 {
bb.a:
    #dbg_value(ptr %0, !30489, !DIExpression(), !30493)
    #dbg_value(ptr %0, !30494, !DIExpression(), !30497)
    #dbg_declare(ptr %1, !30490, !DIExpression(), !30498)
    #dbg_declare(ptr %1, !30499, !DIExpression(), !30506)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30547 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !30547, !noundef !2579 ; 7 uses
    #dbg_value(i64 %i.b, !30491, !DIExpression(), !30508)
  %i.c = icmp ult i64 %i.b, 164703072086692426, !dbg !30548
  tail call void @llvm.assume(i1 %i.c), !dbg !30549
    #dbg_value(ptr %0, !30503, !DIExpression(), !30509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30510), !dbg !30550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30511), !dbg !30550
    #dbg_value(ptr %0, !30512, !DIExpression(), !30380)
    #dbg_value(ptr %0, !30520, !DIExpression(), !30383)
    #dbg_declare(ptr %1, !30516, !DIExpression(), !30384)
    #dbg_value(i64 56, !30522, !DIExpression(), !30389)
    #dbg_value(i64 %i.b, !30517, !DIExpression(), !30390)
    #dbg_value(i64 %i.b, !30527, !DIExpression(), !30393)
    #dbg_value(ptr %0, !30525, !DIExpression(), !30394)
  %i.d = load i64, ptr %0, align 8, !dbg !30551, !range !6134, !alias.scope !30510, !noalias !30511, !noundef !2579
  %i.e = icmp eq i64 %i.b, %i.d, !dbg !30552
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit, !dbg !30552

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit unwind label %bb.c, !dbg !30553, !noalias !30511

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30530), !dbg !30554
    #dbg_value(ptr %1, !30531, !DIExpression(), !30399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30535), !dbg !30555
    #dbg_value(ptr %1, !30537, !DIExpression(), !30404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30541), !dbg !30556
    #dbg_value(ptr %1, !30542, !DIExpression(), !30409)
  %i.g = load ptr, ptr %1, align 8, !dbg !30557, !alias.scope !30545, !noalias !30510, !nonnull !2579, !align !4372, !noundef !2579
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !30557
  %i.i = load ptr, ptr %i.h, align 8, !dbg !30557, !noalias !30546, !nonnull !2579, !noundef !2579
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30558
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30559
  %i.l = load ptr, ptr %i.k, align 8, !dbg !30559, !alias.scope !30545, !noalias !30510, !noundef !2579
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30560
  %i.n = load i64, ptr %i.m, align 8, !dbg !30560, !alias.scope !30545, !noalias !30510, !noundef !2579
  invoke void %i.i(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit.i unwind label %bb.d, !dbg !30557, !noalias !30510, !inline_history !30410

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !dbg !30561, !noalias !30510
  unreachable, !dbg !30561

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !30561

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30562
  %i.q = load ptr, ptr %i.p, align 8, !dbg !30562, !alias.scope !30510, !noalias !30511, !nonnull !2579, !noundef !2579 ; 4 uses
    #dbg_value(ptr %i.q, !30528, !DIExpression(), !30393)
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.b, !dbg !30563 ; 3 uses
    #dbg_value(ptr %i.r, !30518, !DIExpression(), !30417)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !dbg !30564, !noalias !30510
  %i.s = add nuw nsw i64 %i.b, 1, !dbg !30565
  store i64 %i.s, ptr %i.a, align 8, !dbg !30565, !alias.scope !30510, !noalias !30511
    #dbg_declare(ptr poison, !8329, !DIExpression(DW_OP_LLVM_fragment, 192, 128), !30419)
    #dbg_declare(ptr poison, !8329, !DIExpression(DW_OP_LLVM_fragment, 512, 128), !30419)
    #dbg_value(ptr poison, !8201, !DIExpression(), !30422)
    #dbg_value(ptr poison, !8207, !DIExpression(), !30423)
    #dbg_value(ptr poison, !8201, !DIExpression(), !30426)
    #dbg_value(ptr poison, !8207, !DIExpression(), !30427)
    #dbg_value(ptr poison, !8339, !DIExpression(), !30429)
    #dbg_value(ptr poison, !8345, !DIExpression(), !30431)
    #dbg_value(ptr poison, !8334, !DIExpression(), !30432)
    #dbg_value(i64 0, !8335, !DIExpression(), !30432)
    #dbg_value(i64 %i.b, !8336, !DIExpression(), !30432)
    #dbg_value(i64 %i.b, !8348, !DIExpression(), !30434)
    #dbg_value(i64 %i.b, !8352, !DIExpression(), !30436)
    #dbg_value(i64 %i.b, !8355, !DIExpression(), !30438)
    #dbg_value(i64 1, !8358, !DIExpression(), !30440)
    #dbg_value(ptr %i.q, !8349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30434)
    #dbg_value(ptr %i.q, !8353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30436)
    #dbg_value(ptr %i.q, !8356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30438)
    #dbg_value(i64 %i.s, !8349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30434)
    #dbg_value(i64 %i.s, !8353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30436)
    #dbg_value(i64 %i.s, !8356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30438)
    #dbg_value(ptr %i.r, !8362, !DIExpression(), !30442)
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !30566 ; 2 uses
  %i.t = load <2 x i64>, ptr %.sroa.431.0..sroa_idx.i, align 8, !dbg !30566
  %.sroa.431.0.copyload.i = load i64, ptr %.sroa.431.0..sroa_idx.i, align 8, !dbg !30566
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !30566
  %.sroa.633.0.copyload.i = load i64, ptr %.sroa.633.0..sroa_idx.i, align 8, !dbg !30566 ; 2 uses
    #dbg_value(ptr %i.q, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30443)
    #dbg_value(i64 %i.s, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30443)
    #dbg_value(i64 %.sroa.431.0.copyload.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !30443)
    #dbg_value(i64 poison, !8329, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !30443)
    #dbg_value(i64 %.sroa.633.0.copyload.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !30443)
    #dbg_value(i64 %i.b, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30443)
  %.not40.i = icmp eq i64 %i.b, 0, !dbg !30567
  br i1 %.not40.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE7sift_upB1h_.exit, label %.lr.ph.i, !dbg !30567

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i
  %.sroa.9.041.i = phi i64 [ %i.v, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i ], [ %i.b, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit ] ; 4 uses
    #dbg_value(i64 %.sroa.9.041.i, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30443)
  %i.u = add nsw i64 %.sroa.9.041.i, -1, !dbg !30568
  %i.v = lshr i64 %i.u, 1, !dbg !30568            ; 4 uses
    #dbg_value(i64 %i.v, !8337, !DIExpression(), !30444)
    #dbg_value(i64 %i.v, !8346, !DIExpression(), !30445)
    #dbg_value(i64 %i.v, !8352, !DIExpression(), !30447)
    #dbg_value(i64 %i.v, !8355, !DIExpression(), !30449)
    #dbg_value(i64 %i.v, !8340, !DIExpression(), !30450)
    #dbg_value(i64 %i.v, !8366, !DIExpression(), !30452)
    #dbg_value(ptr poison, !8369, !DIExpression(), !30454)
    #dbg_value(ptr undef, !8345, !DIExpression(), !30431)
    #dbg_value(ptr %i.q, !8353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30447)
    #dbg_value(ptr %i.q, !8356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30449)
    #dbg_value(i64 %i.s, !8353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30447)
    #dbg_value(i64 %i.s, !8356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30449)
  %i.w = icmp samesign ule i64 %i.v, %i.b, !dbg !30569
  tail call void @llvm.assume(i1 %i.w), !dbg !30570
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.v, !dbg !30571 ; 3 uses
    #dbg_value(ptr poison, !8370, !DIExpression(), !30455)
    #dbg_value(ptr undef, !8246, !DIExpression(), !30457)
    #dbg_value(ptr %i.x, !8250, !DIExpression(), !30457)
    #dbg_declare(ptr poison, !8258, !DIExpression(), !30459)
    #dbg_value(ptr undef, !8277, !DIExpression(), !30461)
    #dbg_value(ptr undef, !8283, !DIExpression(), !30463)
    #dbg_value(ptr %i.x, !8281, !DIExpression(), !30461)
    #dbg_value(ptr %i.x, !8287, !DIExpression(), !30463)
    #dbg_value(ptr undef, !8290, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30465)
    #dbg_value(ptr %i.x, !8294, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30466)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !30572
  %i.z = load i64, ptr %i.y, align 8, !dbg !30572, !noundef !2579
  %i.aa = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.633.0.copyload.i, i64 %i.z), !dbg !30573
    #dbg_value(i8 %i.aa, !8296, !DIExpression(), !30468)
  switch i8 %i.aa, label %bb.e [
    i8 -1, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i
    i8 0, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i
    i8 1, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE7sift_upB1h_.exit
  ], !dbg !30574

bb.e:                                             ; preds = %.lr.ph.i
  unreachable, !dbg !30575

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i: ; preds = %.lr.ph.i
    #dbg_value(ptr undef, !8309, !DIExpression(), !30470)
    #dbg_value(ptr %i.x, !8309, !DIExpression(), !30472)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !30576
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !30576, !noundef !2579
  %.not38.i = icmp ugt i64 %.sroa.431.0.copyload.i, %i.ac, !dbg !30577
    #dbg_value(i8 poison, !8273, !DIExpression(), !30473)
  br i1 %.not38.i, label %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE7sift_upB1h_.exit, !dbg !30578

_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i: ; preds = %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, %.lr.ph.i
    #dbg_value(ptr undef, !8339, !DIExpression(), !30429)
    #dbg_value(ptr %i.q, !8341, !DIExpression(), !30474)
    #dbg_value(ptr %i.q, !8367, !DIExpression(), !30452)
    #dbg_value(ptr %i.q, !8367, !DIExpression(), !30476)
    #dbg_value(ptr %i.x, !8342, !DIExpression(), !30477)
    #dbg_value(ptr %i.x, !8359, !DIExpression(), !30440)
    #dbg_value(i64 %.sroa.9.041.i, !8366, !DIExpression(), !30476)
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.9.041.i, !dbg !30579
    #dbg_value(ptr %i.ad, !8343, !DIExpression(), !30478)
    #dbg_value(ptr %i.ad, !8360, !DIExpression(), !30440)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !dbg !30580
    #dbg_value(i64 %i.v, !8329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30443)
  %.not.i = icmp eq i64 %i.v, 0, !dbg !30567
  br i1 %.not.i, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE7sift_upB1h_.exit, label %.lr.ph.i, !dbg !30567

_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE7sift_upB1h_.exit: ; preds = %.lr.ph.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE8push_mutBL_.exit ], [ 0, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.thread36.i ], [ %.sroa.9.041.i, %_RNvYNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2leB8_.exit.i ], [ %.sroa.9.041.i, %.lr.ph.i ], !dbg !30581
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !30566
    #dbg_value(ptr undef, !8207, !DIExpression(), !30427)
    #dbg_value(ptr undef, !8201, !DIExpression(), !30426)
    #dbg_value(i64 1, !8314, !DIExpression(), !30480)
    #dbg_value(i64 %.sroa.9.0.lcssa.i, !8205, !DIExpression(), !30481)
    #dbg_value(i64 %.sroa.9.0.lcssa.i, !8318, !DIExpression(), !30483)
    #dbg_value(i64 %.sroa.9.0.lcssa.i, !8323, !DIExpression(), !30485)
    #dbg_value(ptr undef, !8315, !DIExpression(), !30480)
    #dbg_value(ptr %i.q, !8321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30483)
    #dbg_value(i64 poison, !8321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30483)
    #dbg_value(ptr %i.q, !8326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30485)
    #dbg_value(i64 poison, !8326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30485)
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.9.0.lcssa.i, !dbg !30582 ; 4 uses
    #dbg_value(ptr %i.af, !8316, !DIExpression(), !30480)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !30583
  %.sroa.19.24..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !30583
  store <2 x i64> %i.t, ptr %.sroa.19.24..sroa_idx8.i, align 8, !dbg !30583
  %.sroa.2016.24..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !30583
  store i64 %.sroa.633.0.copyload.i, ptr %.sroa.2016.24..sroa_idx17.i, align 8, !dbg !30583
  %.sroa.21.24..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !30583
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.24..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !30583
  ret void, !dbg !30584
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 81) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30595 {
bb.a:
    #dbg_value(ptr poison, !30826, !DIExpression(), !30833)
    #dbg_value(ptr poison, !30836, !DIExpression(), !30839)
    #dbg_value(ptr poison, !30834, !DIExpression(), !30840)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !30808, !DIExpression(), !30841)
    #dbg_value(ptr %0, !30842, !DIExpression(), !30848)
    #dbg_value(ptr %1, !30809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30841)
    #dbg_value(ptr poison, !30809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30841)
    #dbg_value(i64 %2, !30810, !DIExpression(), !30841)
    #dbg_value(i64 %2, !30849, !DIExpression(), !30854)
    #dbg_value(i64 %2, !30849, !DIExpression(), !30856)
    #dbg_value(i64 %2, !30857, !DIExpression(), !30862)
    #dbg_value(i64 %2, !30863, !DIExpression(), !30870)
    #dbg_value(i64 %2, !30871, !DIExpression(), !30886)
    #dbg_value(ptr %3, !30811, !DIExpression(), !30841)
    #dbg_declare(ptr %i.a, !30812, !DIExpression(), !30887)
    #dbg_value(i64 1, !30888, !DIExpression(), !30892)
    #dbg_value(i64 1, !30893, !DIExpression(), !30897)
    #dbg_value(ptr poison, !30898, !DIExpression(), !30906)
    #dbg_value(ptr poison, !30907, !DIExpression(), !30912)
    #dbg_value(ptr poison, !30907, !DIExpression(), !30914)
    #dbg_value(i8 -1, !30915, !DIExpression(), !30920)
  %.val54 = load ptr, ptr %0, align 8, !dbg !31170 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31170 ; 4 uses
  %.val55 = load i64, ptr %i.b, align 8, !dbg !31170, !noundef !2579 ; 2 uses
    #dbg_value(ptr poison, !30922, !DIExpression(), !30629)
    #dbg_value(ptr poison, !30935, !DIExpression(), !30630)
    #dbg_value(ptr poison, !30941, !DIExpression(), !30631)
    #dbg_value(ptr poison, !30946, !DIExpression(), !30632)
    #dbg_value(ptr poison, !30952, !DIExpression(), !30635)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30638)
    #dbg_value(ptr poison, !30952, !DIExpression(), !30640)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30642)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30644)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30646)
    #dbg_value(ptr poison, !30952, !DIExpression(), !30648)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30650)
    #dbg_value(ptr poison, !30952, !DIExpression(), !30652)
    #dbg_value(ptr poison, !30954, !DIExpression(), !30654)
    #dbg_value(i64 16, !30958, !DIExpression(), !30657)
    #dbg_value(i64 0, !30956, !DIExpression(), !30644)
    #dbg_value(i64 16, !30956, !DIExpression(), !30646)
    #dbg_value(i64 0, !30956, !DIExpression(), !30650)
    #dbg_value(i64 16, !30965, !DIExpression(), !30660)
    #dbg_value(i64 16, !30972, !DIExpression(), !30663)
  %i.c = add i64 %.val55, 1, !dbg !31171          ; 6 uses
    #dbg_value(i64 0, !30961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30657)
    #dbg_value(i64 %i.c, !30961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30657)
    #dbg_value(i64 0, !30980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30667)
    #dbg_value(i64 %i.c, !30980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30667)
    #dbg_value(i64 16, !30982, !DIExpression(), !30667)
    #dbg_value(i64 0, !30985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30672)
    #dbg_value(i64 16, !30989, !DIExpression(), !30672)
    #dbg_value(i64 16, !30993, !DIExpression(), !30677)
    #dbg_value(i64 %i.c, !30994, !DIExpression(), !30677)
    #dbg_value(i64 %i.c, !30990, !DIExpression(), !30678)
    #dbg_value(i64 %i.c, !30995, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !30679)
    #dbg_value(i64 %i.c, !30996, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !30680)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !30985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30672)
    #dbg_value(i64 0, !30947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30681)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !30947, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30681)
    #dbg_value(i64 15, !30947, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30681)
    #dbg_value(i8 1, !30947, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !30681)
    #dbg_value(ptr undef, !30941, !DIExpression(), !30631)
    #dbg_value(ptr undef, !30935, !DIExpression(), !30630)
    #dbg_value(i64 15, !30936, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30682)
    #dbg_value(i64 15, !31002, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !30685)
    #dbg_value(ptr undef, !30922, !DIExpression(), !30629)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !30937, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !30686)
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !31172
  br i1 %.not6.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !31172

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
    #dbg_value(ptr %.val54, !30968, !DIExpression(), !30688)
    #dbg_value(ptr poison, !30969, !DIExpression(), !30688)
    #dbg_value(ptr poison, !30976, !DIExpression(), !30690)
    #dbg_value(i64 %i.c, !30970, !DIExpression(), !30688)
    #dbg_value(i64 %i.c, !30977, !DIExpression(), !30690)
    #dbg_value(ptr %.val54, !30975, !DIExpression(), !30690)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val54, i64 16, !dbg !31173
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val54, i64 %i.c, i1 false), !dbg !31174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31175
    #dbg_value(ptr %3, !30845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30848)
    #dbg_value(i64 %2, !30845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30848)
    #dbg_value(i64 0, !30813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31006)
    #dbg_value(i64 %i.c, !30813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31006)
    #dbg_value(ptr undef, !30834, !DIExpression(), !30840)
    #dbg_value(ptr undef, !30836, !DIExpression(), !30839)
    #dbg_value(ptr undef, !30826, !DIExpression(), !30833)
    #dbg_value(ptr undef, !30827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !31007)
  br label %._crit_edge, !dbg !30832

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !31176
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !30985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30672)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !30947, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30681)
end_hunk_1
